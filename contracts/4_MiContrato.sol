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
    }

    function setEdad(uint256 _edad) public {
        emit CambioEdad(edad, _edad);
        edad = _edad;
    }

    function getEdad() public view returns(uint256) {
        return edad;
    }

}