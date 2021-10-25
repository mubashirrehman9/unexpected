extends Control


func _input(event):
	if event.is_action_pressed("pause"):
		$click.play()
		var new_pause_state = not get_tree().paused
		get_tree().paused = new_pause_state
		visible = new_pause_state


func _on_TextureButton_pressed():
	$click.play()
	var new_pause_state = not get_tree().paused
	get_tree().paused = new_pause_state
	visible = new_pause_state
	


func _on_TextureButton2_pressed():
	$click.play()
	get_tree().change_scene("res://Title.tscn")
	var new_pause_state = not get_tree().paused
	get_tree().paused = new_pause_state
	visible = new_pause_state


func _on_TextureButton3_pressed():
	$click.play()
	get_tree().quit()
