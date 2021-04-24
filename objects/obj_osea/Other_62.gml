/// @description osea

// If response from Backendless
if (async_load[? "id"] == _request) {

if async_load[? "result"] == undefined {exit;}//BAIL OUT

show_debug_message(json_encode(async_load))

    // Response JSON
    json = json_decode(async_load[? "result"]);
	
    if !ds_exists(json, ds_type_map) {exit;}//BAIL OUT

    // If there was an error
    if (ds_map_exists(json,"code")) {
        // Error message
        var code = json[? "code"];
        var msg = json[? "message"];
        // Show message or something
        show_message(msg);        
        // Abort
       // exit;
    }
    
	
    // How to process each action
    switch (_action) {
		case osea_actions.retrieve_contract:
		show_message_async(json_encode(json));
		break;
		
		case osea_actions.retrieve_assets:
			// Do something
			show_message_async(json_encode(json));
			
			var ownership_map = json[? "ownership"];
			if ds_exists(ownership_map,ds_type_map) {
			var owner_map =	ownership_map[? "owner"];
			var user_map = owner_map[? "user"];
			
			show_message_async(string(user_map[?"username"])+" owns x"+string(ownership_map[? "quantity"]));
				
			}
		break;
    
    }

//clean up
if !is_string(json){
if ds_exists(json, ds_type_map) {ds_map_destroy(json)}
}

}

