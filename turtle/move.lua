-- Turtle Move API v0.1 -- By Samuel Beard
-- No Fuel Requirements.

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
