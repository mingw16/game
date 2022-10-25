extends Label

var score: int = 0
var scoreString
var scoreText = "00000"

var modulo = 100

func _ready():
	add_to_group('Score')
	self.text = scoreText
	$AnimationPlayer.play("shade")
	$ProgressBar.value = 0

func _addScore(value):
	if score < 10000:
		score += value
		scoreString = str(score)
		scoreText.erase(5-scoreString.length(), 5)
		scoreText += scoreString
		# update
		self.text = scoreText
		# progress bar
		if score < modulo:
			$ProgressBar.value = float(score)/float(modulo) * 100
		else:
			modulo += 2 * modulo



