#!/bin/sh
pwd | sed 's#/\(.*\)/\([^/]*\)/\([^/]*\)$#   ONE: \1   TWO: \2   THREE: \3#'