h_6CB207D9 = function(param0, param1, param2)
    if param2.TimeLimit <= 10 then
        Game.SetTimer("kill_msg", 1.05)
        param2.CurrentStatus = 0
    end
end