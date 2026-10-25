extends TextureRect

func _ready():
	hide()
	
func _on_valley_pressed():
	show()

func _on_exit_valley_pressed():
	hide()
