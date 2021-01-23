extends KinematicBody2D
func _ready():
	pass # Replace with function body.

var motion = Vector2()

func _physics_process(delta):
	var Player = get_parent().get_node("Player")

	position += (Player.position - position) / 50
	look_at(Player.position)

	move_and_collide(motion)
