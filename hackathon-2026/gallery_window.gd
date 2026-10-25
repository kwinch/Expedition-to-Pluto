extends ColorRect

var volcano: bool
var valley: bool
var sunset: bool
var collected: int

func _ready():
	hide()
	volcano = false
	valley = false
	sunset = false
	collected = 0

func _on_exit_pressed():
	hide()

func _on_camera_pressed():
	show()

func _on_exit_valley_pressed():
	valley = true
	collected += 1

func _on_exit_volcano_pressed():
	volcano = true
	collected += 1

func _on_exit_sunset_pressed():
	sunset = true
	collected += 1
