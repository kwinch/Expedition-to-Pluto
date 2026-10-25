extends Button

func _ready():
	disabled = true

func _on_organism_name_text_submitted(_new_text):
	disabled = false
