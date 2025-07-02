extends Node2D

var PORT = 42069
var ADDRESS = "127.0.0.1"

func _ready():
	var network = ENetMultiplayerPeer.new()
	
	network.create_server(42069)
	network.create_client("127.0.0.1", 42069)
	
	multiplayer.multiplayer_peer = network
	
	var id = multiplayer.get_unique_id()
	
	set_multiplayer_authority(id)
	is_multiplayer_authority()

@rpc
func rpc_function():
	pass
