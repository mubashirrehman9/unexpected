extends Area2D

export(String, FILE, "*.tscn") var stage

func _physics_process(delta):
	$AnimationPlayer.play("default")
	$Sprite.flip_h = true


	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player":
			print(stage)
			get_tree().change_scene(stage)
	for body in bodies:
		if body.name == "Player2":
			print(stage)
			get_tree().change_scene(stage)
