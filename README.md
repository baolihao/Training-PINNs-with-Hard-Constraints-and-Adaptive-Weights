# Training-PINNs-with-Hard-Constraints-and-Adaptive-Weights
This repository contains the source code and data accompanying our experiments on solving stiff time-dependent partial differential equations (PDEs) using Physics-Informed Neural Networks (PINNs). We evaluate our proposed scheme on **seven representative PDE benchmarks** featuring periodic boundaries and challenging dynamics, including:

- Allen–Cahn equation: Case 1
- Allen–Cahn equation: Case 2
- Cahn-Hilliard equation 
- Kuramoto–Sivashinsky equation  
- Gray–Scott reaction–diffusion system  
- Belousov–Zhabotinsky reaction–diffusion system  
- Nonlinear Schrödinger equation
  
##  Contents

The following resources are included in this repository or the supplementary material:

-  Source code for training PINNs on each PDE benchmark
-  Initial training data and preprocessing scripts
-  Pretrained weights for reproducibility
-  MATLAB Chebfun scripts for generating reference (ground truth) solutions
-  Ground truth solution data for benchmarking

## Running on MPS Backend (Apple Silicon GPU)
If you are using an Apple device with an M1, M2, or later chip, you can accelerate training by enabling the MPS backend in PyTorch.

### Requirements
- macOS 12.3 or later
- PyTorch 1.12 or newer with MPS support

### Usage
Ensure MPS is available by running:
```python
import torch
print(torch.backends.mps.is_available())
```

In your training script, set the device with:
```python
device = torch.device("mps") if torch.backends.mps.is_available() else torch.device("cpu")
model.to(device)
```

This will use the MPS GPU when available and fallback to CPU otherwise.

##  Getting Started

1. **Clone the repository:**
   ```bash
   git clone https://github.com/baolihao/Training-PINNs-with-Hard-Constraints-and-Adaptive-Weights.git
   cd Training-PINNs-with-Hard-Constraints-and-Adaptive-Weights

