extends TextureRect

func _ready():
	hide()

func _on_volcano_button_up():
	show()

func _on_exit_volcano_pressed():
	hide()
