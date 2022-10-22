extends KinematicBody2D

var speed = 0
var damage = 100
var velocity = Vector2(0,0)

onready var life_timer = $life_timer
onready var animation_player = $AnimationPlayer

func _ready():
	add_to_group('bullet')
	life_timer.start()
	
	
func set_bullet_init_values(ispeed,angle,iposition):
	speed = ispeed
	velocity = Vector2(1,1)
	velocity = -velocity.rotated(angle+PI/4)
	print(angle)
	#self.rotation = angle
	self.position = iposition
	
	
func _process(delta):
	if life_timer.is_stopped():
		animation_player.play("life")

func to_die():
	animation_player.play("life")
	
func _physics_process(delta):
	#move_and_slide(velocity*speed*delta)
	self.position += velocity *speed *delta
	
	
func getDamage():
	return damage
	
