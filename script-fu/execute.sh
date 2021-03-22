#!/bin/bash

#{ cat "$1"; echo "$2"; echo '(gimp-quit 0)'; } | gimp -fi -b -
{ cat "$1"; echo "$2"; echo '(gimp-quit 0)'; } | /mnt/d/apps/GIMP2/bin/gimp-2.10.exe -fi -b -
