extends Node


func _on_main_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_main_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/you_won.tscn")
