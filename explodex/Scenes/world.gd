extends Node2D
#objects
var t = preload("res://TileSystem/tile.tscn")

#settings
const tile_size = 16
var board_size_x = 12
var board_size_y = 10
var tiles = {}

#sets up initial tile grid
func create_grid():
	for i in range(0, board_size_x):
		for j in range(0, board_size_y):
			##instantiate the tile
			var ti = t.instantiate()
			add_child(ti)
			var offset = Vector2((board_size_x*tile_size)/2-tile_size/2, (board_size_y*tile_size)/2-tile_size/2)
			ti.position = Vector2(i*tile_size,j*tile_size) - offset
			
			#add the tile to a dictianary, indexed by a vec2 e.g. first tile would be gotten by tiles.get(Vector2(0,0))
			tiles.set(Vector2(i,j), ti)

##remove tiles randomly with a walker
func random_tile_remove(start_pos : Vector2):
	#create the walker object and set our start position
	var w = Walker.new()
	w.start_pos = start_pos

	#iterrate through the tikes the walker has "walked over", these ones will be removed
	var to_remove = w.walk()
	for i in to_remove:
		var t = tiles.get(i)
		if t != null:
			t.queue_free()

func _ready():
	create_grid()
