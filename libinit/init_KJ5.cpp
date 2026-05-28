/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_utils.h>
#include <libinit_dalvik_heap.h>
#include <unistd.h>

#include "vendor_init.h"

void vendor_load_properties() {
    if (access("/system/bin/recovery", F_OK) != 0) {
        set_dalvik_heap();
    }
}
