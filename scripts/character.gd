extends CharacterBody2D
class_name Player
# How much the player can be alive, 0 means death
@export var hitpoints = 100
# Helps the player with better drops from cards and monsters.
@export var lucky = 0.00
# How fast can the player move in the map
@export var base_move_speed = 150
# How much the move speed will increase
@export var move_speed_multiplier = 1.00
# How much will the player block
@export var defense = 10
# How much the defense should increse
@export var defense_multiplier = 1.00
# Experiênce required to the level 2.
@export var experience_to_next_level = 10
# Multiply the base experiênce when the level increases.
@export var experience_percentage_increase = 0.30 # Means 30%

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	velocity = Input.get_vector("ui_left","ui_right","ui_up","ui_down") * base_move_speed * move_speed_multiplier
	move_and_slide()
