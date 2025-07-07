extends Node
@onready var points_label: Label = %PointsLabel
@export var hearts : Array[Node]
@onready var losing_sound: AudioStreamPlayer2D = $"../LosingSound"
@onready var restart_msg: Label = $RestartMsg
@onready var banana_gain: AudioStreamPlayer2D = $"../BananaGain"

var points = 0 
var lives = 3

func decrease_health():
	lives-=1
	print(lives)
	for i in 3:
		if (i<lives):
			hearts[i].show()
		else:
			hearts[i].hide()
	if (lives==0):
		losing_sound.play()
		await get_tree().create_timer(1.2).timeout
		get_tree().reload_current_scene()

func add_points():
	points+=1
	print(points)
	points_label.text = "Points: " + str(points)
	banana_gain.play()
