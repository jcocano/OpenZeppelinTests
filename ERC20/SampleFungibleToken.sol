// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
*Requiere nombre y denominacion
*/
contract SampleFungibleToken is ERC20("Token Fungible", "SFT"){

    /**
    *A nivel del constructor se agregan numero de tokens
    *para la cuenta que hace el despliegue del contrato
    *se puede dar otra funcion adicional al contrato
    */
    constructor(){
        _mint(msg.sender, 1000);
    }
}
