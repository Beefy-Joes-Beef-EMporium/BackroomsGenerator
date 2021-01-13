extends Button
var game = preload("res://scenes/s_main/S_Main.tscn").instance()
func _pressed():
	self.add_child(game)
	visible = false
