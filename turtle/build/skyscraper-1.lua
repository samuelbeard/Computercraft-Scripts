-- Turtle API v0.4 -- By Samuel Beard
function u(a)for b=1,a do turtle.up()end end;function f(c)for d=1,c do turtle.forward()end end;function d(e)for f=1,e do turtle.down()end end;function b(g)for h=1,g do turtle.back()end end;function t(i)if i==1 then turtle.turnLeft()end;if i==2 then turtle.turnRight()end;if i==3 then turtle.turnRight()turtle.turnRight()end end;function r(j)turtle.turnRight()f(j)turtle.turnLeft()end;function l(k)turtle.turnLeft()f(k)turtle.turnRight()end;function floor()while turtle.detectDown()==false do d(1)end end;function dump(m)for n=1,16 do turtle.select(n)if m==""then turtle.drop()end;if m=="down"then turtle.dropDown()end;if m=="up"then turtle.dropUp()end end end

-- Skyscraper Design 1
-- 50 Stories High
-- 9 Floors (Including Roof & Ground floor)

-- SETUP
-- Requires a 16x16 block flat surface with nothing in the way of where the building will be. (Doesn't need a floor.)
-- Place 5 single chests in a row

-- Materials
-- 1200 Wall Material (Marble) (19 Stacks)
-- 1200 Glass Panes (19 Stacks) -> 450 Glass Blocks
-- 1300 Floor Material (21 Stacks)
-- 400 Shaft Material (7 Stacks)

-- Checks the blocks in the current slot. Moves to the next slot of empty.
function checkBlocksInSlot()
  if turtle.getItemCount() < 1 then
    selectedSlot = turtle.getSelectedSlot()
    turtle.select(selectedSlot + 1)
  end
end

-- Foundation - Dig out and put down the base floor.
function foundation()
  -- Get materials and move into position.
  r(4)
  t(3)
  turtle.select(1)
  turtle.suck()
  turtle.select(2)
  turtle.suck()
  turtle.select(3)
  turtle.suck()
  turtle.select(4)
  turtle.suck()
  r(4)
  t(3)
  f(1)
  -- Dig and place blocks two rows at a time.
  for x=1, 7 do
    for y=1, 14 do
      checkBlocksInSlot()
      turtle.digDown()
      turtle.placeDown()
      f(1)
    end
    t(2)
    f(1)
    t(2)
    f(1)
    for yy=1, 14 do
      checkBlocksInSlot()
      turtle.digDown()
      turtle.placeDown()
      f(1)
    end
    t(1)
    f(1)
    t(1)
    f(1)
  end
  -- Dump the rest of the blocks back into the chest.
  t(3)
  f(1)
  r(10)
  -- Dumps the stuff it picked up.
  turtle.drop()
  u(2)
  dump("down")
  d(2)
  -- Go back to the starting position.
  r(4)
  t(3)
end

-- Build a pillar h high. Use material from s slot.
function pillar(h)
  for k=1, h do
    checkBlocksInSlot()
    turtle.place()
    u()
  end
  floor()
end

function buildTwoWalls()
  pillar(50)
  r(2)
  pillar(50)
  r(2)
  pillar(50)
  r(3)
  pillar(50)
  r(2)
  pillar(50)
  r(2)
  pillar(50)
  r(2)
  f(2)
  t(1)
  pillar(50)
  r(2)
  pillar(50)
  r(2)
  pillar(50)
  r(3)
  pillar(50)
  r(2)
  pillar(50)
  r(2)
  pillar(50)
end

function walls()
  -- Collect resources (10 Slots)
  -- Build the first two walls
  r(1)
  buildTwoWalls()
  -- Go get more blocks - refill with blocks (10 Slots) - move to new position.
  -- Build last two walls
  turtle.select(1)
  buildTwoWalls()
  -- Dump resources
end

function windows()
  print(".")
end

function shaft()
  print(".")
end

function openings() -- The front door and enterances to the floors.
  print(".")
end

function buildFloors()
  print("fd")
end

-- Start Script
foundation()
-- walls()
-- windows()
-- shaft()
-- openings()
-- buildFloors()
-- placeLights()
