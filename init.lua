print("Initializing named powers mod")

local check_name_powers = function(player, last_login)
	
	local name = player:get_player_name()
	print("Checking for fast")	
	if name == "Sonic" then
		player:set_physics_override({
			speed = 10,
		})
		return true
	end
	print("Checking for jump")
	if name == "Jumpbot" then
		player:set_physics_override({
			gravity = 0.1,
		})
		return true
	end
end

core.register_on_joinplayer(check_name_powers)
