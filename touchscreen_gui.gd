extends MarginContainer

func _ready():
	get_parent().get_node("touchscreen_gui.tscn").position.x = get_parent().get_node("Player").position.x
