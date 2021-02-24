extends TileMap

signal win

func _ready():
	$Label.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(_body):
	emit_signal("win")
	$Label.text = "You Win !!!!"
	$Label.show()
	print("Win")
pass # Replace with function body.
