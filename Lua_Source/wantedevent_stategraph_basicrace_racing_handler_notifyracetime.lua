h_54C8AB2E = function(param0, param1, param2)
    param2.TimeLimit = param1.TimeRemaining
    if param1.TimeElapsed <= 3 then
        HUD.ShowLoopingMessage("WE_PUR_EVASION_ENTRY", param1.TimeRemaining)
    end
    if param1.TimeRemaining > 10 then
        return
    end
    if param2.CurrentStatus == 0 then
        HUD.ShowLoopingMessage("WE_PUR_EVASION_HURRY", param1.TimeRemaining)
    elseif param2.CurrentStatus == 2 then
        HUD.HideLoopingMessage()
    end
end