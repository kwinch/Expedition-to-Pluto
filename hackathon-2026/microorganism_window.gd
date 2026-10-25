extends Sprite2D
@onready var rect = get_parent()

func _ready():
	hide()

func _on_sample_collection_pressed():
	if rect.microorganism == true:
		show()
	else:
		hide()
