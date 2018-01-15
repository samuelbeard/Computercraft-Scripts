-- Turtle Move API v0.3 -- By Samuel Beard
-- No Fuel Requirements.

-- u | f | d | b | t | r | l | floor

-- FUNCTIONS --

-- Move Up
function u(a)
  for b=1, a do
    turtle.up()
  end
end

-- Move Forward
function f(c)
  for d=1, c do
    turtle.forward()
  end
end

-- Move Down
function d(e)
  for f=1, e do
    turtle.down()
  end
end


-- Move Back
function b(g)
  for h=1, g do
    turtle.back()
  end
end

-- Turn - 1 = Left, 2 = Right, 3 = 180 deg
function t(i)
  if (i == 1) then
    turtle.turnLeft()
  end
  if (i == 2) then
    turtle.turnRight()
  end
  if (i == 3) then
    turtle.turnRight()
    turtle.turnRight()
  end
end

-- Move Right
function r(rr)
  turtle.turnRight()
  f(rr)
  turtle.turnLeft()
end

-- Move Left
function l(ll)
  turtle.turnLeft()
  f(ll)
  turtle.turnRight()
end

-- Move down to the floor
function floor()
  while (turtle.detectDown() == false) do
    d(1)
  end
end

-- Dump all cargo in every slot.
-- down, up or blank
function dump(direction)
  for x=1, 16 do
    turtle.select(x)
    if (direction == "") then
      turtle.drop()
    end
    if (direction == "down") then
      turtle.dropDown()
    end
    if (direction == "up") then
      turtle.dropUp()
    end
  end
end
