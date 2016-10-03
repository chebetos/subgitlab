#!/bin/bash

usermod -u 1050 git
groupmod -g 1050 git

/assets/wrapper $*
