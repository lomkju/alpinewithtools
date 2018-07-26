
# AplineWithTools
[![Build Status](https://travis-ci.org/lomkju/alpinewithtools.svg?branch=master)](https://travis-ci.org/lomkju/alpinewithtools)

Container to test things when running in a k8s cluster

#### Simple command to start the container:

    docker run --rm -it lomkju/alpinewithtools

#### Simple command to start the container with kubectl:

    kubectl run alpinewithtools -it --image=lomkju/alpinewithtools --restart=Never
