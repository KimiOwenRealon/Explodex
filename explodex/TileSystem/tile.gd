extends Node2D
class_name tile 

var sprite_size = 16
var pos : Vector2
var bomb : bool = false
var adjactent_tiles : int

##mouse events for the tile
func _input(event):
	if event is InputEventMouseButton and event.pressed:
		var local_mouse_pos = get_local_mouse_position()
		if abs(local_mouse_pos.x) < sprite_size/2 and abs(local_mouse_pos.y) < sprite_size/2:
			if event.is_action("left_click"):
				onClick(true)
			if event.is_action("right_click"):
				onClick(false)

func onClick(left):
	if left:
		##if this is the first tile being clicked remove a set around it
		if StateManager.first_tile == false:
			StateManager.world.random_tile_remove(pos)
			StateManager.first_tile = true
		
		##logic to remove tile (queue_free())
	else:
		pass #right click on tiles
