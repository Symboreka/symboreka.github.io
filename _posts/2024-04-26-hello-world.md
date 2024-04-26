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
