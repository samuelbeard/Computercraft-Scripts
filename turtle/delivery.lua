os.loadAPI("move")

-- -- -- -- EDIT -- -- -- --

-- Deliver Collected Resources
function deliver()
  os.setComputerLabel("Delivering Cargo") -- < EDIT Cargo Name
  for j=1, 16 do
    turtle.select(j)
    turtle.suck() -- < EDIT DIRECTION
  end
  -- EDIT Deliver Route

  --
  os.setComputerLabel("Returning")
  for k=1, 16 do
    turtle.select(k)
    turtle.drop() -- < EDIT DIRECTION
  end
  -- EDIT Route Back to Start

  --
end

-- Repeat Function
while true do
  deliver()
  os.setComputerLabel("Waiting")
  sleep(10)
end
