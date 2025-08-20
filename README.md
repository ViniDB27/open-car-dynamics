# Auxiliary Codes for Simulation in Open Car Dynamics

This repository contains helper scripts and examples to support simulation using the **Open Car Dynamics** simulator.

## Overview

The main goal of this repository is to provide additional tools for analyzing, controlling, and visualizing simulation data from Open Car Dynamics.

Currently, it includes:

* **`log_vehicle_model_signals`** – a utility that generates a visual interface to plot simulation signals.
* **`vehicle_control`** – an example implementation showing how to design and integrate a vehicle controller with the simulator.

---

## Requirements

* **Open Car Dynamics** installed and configured
* Python 3.8+
* Docker installed


## Installation

Clone this repository:

### 1. Clone the Open Car Dynamics Repository
Clone the repository into your Open Car Dynamics workspace:

### 2. Copy the auxliary files to the Open Car dynamics folder.

## Setup Instructions

1. **Build the container**

   ```bash
   sudo bash build_container.sh
   ```

2. **Run the container**

   ```bash
   sudo bash run_in_container.sh
   ```

3. **Start the vehicle model visualization**
   In a **separate terminal**, run:

   ```bash
   docker exec -it -e DISPLAY=$DISPLAY vehicle_model_double_track_cpp bash
   ```
   ```bash
   source /dev_ws/install/setup.bash
   ```
   ```bash
   python3 log_vehicle_model_signals.py
   ```
    This opens the visual interface for loading and plotting vehicle dynamics simulation logs.
   
    ```bash
    python3 vehicle_control.py
   ```
    This starts the control commands for the vehicle in the simulator.

4. **Stop the container**

   ```bash
   sudo bash stop_container.sh
   ```

---

## Usage

### Plotting Simulation Signals

```bash
python3 log_vehicle_model_signals.py
```

Launches a visual interface for loading simulation logs and plotting key vehicle dynamics signals.

### Running the Example Vehicle Controller

```bash
python3 vehicle_control.py
```

Demonstrates how to implement and test a custom vehicle controller in the simulator.

---
## Exercise Plan

The exercise plan for this simulator is provided in the file Exercise_plan.pdf. Please refer to it for step-by-step exercises and practice tasks.

## Contributing

Contributions are welcome!
If you have improvements, bug fixes, or new auxiliary tools for Open Car Dynamics:

1. Fork this repository
2. Create a new branch (`feature/my-tool`)
3. Commit your changes
4. Submit a Merge Request

---

## Authors

Developed by **Josafat** and collaborators at [LISHA - UFSC](https://www.lisha.ufsc.br/).

---

## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

---

## Project Status

Actively maintained. New tools and examples will be added as the Open Car Dynamics ecosystem evolves.

---

Do you want me to also add **example screenshots** of the plotting interface and controller results so the README is more visual? That would make it far more inviting for new users.
