extends Spatial

onready var player1pos = $Player1Pos
onready var player2pos = $Player2Pos

func _ready():
	var player1 = preload("res://Player/Player.tscn").instance()
	player1.global_transform = player1pos.global_transform
	add_child(player1)
	
	var player2 = preload("res://Player/Player.tscn").instance()
	player2.set_name(str(Global.player2id))
	player2.set_network_master(Global.player2id)
	player2.global_transform = player2pos.global_transform
	add_child(player2)
