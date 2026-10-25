extends AnimatedSprite2D
@onready var hp_controller = get_node("/root/Node2D/HP")

func _process(_delta):
	if hp_controller.hp >= 5: 
		animation = "HP_Full"
	if hp_controller.hp == 4: 
		animation = "HP_4"
	if hp_controller.hp == 3: 
		animation = "HP_3"
	if hp_controller.hp == 2: 
		animation = "HP_2"
	if hp_controller.hp == 1: 
		animation = "HP_1"
	if hp_controller.hp <= 0: 
		animation = "HP_Empty"
