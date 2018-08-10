# rf-mst
This repository has been created as demonstration material for Melbourne Software Testing. Using a dummy html page (~/index.html) as a base, we show how a basic Robot Framework test suite would look. This repository is for beginners, so we have tried to keep things as simple as possible.

## Installing Robotframework and Libraries
1. Install Python and PIP
  1. To install Python
      - Go to https://www.python.org/downloads/ and get the latest Python
      - Get the appropriate installer for your OS
      - Run the Installer as administrator
      - Add python to Path either during (windows), or after installation
      - To check the current version of python type `python -V`
  2. If PIP installation fails, go to https://pip.pypa.io/en/latest/installing/
2. Use PIP to install RF
    - `pip install robotframework`
3. Use PIP to install SL
    - `pip install robotframework-seleniumlibrary`
    - To check the current version of S2L type `pip show robotframework-seleniumlibrary`
    - To check the current version of Selenium type `pip show selenium`
4. For future API tests
    - `pip install requests`
5. For future mobile testing
    - `pip install robotframework-appiumlibrary`
6. Install browsers required e.g. Chrome, FF, IE11
7. Install web drivers
  1. Might be a good idea to create a folder to hold all your web drivers e.g. C:\bin or /Documents/bin
  2. IE webdriver  (Windows only, obviously)
      - Go to http://selenium-release.storage.googleapis.com/index.html
      - Download the latest driver e.g. IEDriverServer_Win32_2.53.1.zip
  3. Chrome webdriver
      - Go to http://chromedriver.storage.googleapis.com/index.html
      - Download the latest driver (2.41 or higher)
      - To check the current version of chromedriver type `chromedriver --version`
  4. Firefox webdriver
      - Go to https://github.com/mozilla/geckodriver/releases
      - Download the latest geckodriver appropriate for your OS e.g. geckodriver-v0.21.0-macos.tar.gz
      - To check the current version of geckodriver type `geckodriver --version`
  5. Extract zips to your preferred folder, and move the exe files into the folder
  6. Add that folder (e.g. C:\bin) to Path

## Running the RF script
1. Open the terminal
2. Navigate to the project folder e.g. `cd rf-mst`
3. Then run the robot script with the appropriate parameters e.g. `robot -d Results Tests/*.robot`
**Note** `-d Results` specifies where the output results will be saved. If not specified the results will be added to the current directory. Specifying the directory is neater IMO

## Other Libraries
More libraries are available on the [Robot Framework Libraries section](http://robotframework.org/#libraries). In this repo we demonstrate how to use Pabot for parallel execution.

1. Use PIP to install Pabot
    - `pip install robotframework-pabot`
    - For more info, see https://github.com/mkorpela/pabot
2. Running pabot is similar to running robot e.g. `pabot -d Results Tests/*.robot`

This is what your terminal output should look like when the tests are run using `robot` then `pabot`
![Success using robot and pabot](/Assets/Success.png)