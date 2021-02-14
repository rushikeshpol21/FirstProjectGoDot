extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var time = 0
onready var timerNode = get_node("StartTimer")
export var timeFlag := true

# Called when the node enters the scene tree for the first time.
func _on_Main_ready():
	
	#$PlayerNode.add_to_group("Player")
	timerNode.connect("win", self, "_on_wintile_win") 
	timerNode.set_wait_time(1)
	timerNode.start()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_StartTimer_timeout():
	if timeFlag == true:
		time +=1
		$TimeLabel.text = String(time)
		print(time)
		$TimeLabel.show()
	else:
		print("Stop timer")
		$level1/TimeLabel.hide()
	pass # Replace with function body.

func _on_wintile_win():
	print("Stop timer")
	timeFlag = false
	timerNode.stop()
	pass # Replace with function body.
