--- [SHARED]
-- Class definition for an item
--- OrbConquest, par0-git

include("../item_types.lua")

--- Provides:
-- [SERVER] InventoryItem

InventoryItem = {
    --- Display name of item
    display = "",

    --- Identifier name of item
    name = "",

    --- Type of item
    type = InventoryItemType.UNKNOWN,

    --- Actual table of item data (Orb data, etc...)
    --- This isn't networked. Kept on server only
    data = nil,

    --- Generate a description
    --- @return string: Generated description for item
    getDescription = function() end
}

--- Create a new InventoryItem object
--- @return InventoryItem: new object
function InventoryItem:create()
    local object = {}
    setmetatable(object, self)
    self.__index = self
    return object
end