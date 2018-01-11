#!/bin/bash

cd $HOME/Testsuite_docker
python test_cgal.py \
--user $1 \
--passwd $2 \
--force-rm \
--max-cpus 6 \
--container-cpus 6 \
--upload-results \
--tester-name="Friedrich" \
--tester-address maxime.gimeno@geometryfactory.com \
--testsuite $PWD/testsuite \
--testresults $PWD/testresults \
--images cgal/testsuite-docker:centos6 \
         cgal/testsuite-docker:centos7 \
         cgal/testsuite-docker:debian-stable \
         cgal/testsuite-docker:fedora-rawhide \
         cgal/testsuite-docker:fedora-rawhide-release \
