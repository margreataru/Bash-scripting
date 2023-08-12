#!/bin/bash

PathDir = "~/Aravind"
SourceDir = "~/Hello"

timestamp = "%Y%m%d%H%M%S"

Backupfile = "aravind-${timestamp}.tar.gz"
tar -cvzf "${SourceDir}/${Backupfile}" "${PathDir}"