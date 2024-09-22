extends Node2D
class_name Skill
# How much HP from enemy the skill should remove
@export var damage = 3;
#
## How fast the skill should reach the target
#@export var speed = 1.00;
# Critical chance to every skill.
@export var crit_chance = 0.00
# Critical damage start from 200%;
@export var crit_multiplier = 2.00
# Spell duration increased by X percent
@export var duration = 1.00
# How much the general skill size should increase
@export var size = 1.00

func _ready():
	$Timer.wait_time *= duration
	scale *= size

func _on_spell_finished() -> void:
	print('Sumiu')
	queue_free()

func _on_area_area_entered(area: Area2D) -> void:
	if(area.get_parent() is Enemy):
		var random_choice = randi() % 100
		if(random_choice <= crit_chance * 100):
			damage *= crit_multiplier
			print("Critou!!")
		area.get_parent().take_damage(damage)
