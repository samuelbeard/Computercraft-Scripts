-- Turtle API v0.3 -- By Samuel Beard
function u(a)for b=1,a do turtle.up()end end;function f(c)for d=1,c do turtle.forward()end end;function d(e)for f=1,e do turtle.down()end end;function b(g)for h=1,g do turtle.back()end end;function t(i)if i==1 then turtle.turnLeft()end;if i==2 then turtle.turnRight()end;if i==3 then turtle.turnRight()turtle.turnRight()end end;function r(j)turtle.turnRight()f(j)turtle.turnLeft()end;function l(k)turtle.turnLeft()f(k)turtle.turnRight()end;function floor()while turtle.detectDown()==false do d(1)end end

chestID = "minecraft:chest"
cobbleID = "minecraft:cobblestone"
-- Gold Chest -> IronChest:BlockIronChest:1

function turnAround()
  turtle.digDown()
  d(1)
  t(3)
end

function restart()
  t(3)
  u(1)
end
  
function harvest()
  local successDown, dataDown = turtle.inspectDown()
  local success, data = turtle.inspect()

  if (data.name == cobbleID) then
    turnAround()
  end
  
  if (dataDown.name == chestID) then
    turtle.dropDown()
    restart()
  else
    turtle.dig()
    f(1)
  end
end

turtle.select(1)
u(1)
while true do
  harvest()
end
