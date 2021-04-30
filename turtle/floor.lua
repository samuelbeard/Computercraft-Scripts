os.loadAPI("move")

-- EDIT --

args = {...}
a = args[1] -- Depth of the floor.
b = args[2] -- Width of the floor.
rotation = 1 -- Which direction the turtle is facing.

-- Turn around for a new line.
function rot()
  if (rotation == 1) then
    move.t(1)
    move.f(1)
    move.t(1)
    rotation = 2
  else
    move.t(2)
    move.f(1)
    move.t(2)
    rotation = 1
  end
end

-- Place a row of blocks then move forward. Do not move forward after placing the last block in a row.
function row()
  for i=1, a-1 do
    turtle.placeDown()
    move.f(1)
  end
  turtle.placeDown()
  rot()
end

for j=1, b do
  row()
end
