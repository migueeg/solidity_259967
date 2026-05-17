// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract SistemaInventario259967 {
    struct NombreStruct {
    uint256 id;
    string nombre;
    uint256 cantidad;
}

NombreStruct[] public registros;

constructor() {
    console.log("Ejecutado por: 259967 - MIGUEL ANGEL ESCOBAR GOMEZ");
}
}