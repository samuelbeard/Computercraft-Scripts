-- Turtle API v0.1 -- By Samuel Beard
function u(a)for b=1,a do turtle.up()end end;function f(c)for d=1,c do turtle.forward()end end;function d(e)for f=1,e do turtle.down()end end;function b(g)for h=1,g do turtle.back()end end;function t(i)if i==1 then turtle.turnLeft()end;if i==2 then turtle.turnRight()end;if i==3 then turtle.turnRight()turtle.turnRight()end end

-- EDIT --

args = {...}
a = args[1] -- Depth of the floor.
b = args[2] -- Width of the floor.
rotation = 1 -- Which direction the turtle is facing.

-- Turn around for a new line.
function rot()
  if (rotation == 1) then
    t(1)
    f(1)
    t(1)
    rotation = 2
  else
    t(2)
    f(1)
    t(2)
    rotation = 1
  end
end

-- Place a row of blocks then move forward. Do not move forward after placing the last block in a row.
function row()
  for i=1, a-1 do
    turtle.placeDown()
    f(1)
  end
  turtle.placeDown()
  rot()
end

for j=1, b do
  row()
end
