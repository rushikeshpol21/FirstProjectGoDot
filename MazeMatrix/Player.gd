extends KinematicBody2D

var movespeed = 500
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	
	var motion = Vector2()
	var bullet_speed = 2000
	var bullet = preload("res://Bullet.tscn")
	
	if Input.is_action_pressed("ui_up"):
		motion.y -= 1
	if Input.is_action_pressed("ui_down"):
		motion.y += 1
	if Input.is_action_pressed("ui_right"):
		motion.x += 1
	if Input.is_action_pressed("ui_left"):
		motion.x -= 1
	motion.normalized()
	motion = move_and_slide(motion * movespeed)	
	#look_at(get_global_mouse_position())
	
func kill():
	get_tree().reload_current_scene()


func _on_Area2D_body_shape_entered(body_id, body, body_shape, area_shape):
	if "Enemy" in body.name:
		kill()

