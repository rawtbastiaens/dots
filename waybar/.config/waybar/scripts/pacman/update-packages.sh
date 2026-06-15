#!/bin/bash

pkgs=$(checkupdates | awk '{print $1}')
pkgs_count=$(echo $pkgs | wc -w)

echo "{\"text\":\"$pkgs_count\", \"tooltip\":\"$pkgs\"}"
