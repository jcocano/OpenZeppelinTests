|   |  ERC20  | ERC721 | ERC77 | ERC1155 |
| ------------ | ------------ | ------------ | ------------ | ------------ |
|Tipo de token|Fungible|No Fungible|Fungible|Multitoken|
|Interfaces   |IERC20|IERC721|IERC20, IERC777|IERC1155|
|Caracteristicas   |- Divicible <br />- Remplazable|- No Divicible  <br />- Identificable <br />- No Remplazable |- Lo mismo que el ERC20 <br />- Hooks<br />- Value   |- Uno o mas token <br /> - Admite Fungibles y no Fungibles   |

> En el caso del ERC777 se cumplen con dos interfaces, esto quiere decir que tenemos compatibilidad con el ERC20, es decir, podemos tratar al token como un ERC20, en cuestion de funcionalidad agrega funciones que se pueden llamar automaticamente cuando se hagan transferencias, tambien podemos ver los valores de estas acciones a traves de uno de sus atributos
