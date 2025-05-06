extends Node2D
#objects
var t = preload("res://TileSystem/tile.tscn")

#settings
const tile_size = 16
var board_size_x = 12
var board_size_y = 10
var tiles = {} #tile dictionary
var mine_array = []
#sets up initial tile grid
