extends Navigation2D

var atpos
var begin = Vector2()
var distance = 0
var end = Vector2()
var enemy 
var frompos
var path
var pos
var topos
var velocity
var pp = 0
func _ready():
	set_process(true)

func _process(delta):
	if pp == 1:
		begin = $goal.position
	else:
		begin = $enemy.position
	
#	begin = $enemy.position
	end = $goal.position
	pos = get_simple_path(end, begin, true)
	path = Array(pos)
	
	#set distance
	enemy = $enemy.get_position()
	frompos = path[path.size() - 1]
	topos= path[path.size()-2]
	distance= frompos.distance_to(topos)
	
	#set navigation
	if distance<=3:
		velocity=1
		path[path.size()-1]=frompos.linear_interpolate(topos,velocity)
		#print goal position
	else:
		velocity=3
		path[path.size()-1]=frompos.linear_interpolate(topos,velocity/distance)
#		pp=1
#		position.x =700
#		position.y = 421
		#print start to end vector
	atpos = path[path.size()-1]
#	print(atpos)
	$enemy.position=atpos
	
	
	
	
	
	
	
