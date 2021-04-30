os.loadAPI("move")

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
  move.r(4)
  move.t(3)
  turtle.select(1)
  turtle.suck()
  turtle.select(2)
  turtle.suck()
  turtle.select(3)
  turtle.suck()
  turtle.select(4)
  turtle.suck()
  turtle.select(1)
  move.r(4)
  move.t(3)
  move.f(1)
  -- Dig and place blocks two rows at a time.
  for x=1, 7 do
    for y=1, 14 do
      checkBlocksInSlot()
      turtle.digDown()
      turtle.placeDown()
      move.f(1)
    end
    move.t(2)
    move.f(1)
    move.t(2)
    move.f(1)
    for yy=1, 14 do
      checkBlocksInSlot()
      turtle.digDown()
      turtle.placeDown()
      move.f(1)
    end
    move.t(1)
    move.f(1)
    move.t(1)
    move.f(1)
  end
  -- Dump the rest of the blocks back into the chest.
  move.t(3)
  move.f(1)
  move.r(10)
  -- Dumps the stuff it picked up.
  turtle.drop()
  move.u(2)
  move.dump("down")
  move.d(2)
  -- Go back to the starting position.
  move.r(4)
  move.t(3)
end

-- Build a pillar h high. Use material from s slot.
function pillar(h)
  for k=1, h do
    checkBlocksInSlot()
    turtle.place()
    move.u()
  end
  move.floor()
end

function buildTwoWalls()
  pillar(50)
  move.r(2)
  pillar(50)
  move.r(2)
  pillar(50)
  move.r(3)
  pillar(50)
  move.r(2)
  pillar(50)
  move.r(2)
  pillar(50)
  move.r(2)
  move.f(2)
  move.t(1)
  pillar(50)
  move.r(2)
  pillar(50)
  move.r(2)
  pillar(50)
  move.r(3)
  pillar(50)
  move.r(2)
  pillar(50)
  move.r(2)
  pillar(50)
end

function walls()
  -- Collect resources (10 Slots)
  move.t(3)
  for yyy=1, 10 do
    turtle.select(yyy)
    turtle.suck()
  end
  turtle.select(1)
  -- Build the first two walls
  move.r(1)
  buildTwoWalls()
  -- Go get more blocks - refill with blocks (10 Slots) - move to new position.
  error()
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
