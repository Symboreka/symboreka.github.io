---
layout: post
title: C++ Tutorial
date: 2024-04-30
categories: [post, Programming]
tags: [c++, cpp, programming, thecherno, tutorial]
---

# C++ Tutorial Tasks


<details>
  <summary><b>Introduction</b></summary>
  <p>
Hello there!
In this Post I want to share my way of how I studied the Programming Language C++.

I personally found out that I study better with Videos on Platforms like YouTube. Gladly I found one of the best Tutorials I've ever seen.

That means that this whole post will be based on the C++ Playlist by TheCherno on YouTube.

Most Chapters will focus on one Video. Afterwards there are Tasks to complete in order to understand whats happening "under the hood".

The way I created them was the following:
I watched one Video, wrote tasks while the video was playing, then I went to bed.
The next day, I started doing those tasks and watched the next video. Rinse and repeat.

The outcome of this method is this rather long list of tasks. As you can see, I have not yet completed the whole playlist. For my Exam, the first 30 Videos were more than enough. Since then, I've grown to like this language and will therefore continue with this method, as time comes.

I hope you can take away some studying ideas from this! Enjoy C++!
</p>
</details>

<details>
  <summary><b>Video 2,3,4: “How to Setup C++ on Windows/Mac/Linux” </b></summary>
  <ul>
    <li>Set up your favourite IDE. (Video uses Visual Studio, I chose CLion, but VSC is a good free option too)</li>
    <li>Write a simple Hello World program with a button press prompt at the end</li>
    <li>Check where to disable optimization and do so</li>
  </ul>
</details>

<details>
  <summary><b>Video 5: “How C++ Works”</b></summary>
  <ul>
    <li>Understand what ‘#include’ does</li>
    <li>Learn what an ‘entry function’ is and how it’s called in C++</li>
    <li>Identify which files of a project get compiled (cpp files, hpp files do not; they only get included)</li>
    <li>Create a bug in your code</li>
    <li>Learn the output of the compiler to identify the location of the bug</li>
    <li>Compile a single cpp file (so a .obj file is created; in my case, a .o file was created)</li>
    <li>Create a wrapper function for ‘std::cout’</li>
    <li>Move this function to a new cpp file and compile it</li>
    <li>Write a declaration for the wrapper function in ‘main.cpp’</li>
    <li>Compile and run everything</li>
    <li>Rename the wrapper function only in the new file to see what errors will occur</li>
    <li>Fix the bug and observe what .obj files are created</li>
  </ul>
</details>

<details>
  <summary><b>Video 6: “How the C++ Compiler Works”</b></summary>
  <ul>
    <li>Add new file “Math.cpp”</li>
    <li>Create a multiply function with two parameters that returns the multiplication</li>
    <li>Create a new file EndBrace.hpp with the only content being a ‘}’</li>
    <li>Remove the ‘}’ from the ‘Math.cpp’</li>
    <li>Run the code to see the error</li>
    <li>Fix the bug by including ‘EndBrace.hpp’</li>
    <li>Use the compiler, so it outputs the preprocessed file (.i file)</li>
    <li>Remove the weird include and replace it with a proper }</li>
    <li>Create a Define ‘INTEGER int’ and replace all occurrences with this define</li>
    <li>Create and look at the preprocessed file</li>
    <li>Create a ‘#if 1’ before the function, as well as a ‘#endif’ after the function</li>
    <li>Create and look at the preprocessed file</li>
    <li>Change it to ‘#if 0’ and look at the preprocessed file</li>
    <li>Include ‘<iostream>’ and look at the preprocessed file</li>
    <li>Fix all the weird stuff in ‘Math.cpp’ and create an object file from it</li>
    <li>Use the compiler so the object file gets converted to a .asm file (Assembler, in my case, .s file)</li>
    <li>Briefly get an overview of the .asm file</li>
    <li>Make your code be more efficient by returning the a*b directly instead of a variable first</li>
    <li>Check the differences in the .asm file</li>
    <li>Turn on optimization and check the differences in the .asm file</li>
    <li>Change the multiplication to be two specific numbers instead of parameters and check the .asm file without optimization</li>
    <li>Create a new Function ‘Log’ that instead of printing out the passed message, simply returns it</li>
    <li>Call the function before the multiplication. Return value is not used.</li>
    <li>Check the .asm file without, then with optimization</li>
  </ul>
