extends Node

var rng = RandomNumberGenerator.new()
var window_size = Vector2(405,720)

func createEnemy():
	var enemy_random_pos = Vector2(rng.randi_range(0,window_size.x),rng.randi_range(0,window_size.y))
	var enemy_pos_ratio = Vector2((window_size.x - enemy_random_pos.x)/window_size.x,(window_size.y - enemy_random_pos.y)/window_size.y)
	
	
func _ready():
	rng.randomize()
	pass # Replace with function body.
