#!/bin/bash

terminator -e "bash -c '\"$1\" \"$2\"; echo; echo Press Enter to continue . . .; read line; exit'"
