extends KinematicBody2D
#var velocity = 100
#var speed = 100
#var Mainsceen = preload("res://Main.tscn")
onready var animationPlayer = $"../AnimationPlayer"
#onready var animationTree = $AnimationTree
var velocity = Vector2.ZERO
func _ready():
	pass
func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		velocity.x = -1
		animationPlayer.play("Runleft")
	elif Input.is_action_pressed("ui_right"):
		velocity.x = 1
		animationPlayer.play("Runright")
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -1
		animationPlayer.play("Runup")
	elif Input.is_action_pressed("ui_down"):
		velocity.y = 1
		animationPlayer.play("Rundown")
	else:
		velocity.x = 0
		velocity.y = 0
		animationPlayer.play("idleleft")
	move_and_collide(velocity)
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
#	var input_vector = Vector2.ZERO
#	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
#	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
#	input_vector = input_vector.normalized()
#
#	if input_vector != Vector2.ZERO:
#		animationTree.set("parameters/idle/blend_position", input_vector)
#		animationTree.set("parameters/run/blend_position", input_vector)		
#		velocity = input_vector * Max_Speed
#	else:
#		velocity = Vector2.ZERO
#
#	move_and_collide(velocity * delta)
	
