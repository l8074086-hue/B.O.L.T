## How do I debug my code?

If you’ve written code that isn't working, congratulations—you are now officially a programmer. Debugging is the process of identifying, isolating, and fixing "bugs" (errors) in your software. It is a detective game where you are both the detective and the accidental culprit. Personally, I believe the best way to debug is to stop guessing and start observing.

### Why is my code failing?

Broadly speaking, errors fall into three buckets:

- **Syntax Errors:** The "grammar" of your code is wrong. The computer can't even start running it.
   
- **Runtime Errors:** The code starts running but crashes midway (e.g., trying to divide by zero).
   
- **Logic Errors:** The code runs perfectly, but the result is wrong. These are the hardest to find because the computer is doing exactly what you _told_ it to do, not what you _wanted_ it to do.

---

### The Power of Print Debugging

Print debugging is the "old reliable" of the programming world. While fancy tools exist, nothing beats the speed of dropping a few print statements to see what’s happening under the hood.

#### 1. Validating State (Variable Checks)

The most common use is checking if your variables actually hold the data you expect. If your math is wrong, print the values _before_ the calculation.

Python

```python
print(f"DEBUG: score={score}, multiplier={mult}") # Check values
final_score = score * mult
```

#### 2. Following Control Flow (Path Tracing)

This is a specific method used to see which "path" your code took through `if/else` statements or loops. When your code doesn't do anything, it’s often because it never entered the block of code you expected it to.

You can add "breadcrumbs" to trace the execution:


Python
```Python
if user_authenticated:
    print("PATH: Entered authentication block")
    if user_is_admin:
        print("PATH: User is admin, opening dashboard")
        show_admin_dashboard()
    else:
        print("PATH: User is guest, opening home")
        show_welcome_page()
else:
    print("PATH: Authentication failed, redirecting to login")
    show_login()
```

By looking at your console, you can instantly see if the logic skipped a section entirely.

---

### Other Essential Tools

Beyond printing, you should familiarize yourself with these techniques:

#### Reading the Traceback

When your code crashes, the terminal spits out a "Traceback." Most beginners ignore it because it looks scary, but it’s a map. It tells you exactly which file and which line caused the error. **Always look at the very bottom line first**—it contains the Error Name (e.g., `IndexError`) and a description.

#### Rubber Ducking

Explain your code, line by line, to an inanimate object (like a rubber duck). By forcing your brain to translate logic into spoken words, you often realize where you made a false assumption.

#### Using a Debugger (Breakpoints)

A debugger is a tool built into your editor (like VS Code) that lets you pause time.

- **Breakpoints:** Click next to a line number to set a "stop sign." The code freezes there.
   
- **Step Over:** Move through your code one single line at a time to see exactly when the crash happens.
   

---

### Debugging Cheat Sheet

| **If your code...**        | **Try this first:**                                                          |
| -------------------------- | ---------------------------------------------------------------------------- |
| **Won't start at all**     | Look for missing colons, mismatched parentheses, or indentation.             |
| **Crashes immediately**    | Read the bottom of the Traceback; check if a variable is `None` or `Null`.   |
| **Gives the wrong output** | Use "Path Tracing" prints to see which `if` statements are triggering.       |
| **Loops forever**          | Add a `print()` inside the loop to see why your "break" condition isn't met. |
| **Is "Missing" a feature** | Check your imports; did you actually call the function you wrote?            |

> **Pro Tip:** When you're done debugging, remember to remove your print statements! There is nothing more embarrassing than a professional tool accidentally printing "HERE!!!" or "IT WORKS FINALLY" in a production log.