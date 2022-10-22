extends "res://scripts/enemys/enemy.gd"

func _ready():
	self.scale *= 0.5
func _physics_process(delta):
	self.position += delta * speed * self.position.direction_to(dir)
	print(self.position.direction_to(dir)*10)
	
	
