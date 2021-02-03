extends KinematicBody2D

var velocity = Vector2.ZERO
var direction = 1
const MAX_SPEED = 50



func _ready():
	pass

func _physics_process(delta):
	velocity.y = MAX_SPEED * direction
	if direction == 1:
		$Sprite.flip_v = false
	else:
		$Sprite.flip_v = true
	velocity = move_and_slide(velocity)

	if is_on_wall():
		direction = direction * -1
