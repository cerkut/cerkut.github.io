---
layout: page
permalink: /med7/
title: "MED7: Adaptive Systems"
nav: false
toc:
  sidebar: left
---

## Adaptive Systems with Interaction tasks

Design and evaluate adaptive desktop. mobile, virtual, augmented, or extended reality applications that support subtle, embodied, task-defined interactions. Evaluate the effect of visual, audiotory and haptic feedback on task performance, cognitive load and immersion. (Optional: Compare your evaluation to a theoretical model [1]).

{% include figure.liquid loading="eager" path="assets/img/publication_preview/InteractiveInference.png" class="img-fluid rounded z-depth-1" zoomable=true %}

_In this experimental setup, the white bar in the center of the screen helped participants perceive the correct distance 𝑆. They needed to match the size of this bar with the lead car’s bumper while driving. Here, it is wider than the lead car’s bumper indicating that the participant needs to accelerate. After [1],_

[1] Vertegaal, Roel, Timothy Merritt, Saul Greenberg, Aneesh P Tarun, Zhen Li, and Zafeirios Fountas. 2025. “Interactive Inference: A Neuromorphic Theory of Human-Computer Interaction.” arXiv. [doi:10.48550/arxiv.2502.05935](https://doi.org/10.48550/arXiv.2502.05935).

### MED7 Framing
- Spatial Computing: State which platform(s) are targeted and the diegetic UI/UX or multi-modal interaction channels (gaze, pinch, haptics) used across them.
- Quantitative UX & Telemetry: Formalize the performance/cognitive-load/immersion assessment as instrumented, quantitative measures (task timing, error rate, NASA-TLX or equivalent). Optional: Compare it to a theoretical model, e.g., [1]. 
- Multi-Modal Sensory Design: Document how visual/auditory/haptic channels were aligned (latency, cross-modal consistency) rather than bolted on independently.
- Performance budgets: Specify target framerate/responsiveness per platform (desktop vs. mobile vs. XR headset) and how it was profiled.

## Older Project Ideas

This is a container for semester project ideas for the MED Msc students.

The following MATLAB-based external resource is a good place to think about the scope, content, context, and value of semester projects: [MATLAB Excellence in Innovation Projects](https://github.com/mathworks/MathWorks-Excellence-in-Innovation)

### Mobile App for Exploration of Local Resources

Many small business owners struggle for customer attention / discovery in the greater Copenhagen Area. By using recommendation-based algorithms on mobile platforms, can you design and evaluate a mobile app to provide small businesses value over the more common, chain institutions?

{% include figure.liquid loading="eager" path="assets/img/med_project_catalog/1661949836948.png" class="img-fluid rounded z-depth-1" zoomable=true %}

_Mockup image after Krupa, Maria, 2022, "Impact of gamification on user's engagement and exploration of local cafes in Copenhagen Greater Area", Master's Thesis, Aalborg University Copenhagen_

#### Variations / Ideas

- Gamification: narrative, timer, badges, points, or leader boards
- Evaluation: user engagement, perceived usability.
- Camera-based recognition
- Machine Learning (for MED7 and above)
- Augmented Reality

#### Example Hypothesis (P1)

Gamification can enhance user engagement on a mobile application, and encourage users to explore small businesses within the Greater CPH Area.

#### MED7 framing:
- Stakeholder-Centric Framing: Name the small-business persona and articulate the ROI case — what value does discoverability/engagement create for them?
- Agentic AI Integration: If using ML-based recommendation, specify how the model is trained/served and how its behavior is controlled and evaluated (not just "a recommender exists").
- Architectural Thinking: Recommendation pipeline should be a decoupled service/module, not hardcoded into the app — enables future extension (e.g. new business categories).

### Design, Deploy, and Evaluate an Audio-Visual Breathing App

Regularizing breath have many proven health and psychology benefits. It is also a backbone of many completative practices, such as meditation or martial arts. Can technology help in regularizing people's breath?

<div class="row mt-3">
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/med_project_catalog/1661951671374.png" class="img-fluid rounded z-depth-1" zoomable=true %}
    </div>
    <div class="col-sm mt-3 mt-md-0">
        {% include figure.liquid loading="eager" path="assets/img/med_project_catalog/1661951604801.png" class="img-fluid rounded z-depth-1" zoomable=true %}
    </div>
</div>

_Left: A vest-based breath regularization app, right: a microphone-based breath regularization app. After Guruvayurappan, Vatsal, "An audio-visual breathing application and its benefits on human psychology (mental health)", 2021, Master's Thesis, Aalborg University Copenhagen_

#### Variations / Ideas

- Gamification: subtle narrative, timer, badges, points, or leader boards
- Evaluation: Interviews, physiological logs
- Microphone, Gyroscope, IMU, or Camera-based recognition
- Machine Learning (for MED7 and above)
- Augmented, Virtual, or Extended Reality, including native or Web-based XR
- Gradio, Flask, or Streamlit Deployment

#### Example Hypotheses (P1)

- The users find it easy to practice breathing exercises with the help of the designed application.
- If audio-visual feedback for the breath input is provided to the user, then they will be able to focus on their breathing in appropriate manner.
- Breathing exercises are effective in reducing anxiety

#### MED7 framing
- Sensor Analytics: Specify which physiological/gesture signals are captured (mic, gyroscope, IMU, camera) and how they're quantitatively validated against a breathing-regularity outcome.
- Multi-Modal Sensory Design: Justify the audio-visual feedback mapping choice for the intended health/wellbeing effect.
- Ethics & Data Integrity: Since this touches physiological/health-adjacent data, explicitly address consent, data storage, and privacy — a required discussion point given the sensitivity of the data type.

### Marker-based / Markerless Augmented Reality on Mobile Devices

Can you help the cultural / creative sectors (CCSs) to reach new audiences using digital technologies, especially Augmented Reality? In collaboration with national / international CCS you will design digital applications for various devices, which will form connections between locations, personal experiences and artistic projects.

<div align="middle">
<img src="https://stemkoski.github.io/AR-Examples/images/demo/portal-view-AR.png" height="384">
</div>

_An augmented reality "portal to another world" effect. Portal renders above a Kanji marker. Video preview [here](https://www.youtube.com/watch?v=-gZ3Kv9juYg). After [https://stemkoski.github.io/AR-Examples/](https://stemkoski.github.io/AR-Examples/). See also Dourado, Lima, 2021, "[Time's Running Out](<https://projekter.aau.dk/projekter/da/studentthesis/times-running-out-exploring-user-interaction-of-locationbased-timelimited-augmented-reality-experiences-in-urban-environments(8606727a-9767-4f58-98cd-7546d9a25d4f).html>)! Exploring User Interaction of Location-Based, Time-Limited, Augmented Reality Experiences In Urban Environments", MSc Thesis, Aalborg University Copenhagen_

#### Variations / Ideas

- Gamification: timer, game characters, leader boards
- Evaluation: Interviews, physiological logs, correlation analysis
- Markerless Augmented Reality using [ARCore](https://developers.google.com/ar) or [ARKit](https://developer.apple.com/augmented-reality/)
- Machine Learning (for MED7 and above)
- 3D Sound Spatialization using [3DTune-In](https://github.com/3DTune-In) tools

#### Example Hypotheses (P1)

- Fear of Missing Out (FoMO) and scarcity are positively related to continuance intention using Augmented Reality
- FoMO and scarcity decrease enjoyment
- General FoMO is positively related to scarcity
- Audio/Visual Presence increases enjoyment
- Audio/Visual adoption increases enjoyment

#### MED7 framing
- Spatial Computing: Specify ARCore/ARKit vs. markerless approach and the tracking robustness tradeoffs.
- Stakeholder Framing: Identify the cultural/creative-sector client this serves and the audience-reach value proposition.
- DevOps/Deployment: Document the mobile build/deployment pipeline (platform-specific packaging, version control).
- Rapid Greyboxing: Validate core AR interaction mechanics via low-fidelity markerless tests before investing in 3D-audio spatialization polish.

See the full [listing of student theses]({{ '../theses' | relative_url }}) (2013–2026).
