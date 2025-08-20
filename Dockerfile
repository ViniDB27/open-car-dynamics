FROM ros:humble

# Create workspace
RUN mkdir -p /dev_ws/src
WORKDIR /dev_ws

# Install Cyclone DDS (if needed)
RUN apt update && apt install -y --no-install-recommends \
    ros-humble-rmw-cyclonedds-cpp \
    python3-pip \
    python3-colcon-common-extensions \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
    python3-pyqt5 \
    python3-pyqt5.qtwebengine \
    libx11-xcb1 \
    libxcb1 \
    libxcb-glx0 \
    libxcb-keysyms1 \
    libxcb-image0 \
    libxcb-shm0 \
    libxcb-icccm4 \
    libxcb-sync1 \
    libxcb-xfixes0 \
    libxcb-shape0 \
    libxcb-randr0 \
    libxcb-render-util0 \
    libxcb-xinerama0 \
    libxkbcommon-x11-0 \
    libxrender1 \
    libgl1-mesa-glx \
    libegl1-mesa \
    x11-xserver-utils

RUN apt-get update && apt-get install -y libgl1

# Install Python dependencies
RUN pip3 install --no-cache-dir pyyaml

RUN python3 -m pip install --no-cache-dir \
    pyqt5 

RUN python3 -m pip install --no-cache-dir \
    matplotlib

WORKDIR /dev_ws
    
RUN git clone https://github.com/tier4/autoware_auto_msgs.git src/autoware_auto_msgs

RUN rosdep update
RUN rosdep install -y --from-paths src --ignore-src --rosdistro $ROS_DISTRO

# Copy source code
COPY ./src /dev_ws/src
COPY log_vehicle_model_signals.py /dev_ws/log_vehicle_model_signals.py
COPY vehicle_control.py /dev_ws/vehicle_control.py

# Optional: make the logging script executable
RUN chmod +x /dev_ws/log_vehicle_model_signals.py
RUN chmod +x /dev_ws/vehicle_control.py

# Setup entrypoint
RUN echo '#!/bin/bash\nset -e\n\nsource "/opt/ros/$ROS_DISTRO/setup.bash"\n. /dev_ws/install/setup.bash\nexec "$@"' \
    > /ros_entrypoint.sh && chmod +x /ros_entrypoint.sh

# Build the workspace
RUN bash -c "source /opt/ros/$ROS_DISTRO/setup.bash && colcon build"

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
