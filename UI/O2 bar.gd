extends TextureProgressBar

@export var nr:int 

var s = 0

func get_oxy():
	nr = value
	return value
	
func set_oxy_bar(x):
	if (x == 0):
		value = 0
		return 
	value = x
	
func _physics_process(delta):
	if (s == 0):
		value = 100
	s = s + 1
	if (s > 13):
		set_oxy_bar(get_oxy()-1)
		s = 1
