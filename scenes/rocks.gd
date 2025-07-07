extends RigidBody2D

@onready var game_manager: Node = %GameManager
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var label: Label = $CanvasLayer/Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body.name== "CharacterBody2D"):
		audio_stream_player_2d.play()
		var y_value_measure = position.y-body.position.y
		var x_value_measure = body.position.x - position.x
		print(y_value_measure)
		game_manager.decrease_health()
		if (x_value_measure>0):
			body.jump_side(500)
		else:
			body.jump_side(-500)
			
			
			
		
