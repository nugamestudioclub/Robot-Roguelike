tool
extends State

var player : Player

#
# FUNCTIONS TO INHERIT IN YOUR STATES
#

# This function is called when the state enters
# XSM enters the root first, the the children
func _on_enter(_args) -> void:
	 player = target as Player

# This function is called each frame if the state is ACTIVE
# XSM updates the root first, then the children
func _on_update(_delta: float) -> void:
	
	if not player.is_on_floor():
		# Player's upward velocity is stored while snapping to ground, should reset to 0 if falling
		player.velocity.y = 0
		var _st = change_state("Falling")
