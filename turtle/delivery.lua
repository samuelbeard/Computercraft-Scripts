-- Turtle API v0.1 -- By Samuel Beard
function u(a)for b=1,a do turtle.up()end end;function f(c)for d=1,c do turtle.forward()end end;function d(e)for f=1,e do turtle.down()end end;function b(g)for h=1,g do turtle.back()end end;function t(i)if i==1 then turtle.turnLeft()end;if i==2 then turtle.turnRight()end;if i==3 then turtle.turnRight()turtle.turnRight()end end

-- -- -- -- EDIT -- -- -- --

-- Deliver Collected Resources
function deliver()
  for j=1, 16 do
    turtle.select(j)
    turtle.suck() -- DIRECTION
  end
  -- print("Delivering Cargo")
  os.setComputerLabel("Delivering Cargo")
  -- Deliver Route

  --
  for k=1, 16 do
    turtle.select(k)
    turtle.drop() -- DIRECTION
  end
  -- print("Returning")
  os.setComputerLabel("Returning")
  -- Route Back to Start

  --
end

-- Repeat Function
while true do
  print("Restarting Collection")
  -- Collect and Return to Original Position

  deliver()
  sleep(230)
  print("Restarting Collection in 10 Seconds")
  sleep(10)
end
