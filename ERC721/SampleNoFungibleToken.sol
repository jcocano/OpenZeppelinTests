// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";


/**
*Requiere nombre y denominacion
*/
contract SampleNoFungibleToken is ERC721("Sample No Fungible Token", "SNFT"){
    /**
    *Se emite un token no fungible
    *Ahora no tiene cantidad tiene ID
    *La transferencia debe de ser completa y no contiene decimales
    */
    constructor() {
        _mint(msg.sender,1);
    }
}
