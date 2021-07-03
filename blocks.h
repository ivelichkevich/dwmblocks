/* time interval in seconds to sleep before looking for updates in the main loop */
#define SLEEPINTERVAL                   1

#define PATH(name)                      "/home/ihar/projects/suckless/dwmblocks/blocks/"name

/* If interval of a block is set to 0, the block will only be updated once at startup.
 * If interval is set to a negative value, the block will never be updated in the main loop.
 * Set pathc to NULL if clickability is not required for the block.
 * Set signal to 0 if both clickability and signaling are not required for the block.
 * Signal must be less than 10 for clickable blocks.
 * If multiple signals are pending, then the lowest numbered one will be delivered first. */

/* pathu - path of the program whose output is to be used for status text
 *         output of the program should have a null or newline character at the end
 * pathc - path of the program to be executed on clicks */
static Block blocks[] = {
/*      pathu                           pathc                                   interval        signal */
        { PATH("keyboard.sh"),          PATH("keyboard_button.sh"),             20,              2},
        { PATH("volume.sh"),            PATH("volume_button.sh"),                0,              1},
        { PATH("cpu.sh"),               PATH("cpu_button.sh"),                  30,              3},
        { PATH("mem.sh"),               PATH("mem_button.sh"),                  30,              4},
        { PATH("calendar.sh"),          PATH("calendar_button.sh"),             60,              5},
        { PATH("time.sh"),              NULL,                                   30,             10},
//        { PATH("cpu_temp.sh"),          PATH("cpu_temp_button.sh"),             1,              11},
//        { PATH("battery.sh"),           PATH("battery_button.sh"),              30,             12},
        { NULL } /* just to mark the end of the array */
};

static const char *delim =  "|";

// autocmd BufWritePost ~/projects/suckless/dwmblocks/blocks.h !cd ~/projects/suckless/dwmblocks; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }

