To run this code, put your `mjkey.txt` in this repository and run `make`. You might have to edit the Makefile because it uses `clang` and maybe a few other OS X specific commands.
What you will see in the console is a print-out of the touchsensor reading.

The `broken` branch demonstrates the original problem and the `master` branch has the solution.
Basically I moved the touchsensor up one level in the hierarchy and suddenly it became responsive to the blocks.
