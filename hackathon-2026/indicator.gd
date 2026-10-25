extends AnimatedSprite2D

@onready var clock = get_node("/root/Node2D/Time Control/Clock")

func _process(_delta):
	if clock.elapsed_time < 551600:
		animation = "night"
	if clock.elapsed_time < 290800:
		animation = "sunset"
	if clock.elapsed_time < 270800:
		animation = "day"
	if clock.elapsed_time < 10000:
		animation = "sunset"
