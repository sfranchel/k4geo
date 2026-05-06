#!/usr/bin/env bash

# Config parameters
COMPACT=DCH_ALLEGRO_o1_v03.xml

DETECTOR=${COMPACT##*/}
DETECTOR=${DETECTOR%.xml}

SAMPLE="10mu10_nightly"
#SAMPLE="10mu10_local"

# run pg
ddsim --enableGun \
      --gun.distribution uniform \
      --gun.energy "10*GeV" \
      --gun.particle "mu-" \
      --numberOfEvents 10 \
      --random.enableEventSeed \
      --random.seed 42 \
      --compactFile $COMPACT \
      --outputFile ${DETECTOR}_${SAMPLE}.root