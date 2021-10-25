extends RichTextLabel

var displaytext = ["Don't believe what you see. We are entering the city of Masks."]
var page = 0

func _ready():
	set_bbcode(displaytext[page])
	set_visible_characters(0)


func _on_typedelay_timeout():
	set_visible_characters(get_visible_characters()+1)



