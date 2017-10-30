-- Turtle API v0.1 -- By Samuel Beard
function u(a)for b=1,a do turtle.up()end end;function f(c)for d=1,c do turtle.forward()end end;function d(e)for f=1,e do turtle.down()end end;function b(g)for h=1,g do turtle.back()end end;function t(i)if i==1 then turtle.turnLeft()end;if i==2 then turtle.turnRight()end;if i==3 then turtle.turnRight()turtle.turnRight()end end

-- Usage: lumberjack

-- Move back down to the ground.
function moveToGround()
  while (turtle.detectDown() == false) do
    d(1)
  end
end

-- Suck in all directions to find saplings. (Won't suck behind it as there might be a chest there.)
function findItems()
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

-- Returns "air", "sapling", or "tree"
function checkBlockInFront()
  if turtle.detect() then
    if turtle.compare() then
      return "sapling"
    else
      return "tree"
    end
  else
    return "air"
  end
end

-- Chops down a tree until it detects air.
function chopDownTree()
  while turtle.detect() do
    turtle.dig()
    turtle.digUp()
    u(1)
  end
  moveToGround()
end

---- SCRIPT START ----
while true do
  turtle.select(1)
  -- Check that it has more than one sapling in slot one.
  if checkItemSlotHasItems(1,2) then
    -- Compare the block in front to the sapling. Dig it out or plant a sapling. Otherwise, wait.
    if (checkBlockInFront() == "air") then
      plantASapling()
    elseif (checkBlockInFront() == "sapling") then
      sleep(20)
    elseif (checkBlockInFront() == "tree") then
      chopDownTree()
    end
  else
    -- If there is only one sapling, stop
    print("Not enough saplings.")
    return
  end
end
