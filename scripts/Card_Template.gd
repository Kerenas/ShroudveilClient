class_name Card extends Node2D

@export var CardName: String
@export var CardDescriptionm: String
@export var CardCost: int = 0
@export var AdventurerYield: int = 2
@export var CardImage: Node2D
@export var AdventurerLvl: int = 1
@export var CardType: String
@export var AdventurerType: String
@export var AdventurerAttack: int = 0
@export var AdventurerHP: int = 4
@export var IsCrowned: bool = false
@export var IsAdventurer: bool = true
@export var IsItem: bool = false
@export var IsSpell: bool = false
@export var BuffCounters: int = 0
@export var LingeringDamage:int = 0
@export var IsInDuel: bool = false
@export var InRaid: bool = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
