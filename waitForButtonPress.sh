#!/bin/bash

while [ $(gpio read 5) -eq 0 ]; do :; done

while [ $(gpio read 5) -eq 1 ]; do :; done


