#!/bin/bash
set -e

echo " Start jupyter notebook from Docker ! "
jupyter notebook --ip=0.0.0.0 --no-browser --allow-root
