extends Sprite2D

@export var trigger_distance: float = 100.0
@onready var trigger_sprite: Sprite2D = get_node("/root/Node2D/Rover")
@onready var bar: Control = get_node("/root/Node2D/HP")
@onready var weather: AnimatedSprite2D = get_node("/root/Node2D/Time Control/Weather")
var damage: bool = false

func _process(_delta: float) -> void:
	var distance = global_position.distance_to(trigger_sprite.global_position)

	if distance <= trigger_distance:
		weather.weatherState = "ice"
	
		if damage == false:
			bar.hp -= 1
			damage = true
	else: 
		damage = false
