extends Node2D


func _ready():
	$scene_manager.fade_out()
	

func _on_TextureButton_pressed():
	$click.play()
	get_tree().change_scene("res://Title.tscn")
