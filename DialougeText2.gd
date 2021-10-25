extends RichTextLabel

var displaytext = ["You better start behaving from now on husband to be."]
var page = 0

func _ready():
	set_bbcode(displaytext[0])
	set_visible_characters(0)



func _on_typedelay_timeout():
	set_visible_characters(get_visible_characters()+1)
