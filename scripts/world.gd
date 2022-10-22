extends Node

var rng = RandomNumberGenerator.new()
var window_size = Vector2(405,720)
var enemy_scene = preload("res://scenes/enemys/Square.tscn")

func createEnemy():
	var enemy_random_pos = Vector2(rng.randi_range(0,window_size.x),rng.randi_range(0,window_size.y))
	var spawn_spot = rng.randi_range(0,3)
	match spawn_spot:
		0:
			enemy_random_pos.y=-10
		1:
			enemy_random_pos.y=10 + window_size.y
		2:
			enemy_random_pos.x=-10
		3:
			enemy_random_pos.x=10+ window_size.x
	var enemy_instance = enemy_scene.instance()
	enemy_instance.init_values(Vector2(50,50),Vector2(300,300))
	add_child(enemy_instance)
	
	
	
func _ready():
	createEnemy()
	rng.randomize()
	pass # Replace with function body.
