extends Node2D

const CARD_SCENE_PATH = "res://Scenes/Adventurers/astrid.tscn"
const CARD_WIDTH = 150
const HAND_Y_POSITION = 960
var player_hand = []
var center_screen_x
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	center_screen_x = get_viewport().size.x / 2
	pass

func add_card_to_hand(astrid):
	player_hand.insert(0,astrid)
	update_hand_positions()
	

func update_hand_positions():
	for i in range(player_hand.size()):
		var new_position = Vector2(calculate_card_position(i), HAND_Y_POSITION)
		var card = player_hand[i]
		animate_card_to_position(card, new_position)

func animate_card_to_position(card, new_position):
	var tween = get_tree().create_tween()
	tween.tween_property(card, "position", new_position, 0.1)
	#object, starting position, the position it is moving to, the speed it moves at
	


func calculate_card_position(index):
	var total_width = (player_hand.size() -1) * CARD_WIDTH
	var x_offset = center_screen_x + index * CARD_WIDTH - total_width / 2
	return x_offset
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
