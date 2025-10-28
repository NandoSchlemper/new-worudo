local ReplicatedStorage = game:GetService("ReplicatedStorage")
local AttributeTypes = require(ReplicatedStorage.Shared.templates.types.AttributeTypes)
local WeaponFakeDataType = require(script.Parent.WeaponFakeDataType)
local WeaponFakeData = {
    [WeaponFakeDataType["Basic Kanata"]] = {
            hitbox = {
                m1 = Vector3.new(10, 10, 10),
            },
            damage = {
                [AttributeTypes.STR] = 0.90,
                [AttributeTypes.DEX] = 0.45,
            },
        },
    }
}

return WeaponFakeData

