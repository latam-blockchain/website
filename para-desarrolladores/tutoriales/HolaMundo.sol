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
