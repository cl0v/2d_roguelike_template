extends Node2D

# How often the player can cast the spells. Auto Attack is also considered a spell
# Values in percentage
@export var cooldown_reduction = 0.00 # Initial 0%
# How much the general skill size should increase
@export var size = 1.00;
# How often the speel should be casted in seconds (Should have one for each type of spell)
@export var cooldown = 1.5
