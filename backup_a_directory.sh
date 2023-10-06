#!/bin/bash
TIME=`date +%d_%m_%y`                   # This command will read the date.
FILENAME=NAME_$TIME.tar.gz    		# The filename including the date.
SRCDIR=/PATH/TO/SOURCE       		# Source backup folder.
DESDIR=/PATH/TO/DESTINATION  		# Destination of backup file.
tar --exclude='/EXCLUDE/SOME/FILESorDATAinSOURCE' -cpzf $DESDIR/$FILENAME $SRCDIR
# example: tar --exclude='/PATH/TO/SOURCE/.git' -cpzf $DESDIR/$FILENAME $SRCDIR
