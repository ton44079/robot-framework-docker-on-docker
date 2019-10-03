FROM mcr.microsoft.com/dotnet/core/sdk:3.0.100-buster

RUN apt-get update

RUN apt-get install -y python-pip
RUN apt-get install -y libxss1 libappindicator1 libindicator7
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt install -y ./google-chrome*.deb

RUN pip install robotframework
RUN pip install robotframework-seleniumlibrary
RUN sed -i "s/self._arguments\ =\ \[\]/self._arguments\ =\ \['--no-sandbox',\ '--disable-gpu'\]/" $(python -c "import site; print(site.getsitepackages()[0])")/selenium/webdriver/chrome/options.py ;