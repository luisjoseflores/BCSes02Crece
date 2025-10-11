// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MiContrato {
    uint public totalTokens = 20;
    uint private edad;
    address public propietario;

    event CambioEdad(uint edadAnterior, uint edadNueva);

    constructor(uint256 _totalTokens) {
        totalTokens = _totalTokens;
        console.log("Se ha ejecutado el constructor:", _totalTokens);
        propietario = msg.sender;
        console.log("Propietario:", propietario);
    }

    //si modifica el estado de la blockchain
    function setEdad(uint256 _edad) public {
        emit CambioEdad(edad, _edad);
        edad = _edad;
        console.log("Invocador:", msg.sender);
    }

    //no modifica el estado de la blockchain, solo lee estado
    function getEdad() public view returns(uint256) {
        return edad;
    }

    //no modifica el estado de la blockchain, ni tampoco la lee (metodo utilitario)
    function sumar(uint256 _num1, uint256 _num2) private pure returns(uint256){
        return _num1 + _num2;
    }

}