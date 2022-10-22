extends KinematicBody2D

export var speed = 2
var acceleratino = 50
var RELOAD_TIME = 0.2

onready var reload_timer = $reload_timer
onready var barrel_node = $barrel

func shoot():
	reload_timer.start()
	barrel_node.shoot(300,self.rotation,self.position)
func _ready():
	reload_timer.wait_time = RELOAD_TIME
	
func _input(event):
	if event.is_action_pressed("shoot") and reload_timer.is_stopped():
		shoot()

func _physics_process(delta):
	rotate(speed* delta)

