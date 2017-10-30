-- Turtle API v0.2 -- By Samuel Beard
function u(a)for b=1,a do turtle.up()end end;function f(c)for d=1,c do turtle.forward()end end;function d(e)for f=1,e do turtle.down()end end;function b(g)for h=1,g do turtle.back()end end;function t(i)if i==1 then turtle.turnLeft()end;if i==2 then turtle.turnRight()end;if i==3 then turtle.turnRight()turtle.turnRight()end end;function r(j)turtle.turnRight()f(j)turtle.turnLeft()end;function l(k)turtle.turnLeft()f(k)turtle.turnRight()end

cobbleID = 4

function harvestBlock()
  turtle.digDown()
  turtle.suckDown()
  f(1)
end

function goBack()
  t(3)
  while (turtle.detect() == false) then
    f(1)
  end
  turtle.drop()
end

turtle.select(1)
while true do
  t(3)
  if (turtle.inspectDown()[2][1] == cobbleID) then
    goBack()
  else
    harvestBlock()
  end
end
