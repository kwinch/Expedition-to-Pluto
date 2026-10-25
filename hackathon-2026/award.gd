extends Label
var rover: String
var organism: String

func _on_enter_rover_name_text_submitted(new_text):
	rover = new_text

func _on_organism_name_text_submitted(new_text):
	organism = new_text

func _process(_delta):
	text = "The Nobel Prize in Physics is hereby
awarded to Dr. Hopper for building and 
launching the " + str(rover) + " to Pluto and 
discovering " + str(organism) + ", the first living 
organism on another planet."
