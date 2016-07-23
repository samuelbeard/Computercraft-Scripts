-- Turtle API v0.1 -- By Samuel Beard
function u(a)for b=1,a do turtle.up()end end;function f(c)for d=1,c do turtle.forward()end end;function d(e)for f=1,e do turtle.down()end end;function b(g)for h=1,g do turtle.back()end end;function t(i)if i==1 then turtle.turnLeft()end;if i==2 then turtle.turnRight()end;if i==3 then turtle.turnRight()turtle.turnRight()end end

-- Usage: Call pillar [number]
-- [number] is height of pillar.

height = ...

function go()
  for x=1, height do
    u(1)
    turtle.placeDown()
  end
  f(1)
  d(height)
end

if (turtle.getItemCount() > height) then
  go()
else
  print("Not Enought Resources")
end
