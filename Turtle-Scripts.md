# Turtle Scripts

<details>
<summary>Delivery</summary>
<br>
**Edit for each turtle based on its delivery route.**

This script is not pulled during the setup as it always needs to be modified for a particular task.


```
github get turtle/delivery <name of task>
```

```
> delivery
```

Collects cargo from one chest and delivers it to another.

Start the turtle next to the inventory it will be taking from.
</details>
---
### Pillar
```
> pillar <height>
```
Builds a 1 block pillar to the specified height.

#### Setup
- Place the turtle on the ground. Pillar will be built directly in front of it.
- Place the building material into the selected inv slot.

#### Improvements
- When a stack of materials is depleted, move to the next stack.
- If no height is given. Go until it either runs out of materials or hits something above it.
- Use the `floor()` function to go back down instead of counting.

---
### Floor - NOT WORKING
```
> floor <x> <y>
```
Builds a floor. The turtle will place blocks below it.

Start at the near-right corner of the floor.

Args:
- Floor Depth
- Floor Width

#### Setup
- Ensure there are no obstructions where the floor will go or one block above.
- Place the turtle above the near-right corner of where the floor will go.
- Place the floor material in inv slot 1.

---
### Lumberjack - NOT WORKING
```
> lumberjack
```

#### Setup
- Place the turtle on the floor.
- Place a chest directly behind it.
- Place saplings in inv slot 1.
- Ensure that the space in front of the turtle can be planted in.

#### Improvements
- Cut down trees in front and either side of the turtle.
- Collect saplings from a chest and plant them. Put the logs back into that chest.

---
### Pumpkin
```
> pumpkin
```

#### Setup
- Put the pumpkins in a long row and on each end, place a block of cobble.
- On top of one of the cobble, place a chest.
- Place the turtle on top of pumpkins next to, and facing the chest.

#### Improvements
- Harvest from two rows.

---
### Walkway
```
> walkway <length>
```
Digs out a walkway two blocks high by one block wide. Also places blocks for the floor if needed.

#### Setup
- Place the turtle facing the direction the tunnel will be at floor level.
- Place some floor blocks in slot 1.

#### Improvements
- Protect against gravel and sand falling down.

---
### Cane
```
> cane
```
Harvests a row of sugar cane.

#### Setup
- Place a single line of cane.
- Place a stack of three cobblestone at one end of the row.
- Place a chest on the floor at the other end of the cane row.
- Place the turtle on top of the chest. Facing towards the row of cane.

#### Improvements
- Stop detecting the chest and instead, detect a block behind the chest. So it can be any inventory.

---
### Cactus
```
> cactus
```
Harvests cactus.

#### Setup
- Place a row of cactus then a row of nothing then a symmetrical row of cactus.
- Place a chest at the end of the rows in the center row. The chest should be on the same level as the lowest cactus block.
- Place the turtle above the chest, facing into the rows.
- Place a 3 high stack of cobblestone at the end of the rows in the center row.

---
### Step Mine
```
stepmine
```
Mines down diagonally and places steps as it goes.

- v0.2 - When it runs out of steps and mines something else into slot 1, it will place that down again...

#### Setup
- Place the turtle facing the direction you want it to mine.
- Place stair blocks into slot 1.
---
<!-- ### Cobblestone Generator
```
cobblestone <side>
```

Mines cobblestone in one spot from a cobblestone generator.

#### Setup
- Place the turtle facing, below or above the location where cobblestone is generated.
- `cobblestone <side>` - `up`, `down`, `front`. -->
