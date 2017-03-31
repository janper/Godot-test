extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var houses
var elapsed_time = 0
var temp_vector = Vector2()
func _ready():
	set_process(true)
	houses = get_children()
func _process(delta):
	
	elapsed_time += delta
	var i = 0
	for house in houses:
		i += 0.5
		temp_vector.x = sin(elapsed_time + i) * 200
		temp_vector.y = cos(elapsed_time + i) * 200
		house.set_offset(temp_vector)
		house.set_color(Color(sin(elapsed_time + i), cos(elapsed_time + i), sin(elapsed_time / 2 + i), 1))