</details>

<details>
  <summary><b>Video 7: “How the C++ Linker Works”</b></summary>
  <ul>
    <li>Make sure the Log() and Multiply() functions from before exist</li>
    <li>Build project without main() function</li>
    <li>Create main function, then build again</li>
    <li>Print some multiplication on screen, then do a cin() to preserve the window. Run the code by executing its binary</li>
    <li>Create a linking error (e.g., by renaming the definition of the Log() function to Logr())</li>
    <li>Comment out where Log() is called</li>
    <li>Notice that the code builds</li>
    <li>Change the comment to be where Multiply is called</li>
    <li>Notice that the code doesn’t build despite the code still not actually being called (because it could be called somewhere else)</li>
    <li>Make the function static, notice that it does build again. (Because static makes it so that this code only exists for this translation unit)</li>
    <li>Remove all weird stuff (renaming functions, static stuff, make it nice and tidy again)</li>
    <li>Copy the definition of the Log function into Math.cpp to see that everything does compile, but does not link due to two definitions of the same function (Works for me on M1 MacBook wtf)</li>
    <li>Fix the bug by removing the double definition.</li>
    <li>Create a new file called Log.cpp</li>
    <li>Create a function InitLog() here that just calls Log and include “Log.h” so it will work</li>
    <li>In Math.h remove the Log.h declaration, instead include Log.h to make it work</li>
    <li>Try to understand why this causes an error</li>
    <li>Fix 1: Make Log() static, therefore each file will have their own Log() function</li>
    <li>Fix 2: Make Log() inline, therefore copying Log()’s body into each time it is called, essentially doing the same as Fix 1 but with less Callstack</li>
    <li>Fix 3: (probably the best fix for now) make it so, that the Log() function is not in two Translation unity (Math.cpp, Log.cpp) but is only in one.</li>
    <li>Move the Log function into Log.cpp and change the body in the .h file to only be a declaration. Therefore the body is only in one translation unit</li>
  </ul>
</details>

<details>
  <summary><b>Video 8: “Variables in C++”</b></summary>
  <ul>
    <li>Create an integer, give it some value and print it</li>
    <li>After the print, assign it to some other value and print it again</li>
    <li>Understand the size of an integer and calculate its min and max value using a calculator</li>
    <li>Make an unsigned variable and play with it</li>
    <li>Make a char and give it the numeric value of some character using the ASCII table, then print it</li>
    <li>Change the datatype from char to short, print it again</li>
    <li>Create a float and give it the value 5.5</li>
    <li>Realize that you created a double and casted it into a float</li>
    <li>Actually set the 5.5 as a float</li>
    <li>Float 4 bytes; doubles 8 bytes</li>
    <li>Print the sizes of all datatypes you know using the sizeof() function (output in bytes)</li>
  </ul>
</details>

<details>
  <summary><b>Video 9: “Functions in C++”</b></summary>
  <ul>
    <li>Remove the silly multiply function and create an actual one, understanding what its return type is, as well as giving it two parameters that are multiplied and the result returned</li>
    <li>Call the multiply function in main(), store it in some variable and print it</li>
    <li>Copy the code block a couple of times, make it so it prints several different multiplications</li>
    <li>Write another function, logmult that does the same thing, but doesn’t return anything, only logs the result to the console</li>
    <li>Rewrite the code you copied to use the new logmult function, the code will be nice and tidy</li>
    <li>Play with the return type of the main method, notice that not returning anything works despite the return type being an int</li>
  </ul>
</details>

