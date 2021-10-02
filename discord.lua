Citizen.CreateThread(function()
    while true do
        local player =  PlayerId()
        local name = GetPlayerName(player)
        local id = GetPlayerServerId(player)
        
        Citizen.Wait(5*1000) -- refresh.

        SetDiscordAppId(893678971202453546)

        SetRichPresence(name ..  " | " .. #GetActivePlayers() .. "/32 | ID: " .. id)

        SetDiscordRichPresenceAsset("logo") 
        SetDiscordRichPresenceAssetText(GetPlayerName(player))

        
        SetDiscordRichPresenceAssetSmall("logo") 
        SetDiscordRichPresenceAssetSmallText("Vida del jugador:"..(GetEntityHealth(player)-100))
        
        SetDiscordRichPresenceAction(0, "Servidor", "fivem://connect/")
        SetDiscordRichPresenceAction(1, "Discord", "https://discord.gg/")

    end
end)