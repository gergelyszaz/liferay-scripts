# liferay-scripts
This repository is a collection of scripts that the developers of Liferay may use to help speed up their workflow.

## About
The scripts are simple shell scripts. They are run in Git Bash on Windows 10.

## How to use
Add the folder containing the scripts to your path.
Have Git Bash set up so you don't need to provide a passphrase everytime you do something in your remote.


Create the following environmental variables:
* JAVA7 - jdk 1.7 path
* JAVA8 - jdk 1.8 path
* LIFERAY_GITHUB - local liferay-portal-ee repository path
* LIFERAY_BUILD - build folder path
* LIFERAY_DAILY_BUILD_PATH - daily build folder path
* GITHUB_USER - your github username

## Scripts

### antall
Run from liferay-portal-ee repository root.

Builds the portal with tomcat with the correct java version. Does not create or override properties files.

### branch
Run from a git repository.

Prints out the current branch name of the git repository to the output.

### build
Run from liferay-portal-ee repository root.

Builds the current branch to its own folder and creates properties files.

### delete-branches
Deletes every branch of the repository, except for the current one. Useful for saving disk space.

### filename
Use in pipe.

Prints out the name of the file given with path.

### format
Run from liferay-portal-ee repository root.

Runs ant format-source.

### get-daily-build
Gets and extracts the daily build.

Params:
* $1: branch name

### get-property
Params:
* $1: properties file
* $2: property name

Prints out the property value.

### gradlew
Finds and runs gradlew. Use to omit ./../../../../ part.

### java-version
Run from liferay-portal-ee repository root.

Prints out the correct java path to be used based on the build.properties file.

### jira
Params:
* $1 : ticket number
Open jira page of ticket in web browser.

### pull-request
Run from liferay-portal-ee repository. Needs git remote "origin" to be set.
Opens a github pull request web page to the correct repo and branch.
Params:
* $1 : username of the pull request recipient

### push
Push current local branch to origin.

### run
Params:
* $1 : branch name
Start portal built from current branch or from the branch given as parameter.

### test-changes
Run from liferay-portal-ee repository root.
Params:
* $1 : branch name
Runs the tests that are modified in current branch compared to the one given in the param.
Do a build before running.
 
### test-portal
Use in pipeline. Accepts test filename.
Run from liferay-portal-ee repository root.

Runs the test.

### unlock
Run from git repository root.

Removes index.lock in git repository.

### update
Run from git repository.

Updates current branch or the one given in parameter from upstream, and pushes to origin.

### update-portal-ee
Updates master, ee-7.0.x and ee-6.2.x in liferay-portal-ee repository.



