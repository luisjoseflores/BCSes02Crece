// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Cripto {
    address public bob;
    address public alice;

    constructor() {
        bob = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2; //cuenta B
        alice = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db; //cuenta C
    }

    event MensajeEncriptadoEnviado(address from, address to, bytes32 mensaje);

    function enviarMensajeEncriptado(string memory mensaje) public {
       
    }



}
