extends Area2D

var count = 0
onready var timer = get_node("Timer")

func _ready():
	timer.set_wait_time(2)
	timer.start()
	$AnimatedSprite.play()


func _on_Timer_timeout():
	count += 1
#	print(count)
	showhidetile()
	
func showhidetile():
	if count % 2 == 0 :
		$AnimatedSprite.hide()
	else:
		$AnimatedSprite.show()
		$AnimatedSprite.play()
