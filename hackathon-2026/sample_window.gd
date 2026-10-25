extends ColorRect
var microorganism: bool
var ice: bool
var rock: bool
var collected: int

func _ready():
	microorganism = false
	ice = false
	rock = false
	collected = 0
	hide()

func _on_sample_collection_pressed():
	show()

func _on_exit_pressed():
	hide()

func _on_button_next_pressed():
	microorganism = true
	collected += 1

func _on_button_ice_pressed():
	ice = true
	collected += 1

func _on_button_rock_pressed():
	rock = true
	collected += 1
