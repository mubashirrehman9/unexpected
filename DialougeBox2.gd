extends Polygon2D

func _ready():
	pass
func _on_startdelay_timeout():
	get_tree().change_scene("res://Credits.tscn")
