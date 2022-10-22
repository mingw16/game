extends "res://scripts/enemys/enemy.gd"

func _ready():
	add_to_group('enemy')
	self.scale *= 0.5


func _process(delta):
	if health <=0:
		queue_free()
	if self.position.distance_to(dir) <10 :
		queue_free()
		
		
func _physics_process(delta):
	self.position += delta * speed * self.position.direction_to(dir)
	




func _on_Node2D_body_entered(body):
	if body.is_in_group('bullet'):
		health-=body.getDamage()
		body.to_die()

