#!/bin/bash

# Run OpenShift login command
oc login $OCP_URL --token=$OCP_TOKEN

# Optionally, perform other actions after login
# ...

# Logout from OpenShift
oc logout