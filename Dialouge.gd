extends Polygon2D

func _ready():
	pass
func _on_startdelay_timeout():
	queue_free()
