h_D326B272 = function(param0, param1, param2)
    -- forcing licensed music in racing stateenter causes licensed music to only play every second restart.
    -- Setting only one timer for 1.1 seconds works as normally on first entry, 
    -- but then after restarting, the crew ost plays for a split second before changing to licensed music.
    -- Setting only 1 timer for 100-500ms causes music to not play at all on first entry, but then licensed music plays on every second restart.
    -- Setting a timer for 100ms and 1.1 seconds that do the same thing fixes the issue.
    -- Illogical problems require illogical solutions.
	HUD.ShowMessage(param0.DebugName..param0.ThreshholdSpeed.." KM/H")
    param2.PlayerHasWon = false
	if param0.AutoActivateGPS then
		Game.ShowGPS(true)
		Game.NavigatePlayerTo(param0.phototickettrigger, param0.phototickettrigger, 0, true)
	end
    Game.SetTimer("ea_trax", 0.1)
    Game.SetTimer("ea_trax_2", 1.1)
end