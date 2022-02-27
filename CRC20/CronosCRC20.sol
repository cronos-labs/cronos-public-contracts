// SPDX-License-Identifier: GNU-3
pragma solidity 0.6.11;

import "./ModuleCRC20.sol";

contract CronosCRC20 is ModuleCRC20 {
    /// @param _name Token's name
    /// @param _denom Token's base unit naming used in tendermint level mapping
    /// @param _decimal Token's decimal
    constructor (
        string memory _name,
        string memory _denom,
        uint8 _decimal
    ) ModuleCRC20(_denom, _decimal) public {
        setName(_name);
    }
}
