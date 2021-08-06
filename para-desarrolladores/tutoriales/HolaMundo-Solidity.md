# Mi primer contrato inteligente

## ¿Que voy a aprender aqui?

* Estructura basica de un contrato inteligente en _Solidity_.
* Un contrato inteligente _HolaMundo.sol_, sus metodos y funciones.
* _Remix IDE_ para compilar, desplegar e interactuar con tu primer contrato inteligente. 



## Estructura basica de un contrato inteligente en _Solidity_

### Tipos de Variables: 
`bool, integer (int8-int256/uint8-uint256), address, bytes, string, hex and enum`

### Estructura del contrato:
```
pragma contract ^5.0.0
 
contract NombreDelContrato{
 
<declaracion de variables>
<mapping>
<constructor>
<funciones>
<modificadores>
 
}
```
### Sintaxis de una Funcion

```
function NombreDeLaFuncion(Argumentos…) <visibilidad> <mutabilidad de estado> returns (<tipo de variable>)

visibilidad:

public   — publico para todos
private  — solo para este contrato
internal — solo para este contrato y contratos que deriven del mismo
external — solo con acceso externo


mutabilidad de estado:

view – no modifica el estado del VM
pure – no lee ni modifica el estado
payable- para recibir transacciones, modificar el estado


tipos de variable:

bool, integer (int8-int256/uint8-uint256), address, bytes, string, hex and enum

```
*[mas sobre las funciones](https://docs.soliditylang.org/en/v0.7.0/contracts.html#functions)
*[mas sobre la visibilidad](https://docs.soliditylang.org/en/v0.7.0/contracts.html#visibility-and-getters)
*[mas sobre los tipos de variable](https://docs.soliditylang.org/en/v0.7.0/types.html#value-types)

## Tu primer contrato inteligente [HolaMundo.sol](https://github.com/latam-blockchain/tutoriales/blob/master/remix/contracts/HolaMundo.sol)

Version del compilador de solidity a usar.
```Solidity
pragma solidity ^0.5.0;
```

Estructura basica del contrato que muestra "Hola Mundo" por defecto al llamar a la funcion `saludo()`
```Solidity
contract HolaMundo {

string nombrePordefecto;
mapping (address => string) public cuentas;

constructor() public{
    nombrePordefecto = 'Mundo';
}

function saludo() public view returns(string memory){
    string memory nombre = bytes(cuentas[msg.sender]).length > 0 ? cuentas[msg.sender] : nombrePordefecto;
    return concatenarTexto("Hola " , nombre);
}
```


Funcion `almacenarMinombre()` permite al usuario modificar el nombre a quien va dirigido el saludo.
```Solidity
function almacenarMinombre(string memory nombre) public returns(bool success){
    require(bytes(nombre).length > 0);
    cuentas[msg.sender] = nombre;
    return true;
}
```

Funcion `ConcatenarTexto()` se usa para unir "Hola" + "Nombre del saludo" , ya que en solidity no es posible concatenar textos directamente 'A' + 'B' = 'AB'.
```Solidity
function ConcatenarTexto(string memory _base, string memory _value) internal pure returns (string memory) {
        bytes memory _baseBytes = bytes(_base);
        bytes memory _valueBytes = bytes(_value);

        string memory _tmpValue = new string(_baseBytes.length + _valueBytes.length);
        bytes memory _newValue = bytes(_tmpValue);

        uint i;
        uint j;

        for(i=0; i<_baseBytes.length; i++) {
            _newValue[j++] = _baseBytes[i];
        }

        for(i=0; i<_valueBytes.length; i++) {
            _newValue[j++] = _valueBytes[i];
        }

        return string(_newValue);
    }
}
```




## Compilacion, despliegue e interaccion con el contrato inteligente en Remix IDE

### Compilacion

1 \) Desde tu explorador visita https://remix.ethereum.org/ 

2 \) Clic en `Create New File` y creas el archivo `HolaMundo.sol`

![remix-compile-0](images/remix_compile_0.png)

3 \) Copias el codigo del contrato y lo pegas en el archivo creado

