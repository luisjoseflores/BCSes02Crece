// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract MyOwner {
    address public propietario;
    bytes32 public hashResultante;

    constructor() {
        propietario = msg.sender;
    }


    modifier isOwner() {
        require(msg.sender == propietario, "No eres el propietario del contrato");
        _;
    }

    function cambiarOwner(address _nuevo) isOwner public {        
        propietario = _nuevo;
    }

    function transferirFondo(address _cuenta, uint _tokens) isOwner public {
        //
    }

    function guardarHash(string memory texto) public { //ojo: string es complejo
        hashResultante = keccak256(abi.encodePacked(texto));
    }




}