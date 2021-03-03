extends KinematicBody2D
var player = null
var move = Vector2.ZERO
var speed = 1
var slimepos = Vector2()
func _physics_process(delta):
	move = Vector2.ZERO
	if player != null:
		move = position.direction_to((player.position) * speed)
	else:
		$Sprite.play("idle")
#		move = position.direction_to((Vector2(48,37)) * speed)
		move = Vector2.ZERO
	move = move.normalized()
	move = move_and_collide(move)
	
func _ready():
	pass



func _on_Area2D_body_entered(body):
	if body.name.begins_with("Player"):
		player = body
	


func _on_Area2D_body_exited(body):
	player = null
