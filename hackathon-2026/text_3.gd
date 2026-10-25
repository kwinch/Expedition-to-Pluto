extends Label

func _ready():
	hide()

func _on_button_3_pressed():
	show()

func _on_enter_rover_name_text_submitted(new_text):
	text = "I've got it! I'll call it " + str(new_text) + "! All that's 
	left to do is to make contact with the surface 
	of Pluto!"
