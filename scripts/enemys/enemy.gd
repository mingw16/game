extends Node

var speed = 30
var damage = 10
var health = 100
var angle = 0.0
var dir = Vector2()
var pos = Vector2()

func _ready():
	pass
	
func init_values(ipos:Vector2, idir:Vector2, angle):
	self.position = ipos
	dir = idir
	self.rotation = angle
	

	

