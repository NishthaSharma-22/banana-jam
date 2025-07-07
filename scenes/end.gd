extends Area2D
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D


@export var target_level: PackedScene
func _on_body_entered(body: Node2D) -> void:
	if (body.name=="CharacterBody2D"):
		audio_stream_player_2d.play()
		await get_tree().create_timer(1.7).timeout
		get_tree().change_scene_to_packed(target_level)
