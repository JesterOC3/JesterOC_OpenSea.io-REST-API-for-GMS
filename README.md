# JesterOC_OpenSea.io-REST-API-for-GMS
VERY Simple OpenSea REST API implementation in Game Maker Studio. Made for 2.3+

NO API KEY NEEDED.

This is basically just one REST function. It checks a wallet address for ownership of a single asset returning quantity (as well as opensea.io username)
There are some others in there that I was looking at making, but don't see the need.

The example is set to run in the create event but is easily changed.
The example also uses hardcoded wallet_address. (

Function:

    osea_data_get_singleAsset(wallet_address ,token_id_to_find ,contract_address_of_asset )

where: 

    wallet_address = the address of the wallet to check for asset.
    token_id_to_find = the token_id of the asset to look for
    contract_address_of_asset = the contract address of the asset to look for

