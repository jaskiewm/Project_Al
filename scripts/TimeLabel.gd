extends Label
# Purpose of script is to ensure time is always up to date

var time = OS.get_time()
var time_return = String(time.hour) +":"+String(time.minute)


# Called when the node enters the scene tree for the first time.
func _ready():
	if(time.minute<10):
		time_return = String(time.hour) +":"+"0"+String(time.minute)
	text = time_return


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if(time.minute<10):
		time_return = String(time.hour) +":"+"0"+String(time.minute)
	text = time_return
	#Time.get_time_string_from_system(false)
