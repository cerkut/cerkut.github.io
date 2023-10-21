---
title: "Audio Support for Jupyter on Visual Studio Code"
date: 2023-03-11
permalink: /posts/2023/03/Audio-in-VSCode/
tags:
  - jupyter
  - audio processing
  - editor
---

I realized that the audio generation now renders the audio to iPyWidget.

```python
import IPython.display as ipd
import numpy as np
fs = 16000.
ipd.Audio(np.sin(2\*np.pi\*440\*np.arange(5 \* fs)/fs), rate=fs)
```

How cool is this?
