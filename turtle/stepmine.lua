-- Turtle API v0.3 -- By Samuel Beard
function u(a)for b=1,a do turtle.up()end end;function f(c)for d=1,c do turtle.forward()end end;function d(e)for f=1,e do turtle.down()end end;function b(g)for h=1,g do turtle.back()end end;function t(i)if i==1 then turtle.turnLeft()end;if i==2 then turtle.turnRight()end;if i==3 then turtle.turnRight()turtle.turnRight()end end;function r(j)turtle.turnRight()f(j)turtle.turnLeft()end;function l(k)turtle.turnLeft()f(k)turtle.turnRight()end;function floor()while turtle.detectDown()==false do d(1)end end

function placeStep()
  t(3)
  turtle.place()
  t(3)

function mine()
  turtle.dig()
  turtle.digDown()
  f(1)
  turtle.dig()
  turtle.digDown()
  placeStep()
  d(1)

os.setComputerLabel("Starting Soon")
sleep(5)
os.setComputerLabel("Mining")
while true do
  turtle.select(1)
  mine()
end
