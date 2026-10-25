extends Label

@onready var photos = get_node("/root/Node2D/Gallery/Camera/Gallery_Window")

func _process(_delta):
	text = str(photos.collected) + "/3 collected"