<details>
  <summary><b>Video 10: “C++ Header Files”</b></summary>
  <ul>
    <li>Of the new multiply function you just created in main, create a declaration above it without a body</li>
    <li>Create a math.h file, if it doesn’t exist yet, then move the declaration you just made into this file</li>
    <li>Include the header file in your main (notice that the declaration and definition can be in the same file, even if one of them is included)</li>
    <li>Understand what ‘#pragma once’ does. It’s a Headerguard that makes sure the header file is only included once into a translation unit. (Other Method #ifndef a, #endif)</li>
    <li>Add a header guard to all headers and see if it compiles</li>
    <li>How do you differentiate between standard C header files and standard C++ header files?</li>
  </ul>
</details>

<details>
  <summary><b>Video 11: “How to DEBUG C++ in Visual Studio”</b></summary>
  <ul>
    <li>Most IDE’s will have the features mentioned in this video</li>
    <li>Two major parts of debugging: Breakpoints and Memory</li>
    <li>The computer is always right (unless it's undefined behavior which you caused)</li>
    <li>Set a breakpoint at some “hello world” printing</li>
    <li>Play with “step into”, “step over”, “step out”</li>
    <li>Play with uninitialized memory</li>
    <li>Open up the memory view of your IDE (M1 Mac Memory View has some issues, will look into that later)</li>
    <li>Create a c string and put some stuff in it (no malloc, no memory management, just a const char* = “…”, watch the memory of that string and some memory around it. Does your IDE put information about corrupted memory around it?</li>
  </ul>
</details>

<details>
  <summary><b>Video 12: “CONDITIONS and BRANCHES in C++”</b></summary>
  <ul>
    <li>Create a simple integer, initialize it.</li>
    <li>Create a boolean that will be initialized to the result of a comparison, then print it</li>
    <li>Create an if statement that checks for that comparison, print something if true</li>
    <li>Inside an if, is “x == true” necessary? Why is “if x” enough?</li>
    <li>Change the variable so the code inside the if will not execute</li>
    <li>Check the assembly of the if statement, try to understand it (M1 assembly is weird, x86 was good to understand though)</li>
    <li>Which values represent false, which represent true?</li>
    <li>Experiment with if(1) and other values</li>
    <li>Use a pointer inside an if, what benefits does this have? (Uninitialized pointers, unset values,…)</li>
    <li>Check if the pointer is not a nullptr</li>
    <li>Play with an else statement</li>
    <li>Play with an else if statement</li>
    <li>Use the if(ptr), add an else if(“hello”) and some else clause</li>
    <li>Why is the check for “hello” not being executed? (Because the first if will be executed, therefore no else if is checked)</li>
    <li>When do you need curly brackets?</li>
    <li>Remove the else if clause, replace it with some if else struct that does the same. (Remove syntactic sugar, just to see its equivalent) [actually it's not even syntactic sugar, the else doesn’t need brackets as it only gets one argument, which is the whole following if clause]</li>
  </ul>
</details>

<details>
  <summary><b>Video 13: “BEST Visual Studio Setup for C++ Projects!”</b></summary>
  <ul>
    <li>(Since I use CLion, I’ll only add things that are generally a good idea)</li>
    <li>Manage your projects into subfolders, not all projects have to be in the Projects folder</li>
    <li>Create a basic new project</li>
    <li>Check its project folder structure. Find a purpose for all automatically generated folders</li>
    <li>Consider putting all your cpp/hpp files into a /src folder</li>
    <li>Code a simple hello world program, build it</li>
    <li>Check where the actual executable ended up</li>
    <li>Visual Studio differentiates between project folder and solution folder. Check if CLion (or your IDE) does something similar</li>
    <li>Check out your Project Properties and change them to your preferences (notice project specific preferences and global preferences)(global meaning your IDE’s instance, not the globe)</li>
  </ul>
</details>

<details>
  <summary><b>Video 14: “Loops in C++ (for loops, while loops)”</b></summary>
  <ul>
    <li>Call “hello world” 5 times</li>
    <li>Create a for loop that does the same, with only one call of hello world, that executes 5 times</li>
    <li>Alter the for loop so the code looks like this: for( ; i<5 ; ){… Change the Code so that this will be equivalent to before</li>
    <li>Play with the condition that is left in the for loop. (e.g., make it a bool variable and change it within an if)</li>
    <li>Make an endless for loop</li>
    <li>Create a while loop that prints “hello world” 5 times</li>
    <li>Optional: Create an array(vector) with 10 elements that are filled with random numbers. Print them.</li>
    <li>Create a do-while loop that prints “hello world” 5 times</li>
  </ul>
</details>

<details>
  <summary><b>Video 15: “Control Flow in C++ (continue, break, return)”</b></summary>
  <ul>
    <li>What is ‘continue’ used for?</li>
    <li>What is ‘break’ used for?</li>
    <li>What is ‘return’ used for?</li>
    <li>Alter the for loop (Hello World) so that it “continues” at every second iteration (doesn’t print every second time)</li>
    <li>Check continue’s behavior in the debugger</li>
    <li>Replace continue with break (what’s happening?)</li>
    <li>Replace break with return 0, explain the behavior</li>
  </ul>
</details>

<details>
  <summary><b>Video 16: “POINTERS in C++”</b></summary>
  <ul>
    <li>This video will focus on Raw Pointers, not Smart Pointers</li>
    <li>What is a Pointer? (It's an Integer (just a Number) that is storing a memory address)</li>
    <li>Forget about types. Pointers are just integers, types are something that we invented as assistance</li>
    <li>Create a void pointer that is initialized with 0, then NULL, then nullptr</li>
    <li>What is the difference between those three? What do they mean?</li>
    <li>Create an integer, assign it some value</li>
    <li>Store the address of that integer as a pointer somewhere</li>
    <li>Check the value in memory view</li>
    <li>Change the pointer type to a double pointer (do some casting if necessary to avoid errors)</li>
    <li>Check its value again. What is different?</li>
    <li>Print the integer by using a pointer that points to it (dereference it)</li>
    <li>Create a void pointer that points to an integer</li>
    <li>Set its value by using the void pointer (why does this cause an error?)</li>
    <li>Remove the error by changing the pointer type to an int pointer (we told the compiler “trust me”)</li>
    <li>Print the newly set value to verify that it works</li>
    <li>Create 8 bytes of data on the heap (char* buffer = new char[8];)</li>
    <li>Set its memory to 0 (memset(buffer, 0, 8))</li>
    <li>At the end of the code, delete the allocated memory using delete[] buffer;</li>
    <li>What was it that we’ve been doing with this heap memory? What do pointers do here?</li>
    <li>Create a double-pointer that points to the address of buffer</li>
    <li>Use the memory view to get from your double pointer towards the values inside the buffer</li>
  </ul>
</details>

<details>
  <summary><b>Video 17: “REFERENCES in C++”</b></summary>
  <ul>
    <li>References are Pointers in disguise. Basically syntactic sugar to make code more readable</li>
    <li>References don’t take up storage by themselves, they always just reference an already existing variable. (unlike a pointer, you cannot create a reference out of thin air)</li>
    <li>Create an integer and assign it some value</li>
    <li>Create a reference to that integer</li>
    <li>The reference is now basically an alias, it only exists in the source code. The compiler handles it at compile time</li>
    <li>Set the reference to a new value, then print the original variable</li>
    <li>Create an increment function that takes an integer and simply increments it</li>
    <li>Note that the function does not actually change the argument</li>
    <li>Fix this function using your newly acquired knowledge about pointers</li>
    <li>Now change it to be passed by reference using references. Note that the resulting machine code is exactly the same, just the code looks a lot cleaner</li>
    <li>Try to create a reference that doesn’t reference anything (will not work because a reference is just an alias)</li>
  </ul>
</details>

<details>
  <summary><b>Video 18: “CLASSES in C++”</b></summary>
  <ul>
    <li>Object Oriented Programming</li>
    <li>Classes are a way to group data and/or functions together</li>
    <li>Create some variables that a player in a video game could have, like coordinates and speed</li>
    <li>Create a second player using this method</li>
    <li>Create a class player with those variables</li>
    <li>Create two players with the variables you set before, but now cleaner with the new datatype player</li>
    <li>Set the visibility of these member variables to public</li>
    <li>Create a function (not method) that changes the player's position by an argument * speed for both axes (pass the player by reference)</li>
    <li>Now improve this by making a method out of this and fix all new errors</li>
    <li>Technically all of this could be done without classes, they are (yet again) basically just syntactic sugar</li>
  </ul>
</details>

<details>
  <summary><b>Video 20: “How to Write a C++ Class”</b></summary>
  <ul>
    <li>Create a simple Log class</li>
    <li>Inside main, create a log instance and use a setLogLevel method (that doesn’t exist yet)</li>
    <li>Also call a Warn(const char * ) method, to be created</li>
    <li>Now create all necessary variables and methods (take visibility into account)</li>
    <li>Create member variables for LogLevelWarnings, type const int</li>
    <li>Create implement 3 methods, Warn() Error() and Info() that make sense for a logging application</li>
    <li>Add if’s to the methods according to the current log level</li>
    <li>Test your methods by calling them with different log levels</li>
  </ul>
</details>

<details>
  <summary><b>Video 21: “Static in C++”</b></summary>
  <ul>
    <li>Specifically, static outside of classes/structs</li>
    <li>Define a static variable of whatever type in its own .cpp file</li>
    <li>Define a normal variable of the same name in main.cpp, include the other variable by #include, print it and run the code</li>
    <li>Now remove the static keyword and try to compile again. What’s happening? (Linking error because the same global variable is trying to be linked twice)</li>
    <li>Remove the initialization of the variable in main, and add the “extern” keyword in front of the variable in main.cpp. (also remove the #include ) What’s happening?</li>
    <li>Now add the static keyword again, explain the error</li>
    <li>What’s the takeaway with static? When should it be used? (Answer: As often as you can, whenever the function/variable is only used within one translation unit, e.g., internal functions/variables)</li>
  </ul>
</details>

<details>
  <summary><b>Video 22: “Static for Classes and Structs in C++”</b></summary>
  <ul>
    <li>Create a struct called Entity, give it two integers (could also be a class, struct has been chosen for visibility reasons. Remember what changes?)</li>
    <li>Create two instances of that struct, first time accessing it normally, second time using an initializer. (Entity e {…)</li>
    <li>Add a printing method to the struct</li>
    <li>Print both instances using your print method</li>
    <li>Change the two integers to be static integers</li>
    <li>Fix the errors with the initializer by changing their values like you did the first instance</li>
    <li>An error will occur. Fix this by initializing values to the class by adding this: “int Entity::x;” just above main() (for both variables)</li>
    <li>Run the code, understand the output</li>
    <li>Change the way you assign values to the two integers, from <object>.x to Entity::x (using its namespace instead of an instance)</li>
    <li>That's it for variables, now on to methods</li>
    <li>Change the print method to be static. (This is also a good idea, since the two integers are also static)</li>
    <li>Now change the way the method is called, similar to the variable</li>
    <li>Now the code makes a lot more sense too.</li>
    <li>Remove the instances of Entity, they are not used anyways. Does the code still run?</li>
    <li>Remove the static from the two integers, understand the error.</li>
    <li>Add static to the variables again</li>
    <li>(TheCherno casually explains that classes themselves are just syntactic sugar. All non-static methods are just functions that have a hidden first parameter, being its object. Static methods do not have that hidden parameter, so they too, are just functions in a different namespace. My mind is officially blown.)</li>
  </ul>
</details>

<details>
  <summary><b>Video 23: “ENUMS in C++”</b></summary>
  <ul>
    <li>Create 3 global integers, A=0, B=1, C=2</li>
    <li>In main, create an int value, set it to b</li>
    <li>Create an if, checking if the value is b, inside the if, do something cool</li>
    <li>Now, since these are just integers, they can be changed and messed with. Also they are not grouped. Enums will fix that</li>
    <li>Change the global variables to lowercase</li>
    <li>Create an enum containing A,B,C named whatever you want</li>
    <li>Change the type of value to be of your enum, play around with it. (See, that it's just integers after all, they’re basically just named)</li>
    <li>Play around with setting the values inside the enum manually</li>
    <li>Change the type of the enums from int to unsigned char</li>
    <li>Play around with other datatypes, why do some fail?</li>
    <li>Change the type to char, and leave it for now</li>
    <li>Inside the Log class we defined earlier, change the Log Levels to be an enum instead of const int’s</li>
    <li>Change the types of the levels to actually be the levels. Why is that a good idea? (To restrict false values. Easy to get around, but better than before)</li>
    <li>Fix all bugs that may have occurred</li>
    <li>Notice that if the enum variable is named the same thing as a method of the class, an error will occur. To fix this, add a Prefix of the Enum’s name to all variables. Good Practice according to TheCherno</li>
  </ul>
</details>

<details>
  <summary><b>Video 24: ”Constructors in C++”</b></summary>
  <ul>
    <li>Create a Class Entity, with two floats and a print method that prints the two values nicely</li>
    <li>Instantiate an object in main and print it</li>
    <li>Run the code. Notice that the values are randomly set</li>
    <li>Create an init method that initializes the values of the entity</li>
    <li>Rename the method so it's a constructor with no parameters</li>
    <li>Notice that the code is now clean and we don’t get random values anymore</li>
    <li>Create a constructor with two parameters that will initialize the values of Entity</li>
    <li>Use this new constructor</li>
    <li>Create a new class that only has one static method, what it does is up to you</li>
    <li>Try to find two ways to prohibit instantiating an object from that class (Solution: make the constructor private or delete the default constructor)</li>
  </ul>
</details>

<details>
  <summary><b>Video 25: “Destructors in C++”</b></summary>
  <ul>
    <li>Used for uninitializing or clearing memory</li>
    <li>Create a destructor for the Entity class, that std::cout’s us when the object is destroyed</li>
    <li>Create an object, print it, and destroy it</li>
    <li>Manually call the destructor, check the output (The destructor is actually called twice then, Cherno doesn’t tell us whether the object is actually destroyed on the first call, or the second call, but only the second one makes sense. So manually calling the destructor does not actually destroy the Object! However, the destruction of the object calls the destructor first)</li>
  </ul>
</details>

<details>
  <summary><b>Video 26: “Inheritance in C++”</b></summary>
  <ul>
    <li>Rename the Entity struct to StructEntity, so it doesn’t bother us here</li>
    <li>Create an Entity Class with two floats, and a move method that allows the entity to move</li>
    <li>Create a class Player that also has two floats, a move method but in addition to that, a const char* name, as well as a printName method</li>
    <li>Now let's clean this up by using Inheritance</li>
    <li>Make Player inherit from Entity, making it both a Player and an Entity</li>
    <li>Remove the duplicated code, as it is no longer necessary</li>
    <li>In main, create a player, set its name, and print it</li>
    <li>Also, move the player. See that the inherited methods do work</li>
    <li>Inheritance is used to extend from a base class, add functionality</li>
    <li>Check the size of your classes using sizeof(), also play around with member variables and methods</li>
  </ul>
</details>

<details>
  <summary><b>Video 27: “Virtual Functions in C++”</b></summary>
  <ul>
    <li>Set the name of your player class to private</li>
    <li>In Entity, create a printName method that prints some name</li>
    <li>Adjust the constructor of Player, so that the name is passed and set</li>
    <li>In main, create an Entity, print its name. Also create a player, also print its name</li>
    <li>Create an Entity pointer, but set it to the player, print its name (using ->). What's wrong? (Method of the Type is called)</li>
    <li>Make the printName method in Entity virtual. What does that do? (Ensures that a vtable is generated, that looks for overridden methods)</li>
    <li>Optionally, but good practice, add an override to the method in Player, marking it as a method that overrides another (that just helps the developer see mistakes, if the method does not actually overrides something)</li>
  </ul>
</details>

<details>
  <summary><b>Video 28: “Interfaces in C++ (Pure Virtual Functions)”</b></summary>
  <ul>
    <li>Change the virtual method in Entity to be a pure virtual function (has to be implemented by subclasses and prohibits instantiation of entities) (instead of body, do = 0;)</li>
    <li>Create a global method called Print(??? obj)</li>
    <li>In the body, print the name, by using GetClassName() that returns a std::string</li>
    <li>Call the ??? type Printable</li>
    <li>Create a class Printable</li>
    <li>Create a pure virtual function GetClassName</li>
    <li>Make Entity inherit from Printable (Its basically an Interface, however its not officially called an interface)</li>
    <li>Fix any errors by implementing everything necessary</li>
  </ul>
</details>

<details>
  <summary><b>Video 29: “Visibility in C++”</b></summary>
  <ul>
    <li>No effect on Performance, etc</li>
    <li>What are the 3 Visibilities in C++? (public, private, protected)</li>
    <li>Try to access the private members of entity</li>
    <li>Notice, that you cannot access the private members of entity, even within player</li>
    <li>Switch the visibility of the x, y variables in entity to protected</li>
    <li>Notice that you can now access the variables from player, but not main</li>
    <li>Visibility only dictates how a class should be used, not a definite rule</li>
  </ul>
</details>

<details>
  <summary><b>Video 30: “Arrays in C++”</b></summary>
  <ul>
    <li>Create an Array of 5 Integers</li>
    <li>Initialize the first and last element by accessing them directly</li>
    <li>Print the first element, then print the array without accessing an element</li>
    <li>Try to access invalid elements, like -1 or 5</li>
    <li>Create a for loop that initializes all elements of the array to the value 2</li>
    <li>View the variables in memory view</li>
    <li>Create a pointer equal to the array</li>
    <li>Set the third element of the array to the value 5</li>
    <li>Rewrite the line using pointer arithmetic instead of the third element</li>
    <li>Check if that worked. Solution: (*(ptr+2) = 5;)</li>
    <li>Create another array using an int* and initialize it using new (using the heap, instead of the stack)</li>
    <li>Delete the array at the end of your code using delete[]</li>
    <li>Use a for loop to initialize the memory</li>
    <li>Create a class ArrayHandler that does everything the array did on the heap</li>
    <li>Create a constructor that initializes the memory to the value 2</li>
    <li>Find your array using the memory view</li>
    <li>Within the constructor, create a stack array and print its size using sizeof(), dividing by the size of the datatype. Result will be the count of the array (it knows it due to the stack offset)</li>
    <li>Swap the stack array with the heap array. What changes? (Sizeof heap array is a pointer, so the whole math is off)</li>
    <li>Good practice: remove the magic number by creating an int size = 5; pass that size.</li>
    <li>See the error, fix it by adding static const to the variable. (Variable has to be set at compile time, so it cannot be a variable but has to be const (and static for some reason) (i had no error, huh)</li>
    <li>Also put this const into the for loops</li>
  </ul>
</details>

<details>
  <summary><b>Video 31: “How Strings Work in C++ (and how to use them)”</b></summary>
  <ul>
    <li>What is a string? (A group of characters, essentially a text)</li>
    <li>Create a const char* and set it to some string (c style)</li>
    <li>Why do we prefer using const here? (Strings are immutable and editing it creates a new string all the time)</li>
    <li>Try altering a const string (notice the error)</li>
    <li>Check the String in Memory view. What is its encoding?</li>
    <li>In memory view, spot the Nullbyte. Why does it exist?</li>
    <li>Recreate your string using a char array, not setting the Nullbyte at the end</li>
    <li>Print your new string. What's happening? (CLang appears to put a nullbyte at the end anyways…)</li>
    <li>Add a Nullbyte at the end of your recreated string. (Use two methods, either numeric 0, or /0. They are identical in memory)</li>
    <li>Remove the recreated array</li>
    <li>Switch the c-style string to be std::string, fix all errors if any occur</li>
    <li>Play around with the #include’s, notice that <iostream> does have a definition of std::string, but std::cout << operator is overloaded in <string>, so we need to include both (didn’t need that on my mac)</li>
    <li>Check what methods are available for std::string. Play with them</li>
    <li>Check the cppreference for these methods, learn to read a documentation</li>
    <li>Try to initialize your string by adding “stringa” + “stringb”, something like that</li>
    <li>Fix this by appending to the string a line later (string +=…)</li>
    <li>Or, fix this by calling the std::string constructor on either the first or the second string. Try both</li>
    <li>Use the cpp reference to implement some kind of “find substring in string” method that returns a bool. (Try using npos, if you feel fancy)</li>
    <li>Create a global print function that takes in a std::string and prints it, with endl</li>
    <li>Notice, that always when this is called, the string is copied as we pass it in by value</li>
    <li>Fix this by passing a const reference instead</li>
  </ul>
</details>

<details>
  <summary><b>Video 32: “String Literals in C++”</b></summary>
  <ul>
    <li>What is a string literal? (A String in code within double quotes)</li>
    <li>Assign a std::string to some string literal</li>
    <li>Why is the size 1 larger than the literal?</li>
    <li>Change the type of the string to be a const char [yoursize]</li>
    <li>Change one character to a \0 somewhere within the string (note that \0 is just 1 ascii symbol, so only one character)</li>
    <li>Print the length of the string by using strlen(). Understand the output</li>
    <li>Edit the char array afterwards, (remove const if necessary) check if that works</li>
    <li>Now change the char array to be a char*. What has changed? Why is the String now no longer editable?</li>
    <li>Change the char * to const char *, as it is best practice for reasons you gave in the previous task</li>
    <li>Change the char* type to a wchar_t* (prefix the literal with L, like L”hello” )</li>
    <li>Change the char* type to a char8_t* (no prefix needed, as this is the default)</li>
    <li>Change the char* type to a char16_t* (prefix u)</li>
    <li>Change the char* type to a char32_t* (prefix U)</li>
    <li>Think of a reason when this might be a good idea</li>
    <li>Are string literals of any type only in read-only memory? (yes, even if its not const, the literal is still in read-only and a new one is created when the altering happens)</li>
  </ul>
</details>

<details>
  <summary><b>Video 33: “CONST in C++”</b></summary>
  <ul>
    <li>Const is a promise, there are ways to break that promise</li>
    <li>Create a const int (like MAX_AGE,…) on the stack</li>
    <li>Create an integer on the heap</li>
    <li>Set this integer to some value, then print it</li>
    <li>Now, make the int * point to the const int. (Casting will be required) (compiler did not allow to overwrite the value, due to discarded qualifiers)</li>
    <li>We now technically have access to this const and we can change it. (Will cause crashes on some systems)</li>
    <li>What does const here?: const int* a = new int; (cant change the contents of the pointer, however we can still make the pointer point to something else)</li>
    <li>What does const here?: int* const a = new int; (can change the values, however cannot reassign the pointer to point somewhere else)</li>
    <li>What does const here?: const int* const a = new int; (cannot change the pointer, nor the value)</li>
    <li>Okay, that's for variables. Now to classes and methods</li>
    <li>Create a simple class Entity, with two variables, getters and setters</li>
    <li>Add a const to a getter, after the method name</li>
    <li>What did that do? What is now promised? (no modification of the class object)</li>
    <li>It's good practice to always mark methods const that don’t modify the object, as new const methods can only call other const methods</li>
    <li>What if we want a method to be const, but for some reason a variable still has to change, is there a way around that?</li>
    <li>Yes, add mutable to a member variable, meaning it can be changed even by const methods</li>
  </ul>
</details>

<details>
  <summary><b>Video 34: “The Mutable Keyword in C++”</b></summary>
  <ul>
    <li>Create a class Entity with a std::string name, and a getter. Make the getter const</li>
    <li>In main, create an object of this entity class, make it const</li>
    <li>Call the const method</li>
    <li>Now remove the const from the method, why does this fail?</li>
    <li>Create an int that counts how many times the const method is called</li>
    <li>Now, the const is making trouble, as we are modifying the object</li>
    <li>Make the int mutable, fixing this issue</li>
    <li>That's it with mutable for classes. Now onto lambdas. (will be covered in detail in some other video)</li>
    <li>A lambda is like a throwaway function that we can assign to a variable</li>
  </ul>
</details>
