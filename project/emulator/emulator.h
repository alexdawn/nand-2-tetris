#ifdef _MSC_VER
    #define EXPORT_SYMBOL __declspec(dllexport)
#else
    #define EXPORT_SYMBOL
#endif

EXPORT_SYMBOL unsigned short pc;
EXPORT_SYMBOL signed short a;
EXPORT_SYMBOL signed short d;
EXPORT_SYMBOL signed short ram[32768];
EXPORT_SYMBOL unsigned short rom[128 * 65536];
EXPORT_SYMBOL signed short *keyboard = &ram[24576];
EXPORT_SYMBOL void keyboard_to_ram(signed short keycode);
EXPORT_SYMBOL unsigned short get_pc();
EXPORT_SYMBOL unsigned char get_page();
EXPORT_SYMBOL void reset();
EXPORT_SYMBOL unsigned char* ram_to_screen(void);
EXPORT_SYMBOL signed short* get_ram();
EXPORT_SYMBOL unsigned short* get_rom();
EXPORT_SYMBOL unsigned char* get_screen();
EXPORT_SYMBOL signed short val(short alt);
EXPORT_SYMBOL signed short calc(short alt, short command);
EXPORT_SYMBOL void jump(unsigned char page, short condition);
EXPORT_SYMBOL void steps(int count);
EXPORT_SYMBOL int step();
