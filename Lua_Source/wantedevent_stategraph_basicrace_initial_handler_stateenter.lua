h_2101884E = function(param0, param1, param2)
    -- If you don't force a pursuit in inital, but only in prerace,
    -- the cop spanws, but doesn't chase after you.
    -- if you force pursuit in inital, but not prerace, 
    -- it doesn't spawn a cop at all.
    Game.ForcePursuitStart(param0.ForceHeatLevel)
    Game.SpawnCop(true, false)
end

