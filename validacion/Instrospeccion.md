# Instrospeccion

El estandar ERC165 lo cual es una interface que nos va a permitir revisar si una direccion de un contrato corresponde o no a una interface en especial (ERC20 para token Fungibles, ERC721 para no fungibles).

Esto es una utilidad interesante a la hora de interactuar con tokens para revisar si cumple con las caracteristicas que estamos buscando para hacer las transacciones u operaciones dentro de las funciones del contrato.

Hay que revisar tambien a nivel de codigo que se implemente el uso de interfaces, como ejemplo el ERC721 de OpenZeppelin hereda las caracteristicas del contrato ERC165 mientras que le ERC20 no las hereda y habria que implementarlas dentro del contrato.

>   function supportsInterface(bytes4 interfaceId) public view virtual override(ERC165) returns (bool){
        return
            interfaceId == type(IERC20).interfaceId ||
            super.supportsInterface(interfaceId);
    }
