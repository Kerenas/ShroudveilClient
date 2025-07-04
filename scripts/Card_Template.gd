class_name Card extends Node2D

@export var CardName: String
@export var CardDescriptionm: String
@export var CardCost: int = 0
@export var AdventurerYield: int = 0
@export var CardImage: Node2D
@export var AdventurerLvl: int = 0
@export var CardType: String
@export var AdventurerType: String
@export var AdventurerAttack: int = 0
@export var AdventurerHP: int = 0
@export var IsCrowned: bool = false
@export var IsAdventurer: bool = false
@export var IsHQ: bool = false
@export var IsRelic: bool = false
@export var IsItem: bool = false
@export var IsSpell: bool = false
@export var BuffCounters: int = 0
@export var LingeringDamage:int = 0
@export var IsInDuel: bool = false
@export var InRaid: bool = false
@export var IsWarded: bool = false
@export var IsXCost: bool = false
@export var IsXAttack: bool = false
@export var XCostValue: int = 0
@export var XAttackValue: int = 0
@export var IsPlusAttack: bool
@export var PlusAttackValue: int
@export var IsPlusHP: bool
@export var PlusHPValue: int
@export var IsProdigy: bool


signal hovered
signal hovered_off

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#all cards must be children of Card Manager or this will error
	get_parent().connect_card_signals(self)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_mouse_entered() -> void:
	emit_signal("hovered", self)


func _on_area_2d_mouse_exited() -> void:
	emit_signal("hovered_off", self)
