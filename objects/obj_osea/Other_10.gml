/// @description RETRIEVE A SINGLE ASSET
//Made by JesterOC.

//ASSET: Orbiting an Epic Smile
token_id = "103887835714847335099518092094099716638420512866395442404453857314397663265768";
asset_contract_address = "0x495f947276749ce646f68ac8c248420045cb7b5e";

osea_data_get_singleAsset(
"0xe5ae6e6826b27d064c59a1d161a97e2c29057985", //address of wallet to check
token_id, //token_id to look for
asset_contract_address //asset contract address
)

//The following 2 wallets SHOULD always have some 'Orbiting an Epic Smile' NFT tokens...
//you can play around with http 'GET' functions with these: 

//JesterOC WALLET
//0xe5ae6e6826b27d064c59a1d161a97e2c29057985

//JOSH's LOST WALLET (use for testing?)
//0xb3a3f45c606a3e8ee9831c5172c7013157922f30