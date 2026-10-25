extends Label

@onready var collection = get_node("../Sample_Window")

func _process(_delta):
	text = str(collection.collected) + "/3 collected"
