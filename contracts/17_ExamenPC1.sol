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

    address public dirContrato = 0x358AA13c52544ECCEF6B0ADD0f801012ADAD5eE3;

    constructor() {
        console.log("Ejecutado por: 259967 - MIGUEL ANGEL ESCOBAR GOMEZ");
    }

    function agregarElemento(
        uint256 _id,
        string memory _nombre,
        uint256 _cantidad
    ) public {
        registros.push(NombreStruct(_id, _nombre, _cantidad));
    }

    function contarElementos() public view returns (uint256) {
        console.log("Ejecutado por: 259967 - MIGUEL ANGEL ESCOBAR GOMEZ");
        return registros.length;
    }
}