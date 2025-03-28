#include <gb/gb.h>
#include <stdint.h>
#include "../res/dungeon_map.h"
#include "../res/dungeon_tiles.h"

#include "sprite-blob.h"

void init_gfx(void) {
    // Load Background tiles and then map
    //set_bkg_data(0, 79u, dungeon_tiles);
    //set_bkg_tiles(0, 0, 32u, 32u, dungeon_mapPLN0);

    //set_bkg_data(0, 1, bg1);
    //set_bkg_tiles(0, 0, 32, 32, 0);

	// Turn the background map on to make it visible
    SHOW_BKG;
}


void main(void)
{
	init_gfx();

    SPRITES_8x8;
    set_sprite_data(0, 1, blob);
    set_sprite_tile(0, 0);
    move_sprite(0, 80, 100);
    SHOW_SPRITES;

    // Init sprite location
    int x = 16;
    int y = 16;

    const uint8_t moveAmount = 1;
    // Loop forever
    while(1) {

        uint8_t inputState = joypad();
        if (inputState & J_UP) {
            y = y - moveAmount;
        }
        if (inputState & J_DOWN) {
            y = y + moveAmount;
        }
        if (inputState & J_LEFT) {
            x = x - moveAmount;
        }
        if (inputState & J_RIGHT) {
            x = x + moveAmount;
        }

        move_sprite(0, x, y);
        
		// Game main loop processing goes here
        /*
        if (x == 168){
            x = 0;
            y++;
        }
        if (y == 160){
            y=0;
        }
        x++;
        */


		// Done processing, yield CPU and wait for start of next frame
        vsync();
    }
}
