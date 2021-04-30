os.loadAPI("move")

function placeStep()
  move.t(3)
  turtle.place()
  move.t(3)

function mine()
  turtle.dig()
  turtle.digDown()
  move.f(1)
  turtle.dig()
  turtle.digDown()
  placeStep()
  move.d(1)

os.setComputerLabel("Starting Soon")
sleep(5)
os.setComputerLabel("Mining")
while true do
  turtle.select(1)
  mine()
end
