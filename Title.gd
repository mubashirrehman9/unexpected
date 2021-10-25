extends Node2D





# Called when the node enters the scene tree for the first time.
func _ready():
	$MarginContainer/VBoxContainer/VBoxContainer/TextureButton.grab_focus()
	
	

func _physics_process(delta):
	if $MarginContainer/VBoxContainer/VBoxContainer/TextureButton. is_hovered() == true:
		$MarginContainer/VBoxContainer/VBoxContainer/TextureButton. grab_focus()
	
	if $MarginContainer/VBoxContainer/VBoxContainer/TextureButton3. is_hovered() == true:
		$MarginContainer/VBoxContainer/VBoxContainer/TextureButton3. grab_focus()
	if $MarginContainer/VBoxContainer/VBoxContainer/TextureButton4. is_hovered() == true:
		$MarginContainer/VBoxContainer/VBoxContainer/TextureButton4. grab_focus()
		




func _on_TextureButton_pressed():
	$click.play()
	$scene_manager.fade_in()
	
	
	


func _on_TextureButton4_pressed():
	$click.play()
	get_tree().quit()
	





func _on_TextureButton3_pressed():
	$click.play()
	get_tree().change_scene("res://Credits.tscn")
