extends Node2D
class_name Skill
# How much HP from enemy the skill should remove
@export var damage = 1;
# How much the general skill size should increase
@export var size = 1.00;
# How fast the skill should reach the target
@export var speed = 1.00;
# How often the speel should be casted in seconds
@export var cooldown = 1.5
# How often the player can cast the spells. Auto Attack is also considered a spell
# Values in percentage
@export var cooldown_reduction = 0.00 # Initial 0%
# Critical chance to every skill.
@export var crit_change = 0.00 # Initial 0%
# Spell duration in seconds
@export var duration = 0.1

func _ready():
	$Timer.wait_time = duration


func _on_spell_finished() -> void:
	if($Timer.is_stopped()):
		print('Acabou')
		
		queue_free()
