h_F83F94A3 = function(param0, param1, param2)
	if param2.PassedMilestone then
		return
	end
	if param1.MilestoneName ~= param0.MilestoneName then
		return
	end
    if param0.DebugName then
        Debug.ShowScreenMessage(param0.DebugName..param1.ValueReached.."/"..param0.ThreshholdValue)
    end
	if not param0.MilestoneBiggerIsBetter and param0.ThreshholdValue > param1.ValueReached then
		param2.PassedMilestone = true
        HUD.ShowMessage(param0.IndicationType)
	elseif param0.MilestoneBiggerIsBetter and param1.ValueReached >= param0.ThreshholdValue then
		param2.PassedMilestone = true
        HUD.ShowMessage(param0.IndicationType)
	end
end