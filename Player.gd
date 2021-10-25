extends KinematicBody2D

#CONSTANTS
const SPEED = 70
const GRAVITY = 10
const JUMP = -250
const FLOOR = Vector2(0, -1)



#VARIABLES
var velocity = Vector2()
var on_ground = false
var is_dead = false

# warning-ignore:unused_argument
func _physics_process(delta):
	if is_dead == false:
		if Input.is_action_pressed("ui_right"):
			velocity.x = SPEED
			$Animation.play("Run")
			$Sprite.flip_h = false
		elif Input.is_action_pressed("ui_left"):
			velocity.x = -SPEED
			$Animation.play("Run")
			$Sprite.flip_h = true
		else:
			velocity.x = 0
			if on_ground == true:
				$Animation.play("Idle")
	
		if Input.is_action_pressed("ui_up"):
			if on_ground == true:
				velocity.y = JUMP
				on_ground = false
		velocity.y = velocity.y + GRAVITY
	
		if is_on_floor():
			on_ground = true
		else:
			on_ground = false
			if velocity.y < 0:
				$Animation.play("Jump")
			else:
				$Animation.play("Fall")
		velocity = move_and_slide(velocity, FLOOR)
		if get_slide_count() > 0:
			for i in range(get_slide_count()):
				if "enemy" in get_slide_collision(i).collider.name:
					dead()
		if get_slide_count() > 0:
			for i in range(get_slide_count()):
				if "spikes" in get_slide_collision(i).collider.name:
					dead()



func dead():
	is_dead = true
	velocity = Vector2(0, 0)
	$Animation.play("Die")
	$CollisionShape2D.disabled = true
	$Timer.start()

func _on_Timer_timeout():
	
	#get_tree().change_scene("res://Stage1.tscn")
	get_tree().reload_current_scene()

func _on_run():
	if !$Run.playing:
		$Run.play()
		$Jump.stop()
		$Death.stop()

func _on_jump():
	if !$Jump.playing:
		$Jump.play()
		$Run.stop()
		$Death.stop()

func _on_die():
	if !$Death.playing:
		$Death.play()
		$Jump.stop()
		$Run.stop()

func _on_idle():
	if $Run.playing:
		$Run.stop()
		$Jump.stop()


