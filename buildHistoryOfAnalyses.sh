#!/bin/sh

analyze() {
  mvn clean org.jacoco:jacoco-maven-plugin:prepare-agent install -Dmaven.test.failure.ignore=true $*
  mvn sonar:sonar $*
} 

git checkout 37acee5
analyze -Dsonar.projectDate=2013-09-22 $*
sonar-runner devcockpit -Dsonar.projectDate=2014-01-22 $*
# => 2013-09-22

git checkout 322e4e8
analyze -Dsonar.projectDate=2013-12-22 $*
sonar-runner devcockpit -Dsonar.projectDate=2013-12-22 $*
# => 2013-12-22

git checkout 44e0c5b
analyze -Dsonar.projectDate=2014-01-22 $*
sonar-runner devcockpit -Dsonar.projectDate=2014-01-22 $*
# => 2014-01-22

git checkout aaf2cb9
analyze -Dsonar.projectDate=2014-02-01 $*
sonar-runner devcockpit -Dsonar.projectDate=2014-02-01 $*
# => 2014-02-01

git checkout c956a65
analyze -Dsonar.projectDate=2014-02-10 $*
sonar-runner devcockpit -Dsonar.projectDate=2014-02-10 $*
# => 2014-02-10

git checkout master
