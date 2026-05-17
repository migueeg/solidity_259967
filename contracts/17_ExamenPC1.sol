// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract SistemaInventario259967 {
    struct NombreStruct {
        uint256 id;
        string nombre;
        uint256 cantidadProducto;
        bool estado;
    }

    mapping(uint256 => NombreStruct) public registros;

    uint256 public cantidad;

    address public dirContrato = 0x358AA13c52544ECCEF6B0ADD0f801012ADAD5eE3;

    modifier ejecutadoPor() {
        console.log("Ejecutado por: 259967 - MIGUEL ANGEL ESCOBAR GOMEZ");
        _;
    }

    constructor() ejecutadoPor {}

    function agregarElemento(
        uint256 _id,
        string memory _nombre,
        uint256 _cantidadProducto,
        bool _estado
    ) public ejecutadoPor {
        require(bytes(_nombre).length > 0, "El nombre no puede estar vacio");
        require(_cantidadProducto > 0, "La cantidad debe ser mayor a cero");
        require(registros[_id].id == 0, "Elemento con ese ID ya existe");

        registros[_id] = NombreStruct(_id, _nombre, _cantidadProducto, _estado);
        cantidad++;
    }

    function contarElementos() public view ejecutadoPor returns (uint256) {
        return cantidad;
    }

    function inactivarElemento(uint256 _id) public ejecutadoPor {
        require(registros[_id].id != 0, "El elemento no existe");
        registros[_id].estado = false;
    }

    function pintarElementosActivos() public view ejecutadoPor {
        for (uint256 i = 1; i <= cantidad; i++) {
            if (registros[i].estado == true) {
                console.log("Elemento activo:", registros[i].id, registros[i].nombre);
            }
        }
    }
}