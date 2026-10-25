extends Label
@onready var info = get_parent()

func _ready():
	hide()

func _process(_delta):
	if info.factNum == 2:
		show()
	else: 
		hide()
