Citizen.CreateThread(function()
local ped = GetPlayerPed(-1)
local player = false 
    while true do
        Citizen.Wait(0) -- This is important so your game doesn't crash!
        RegisterCommand('leo', function(source, args) 
            GiveWeaponToPed(ped, GetHashKey("WEAPON_COMBATPISTOL"), 9999, false, false)
            GiveWeaponToPed(ped, GetHashKey("WEAPON_CARBINERIFLE"), 9999, false, false)
            GiveWeaponToPed(ped, GetHashKey("WEAPON_STUNGUN"), 9999, false, false)
            text("~r~You have equiped an ~b~LEO ~r~Loadout!")
            -- This gives the ped that put the command in the chat a LEO loadout!
        end, false)
    end
end)

function text(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, true)
end