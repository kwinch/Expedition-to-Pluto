extends Sprite2D

@export var trigger_distance: float = 100.0
@onready var trigger_sprite: Sprite2D = get_node("/root/Node2D/Rover")
@onready var battery = get_parent()
@onready var clock: Label = get_node("/root/Node2D/Time Control/Clock")
@onready var weather: AnimatedSprite2D = get_node("/root/Node2D/Time Control/Weather")
var isHome: bool 

func _ready():
	isHome = false

func _process(_delta: float) -> void:
	var distance = global_position.distance_to(trigger_sprite.global_position)

	if distance <= trigger_distance:
		battery.power += 2
		isHome = true
		if clock.elapsed_time >= 280800:
			weather.weatherState = "clear"
		if clock.elapsed_time < 280800:
			weather.weatherState = "sunny"
	else: 
		isHome = false
		
