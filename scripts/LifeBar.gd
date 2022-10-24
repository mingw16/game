extends ProgressBar


func _ready():
	add_to_group('LifeBar')
	self.value = 100
	
	
func _addDamage(damage):
	if value > 0:
		self.value -= damage
		var stylebox = get("custom_styles/fg")
		stylebox.bg_color.h = lerp(0, 0.3, value/100)
