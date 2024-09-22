extends CharacterBody2D
class_name Enemy

@export var texture: Texture2D

# How much HP the enemy do have
@export var hitpoints = 5

# Enemies should drop experience
@export var experience_droped = 1

# Define how speedy the enemy is
@export var speed = 150

# Attack cooldown in seconds
@export var spell_cooldown = 0.5

func _ready():
	$Sprite2D.texture = texture

func _on_hit_box_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	#print(area)
	pass
