FROM gliderlabs/alpine:3.3

MAINTAINER "Daniel Whatmuff" <danielwhatmuff@gmail.com>

LABEL name="Docker image for the Robot Framework http://robotframework.org/"
LABEL usage="docker run -e ROBOT_TESTS=/path/to/tests/ --rm -v $(pwd)/path/to/tests/:/path/to/tests/ -ti robot-docker"

# Install Python Pip and the Robot framework
RUN apk-install bash py-pip firefox xvfb dbus && \
    pip install --upgrade pip && \
    pip install robotframework robotframework-selenium2library selenium robotframework-xvfb && \
    python --version
    
RUN wget http://chromedriver.storage.googleapis.com/2.21/chromedriver_linux64.zip && \
    unzip chromedriver_linux64.zip && \
    mv chromedriver /usr/local/bin/ && \
    rm -f chromedriver_linux64.zip && \
    chmod +x /usr/local/bin/chromedriver

ADD run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh

CMD ["run.sh"]
