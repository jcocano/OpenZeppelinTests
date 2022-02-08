# Implementacion de ERC20

### SampleFungibleToken.sol
Este contrato implementa un ERC20 estandar con los requerimientos minimos para su implementacion y dentro de el se encontraran unas pequeñas anotaciones explicativas de funcionamiento

### bptoken.sol
Este es un pequeño contrato de un ERC con las propiedades de Burn(Quemado de tokens) y Pausable(funciones para pausar o despausar el contrato) en caso de que el dueño del contrato lo requiera por alguna eventualidad o falla. La funcion de Owner(*dueño*) implementada en el contrato es utilizada de las librerias de *Access Control(Control de acceso)* para identificar al dueño del contrato a traves de su direccion de despliegue
