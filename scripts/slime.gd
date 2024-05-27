extends Node2D

const SPEED=60

var direction=1
@onready var ray_cast_right = $RayCastRight
@onready var rat_cast_left = $RatCastLeft
@onready var animated_sprite = $AnimatedSprite2D

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _process(delta):
	
	if ray_cast_right.is_colliding():
		animated_sprite.flip_h=true
		direction=-1
	if rat_cast_left.is_colliding():
		animated_sprite.flip_h=false
		direction=1
	
	position.x+=direction*delta*SPEED
