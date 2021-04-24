function osea_data_get_singleContract(address ,contract_address ) {

	// Headers
	var headers = ds_map_create();
	    headers[? "Content-Type"] = "application/json";

	var url = "https://api.opensea.io/api/v1/asset_contract/"+contract_address;

	// Request
	_action = osea_actions.retrieve_contract; // For networking event

_request = http_request(url,"GET",headers,"");

}
