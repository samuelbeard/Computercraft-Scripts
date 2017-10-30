-- Turtle API v0.1 -- By Samuel Beard
function u(a)for b=1,a do turtle.up()end end;function f(c)for d=1,c do turtle.forward()end end;function d(e)for f=1,e do turtle.down()end end;function b(g)for h=1,g do turtle.back()end end;function t(i)if i==1 then turtle.turnLeft()end;if i==2 then turtle.turnRight()end;if i==3 then turtle.turnRight()turtle.turnRight()end end

args = {...}
height = args[1] -- Height of the pillar.
slot = args[2] -- Building material slot.

function buildTower()
  for x=1, height do
    turtle.place()
    u(1)
  end
  d(height - 1)
end

turtle.select(slot)
if (turtle.getItemCount() >= height) then
  buildTower()
else
  print("Not Enought Resources")
end
