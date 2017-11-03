-- Turtle API v0.1 -- By Samuel Beard
function u(a)for b=1,a do turtle.up()end end;function f(c)for d=1,c do turtle.forward()end end;function d(e)for f=1,e do turtle.down()end end;function b(g)for h=1,g do turtle.back()end end;function t(i)if i==1 then turtle.turnLeft()end;if i==2 then turtle.turnRight()end;if i==3 then turtle.turnRight()turtle.turnRight()end end

-- Usage: lumberjack

-- Move back down to the ground.
function moveToGround()
  os.setComputerLabel("Going Down")
  while (turtle.detectDown() == false) do
    d(1)
  end
end

-- Suck in all directions to find saplings. (Won't suck behind it as there might be a chest there.)
function findItems()
  os.setComputerLabel("Looking For Items")
  turtle.suck()
  t(1)
  turtle.suck()
  t(3)
  turtle.suck()
  t(1)
end

-- Check if an item slot has the minumim amount of items.
function checkItemSlotHasItems(slot, minimum)
  findItems()
  if (turtle.getItemCount(slot) >= minimum) then
    return true
  else
    return false
  end
end

-- Return "air", "sapling", or "tree"
function checkBlockInFront()
  turtle.select(1)
  os.setComputerLabel("Checking")
  if turtle.detect() then
    u(1)
    if turtle.detect() then
      d(1)
      return true
    end
    d(1)
  else
    return false
  end
end

-- Chop down a tree until you detect air.
function chopDownTree()
  os.setComputerLabel("Lumberjacking")
  local shouldChop = true
  while shouldChop do
    turtle.dig()
    turtle.digUp()
    u(1)
    if (turtle.detect() == false) then
      shouldChop = false
    end
  end
  moveToGround()
end

function plantASapling()
  turtle.select(1)
  turtle.place()
end

-- Drop items from slots 2,3,4 into a chest behind you.
function placeItemsInChest()
  os.setComputerLabel("Storing")
  t(3)
  turtle.select(2)
  turtle.drop()
  turtle.select(3)
  turtle.drop()
  turtle.select(4)
  turtle.drop()
  turtle.select(1)
  t(3)
end

---- SCRIPT START ----
while true do
  turtle.select(1)
  -- Check that you have more than one sapling in slot one.
  if checkItemSlotHasItems(1,2) then
    -- Compare the block in front to the sapling. Dig it out or plant a sapling. Otherwise, wait.
    if checkBlockInFront() then
      chopDownTree()
      placeItemsInChest()
    else
      plantASapling()
      sleep(30)
    end
  else
    -- If there is only one sapling, stop
    print("Not enough saplings.")
    os.setComputerLabel("Need More Saplings")
    return
  end
end
