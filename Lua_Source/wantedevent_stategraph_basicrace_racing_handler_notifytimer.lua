h_D52821A5 = function(param0, param1, param2)
    if param1.Name == "pur_refresh_msg" then
        Game.KillTimer("pur_refresh_msg")
        Debug.ShowScreenMessage("")
    elseif param1.Name == "pur_refresh" then
        Game.KillTimer("pur_refresh")
        ERefreshHud()
    elseif param1.Name == "kill_msg" then
        Game.KillTimer("kill_msg")
        param2.CurrentStatus = 2
    elseif param1.Name == "HLM" then
        Game.KillTimer("HLM")
        HUD.HideLoopingMessage()
    end
end