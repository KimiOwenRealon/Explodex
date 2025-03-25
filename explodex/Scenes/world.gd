extends Node2D
#objects
var t = preload("res://TileSystem/tile.tscn")

#settings
const tile_size = 16
var board_size_x = 10
var board_size_y = 10

#sets up initial tile grid
func create_grid():
	for i in range(0, board_size_x):
		for j in range(0, board_size_y):
			var ti = t.instantiate()
			add_child(ti)
			ti.position = Vector2(i*tile_size,j*tile_size) - Vector2((board_size_x*tile_size)/2, (board_size_y*tile_size)/2)

func _ready():
	create_grid()
