-- Turtle API v0.1 -- By Samuel Beard
function u(a)for b=1,a do turtle.up()end end;function f(c)for d=1,c do turtle.forward()end end;function d(e)for f=1,e do turtle.down()end end;function b(g)for h=1,g do turtle.back()end end;function t(i)if i==1 then turtle.turnLeft()end;if i==2 then turtle.turnRight()end;if i==3 then turtle.turnRight()turtle.turnRight()end end

-- EDIT --

args = {...}
a = args[1]
b = args[2]
rota = 1

function rot()
  if (rota == 1) then
    t(1)
    f(1)
    t(1)
    rota = 2
  else
    t(2)
    f(1)
    t(2)
    rota = 1
  end
end

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
