#!/bin/bash

TLG_CDROM=/usr/local/proteus/CDROMS/tlg
SUDA_TLG_ID="-a 4289"
OUT_FILE="tmp"
DICT="dict.utf"
DSL="./dictionary/segueriana.dsl"
PERL_PROG="./segueriana.pl"
TLG2U_PROG=/usr/local/bin/tlg2u
PARAMS="-c tlg -T 89 -M 0"

$TLG2U_PROG $PARAMS $TLG_CDROM/tlg4289.txt > $OUT_FILE

sed -i '/{/d; /}/d' $OUT_FILE      # Delete {Letter} lines
sed -i 's/\ *$//' $OUT_FILE        # Remove trailling spaces
patch $OUT_FILE segueriana.patch &> /dev/null
$PERL_PROG $OUT_FILE > $DICT
cat header $DICT > $DSL
rm $OUT_FILE $DICT
