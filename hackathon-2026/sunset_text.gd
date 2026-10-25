extends TextureRect
@onready var rect = get_parent()

func _ready():
	hide()

func _on_camera_pressed():
	if rect.sunset == true:
		show()
	else:
		hide()
