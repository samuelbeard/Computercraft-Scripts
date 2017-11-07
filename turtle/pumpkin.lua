-- Turtle API v0.2 -- By Samuel Beard
function u(a)for b=1,a do turtle.up()end end;function f(c)for d=1,c do turtle.forward()end end;function d(e)for f=1,e do turtle.down()end end;function b(g)for h=1,g do turtle.back()end end;function t(i)if i==1 then turtle.turnLeft()end;if i==2 then turtle.turnRight()end;if i==3 then turtle.turnRight()turtle.turnRight()end end;function r(j)turtle.turnRight()f(j)turtle.turnLeft()end;function l(k)turtle.turnLeft()f(k)turtle.turnRight()end

cobbleID = "minecraft:cobblestone"

function harvestBlock()
  os.setComputerLabel("Harvesting")
  turtle.digDown()
  turtle.suckDown()
  f(1)
end

function goBack()
  os.setComputerLabel("Heading Back")
  t(3)
  while (turtle.detect() == false) do
    f(1)
  end
  turtle.drop()
  t(3)
  sleep(5)
end

turtle.select(1)
t(3)
while true do
  local success, data = turtle.inspectDown()
  if (data.name == cobbleID) then
    goBack()
  else
    harvestBlock()
  end
end
