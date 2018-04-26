#!/bin/bash

dump2vtk -i output/${1} -o output/${2} -t 0 1000 500 -rot >/dev/null
