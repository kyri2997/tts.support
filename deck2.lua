-- My original setup, which works fine until deck runs out. Plan would be to duplicate what works for deck1, not very efficient but was going to be my best shot.

DECK_GUID_GREEN = Global.getVar('DECK_GUID_GREEN')

function setUpCards()
    local deck = getObjectFromGUID(DECK_GUID_GREEN)
    deck.shuffle()
   
    
 local deckPos = deck.getPosition()
    local xPos = deckPos[1] + 3
    for i = 1, 7  do
        deck.takeObject({flip=true, position={xPos, deckPos[2], deckPos[3]}})
        xPos = xPos + 3
    end


end