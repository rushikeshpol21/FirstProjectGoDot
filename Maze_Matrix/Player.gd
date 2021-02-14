extends KinematicBody2D
const ACCELERATION = 100
const MAX_SPEED = 100
const FRICTION =  500
var velocity = Vector2.ZERO
#var Mainsceen = preload("res://Main.tscn")
#onready var animationPlayer = $"../AnimationPlayer"
onready var animationTree = $AnimationTree
#onready var animation_mode = animationTree.get("parameters/playback")

func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()

	if input_vector != Vector2.ZERO:
		animationTree.set("parameters/idle/blend_position", input_vector)
		animationTree.set("parameters/walk/blend_position", input_vector)
		#animation_mode.travel("walk")
		velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * FRICTION)
	else:
		#animation_mode.travel("idle")
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)

	velocity = move_and_slide(velocity)		



const MAXSPEED = 2
var Move = Vector2()

func _process(delta):
	var Analog = $CanvasLayer/Analog
	#on analog schene weare add formula 90-rad2deg(TouchPos.angle_to_point(position))
	# then if we are want to give them back to Radian just add this formual Radian = (Angle - 90)*-1
#
	Move = Vector2(cos(-deg2rad(Analog.Angle-90)),sin(-deg2rad(Analog.Angle-90)))*Analog.Strength*MAXSPEED

	#rotation = deg2rad(-Analog.Angle)

	move_and_collide(Move)
	









	
#
#export (int) var speed = 100
#
#var velocity = Vector2()
#func get_input():
#	velocity = Vector2()
#	if Input.is_action_pressed("ui_right"):
#		velocity.x += 1
#	if Input.is_action_pressed("ui_left"):
#		velocity.x -= 1
#	if Input.is_action_pressed("ui_down"):
#		velocity.y += 1
#	if Input.is_action_pressed("ui_up"):
#		velocity.y -= 1
#	velocity = velocity.normalized() * speed
#
#func _physics_process(delta):
#	get_input()
#	velocity = move_and_slide(velocity)






	

#func _physics_process(delta):
#	if Input.is_action_pressed("ui_left"):
#		velocity.x = -1
#		animationPlayer.play("Runleft")
#	elif Input.is_action_pressed("ui_right"):
#		velocity.x = 1
#		animationPlayer.play("Runright")
#	elif Input.is_action_pressed("ui_up"):
#		velocity.y = -1
#		animationPlayer.play("Runup")
#	elif Input.is_action_pressed("ui_down"):
#		velocity.y = 1
#		animationPlayer.play("Rundown")
#	else:
#		velocity.x = 0
#		velocity.y = 0
#		animationPlayer.play("idleleft")
#	move_and_collide(velocity.normalized()*delta*speed)
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
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
	
