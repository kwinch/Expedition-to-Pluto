extends AnimatedSprite2D
@onready var clock = get_node("/root/Node2D/Time Control/Clock")
@onready var weather = get_node("/root/Node2D/Time Control/Weather")

var power: float 
const MAX_POWER: float = 10000
var isDay: bool

func _process(delta: float) -> void:
	delta = delta 
	if clock.elapsed_time < 280800:
		isDay = true
	else:
		isDay = false
	
	if isDay == true && weather.weatherState == "sunny": 
		power += 1
	else:
		power -= 1
	
	if power >= 9000: 
		animation = "Battery_5"
	if power <= 7000: 
		animation = "Battery_4"
	if power <= 5000: 
		animation = "Battery_3"
	if power <= 3000: 
		animation = "Battery_2"
	if power <= 0: 
		animation = "Battery_1"
	if power > MAX_POWER:
		power = 10000
	if power < 0: 
		power = 0
