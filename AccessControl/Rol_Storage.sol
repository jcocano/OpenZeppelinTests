// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/access/AccessControl.sol";

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contract Rol_Storage is AccessControl{
    /**
    *Definir Roles
    */
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant WRITER_ROLE = keccak256("WRITER_ROLE");
    
    /**
    *Rol admin a la dirección de despegue
    */
    constructor(){
        _grantRole(ADMIN_ROLE, msg.sender);
    }

    uint256 number;

    /**
    *Modificadores para permisos de ejecucion
    *sobre un rool especifico
    */
    modifier onlyAdmin(){
        require(hasRole(ADMIN_ROLE, msg.sender), "This function can only be used by the admin");
        _;
    }

    modifier onlyWriter(){
        require(hasRole(WRITER_ROLE, msg.sender), "Only the Writer can write");
        _;
    }

    function addRole(bytes32 role, address account) public onlyAdmin {
        _grantRole(role, account);
    }

    function revoRole(bytes32 role, address account) public onlyAdmin {
       _revokeRole(role, account);
    }

    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public onlyWriter {
        number = num;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retrieve() public view returns (uint256){
        return number;
    }

}
