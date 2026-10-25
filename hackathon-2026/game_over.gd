extends ColorRect
@onready var status: Control = get_node("/root/Node2D/HP")
@onready var battery: AnimatedSprite2D = get_node("/root/Node2D/Time Control/Clock/Battery")

func _ready(): 
	hide()

func _process(_delta):
	if status.hp <= 0 || battery.power <= 0: 
		show()
