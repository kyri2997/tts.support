--//  attempted to combine an "empty decks" tutorial with a "card setup" one.

DECK_GUID_BLUE = Global.getVar('DECK_ZONE_GUID_BLUE')
DECK_ZONE_GUID_BLUE = Global.getVar('DECK_ZONE_GUID_BLUE')

function setUpCards()
    local deckB = getObjectFromGUID(DECK_ZONE_GUID_BLUE)
    deckB.shuffle()
   
    
 local deckPos = deckB.getPosition()
    local xPos = deckPos[1] - 3
    for i = 1, 7  do
        deckB.takeObject({flip=true, position={xPos, deckPos[2], deckPos[3]}})
        xPos = xPos - 3
    end


end

function onLoad()
    deckZone = DECK_ZONE_GUID_BLUE
end

function getDeck()
    local zoneObjects = deckZone.getObjects()
    for _, item in ipairs(zoneObjects) do
        if item.tag == 'Deck' then
            return item
        end
    end
    for _, item in ipairs(zoneObjects) do
        if item.tag == 'Card' then
            return item
        end
    end
    return nil
end

function deckExists()
    return getDeck() != nil
end

function onChat()
    if deckExists() then
        getDeck()
    end
end