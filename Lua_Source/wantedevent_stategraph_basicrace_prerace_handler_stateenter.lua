h_265AD682 = function(param0, param1, param2)
    param2.HandleICEMessage = param0.ChallengeCamera
    param2.PassedMilestone = false
    param2.PlayerHasWon = false
    param2.CareerRace = Game.IsCareerMode()
    Game.ForcePursuitStart(param0.ForceHeatLevel)
    if param0.CopSpawnPoints then
        for elnico = 1, param0.CopSpawnPoints.Count, 1 do
            Game.SpawnCop(param0.CopSpawnPoints[elnico], param0.CopSpawnType, true, false)
        end
    end
end

