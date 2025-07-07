extends Node

var player_deck = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func draw_card():
	if player_deck.size() == 0:
		$Deck/Area2D/CollisionShape2D.disabled = true
		$Deck/Sprite2D.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