[Codigo del contrato:](https://github.com/latam-blockchain/tutoriales/blob/master/remix/contracts/HolaMundo.sol)
```Solidity
pragma solidity ^0.5.0;

contract HolaMundo {

string nombrePordefecto;
mapping (address => string) public cuentas;

constructor() public{
    nombrePordefecto = 'Mundo';
}

function saludo() public view returns(string memory){
    string memory nombre = bytes(cuentas[msg.sender]).length > 0 ? cuentas[msg.sender] : nombrePordefecto;
    return concatenarTexto("Hola " , nombre);
}


function almacenarMinombre(string memory nombre) public returns(bool success){
    require(bytes(nombre).length > 0);
    cuentas[msg.sender] = nombre;
    return true;
}

function concatenarTexto(string memory _base, string memory _value) internal pure returns (string memory) {
        bytes memory _baseBytes = bytes(_base);
        bytes memory _valueBytes = bytes(_value);

        string memory _tmpValue = new string(_baseBytes.length + _valueBytes.length);
        bytes memory _newValue = bytes(_tmpValue);

        uint i;
        uint j;

        for(i=0; i<_baseBytes.length; i++) {
            _newValue[j++] = _baseBytes[i];
        }

        for(i=0; i<_valueBytes.length; i++) {
            _newValue[j++] = _valueBytes[i];
        }

        return string(_newValue);
    }
}
```

![remix-compile-1](images/remix_compile_1.png)


4 \) Clic en _Solidity compiler_ y seleccionas el compilador _0.5.0+..._ del menu desplegable y a continuacion clic en _Compile HolaMundo.sol_ y si no da ningun error ya tu contrato esta compilado.

![remix-compile-2](images/remix_compile_2.png)



### Despliegue 

1 \) Clic en _Deploy & run transactions_ 

2 \) Seleccionar _JavaScript VM(London)_ en el menu desplegable _ENVIRONMENT_ 

3 \) Clic en _Deploy_

![remix-deploy-0](images/remix_deploy_0.png)

### Interactua con el contrato

Una vez desplegado el contrato inteligente hacer clic en el menu _Deployed Contracts_ y podras ver las funciones del contrato

![remix-deploy-1](images/remix_deploy_1.png)


#### Funcion saludo() 

Muestra el saludo predeterminado "Hola Mundo" si no se ha modifcado el estado previamiente, esta funcion es de solo lectura y no requiere GAS ya que no realiza ninguna modificacion del estado.

1\) Clic en _saludo_

`Llamada a HolaMundo.saludo() -> "Hola Mundo"`

![remix-saludo-0](images/remix_saludo_0.png)
 
#### Funcion almacenarMinombre() 

Modifica el nombre por defecto "Mundo" o el ultimo nombre almacenado y coloca uno nuevo definido por el usuario, esta funcion tiene un costo en GAS ya que modifica el estado.

1 \) Coloca _"Ruperto"_ en el campo de _almacenarMinombre_ y has clic en dicha funcion. 

`Transaccion a HolaMundo.almacenarMinombre("Ruperto") -> "True"`

![remix-almacenarMinombre-0](images/remix_almacenarMinombre_0.png)

2 \) Clic en _saludo_ para verificar que el estado fue modificado y el mensaje del saludo es ahora personalizado

`Llamada a HolaMundo.saludo() -> "Hola Ruperto"`

![remix-saludo-1](images/remix_saludo_1.png)

#### Funcion cuentas()

Muestra el nombre almacenado para una direccion de monedero/cartera en especifico en este ejemplo estamos usado la cartera `0x5B38Da6a701c568545dCfcB03FcB875f56beddC4`, en tu prueba tu direccion de monedero o cartera sera diferente, esta funcion no consume Gas ya que no modifica el estado.

1 \) Copia tu direccion de cartera en el menu _ACCOUNT_  "Copy value to clipboard"

![remix-cuentas-0](images/remix_cuentas_0.png)


2 \) Pegas la cuenta de la cartera/monedero en uso en el campo de _cuentas_ y luego clic en la misma funcion

`Llamada a HolaMundo.cuentas() -> "Ruperto"`

![remix-cuentas-1](images/remix_cuentas_1.png)

