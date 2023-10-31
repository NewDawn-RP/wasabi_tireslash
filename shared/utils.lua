function InitOxTargetActions()
    for k, Action in pairs(Config.QuickActions.vehicle) do
        if Action.isAuthorized then
            exports.ox_target:removeGlobalVehicle(Action.options[1].name)
            exports.ox_target:addGlobalVehicle(Action.options)
        end
    end
end

function RemoveOxTargetActions()
    for k, Action in pairs(Config.QuickActions.vehicle) do
        if Action.isAuthorized then
            exports.ox_target:removeGlobalVehicle(Action.options[1].name)
        end
    end
end