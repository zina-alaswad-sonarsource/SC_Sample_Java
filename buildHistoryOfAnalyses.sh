#!/bin/sh

git checkout 37acee5
./runAnalysis.sh -Dsonar.projectDate=2013-09-22 $*
sonar-runner devcockpit -Dsonar.projectDate=2014-01-22 $*
# => 2013-09-22

git checkout 322e4e8
./runAnalysis.sh -Dsonar.projectDate=2013-12-22 $*
sonar-runner devcockpit -Dsonar.projectDate=2013-12-22 $*
# => 2013-12-22

git checkout 44e0c5b
./runAnalysis.sh -Dsonar.projectDate=2014-01-22 $*
sonar-runner devcockpit -Dsonar.projectDate=2014-01-22 $*
# => 2014-01-22

git checkout aaf2cb9
./runAnalysis.sh -Dsonar.projectDate=2014-02-01 $*
sonar-runner devcockpit -Dsonar.projectDate=2014-02-01 $*
# => 2014-02-01

git checkout c956a65
./runAnalysis.sh -Dsonar.projectDate=2014-02-10 $*
sonar-runner devcockpit -Dsonar.projectDate=2014-02-10 $*
# => 2014-02-10

git checkout master
