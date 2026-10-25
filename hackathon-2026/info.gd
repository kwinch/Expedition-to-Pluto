extends TextureButton
@onready var factNum: int = 0

func _on_pressed():
	factNum += 1
	if factNum >= 9: 
		factNum = 0
