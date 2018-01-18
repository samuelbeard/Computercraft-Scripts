-- Turtle API v0.4 -- By Samuel Beard
function u(a)for b=1,a do turtle.up()end end;function f(c)for d=1,c do turtle.forward()end end;function d(e)for f=1,e do turtle.down()end end;function b(g)for h=1,g do turtle.back()end end;function t(i)if i==1 then turtle.turnLeft()end;if i==2 then turtle.turnRight()end;if i==3 then turtle.turnRight()turtle.turnRight()end end;function r(j)turtle.turnRight()f(j)turtle.turnLeft()end;function l(k)turtle.turnLeft()f(k)turtle.turnRight()end;function floor()while turtle.detectDown()==false do d(1)end end;function dump(m)for n=1,16 do turtle.select(n)if m==""then turtle.drop()end;if m=="down"then turtle.dropDown()end;if m=="up"then turtle.dropUp()end end end

-- Skyscraper Design 1
-- 50 Stories High
-- 9 Floors (Including Roof & Ground floor)

-- SETUP
-- Place 5 single chests in a row 

-- Materials
-- 1200 Wall Material (Marble) (19 Stacks)
-- 1200 Glass Panes (19 Stacks)
-- 1296 Floor Material (21 Stacks)
-- 400 Shaft Material (7 Stacks)


-- Foundation - Dig out and put down the base floor.
function foundation()


end

-- Build a pillar h high. Use material from s slot.
function pillar(h, s)

end


function wall()
  r(1)
  pillar(50)
  r(2)
  pillar(50)
  r(2)
  pillar(50)
  r(3)
  pillar(50)
  r(2)
  pillar(50)
  r(2)
  pillar(50)
end

function windows()

end

function shaft()

end

function opening() -- The front door and enterances to the floors.

end

function floor()

end

-- Start Script
wall()
r(2)
f(2)
t(1)
wall()
r(2)
f(2)
t(1)
wall()
r(2)
f(2)
t(1)
wall()
r(1) -- Ends up facing the building on the right hand corner.
