/// @description  bl_data_get(table,limit,offset,props,where,sortByProps)
function osea_data_get_singleAsset(address ,findToken ,contract_address ) {

	// Headers
	var headers = ds_map_create();
	    headers[? "Content-Type"] = "application/json";

	var url = "https://api.opensea.io/api/v1/asset/"+contract_address+"/"+findToken+"/"

	_action = osea_actions.retrieve_assets; // For networking event
	
	//query
	var querystring = "?account_address="+string(address)//+"&token_ids"+string(findToken)+"&asset_contract_address="+string(asset_contract_address)+"&order_direction=desc&offset=0&limit"+string(limit)

	_request = http_request(url+querystring,"GET",headers,"");


}
