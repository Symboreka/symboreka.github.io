---
layout: post
title: Hello World!
date: 2024-04-26
categories: [post, testing]
tags: [testing]
---

# Welcome to my "Bbbbllooooggg"
> I hope you got that Californication reference

This is gonna be my first post!

## Some more things

* my skill
* your skill
* sum is still zero
* despite unsigned values

{% mermaid %}
classDiagram
    class MyClass{
        + var1: int
        + printStylish() void
    }
{% endmermaid %}

```c++
void Decoder::printBandResistor(BandResistor resistor) {
    std::cout << "Bandwiderstand Ringe: "
              << getNameOfColorRing(static_cast<DigitColorRing>(resistor.getHundreds())) << " "
              << getNameOfColorRing(static_cast<DigitColorRing>(resistor.getTenths())) << " "
              << getNameOfColorRing(static_cast<DigitColorRing>(resistor.getOnes())) << " "
              << getNameOfMultiplierRing(static_cast<MultiplierColorRing>(resistor.getMultiplier())) << " "
              << getNameOfToleranceRing(static_cast<ToleranceColorRing>(resistor.getTolerance()));

}
```


<details>
  <summary><b>Video 5: “How C++ Works” </b></summary>
  <ul>
    <li>Understand what ‘#include’ does</li>
    <li>Learn what an ‘entry function’ is and how it’s called in C++</li>
    <li>What files of a project get compiled? (cpp Files, hpp Files do not. They only get included)</li>
    <li>Create a bug in your Code</li>
    <li>Learn the Output of the compiler to see where your bug is</li>
    <li>Compile a single cpp file (so a .obj file is created, in my case, a .o file was created)</li>
    <li>Create a wrapper function for ‘std::cout’</li>
    <li>Move this function to a new cpp file and compile it</li>
    <li>Write a declaration for the wrapper function in ‘main.cpp’</li>
    <li>Compile and run everything</li>
    <li>Rename the wrapper function only in the new file to see what errors will occur</li>
    <li>Fix the bug and see what .obj files are created</li>
  </ul>
</details>

$$(A * B)^T = B^T * A^T$$