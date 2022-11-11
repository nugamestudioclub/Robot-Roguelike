extends KinematicBody2D
class_name Player

export var SPEED = 300.0
export var JUMP_SPEED = -400.0

var velocity = Vector2()

var in_air = true

# This is set to 500 in this project
onready var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(_delta):
	pass

