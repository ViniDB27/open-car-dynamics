
4

Automatic Zoom
 
Vehicle Dynamics Analysis – Exercise Plan 
This document presents a detailed plan for executing three exercises aimed at 
analyzing vehicle dynamics using the Open-Car-Dynamics simulator and ROS 2-based 
control, with data analysis in Python. 
Main Metric for Response Time Analysis 
 For all exercises, the metric adopted to evaluate the system’s response time will be the 
time required for the variable of interest (e.g., speed) to reach 95% of its steady-state 
value after a step input in the command (e.g., acceleration). 
 
Exercise 1 — Variation of Mass and Center of Mass 
Objective: 
 Evaluate the impact of vehicle mass and center of mass position on vehicle dynamics. 
Expanded Activities: 
Configuration and Documentation: 
●  Identify where in the simulator the mass and center of mass are defined.  
●  Document the procedure for changing these parameters.  
Simulations with Variations: 
●  Run simulations with at least 3 different masses (e.g., 1000 kg, 1200 kg, 1400 
kg).  
●  For each mass, test at least 2 center of mass positions (e.g., nominal position, 
±0.2 m longitudinal shift).  
Variation of Step Amplitude: 
●  Apply acceleration steps of different amplitudes (e.g., 0.5 m/s², 1.0 m/s², 2.0 
m/s²).  
●  Evaluate how system nonlinearity and tire slip influence response time as the 
command amplitude changes.  
Detailed Data Collection: 
●  Record the speed response over time after each step input.  
●  Record other relevant variables (tire forces, accelerations, suspension 
displacements).  
Response Time Analysis: 
●  Determine the time it takes for speed to reach 95% of its final (steady-state) 
value after the step input for each amplitude.  
●  Compare response times for different masses, centers of mass, and step 
amplitudes.  
Integration Interval Modification: 
●  Change the integration interval to verify how command update and data 
collection frequency affect the measured response time.  
●  Document impacts on control and stability.  
Interpretation: 
●  Relate variations in mass, center of mass, step amplitude, and integration 
interval with vehicle response time and stability.  
●  Prepare a report with graphs and conclusions.  
 
Exercise 2 — Trajectories with Different Curvatures 
Objective: 
 Evaluate the impact of trajectories with different curvatures on vehicle dynamics and 
response time. 
Expanded Activities: 
Trajectory Development: 
●  Create trajectories: straight, gentle curve, medium curve, and tight curve.  
●  Generate steering commands to follow these trajectories.  
Simulation Execution: 
●  Apply acceleration steps of different amplitudes before or during the execution of 
the trajectory.  
●  Record the vehicle’s speed response and steering angle.  
Response Time Analysis: 
●  Measure the time for speed to reach 95% of its final value after the step input.  
●  Measure the time for the steering angle to reach 95% of the desired value during 
curves.  
●  Compare across trajectories, speeds, and step amplitudes.  
Integration Interval Modification: 
●  Vary control and data collection frequency to study its impact on response time 
and trajectory tracking.  
Additional Exploration: 
●  Evaluate stability conditions and possible loss of traction.  
Report: 
●  Present analyses and comparative graphs of response time.  
 
Exercise 3 — Road Surface and Grip Conditions 
Objective: 
 Evaluate the effect of road surface friction coefficient on vehicle response time and 
stability. 
Expanded Activities: 
Configuration: 
●  Adjust the friction coefficient for dry, wet, and slippery surfaces.  
Simulations: 
●  Apply acceleration steps of different amplitudes for each road condition.  
●  Record speed response, tire forces, and relevant angles.  
Response Time Analysis: 
●  Determine the time to reach 95% of the final speed value after the step for each 
surface and amplitude.  
●  Compare how friction and step amplitude affect response time and control.  
Integration Interval Modification: 
●  Test different command frequencies to evaluate the impact on response time 
under different road conditions.  
Limit Testing: 
●  Analyze behavior near grip limits.  
Report: 
●  Document results and conclusions on the effect of road surface, step amplitude, 
and response time.  
 