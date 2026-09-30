### Example 1: Cyclic Traffic Lamp Controller

* There are three lamps, **RED**, **GREEN**, and **YELLOW**, that should glow cyclically with a fixed time interval (say, 1 second).
* **Observations:**
  * The FSM will have three states, corresponding to the glowing state of the lamps.
  * The input set is null; state transition will occur whenever a clock signal comes.
  * This is a **Moore Machine**, since the lamp that will glow only depends on the state and not on the inputs (here null).
