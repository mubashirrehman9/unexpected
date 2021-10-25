extends Node2D


func _ready():
	$scene_manager.fade_out()
	$startdelay.start(1)
	$bg.set_volume_db(-10)
 
func _on_startdelay_timeout():
	$Intro2.play()
	
func _on_Intro2_finished():
	$enddelay.start(0)

func _on_enddelay_timeout():
	$scene_manager.fade_in()
	get_tree().change_scene("res://Stage3.tscn")
