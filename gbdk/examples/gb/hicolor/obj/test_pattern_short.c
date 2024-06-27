#include <gbdk/platform.h>
#include <gbdk/incbin.h>

#pragma bank 255
BANKREF(test_pattern_short)

#include <gbc_hicolor.h>

// Generated by png2hicolorgb

// Note: filepath is relative to the working directory of the tool that is calling it (often a makefile's working directory), NOT to the file it's being included into.

INCBIN(test_pattern_short_tiles,   "obj/test_pattern_short.til")
INCBIN(test_pattern_short_map,     "obj/test_pattern_short.map")
INCBIN(test_pattern_short_attr,    "obj/test_pattern_short.atr")
INCBIN(test_pattern_short_palette, "obj/test_pattern_short.pal")

INCBIN_EXTERN(test_pattern_short_tiles)
INCBIN_EXTERN(test_pattern_short_map)
INCBIN_EXTERN(test_pattern_short_attr)
INCBIN_EXTERN(test_pattern_short_palette)

const hicolor_data test_pattern_short_data = {
    .tile_count      = 140u,
    .height_in_tiles = 7u,
    .p_tiles         = test_pattern_short_tiles,
    .p_map           = test_pattern_short_map,
    .p_attribute_map = test_pattern_short_attr,
    .p_palette       = test_pattern_short_palette
};

