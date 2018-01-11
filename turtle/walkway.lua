-- Turtle API v0.3 -- By Samuel Beard
function u(a)for b=1,a do turtle.up()end end;function f(c)for d=1,c do turtle.forward()end end;function d(e)for f=1,e do turtle.down()end end;function b(g)for h=1,g do turtle.back()end end;function t(i)if i==1 then turtle.turnLeft()end;if i==2 then turtle.turnRight()end;if i==3 then turtle.turnRight()turtle.turnRight()end end;function r(j)turtle.turnRight()f(j)turtle.turnLeft()end;function l(k)turtle.turnLeft()f(k)turtle.turnRight()end;function floor()while turtle.detectDown()==false do d(1)end end

args = {...}
length = args[1]

function placeBlockBelow()
  turtle.select(1)
  if turtle.detectDown() then
    break
  else
    if turtle.placeDown() then
      break
    else
      turtle.select(2)
      turtle.placeDown()
    end
  end
end

os.setComputerLabel("Mining")
for i=1, length do
  turtle.dig()
  f(1)
  turtle.digUp()
  placeBlockBelow()
end
u(1)
turtle.digUp()
u(1)
os.setComputerLabel("Done!")
