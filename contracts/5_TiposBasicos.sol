// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract TiposBasicos {
    uint public talla = 100;
    bool public pausado; //V o F
    
    event ContratoPausado(address quien);

    function pausar(bool _b) public {
        pausado = _b;
        if(_b) {
            emit ContratoPausado(msg.sender);
        }
    }

    modifier noEstaPausado() {
        require(!pausado, "No puedes afectar la talla pq el contrato esta pausado");
        _;
    }

    function duplicarTalla() noEstaPausado public {        
        talla = talla * 2;
    }

    function triplicarTalla() noEstaPausado public {       
        talla = talla * 3;
    }

    /*
    function duplicarTalla() public {
        require(pausado == false, "No puedes afectar la talla pq el contrato esta pausado");
        talla = talla * 2;
    }

    function triplicarTalla() public {
        require(pausado == false, "No puedes afectar la talla pq el contrato esta pausado");
        talla = talla * 3;
    }*/

}