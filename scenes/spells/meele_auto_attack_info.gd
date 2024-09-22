extends Node2D

class_name SpellInfo

enum Target {CLOSE_ENEMY, RANDOM_IN_RANGE, RANDOM_ENEMY}

@onready var player = $"../.."

@export var target: Target
@export var spell_ref: PackedScene

func _ready() -> void:
	$CastArea.player = player

func _on_cast() -> void:
	var spell = spell_ref.instantiate()
	spell.global_position = $CastArea.cast_position
	#print($MeeleAutoAttackCastArea.cast_position)
	get_window().add_child(spell)
