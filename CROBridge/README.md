# CROBridge

CROBridge contract connects the Cronos EVM layer to the Cosmos IBC layer. Users can send EVM transactions to trigger IBC transfers and bridge CRO from Cronos Mainnet Beta to Crypto.org Chain.

## Details

By invoking `send_cro_to_crypto_org` method on the contract, the contract will emit `__CronosSendCroToIbc(address sender, string recipient, uint256 amount)`. This event is listened by the Cronos module at Cosmos layer. Upon intercepting the event, the Cronos module will create an IBC transfer with the sender, recipient and amount to Crypto.org Chain.

### Decimal Places

On Cronos Mainnet Beta, CRO has 18 decimal places while on Crypto.org Chain, CRO only has 8 decimal places. There is an automatic conversion when Cronos module handle the `__CronosSendCroToIbc` event in which any decimal places beyond 8 decimal places on Cronos are not deduted from the sender balance (Reference: [https://github.com/crypto-org-chain/cronos/blob/16dab5d64c77c7328ac10826fe913bd0256037d7/x/cronos/keeper/ibc.go#L95](https://github.com/crypto-org-chain/cronos/blob/16dab5d64c77c7328ac10826fe913bd0256037d7/x/cronos/keeper/ibc.go#L95))

### Contract Address

Cronos Mainnet Beta: [0x6b1b50c2223eb31E0d4683b046ea9C6CB0D0ea4F](https://cronoscan.org/address/0x6b1b50c2223eb31E0d4683b046ea9C6CB0D0ea4F).