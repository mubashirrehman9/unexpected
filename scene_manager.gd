extends CanvasLayer

export(String, FILE, "*.tscn") var Scene
#const scene_mame = "res://Intro.tscn"

func _ready():
	get_node("TextureRect").hide()
	pass

func fade_in():
	
	#fade_in
	get_node("TextureRect").show()
	get_node("anim").play("fade_in")
	yield(get_node("anim"),"animation_finished")
	
	#change scene	
	get_tree().change_scene(Scene)

func fade_out():
	#fade_out
	get_node("TextureRect").show()
	get_node("anim").play("fade_out")
	yield(get_node("anim"), "animation_finished")
	get_node("TextureRect").hide()
	
	pass
	
