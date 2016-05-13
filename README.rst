Docker image for the Robot Framework
===============

.. contents::
   :local:

Overview
------------

Information on the Robot Framework can be found here:

`Robot Framework <http://robotframework.org>`_

Run Robot inside Docker
------------

To build a Robot Docker image::

    docker build -t robot-docker .

To run tests, mount a directory and pass the ROBOT_TESTS env var::

    docker run --rm \ 
               -e ROBOT_TESTS=/path/to/tests/ \
               -v /path/to/tests/:/path/to/tests/ \
               -ti \
               robot-docker

Example of running the sample tests::

    docker run --rm \
               -e ROBOT_TESTS=/sample_tests/ \
               -v $(pwd)/sample_tests:/sample_tests \
               -ti robot-docker

Use the Docker Hub automated build::

    docker pull danielwhatmuff/robot-docker
