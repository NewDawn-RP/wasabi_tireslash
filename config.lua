-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------

Config = {}

Config.checkForUpdates = false -- Check for Updates?

Config.allowedWeapons = {
    "WEAPON_KNIFE",
    "WEAPON_BOTTLE",
    "WEAPON_DAGGER",
    "WEAPON_HATCHET",
    "WEAPON_MACHETE",
    "WEAPON_SWITCHBLADE"
}

RegisterNetEvent('wasabi_tireslash:notify')
AddEventHandler('wasabi_tireslash:notify', function(message)	
    -- Place notification system info here, ex: exports['mythic_notify']:SendAlert('inform', message)
    ShowNotification(message)
end)

Language = {
    ['no_weapon'] = 'Vous devez tenir quelque chose de pointu pour faire cela!',
    ['car_slashed'] = "Quelqu'un a crevé votre pneu!",
    ['already_slashed'] = 'Ce pneu a déjà été crevé!'
}

Config.listBones = {'wheel_lf', 'wheel_rf', 'wheel_lm1', 'wheel_rm1', 'wheel_lm2', 'wheel_rm2', 'wheel_lm3', 'wheel_rm3', 'wheel_lr', 'wheel_rr'}

Config.QuickActions = {
    vehicle = {
        tireslash = {
            isAuthorized = true,
            options = {
                {
                    name = "target_tireslash",
                    icon = 'fa-solid fa-user-ninja',
                    label = 'Crever le pneu',
                    bones = listBones,
                    anyItem = true,
                    iconColor = "#ca0000",
                    items = {
                        "WEAPON_KNIFE",
                        "WEAPON_BOTTLE",
                        "WEAPON_DAGGER",
                        "WEAPON_HATCHET",
                        "WEAPON_MACHETE",
                        "WEAPON_SWITCHBLADE"
                    },
                    distance = 1.5,
                    canInteract = function(entity, distance, coords, name, bone)
                        if distance < 1.5 then
                            return true
                        end
                    end,
                    -- triggered on option selection (one only)
                    onSelect = function (data)
                        slash()
                    end
                },
            },
        }
    }
}