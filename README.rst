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

To run tests and output the results to your host, mount a directory::

    docker run --rm -v /path/to/tests/:/path/to/tests/ -ti robot-docker robot --variable HOST:example.com --outputdir results /path/to/tests/

Use the Docker Hub automated build::

    docker pull danielwhatmuff/robot-docker
