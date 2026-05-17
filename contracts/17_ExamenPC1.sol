// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract SistemaInventario259967 {
    struct NombreStruct {
        uint256 id;
        string nombre;
        uint256 cantidad;
        bool estado;
    }

    NombreStruct[] public registros;

    address public dirContrato = 0x358AA13c52544ECCEF6B0ADD0f801012ADAD5eE3;

    modifier ejecutadoPor() {
        console.log("Ejecutado por: 259967 - MIGUEL ANGEL ESCOBAR GOMEZ");
        _;
    }

    constructor() ejecutadoPor {}

    function agregarElemento(
        uint256 _id,
        string memory _nombre,
        uint256 _cantidad,
        bool _estado
    ) public ejecutadoPor {
        require(bytes(_nombre).length > 0, "El nombre no puede estar vacio");
        require(_cantidad > 0, "La cantidad debe ser mayor a cero");

        for (uint256 i = 0; i < registros.length; i++) {
            require(registros[i].id != _id, "Elemento con ese ID ya existe");
        }

        registros.push(NombreStruct(_id, _nombre, _cantidad, _estado));
    }

    function contarElementos() public view ejecutadoPor returns (uint256) {
        return registros.length;
    }
}