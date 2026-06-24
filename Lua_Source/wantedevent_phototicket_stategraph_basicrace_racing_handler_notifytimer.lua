h_07EE3C9E = function(param0, param1, param2)
	if param1.Name == "spdtrp_tooslow" then
		Game.KillTimer("spdtrp_tooslow")
		Game.ShowGPS(true)
		Game.NavigatePlayerTo(param0.phototickettrigger, param0.phototickettrigger, 0, true)
    elseif param1.Name == "ea_trax" then
        Game.KillTimer("ea_trax")
        Music.ForceLicensedMusic()
    elseif param1.Name == "ea_trax_2" then
        Game.KillTimer("ea_trax_2")
        Music.ForceLicensedMusic()
	end
end