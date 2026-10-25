extends TextureRect

func _ready():
	hide()
	
func _on_sunset_pressed():
	show()
	
func _on_exit_sunset_pressed():
	hide()
