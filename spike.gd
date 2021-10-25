extends KinematicBody2D





func _on_top_body_entered(body):
	if body.get_name() == "Player":
		queue_free()
