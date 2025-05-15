# Training-PINNs-with-Hard-Constraints-and-Adaptive-Weights
# PINN Experiments for Stiff Time-Dependent PDEs

This repository contains the source code and data accompanying our experiments on solving stiff time-dependent partial differential equations (PDEs) using Physics-Informed Neural Networks (PINNs). We evaluate our proposed scheme on **seven representative PDE benchmarks** featuring periodic boundaries and challenging dynamics, including:

- Allen–Cahn equation: Case 1
- Allen–Cahn equation: Case 2
- Cahn-Hilliard equation 
- Kuramoto–Sivashinsky equation  
- Gray–Scott reaction–diffusion system  
- Belousov–Zhabotinsky reaction–diffusion system  
- Nonlinear Schrödinger equation
  
## 📁 Contents

The following resources are included in this repository or the supplementary material:

- ✅ Source code for training PINNs on each PDE benchmark
- ✅ Initial training data and preprocessing scripts
- ✅ Pretrained weights for reproducibility
- ✅ MATLAB Chebfun scripts for generating reference (ground truth) solutions
- ✅ Ground truth solution data for benchmarking

## 📦 Getting Started

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/pinn-stiff-pdes.git
   cd pinn-stiff-pdes
