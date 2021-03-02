extends KinematicBody2D

var velocity = Vector2(0,1)
var direction = 1
const MAX_SPEED = 50

func _ready():
	pass

func _physics_process(delta):
	if velocity.x < 0:
		velocity.x = MAX_SPEED * direction
	if velocity.x > 0:
		velocity.x = MAX_SPEED * direction
	if velocity.y < 0:
		velocity.y = MAX_SPEED * direction
	if velocity.y > 0:
		velocity.y = MAX_SPEED * direction

	if direction == 1:
		$Sprite.flip_v = false
	else:
		$Sprite.flip_v = true
	velocity = move_and_slide(velocity)

	if is_on_wall():
		direction = direction * -1
		var random_number = randi() % 4
		match random_number:
			0: velocity.x +=1
			1: velocity.x -=1
			2: velocity.y +=1
			3: velocity.y -=1

	for index in get_slide_count():
		var collision = get_slide_collision(index)
		if collision.collider.name.begins_with('Player'):
			print("Player hit enemy")
