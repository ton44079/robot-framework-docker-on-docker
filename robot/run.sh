# #!/bin/bash
# set -e

# # Set the defaults
# DEFAULT_RES="1280x1024x24"
# DEFAULT_DISPLAY=":99"
# RES=${RES:-$DEFAULT_RES}
# DISPLAY=${DISPLAY:-$DEFAULT_DISPLAY}
# ROBOT_TESTS=${ROBOT_TESTS:-$ROBOT_TESTS}


# # Start Xvfb
# echo -e "Starting Xvfb on display ${DISPLAY} with res ${RES}"
# Xvfb ${DISPLAY} -ac -screen 0 ${RES} -nolisten tcp&
# export DISPLAY=${DISPLAY}

# echo -e "Executing robot tests"
# robot -v URL:http://192.168.1.115 test.robot

# # Stop Xvfb
# kill -9 $(pgrep Xvfb)

export DRIVER_HOME=/usr/src/project/driver
export PATH=.:$DRIVER_HOME:$PATH

robot -v URL:http://192.168.1.115 ./cases/*.robot


