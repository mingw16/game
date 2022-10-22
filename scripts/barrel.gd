extends Node


var bullet_scene= preload("res://scenes/Bullet.tscn")


func _ready():
	pass # Replace with function body.


func shoot(speed,angle,iposition):
	var bullet_instance = bullet_scene.instance()
	bullet_instance.set_bullet_init_values(speed, angle, iposition)
	bullet_instance.set_as_toplevel(true)
	add_child(bullet_instance)
	
