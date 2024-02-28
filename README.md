# Sogeti Web Application Automation using ** Selenium + Robot Framework**
---


## What's this?
This is automated Sogeti web application scenarios. Its using page object model as a pattern structure and BDD (Behavior Driven Development) framework as a testing approach with gherkin language and data-driven style. Its using 7 folders in the root directory.
* **Configuration folder**
    * This folder contain .py files that initiate all config variables. As of now browser name and url are defined here
* **POM folder**
    * This folder contain page wise files that initiate all page Webelements.
* **Resources folder**
    * AllSupportingLibrary file defined all libraries, Resourse files location, Webpage elements files location and other files location.
    * Common keywords file has reusable/common piece of code(e.g. )
* **Step defination folder**
    * This folder has a file that contain all steps implementation that used in test cases.
* **Result folder**
    * This folder for saving result file of report that generate after tests execute has finished.
* **Test Cases**
    * This folder has two files where all test cases are written.
    * Feature file has test cases which does not require test data while execution
    * DataDrivenApproch file has test cases which require test data while execution
* **Test Data**
    * This folder has a csv file where data for test case execution is there
* **Utility**
    * the utility file help to inhance the limitation of robot framework.
---

## What do you need?
### Python
1. Download _[Python](https://www.python.org/)_ using chrome also make sure that version is 3.8 above
  ```sh
  https://www.python.org/downloads/
  ```
2. Install the python and set the PATH in environment varibale
  ```
  PATH="/usr/local/opt/python/libexec/bin:${PATH}"
  export PATH;
  ```

### Note: Pip is automatically install with Python


### Robot Framework Libraries
1. Install _[Robot Framework](https://robotframework.org/)_ using _pip_ in _Terminal_ using the following command
  ```sh
   pip install robotframework
  ```
### DataDriver
2. Install _[DataDriver]_ using _pip_ in _Terminal_ using the following command
  ```sh
   pip install robotframework-datadriver
  ```
  
### Selenium Library
3. Install _[Selenium Library in Robot Framework](https://github.com/robotframework/SeleniumLibrary)_ using _pip_ in _Terminal_ using the following command
  ```sh
  pip install robotframework-seleniumlibrary
  ```


## It's time for Execution...
1. From your _Terminal_, go to the project directory
2. Run the test cases using the following command
  ```sh
  a. Run all test cases from .robot file
   robot test.robot(file location)
  ```
```sh
  b. Run TAG base test cases from .robot file and store the logs in result folder
   robot --include SMOKE   --outputdir Results   '.\Test cases\Features.robot' (file location)           
  ```
```sh
  c. Run individual test cases from .robot file
   robot -t 'testcasename'   test.robot(file location)
  ```
```sh
  a. Run all test cases from Test case folder
   robot foldername
  ```
4. Wait until tests executing has finished
5. See the output of tests result in the result folder then open `log.html` or `report.html` using your browser
6. See the log of tests result
7. See the report of tests result

---
