/// @description  bl_data_get(table,limit,offset,props,where,sortByProps)
function osea_data_get(address ,findToken ,asset_contract_address, limit ) {

	// Headers
	var headers = ds_map_create();
	    headers[? "Content-Type"] = "application/json";

	var url = "https://api.opensea.io/api/v1/assets"
   
	// Request
	bl_action = osea_actions.retrieve_assets; // For networking event
	//bl_request = http_request(bl_data+query,"GET",headers,"");
//query for Orbiting an Epic Smile
var querystring = "?owner="+string(address)+"&token_ids"+string(findToken)+"&asset_contract_address="+string(asset_contract_address)+"&order_direction=desc&offset=0&limit"+string(limit)

bl_request = http_request(url+querystring,"GET",headers,"");

//print(response.text)



}
