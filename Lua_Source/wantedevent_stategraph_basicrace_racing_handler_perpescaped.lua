h_503D679C = function(param0, param1, param2)
	if param2.PlayerHasWon then
		return
	end
	if param2.PassedMilestone then
		Game.ChallengeComplete(param1.Perpetrator)
		Game.NotifyRaceFinished(param1.Perpetrator)
		param2.PlayerHasWon = true
        RaceStatus:SetHasBeenWon(true)
		ChangeState("raceover")
	elseif not param2.PassedMilestone and param0.MilestoneName ~= "pursuits_in_a_row" then
        param2.PlayerHasWon = false
        HUD.ShowMessage("WANTEDEVENT_MILESTONE_FAILED")
        RaceStatus:SetHasBeenWon(false)
        Game.SetRaceExpired(param1.Perpetrator)
        ChangeState("raceover")
	elseif not param2.PassedMilestone and param0.MilestoneName == "pursuits_in_a_row" then
        Game.ResetCopsForRestart()
        HUD.ShowMessage("WANTEDEVENT_PUR_CONSEC_PROGRESS")
        Game.SetTimer("pur_refresh_msg", 2)
        Game.SetTimer("pur_refresh", 3.25)
	end
end