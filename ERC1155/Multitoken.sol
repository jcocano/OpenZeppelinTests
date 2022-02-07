// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract Multitoken is ERC1155 {
    /**
    *Se definen variables que asignen un ID al token
    *para hacer referencia a la variable en lugar del ID
    */
    uint256 public constant Fungible = 0;
    uint256 public constant NoFungible = 1;
    uint256 public constant OtroFungible = 2;

    /**
    *El constructor tiene una URI que se recibe como parametro
    *esta ligado a mas informacion sobre estos token
    *opcion estupenda para juegos u otras aplicaciones que usen dos 
    *tipos de tokens al mismo tiempo
    */
    constructor() public ERC1155("esto es un URI"){
        /**
        *Aqui los token no fungibles son controlados 
        *por la cantidad de emicion, en el caso de NFT es 1
        *Si nosotros ponemos un valor diferente a 1 sera tratado como
        *un token fungible
        *La cantidad de token fungibles depende de la cantidad inicial
        *que nosotros inquemos como parametro al mint
        */
        _mint(msg.sender, Fungible, 1000, "");
        _mint(msg.sender, NoFungible, 1, "");
        _mint(msg.sender, OtroFungible, 5000, "");
        /**
        *Los token tienen un string vacio, aqui va la informacion adicional
        *relacionada con el token, normalmente no nos interesa almacenar
        *informacion relacionada con el token, se da uso si se va utilizar alguna
        *operacion en particular relacionada con esa informacion
        */
    }
}
