extends Node2D

func _ready():
	$scene_manager.fade_out()
	pass


func _on_TextureButton_pressed():
	get_tree().change_scene("res://Stage1.tscn")
