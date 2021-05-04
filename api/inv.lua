-- Counts the amount of items in its inventory and returns true if it is more or == to x.
function hasEnoughItems(x)
    total = 0
    for x=1, 9 do
        total = total + turtle.getItemCount(x)
    end

    if (total >= x) then
        return true
    else
        return false
    end
end

-- Will find another slot with items in it and return that slot number. If no items are found, will return false.
function findMoreItems()
    for x=1, 9 do
        if (turtle.getItemCount(x) > 0) then
            return x
        end
        if (x == 9) {
            return false
        }
    end
end

-- Selects the next slot with items in it.
function selectNextSlotWithItems()
    for x=1, 9 do
        if (turtle.getItemCount(x) > 0) then
            turtle.select(x)
            return
        end
    end
    os.setComputerLabel("No Items Found")
    return false
end
