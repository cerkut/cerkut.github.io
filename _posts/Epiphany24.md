---
title: 'Epiphany #24 (1981/82): On differential programming'
date: 2020-09-19
permalink: /posts/2020/09/Epiphany24/
tags:
  - remembrance 
  - Differential Programming
  - SMC
---


I am programming my first computer, the Commodore 64. My first sound program is something like this. I command to the SID-chip with direct memory access, via PEEK and POKE commands.

The memory locations (MEM) used for SID music synthesis start at 54272 ($D400) in the Commodore 64. The memory locations 54272 to 54296 inclusive are the POKE locations you need to remember when you’re using the 6581 (SID) chip register map.

When I run the program, there are weird noises. I realize I have typed a memory location wrong, I am reading & writing to a random region.

I think: could I use this to get a metallic tinge-like sound like Kraftwerk? I discovered them at the same year on the radio.

```
MY_PROGRAM 1:
start tok64 page185.prg
  5 s=54272
  10 for l=s to s+24:poke l,0:next    :rem clear sound chip
  20 poke s+5,9:poke s+6,0
  30 poke s+24,15              :rem set volume to maximum
  40 read hf,lf,dr
  50 if hf<0 then end
  60 poke s+1, hf :poke s, lf
  70 poke s+4, 33
  80 for t = 1 to dr :next
  90 poke s+4,32 :for t=1 to 50:next
  100 goto 40
  110 data 25,177,250,28,214,250
  120 data 25,177,250,25,177,250
  130 data 25,177,125,28,214,125
  140 data 32,94,750,25,177,250
  150 data 28,214,250,19,63,250
  160 data 19,63,250,19,63,250
  170 data 21,154,63,24,63,63
  180 data 25,177,250,24,63,125
  190 data 19,63,250,-1,-1,-1
stop tok64
````

This is one of the reasons early / assembler programmers like me get why Neural Turning Machines [1], Differentiable Neural Computers [2] work as they do. More to come on this topic.

References

[1] Graves, A., Wayne, G., Danihelka, I. (2014). Neural Turing Machines https://arxiv.org/abs/1410.5401

[2]  Graves, A., Wayne, G., Reynolds, M., Harley, T., Danihelka, I., Grabska-Barwińska, A., Colmenarejo, S., Grefenstette, E., Ramalho, T., Agapiou, J., Badia, A., Hermann, K., Zwols, Y., Ostrovski, G., Cain, A., King, H., Summerfield, C., Blunsom, P., Kavukcuoglu, K., Hassabis, D. (2016). Hybrid computing using a neural network with dynamic external memory Nature 538(7626), 471-476. https://dx.doi.org/10.1038/nature20101