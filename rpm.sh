#!/bin/bash

cat<<EOF

#-----------------------------------------------------------

#-List all installed packages on system
  rpm -qa

#-Dump info regarding a particular installed package
  rpm -qi <PKGname>

#-List files in an already-installed package
  rpm -ql <rpmfile>

#-Query if a package is installed
  rpm -q <PKGname>

#-List files in an rpm file
  rpm -qpl <rpmfile>

#-Test an rpm file
  rpm -ivv --test <rpmfile>

#-Install, with verbose indications of all actions taken
  rpm -ivv <rpmfile>

#-Remove, with verbose indications of all actions taken
  rpm -evv <rpmfile>

#-Upgrade a package
  rpm -U <rpmfile(s)>

#-Extract files from an rpm file
  rpm2cpio file.rpm > file.cpio
  cpio -div < file.cpi

#-History of rpm installations
  rpm -qa --queryformat "%{installtime} %{INSTALLTIME:date} %{NAME}-%{version}-%{release}\n" | sort | cut -d\  -f2-

#-----------------------------------------------------------

  vi $0

EOF

