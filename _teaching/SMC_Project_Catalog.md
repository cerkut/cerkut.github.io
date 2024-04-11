---
title: "Sound and Music Computing Project Catalog"
collection: teaching
type: "Supervision"
permalink: /teaching/SMC_Project_Catalog
venue: "Aalborg University"
date: 2024-04-11
location: "Copenhagen, Denmark"
---
This is a container for semester project ideas for the SMC students.

The SMC7/8 students should consider classical Audio Signal Processing projects, whereas SMC9/10 students who take the Machine Learning Course (MLME) could also consider Machine Learning projects.

The following MATLAB-based external resources are good places to think about the scope, content, context, and value of semester projects.

* [MATLAB Excellence in Innovation Projects](https://github.com/mathworks/MathWorks-Excellence-in-Innovation)
* [MATLAB Annual Audio Plugin Competition Submissions](https://se.mathworks.com/matlabcentral/fileexchange/?q=tag:%22aescomp%22&sort=date_desc_updated)

# Classical Electronic Music for Modern AI

<div align="middle">
<img src="https://juanalonso.github.io/ddsp_fm/img/anim_vae01.gif 
" height="384">
</div>

🚀 [Juan Alonso Moreno](https://github.com/juanalonso) has developed a differentiable FM synthesizer using the DDSP framework in his 2021 SMC Master thesis 

- Audio [https://juanalonso.github.io/ddsp_fm/](https://juanalonso.github.io/ddsp_fm/)
- Code [https://juanalonso.github.io/ddsp_fm/](https://github.com/juanalonso/ddsp_fm)

[Franco Caspe](https://fcaspe.github.io/), a PhD student from QMUL has interesting related projects. 

💿 DATA: Miller S Puckette [in his Pd Repertory Project](https://msp.ucsd.edu/pdrp/) provides example study patches of important electronic / computer music projects. [Stefano Fasciani (U. Oslo)](https://github.com/stefanofasciani/DGMD) is actively working on a dataset generator for musical devices. 

Starting from these models 🚀 and data 💿, can you design and evaluate an end-to-end differentiable synthesizer? 

## References

Caspe, Franco, Andrew McPherson, and Mark Sandler. 2022. “DDX7: Differentiable FM Synthesis of Musical Instrument Sounds.” arXiv. https://doi.org/10.48550/arxiv.2208.06169. 

Lazzarini, Victor, Damián Keller, and Nemanja Radivojević. 2023. “Issues of Ubiquitous Music Archaeology: Shared Knowledge, Simulation, Terseness, and Ambiguity in Early Computer Music.” Frontiers in Signal Processing 3: 1132672. https://doi.org/10.3389/frsip.2023.1132672.

Lazzarini, Victor, and Joseph Timoney. 2024. “Theory and Practice of Higher-Order Frequency Modulation Synthesis.” Journal of New Music Research ahead-of-print (ahead-of-print): 1–16. https://doi.org/10.1080/09298215.2024.2312236.

Zattra, Laura. 2007. “The Assembling of Stria by John Chowning: A Philological Investigation.” Computer Music Journal 31 (3): 38–64. https://doi.org/10.1162/comj.2007.31.3.38.

# Marker-based / Markerless Augmented Reality on Mobile Devices

Can you help the cultural / creative sectors (CSSs) to reach new audiences using digital technologies. especially Augmented Reality? In collaboration with national / international CCS you will design digital applications for various devices, which will form connections between locations, personal experiences and artistic projects.

<div align="middle">
<img src="https://stemkoski.github.io/AR-Examples/images/demo/portal-view-AR.png" height="384">
</div>

*An augmented reality "portal to another world" effect. Portal renders above a Kanji marker. Video preview [here](https://www.youtube.com/watch?v=-gZ3Kv9juYg). After [https://stemkoski.github.io/AR-Examples/](https://stemkoski.github.io/AR-Examples/). See also Dourado, Lima, 2021, "[Time&#39;s Running Out](https://projekter.aau.dk/projekter/da/studentthesis/times-running-out-exploring-user-interaction-of-locationbased-timelimited-augmented-reality-experiences-in-urban-environments(8606727a-9767-4f58-98cd-7546d9a25d4f).html)! Exploring User Interaction of Location-Based, Time-Limited, Augmented Reality Experiences In Urban Environments", MSc Thesis, Aalborg University Copenhagen*

## Variations / Ideas

- 3D Sound Spatialization using [3DTune-In](https://github.com/3DTune-In) tools
- Gamification: timer, game characters, leader boards
- Evaluation:  Interviews, physilogical logs, correlation analysis
- Markerless Augmented Reality using [ARCore](https://developers.google.com/ar) or [ARKit](https://developer.apple.com/augmented-reality/)
- Machine Learning (for SMC9 and above)

## Example Hypotheses (P1)

* Fear of Missing Out (FoMO) and scarcity are positively related to continuance intention using Augmented Reality
* FoMO and scarcity decrease enjoyment
* General FoMO is positively related to scarcity
* Audio/Visual Presence increases enjoyment
* Audio/Visual 3D adoption increases enjoyment

# Augmented Reality Audio
Since 2016, we have been using [Resonance Audio](https://resonance-audio.github.io/resonance-audio/develop/design-tips) in mobile Augemented Reality projects in real-time. Here is a short demo showing how we used in Google's Tango in real-time https://youtu.be/UP6wdnJQJz8 (also room and object scanning). The video ends up with an idea of extending the approach to outdoor scenes, esp. forests. Here are some pointers:

- Stevens, Francis, Damian T Murphy, Lauri Savioja, and Vesa Välimäki. 2017. “Modeling Sparsely Reflecting Outdoor Acoustic Scenes Using the Waveguide Web.” IEEE/ACM Transactions on Audio, Speech and Language Processing 25 (8): 1566–78. doi:10.1109/taslp.2017.2699424.

- Kaneko, Shoken, and Hannes Gamper. 2021. “A Fast Forest Reverberator Using Single Scattering Cylinders.” 2021 IEEE 23rd International Workshop on Multimedia Signal Processing (MMSP) 00: 1–5. doi:10.1109/mmsp53017.2021.9733582

The perceivable changes in the forests acoustic environments are important for AR applications like https://eiwaztreeoflife.com/. Can you enchance the climate impact experience with an interactive and adaptive AR app and help saving the planet, in collaboration with Martine Jarlgaard? 

## Variations / Ideas

- Extending Resonance Audio with three / forest reverbs
- Gamification: 
- Evaluation: Interviews, physilogical logs, correlation analysis
- Machine Learning (for SMC9 and above)

## Example Hypotheses (P1)

* Tree/Forest reverb simulation  makes a positive impact on immersion for https://eiwaztreeoflife.com  
* Audio/Visual Presence through forest / tree reverb increases enjoyment
* Audio/Visual 3D adoption through occlusion increases enjoyment
