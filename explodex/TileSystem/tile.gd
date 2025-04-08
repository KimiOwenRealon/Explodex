extends Node2D
class_name tile 

var sprite_size = 16

##mouse events for the tile
func _input(event):
	if event is InputEventMouseButton and event.pressed:
		var local_mouse_pos = get_local_mouse_position()
		if abs(local_mouse_pos.x) < sprite_size/2 and abs(local_mouse_pos.y) < sprite_size/2:
			if event.is_action("left_click"):
				
				pass #remove "pass" after adding any code
			if event.is_action("right_click"):
				
				pass #remove "pass" after adding any code
