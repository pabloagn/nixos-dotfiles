#!/usr/bin/env bash

# A simple script for creating bootable USBs using dd or ventoy
create_image () {
	dd bs=4M if=/path/to/Windows10.iso of=/dev/sdX status=progress oflag=sync
}
