class_name Walker

var start_pos : Vector2
var max_steps = 8
var change_direction_chance = 0.4
const DIRECTIONS = [Vector2.RIGHT, Vector2.UP, Vector2.LEFT, Vector2.DOWN]

func walk():
	#randomize the seeed
	randomize()
	
	var steps = max_steps
	var pos = start_pos
	var step_history = [start_pos]
	var direction = DIRECTIONS[randi_range(0,3)]
	
	#loop for our max amount of steps
	while(steps > 0):
		#walk forward once in direction and append
		pos += DIRECTIONS[randi_range(0,3)]
		
		#if our step isn't in our path already add it
		if !step_history.has(pos):
			step_history.append(pos)
			steps -= 1
	return step_history
