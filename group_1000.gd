extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var houses
var elapsed_time = 0
var temp_vector = Vector3()
func _ready():
	set_process(true)
	houses = get_children()

func _process(delta):
	elapsed_time += delta
	var i = 0
	for house in houses:
		i += 0.5
		temp_vector.x = sin(elapsed_time + i)
		temp_vector.z = cos(elapsed_time + i)
		house.set_translation(temp_vector)
		
