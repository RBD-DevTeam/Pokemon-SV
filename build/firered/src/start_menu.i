# 1 "src/start_menu.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/start_menu.c"
# 1 "include/global.h" 1



# 1 "include/config.h" 1



# 1 "include/global.h" 1
# 5 "include/config.h" 2
# 5 "include/global.h" 2
# 1 "include/gba/gba.h" 1



# 1 "tools/agbcc/include/string.h" 1
# 14 "tools/agbcc/include/string.h"
# 1 "tools/agbcc/include/_ansi.h" 1
# 15 "tools/agbcc/include/_ansi.h"
# 1 "tools/agbcc/include/sys/config.h" 1
# 103 "tools/agbcc/include/sys/config.h"
typedef int __int32_t;
typedef unsigned int __uint32_t;
# 16 "tools/agbcc/include/_ansi.h" 2
# 15 "tools/agbcc/include/string.h" 2


# 1 "tools/agbcc/include/stddef.h" 1





typedef long int ptrdiff_t;



typedef unsigned long int size_t;






typedef int wchar_t;
# 18 "tools/agbcc/include/string.h" 2





void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *, const void *, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *, const char *);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *, const char *);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *, const char *, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *, const char *, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);


char *strtok (char *, const char *);


size_t strxfrm (char *, const char *, size_t);


char *strtok_r (char *, const char *, char **);

int bcmp (const char *, const char *, size_t);
void bcopy (const char *, char *, size_t);
void bzero (char *, size_t);
int ffs (int);
char *index (const char *, int);
void * memccpy (void *, const void *, int, size_t);
char *rindex (const char *, int);
int strcasecmp (const char *, const char *);
char *strdup (const char *);
int strncasecmp (const char *, const char *, size_t);
char *strsep (char **, const char *);
char *strlwr (char *);
char *strupr (char *);
# 5 "include/gba/gba.h" 2
# 1 "include/gba/defines.h" 1
# 6 "include/gba/gba.h" 2
# 1 "include/gba/io_reg.h" 1
# 7 "include/gba/gba.h" 2
# 1 "include/gba/types.h" 1



# 1 "tools/agbcc/include/stdint.h" 1
# 31 "tools/agbcc/include/stdint.h"
# 1 "tools/agbcc/include/limits.h" 1
# 32 "tools/agbcc/include/stdint.h" 2



typedef signed char int8_t;
typedef short int16_t;
typedef int int32_t;
typedef long long int64_t;
typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;



typedef signed char int_least8_t;
typedef short int_least16_t;
typedef int int_least32_t;
typedef long long int_least64_t;
typedef unsigned char uint_least8_t;
typedef unsigned short uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef unsigned long long uint_fast64_t;



typedef int intptr_t;
typedef unsigned int uintptr_t;



typedef long long intmax_t;
typedef unsigned long long uintmax_t;
# 5 "include/gba/types.h" 2

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
typedef int8_t s8;
typedef int16_t s16;
typedef int32_t s32;
typedef int64_t s64;

typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float f32;
typedef double f64;

typedef u8 bool8;
typedef u16 bool16;
typedef u32 bool32;

struct BgCnt
{
    u16 priority:2;
    u16 charBaseBlock:2;
    u16 dummy:2;
    u16 mosaic:1;
    u16 palettes:1;
    u16 screenBaseBlock:5;
    u16 areaOverflowMode:1;
    u16 screenSize:2;
};
typedef volatile struct BgCnt vBgCnt;

struct PlttData
{
    u16 r:5;
    u16 g:5;
    u16 b:5;
    u16 unused_15:1;
};

struct OamData
{
             u32 y:8;
             u32 affineMode:2;
             u32 objMode:2;
             u32 mosaic:1;
             u32 bpp:1;
             u32 shape:2;

             u32 x:9;
             u32 matrixNum:5;
             u32 size:2;

             u16 tileNum:10;
             u16 priority:2;
             u16 paletteNum:4;
             u16 affineParam;
};
# 117 "include/gba/types.h"
struct BgAffineSrcData
{
    s32 texX;
    s32 texY;
    s16 scrX;
    s16 scrY;
    s16 sx;
    s16 sy;
    u16 alpha;
};

struct BgAffineDstData
{
    s16 pa;
    s16 pb;
    s16 pc;
    s16 pd;
    s32 dx;
    s32 dy;
};

struct ObjAffineSrcData
{
    s16 xScale;
    s16 yScale;
    u16 rotation;
};


struct SioMultiCnt
{
    u16 baudRate:2;
    u16 si:1;
    u16 sd:1;
    u16 id:2;
    u16 error:1;
    u16 enable:1;
    u16 unused_11_8:4;
    u16 mode:2;
    u16 intrEnable:1;
    u16 unused_15:1;
    u16 data;
};
# 8 "include/gba/gba.h" 2
# 1 "include/gba/multiboot.h" 1
# 9 "include/gba/multiboot.h"
struct MultiBootParam
{
    u32 system_work[5];
    u8 handshake_data;
    u8 padding;
    u16 handshake_timeout;
    u8 probe_count;
    u8 client_data[3];
    u8 palette_data;
    u8 response_bit;
    u8 client_bit;
    u8 reserved1;
    const u8 *boot_srcp;
    const u8 *boot_endp;
    const u8 *masterp;
    u8 *reserved2[3];
    u32 system_work2[4];
    u8 sendflag;
    u8 probe_target_bit;
    u8 check_wait;
    u8 server_type;
};
# 9 "include/gba/gba.h" 2
# 1 "include/gba/syscall.h" 1
# 14 "include/gba/syscall.h"
void SoftReset(u32 resetFlags);

void RegisterRamReset(u32 resetFlags);

void VBlankIntrWait(void);

u16 Sqrt(u32 num);

u16 ArcTan2(s16 x, s16 y);





void CpuSet(const void *src, void *dest, u32 control);



void CpuFastSet(const void *src, void *dest, u32 control);

void BgAffineSet(struct BgAffineSrcData *src, struct BgAffineDstData *dest, s32 count);

void ObjAffineSet(struct ObjAffineSrcData *src, void *dest, s32 count, s32 offset);

void LZ77UnCompWram(const void *src, void *dest);

void LZ77UnCompVram(const void *src, void *dest);

void RLUnCompWram(const void *src, void *dest);

void RLUnCompVram(const void *src, void *dest);

int MultiBoot(struct MultiBootParam *mp);

s32 Div(s32 num, s32 denom);
# 10 "include/gba/gba.h" 2
# 1 "include/gba/macro.h" 1
# 11 "include/gba/gba.h" 2
# 1 "include/gba/isagbprint.h" 1
# 13 "include/gba/isagbprint.h"
void AGBPrintInit(void);
void AGBPutc(const char cChr);
void AGBPrint(const char *pBuf);
void AGBPrintf(const char *pBuf, ...);
void AGBPrintFlush1Block(void);
void AGBPrintFlush(void);
void AGBAssert(const char *pFile, int nLine, const char *pExpression, int nStopProgram);
# 12 "include/gba/gba.h" 2
# 6 "include/global.h" 2

# 1 "include/constants/global.h" 1
# 8 "include/global.h" 2
# 1 "include/constants/flags.h" 1



# 1 "include/constants/trainers.h" 1



# 1 "include/constants/opponents.h" 1
# 5 "include/constants/trainers.h" 2
# 5 "include/constants/flags.h" 2
# 9 "include/global.h" 2
# 1 "include/constants/vars.h" 1
# 10 "include/global.h" 2
# 1 "include/constants/species.h" 1
# 11 "include/global.h" 2
# 1 "include/constants/pokedex.h" 1




enum {
    NATIONAL_DEX_NONE,

    NATIONAL_DEX_BULBASAUR,
    NATIONAL_DEX_IVYSAUR,
    NATIONAL_DEX_VENUSAUR,
    NATIONAL_DEX_CHARMANDER,
    NATIONAL_DEX_CHARMELEON,
    NATIONAL_DEX_CHARIZARD,
    NATIONAL_DEX_SQUIRTLE,
    NATIONAL_DEX_WARTORTLE,
    NATIONAL_DEX_BLASTOISE,
    NATIONAL_DEX_CATERPIE,
    NATIONAL_DEX_METAPOD,
    NATIONAL_DEX_BUTTERFREE,
    NATIONAL_DEX_WEEDLE,
    NATIONAL_DEX_KAKUNA,
    NATIONAL_DEX_BEEDRILL,
    NATIONAL_DEX_PIDGEY,
    NATIONAL_DEX_PIDGEOTTO,
    NATIONAL_DEX_PIDGEOT,
    NATIONAL_DEX_RATTATA,
    NATIONAL_DEX_RATICATE,
    NATIONAL_DEX_SPEAROW,
    NATIONAL_DEX_FEAROW,
    NATIONAL_DEX_EKANS,
    NATIONAL_DEX_ARBOK,
    NATIONAL_DEX_PIKACHU,
    NATIONAL_DEX_RAICHU,
    NATIONAL_DEX_SANDSHREW,
    NATIONAL_DEX_SANDSLASH,
    NATIONAL_DEX_NIDORAN_F,
    NATIONAL_DEX_NIDORINA,
    NATIONAL_DEX_NIDOQUEEN,
    NATIONAL_DEX_NIDORAN_M,
    NATIONAL_DEX_NIDORINO,
    NATIONAL_DEX_NIDOKING,
    NATIONAL_DEX_CLEFAIRY,
    NATIONAL_DEX_CLEFABLE,
    NATIONAL_DEX_VULPIX,
    NATIONAL_DEX_NINETALES,
    NATIONAL_DEX_JIGGLYPUFF,
    NATIONAL_DEX_WIGGLYTUFF,
    NATIONAL_DEX_ZUBAT,
    NATIONAL_DEX_GOLBAT,
    NATIONAL_DEX_ODDISH,
    NATIONAL_DEX_GLOOM,
    NATIONAL_DEX_VILEPLUME,
    NATIONAL_DEX_PARAS,
    NATIONAL_DEX_PARASECT,
    NATIONAL_DEX_VENONAT,
    NATIONAL_DEX_VENOMOTH,
    NATIONAL_DEX_DIGLETT,
    NATIONAL_DEX_DUGTRIO,
    NATIONAL_DEX_MEOWTH,
    NATIONAL_DEX_PERSIAN,
    NATIONAL_DEX_PSYDUCK,
    NATIONAL_DEX_GOLDUCK,
    NATIONAL_DEX_MANKEY,
    NATIONAL_DEX_PRIMEAPE,
    NATIONAL_DEX_GROWLITHE,
    NATIONAL_DEX_ARCANINE,
    NATIONAL_DEX_POLIWAG,
    NATIONAL_DEX_POLIWHIRL,
    NATIONAL_DEX_POLIWRATH,
    NATIONAL_DEX_ABRA,
    NATIONAL_DEX_KADABRA,
    NATIONAL_DEX_ALAKAZAM,
    NATIONAL_DEX_MACHOP,
    NATIONAL_DEX_MACHOKE,
    NATIONAL_DEX_MACHAMP,
    NATIONAL_DEX_BELLSPROUT,
    NATIONAL_DEX_WEEPINBELL,
    NATIONAL_DEX_VICTREEBEL,
    NATIONAL_DEX_TENTACOOL,
    NATIONAL_DEX_TENTACRUEL,
    NATIONAL_DEX_GEODUDE,
    NATIONAL_DEX_GRAVELER,
    NATIONAL_DEX_GOLEM,
    NATIONAL_DEX_PONYTA,
    NATIONAL_DEX_RAPIDASH,
    NATIONAL_DEX_SLOWPOKE,
    NATIONAL_DEX_SLOWBRO,
    NATIONAL_DEX_MAGNEMITE,
    NATIONAL_DEX_MAGNETON,
    NATIONAL_DEX_FARFETCHD,
    NATIONAL_DEX_DODUO,
    NATIONAL_DEX_DODRIO,
    NATIONAL_DEX_SEEL,
    NATIONAL_DEX_DEWGONG,
    NATIONAL_DEX_GRIMER,
    NATIONAL_DEX_MUK,
    NATIONAL_DEX_SHELLDER,
    NATIONAL_DEX_CLOYSTER,
    NATIONAL_DEX_GASTLY,
    NATIONAL_DEX_HAUNTER,
    NATIONAL_DEX_GENGAR,
    NATIONAL_DEX_ONIX,
    NATIONAL_DEX_DROWZEE,
    NATIONAL_DEX_HYPNO,
    NATIONAL_DEX_KRABBY,
    NATIONAL_DEX_KINGLER,
    NATIONAL_DEX_VOLTORB,
    NATIONAL_DEX_ELECTRODE,
    NATIONAL_DEX_EXEGGCUTE,
    NATIONAL_DEX_EXEGGUTOR,
    NATIONAL_DEX_CUBONE,
    NATIONAL_DEX_MAROWAK,
    NATIONAL_DEX_HITMONLEE,
    NATIONAL_DEX_HITMONCHAN,
    NATIONAL_DEX_LICKITUNG,
    NATIONAL_DEX_KOFFING,
    NATIONAL_DEX_WEEZING,
    NATIONAL_DEX_RHYHORN,
    NATIONAL_DEX_RHYDON,
    NATIONAL_DEX_CHANSEY,
    NATIONAL_DEX_TANGELA,
    NATIONAL_DEX_KANGASKHAN,
    NATIONAL_DEX_HORSEA,
    NATIONAL_DEX_SEADRA,
    NATIONAL_DEX_GOLDEEN,
    NATIONAL_DEX_SEAKING,
    NATIONAL_DEX_STARYU,
    NATIONAL_DEX_STARMIE,
    NATIONAL_DEX_MR_MIME,
    NATIONAL_DEX_SCYTHER,
    NATIONAL_DEX_JYNX,
    NATIONAL_DEX_ELECTABUZZ,
    NATIONAL_DEX_MAGMAR,
    NATIONAL_DEX_PINSIR,
    NATIONAL_DEX_TAUROS,
    NATIONAL_DEX_MAGIKARP,
    NATIONAL_DEX_GYARADOS,
    NATIONAL_DEX_LAPRAS,
    NATIONAL_DEX_DITTO,
    NATIONAL_DEX_EEVEE,
    NATIONAL_DEX_VAPOREON,
    NATIONAL_DEX_JOLTEON,
    NATIONAL_DEX_FLAREON,
    NATIONAL_DEX_PORYGON,
    NATIONAL_DEX_OMANYTE,
    NATIONAL_DEX_OMASTAR,
    NATIONAL_DEX_KABUTO,
    NATIONAL_DEX_KABUTOPS,
    NATIONAL_DEX_AERODACTYL,
    NATIONAL_DEX_SNORLAX,
    NATIONAL_DEX_ARTICUNO,
    NATIONAL_DEX_ZAPDOS,
    NATIONAL_DEX_MOLTRES,
    NATIONAL_DEX_DRATINI,
    NATIONAL_DEX_DRAGONAIR,
    NATIONAL_DEX_DRAGONITE,
    NATIONAL_DEX_MEWTWO,
    NATIONAL_DEX_MEW,

    NATIONAL_DEX_CHIKORITA,
    NATIONAL_DEX_BAYLEEF,
    NATIONAL_DEX_MEGANIUM,
    NATIONAL_DEX_CYNDAQUIL,
    NATIONAL_DEX_QUILAVA,
    NATIONAL_DEX_TYPHLOSION,
    NATIONAL_DEX_TOTODILE,
    NATIONAL_DEX_CROCONAW,
    NATIONAL_DEX_FERALIGATR,
    NATIONAL_DEX_SENTRET,
    NATIONAL_DEX_FURRET,
    NATIONAL_DEX_HOOTHOOT,
    NATIONAL_DEX_NOCTOWL,
    NATIONAL_DEX_LEDYBA,
    NATIONAL_DEX_LEDIAN,
    NATIONAL_DEX_SPINARAK,
    NATIONAL_DEX_ARIADOS,
    NATIONAL_DEX_CROBAT,
    NATIONAL_DEX_CHINCHOU,
    NATIONAL_DEX_LANTURN,
    NATIONAL_DEX_PICHU,
    NATIONAL_DEX_CLEFFA,
    NATIONAL_DEX_IGGLYBUFF,
    NATIONAL_DEX_TOGEPI,
    NATIONAL_DEX_TOGETIC,
    NATIONAL_DEX_NATU,
    NATIONAL_DEX_XATU,
    NATIONAL_DEX_MAREEP,
    NATIONAL_DEX_FLAAFFY,
    NATIONAL_DEX_AMPHAROS,
    NATIONAL_DEX_BELLOSSOM,
    NATIONAL_DEX_MARILL,
    NATIONAL_DEX_AZUMARILL,
    NATIONAL_DEX_SUDOWOODO,
    NATIONAL_DEX_POLITOED,
    NATIONAL_DEX_HOPPIP,
    NATIONAL_DEX_SKIPLOOM,
    NATIONAL_DEX_JUMPLUFF,
    NATIONAL_DEX_AIPOM,
    NATIONAL_DEX_SUNKERN,
    NATIONAL_DEX_SUNFLORA,
    NATIONAL_DEX_YANMA,
    NATIONAL_DEX_WOOPER,
    NATIONAL_DEX_QUAGSIRE,
    NATIONAL_DEX_ESPEON,
    NATIONAL_DEX_UMBREON,
    NATIONAL_DEX_MURKROW,
    NATIONAL_DEX_SLOWKING,
    NATIONAL_DEX_MISDREAVUS,
    NATIONAL_DEX_UNOWN,
    NATIONAL_DEX_WOBBUFFET,
    NATIONAL_DEX_GIRAFARIG,
    NATIONAL_DEX_PINECO,
    NATIONAL_DEX_FORRETRESS,
    NATIONAL_DEX_DUNSPARCE,
    NATIONAL_DEX_GLIGAR,
    NATIONAL_DEX_STEELIX,
    NATIONAL_DEX_SNUBBULL,
    NATIONAL_DEX_GRANBULL,
    NATIONAL_DEX_QWILFISH,
    NATIONAL_DEX_SCIZOR,
    NATIONAL_DEX_SHUCKLE,
    NATIONAL_DEX_HERACROSS,
    NATIONAL_DEX_SNEASEL,
    NATIONAL_DEX_TEDDIURSA,
    NATIONAL_DEX_URSARING,
    NATIONAL_DEX_SLUGMA,
    NATIONAL_DEX_MAGCARGO,
    NATIONAL_DEX_SWINUB,
    NATIONAL_DEX_PILOSWINE,
    NATIONAL_DEX_CORSOLA,
    NATIONAL_DEX_REMORAID,
    NATIONAL_DEX_OCTILLERY,
    NATIONAL_DEX_DELIBIRD,
    NATIONAL_DEX_MANTINE,
    NATIONAL_DEX_SKARMORY,
    NATIONAL_DEX_HOUNDOUR,
    NATIONAL_DEX_HOUNDOOM,
    NATIONAL_DEX_KINGDRA,
    NATIONAL_DEX_PHANPY,
    NATIONAL_DEX_DONPHAN,
    NATIONAL_DEX_PORYGON2,
    NATIONAL_DEX_STANTLER,
    NATIONAL_DEX_SMEARGLE,
    NATIONAL_DEX_TYROGUE,
    NATIONAL_DEX_HITMONTOP,
    NATIONAL_DEX_SMOOCHUM,
    NATIONAL_DEX_ELEKID,
    NATIONAL_DEX_MAGBY,
    NATIONAL_DEX_MILTANK,
    NATIONAL_DEX_BLISSEY,
    NATIONAL_DEX_RAIKOU,
    NATIONAL_DEX_ENTEI,
    NATIONAL_DEX_SUICUNE,
    NATIONAL_DEX_LARVITAR,
    NATIONAL_DEX_PUPITAR,
    NATIONAL_DEX_TYRANITAR,
    NATIONAL_DEX_LUGIA,
    NATIONAL_DEX_HO_OH,
    NATIONAL_DEX_CELEBI,

    NATIONAL_DEX_TREECKO,
    NATIONAL_DEX_GROVYLE,
    NATIONAL_DEX_SCEPTILE,
    NATIONAL_DEX_TORCHIC,
    NATIONAL_DEX_COMBUSKEN,
    NATIONAL_DEX_BLAZIKEN,
    NATIONAL_DEX_MUDKIP,
    NATIONAL_DEX_MARSHTOMP,
    NATIONAL_DEX_SWAMPERT,
    NATIONAL_DEX_POOCHYENA,
    NATIONAL_DEX_MIGHTYENA,
    NATIONAL_DEX_ZIGZAGOON,
    NATIONAL_DEX_LINOONE,
    NATIONAL_DEX_WURMPLE,
    NATIONAL_DEX_SILCOON,
    NATIONAL_DEX_BEAUTIFLY,
    NATIONAL_DEX_CASCOON,
    NATIONAL_DEX_DUSTOX,
    NATIONAL_DEX_LOTAD,
    NATIONAL_DEX_LOMBRE,
    NATIONAL_DEX_LUDICOLO,
    NATIONAL_DEX_SEEDOT,
    NATIONAL_DEX_NUZLEAF,
    NATIONAL_DEX_SHIFTRY,
    NATIONAL_DEX_TAILLOW,
    NATIONAL_DEX_SWELLOW,
    NATIONAL_DEX_WINGULL,
    NATIONAL_DEX_PELIPPER,
    NATIONAL_DEX_RALTS,
    NATIONAL_DEX_KIRLIA,
    NATIONAL_DEX_GARDEVOIR,
    NATIONAL_DEX_SURSKIT,
    NATIONAL_DEX_MASQUERAIN,
    NATIONAL_DEX_SHROOMISH,
    NATIONAL_DEX_BRELOOM,
    NATIONAL_DEX_SLAKOTH,
    NATIONAL_DEX_VIGOROTH,
    NATIONAL_DEX_SLAKING,
    NATIONAL_DEX_NINCADA,
    NATIONAL_DEX_NINJASK,
    NATIONAL_DEX_SHEDINJA,
    NATIONAL_DEX_WHISMUR,
    NATIONAL_DEX_LOUDRED,
    NATIONAL_DEX_EXPLOUD,
    NATIONAL_DEX_MAKUHITA,
    NATIONAL_DEX_HARIYAMA,
    NATIONAL_DEX_AZURILL,
    NATIONAL_DEX_NOSEPASS,
    NATIONAL_DEX_SKITTY,
    NATIONAL_DEX_DELCATTY,
    NATIONAL_DEX_SABLEYE,
    NATIONAL_DEX_MAWILE,
    NATIONAL_DEX_ARON,
    NATIONAL_DEX_LAIRON,
    NATIONAL_DEX_AGGRON,
    NATIONAL_DEX_MEDITITE,
    NATIONAL_DEX_MEDICHAM,
    NATIONAL_DEX_ELECTRIKE,
    NATIONAL_DEX_MANECTRIC,
    NATIONAL_DEX_PLUSLE,
    NATIONAL_DEX_MINUN,
    NATIONAL_DEX_VOLBEAT,
    NATIONAL_DEX_ILLUMISE,
    NATIONAL_DEX_ROSELIA,
    NATIONAL_DEX_GULPIN,
    NATIONAL_DEX_SWALOT,
    NATIONAL_DEX_CARVANHA,
    NATIONAL_DEX_SHARPEDO,
    NATIONAL_DEX_WAILMER,
    NATIONAL_DEX_WAILORD,
    NATIONAL_DEX_NUMEL,
    NATIONAL_DEX_CAMERUPT,
    NATIONAL_DEX_TORKOAL,
    NATIONAL_DEX_SPOINK,
    NATIONAL_DEX_GRUMPIG,
    NATIONAL_DEX_SPINDA,
    NATIONAL_DEX_TRAPINCH,
    NATIONAL_DEX_VIBRAVA,
    NATIONAL_DEX_FLYGON,
    NATIONAL_DEX_CACNEA,
    NATIONAL_DEX_CACTURNE,
    NATIONAL_DEX_SWABLU,
    NATIONAL_DEX_ALTARIA,
    NATIONAL_DEX_ZANGOOSE,
    NATIONAL_DEX_SEVIPER,
    NATIONAL_DEX_LUNATONE,
    NATIONAL_DEX_SOLROCK,
    NATIONAL_DEX_BARBOACH,
    NATIONAL_DEX_WHISCASH,
    NATIONAL_DEX_CORPHISH,
    NATIONAL_DEX_CRAWDAUNT,
    NATIONAL_DEX_BALTOY,
    NATIONAL_DEX_CLAYDOL,
    NATIONAL_DEX_LILEEP,
    NATIONAL_DEX_CRADILY,
    NATIONAL_DEX_ANORITH,
    NATIONAL_DEX_ARMALDO,
    NATIONAL_DEX_FEEBAS,
    NATIONAL_DEX_MILOTIC,
    NATIONAL_DEX_CASTFORM,
    NATIONAL_DEX_KECLEON,
    NATIONAL_DEX_SHUPPET,
    NATIONAL_DEX_BANETTE,
    NATIONAL_DEX_DUSKULL,
    NATIONAL_DEX_DUSCLOPS,
    NATIONAL_DEX_TROPIUS,
    NATIONAL_DEX_CHIMECHO,
    NATIONAL_DEX_ABSOL,
    NATIONAL_DEX_WYNAUT,
    NATIONAL_DEX_SNORUNT,
    NATIONAL_DEX_GLALIE,
    NATIONAL_DEX_SPHEAL,
    NATIONAL_DEX_SEALEO,
    NATIONAL_DEX_WALREIN,
    NATIONAL_DEX_CLAMPERL,
    NATIONAL_DEX_HUNTAIL,
    NATIONAL_DEX_GOREBYSS,
    NATIONAL_DEX_RELICANTH,
    NATIONAL_DEX_LUVDISC,
    NATIONAL_DEX_BAGON,
    NATIONAL_DEX_SHELGON,
    NATIONAL_DEX_SALAMENCE,
    NATIONAL_DEX_BELDUM,
    NATIONAL_DEX_METANG,
    NATIONAL_DEX_METAGROSS,
    NATIONAL_DEX_REGIROCK,
    NATIONAL_DEX_REGICE,
    NATIONAL_DEX_REGISTEEL,
    NATIONAL_DEX_LATIAS,
    NATIONAL_DEX_LATIOS,
    NATIONAL_DEX_KYOGRE,
    NATIONAL_DEX_GROUDON,
    NATIONAL_DEX_RAYQUAZA,
    NATIONAL_DEX_JIRACHI,
    NATIONAL_DEX_DEOXYS,

    NATIONAL_DEX_OLD_UNOWN_B,
    NATIONAL_DEX_OLD_UNOWN_C,
    NATIONAL_DEX_OLD_UNOWN_D,
    NATIONAL_DEX_OLD_UNOWN_E,
    NATIONAL_DEX_OLD_UNOWN_F,
    NATIONAL_DEX_OLD_UNOWN_G,
    NATIONAL_DEX_OLD_UNOWN_H,
    NATIONAL_DEX_OLD_UNOWN_I,
    NATIONAL_DEX_OLD_UNOWN_J,
    NATIONAL_DEX_OLD_UNOWN_K,
    NATIONAL_DEX_OLD_UNOWN_L,
    NATIONAL_DEX_OLD_UNOWN_M,
    NATIONAL_DEX_OLD_UNOWN_N,
    NATIONAL_DEX_OLD_UNOWN_O,
    NATIONAL_DEX_OLD_UNOWN_P,
    NATIONAL_DEX_OLD_UNOWN_Q,
    NATIONAL_DEX_OLD_UNOWN_R,
    NATIONAL_DEX_OLD_UNOWN_S,
    NATIONAL_DEX_OLD_UNOWN_T,
    NATIONAL_DEX_OLD_UNOWN_U,
    NATIONAL_DEX_OLD_UNOWN_V,
    NATIONAL_DEX_OLD_UNOWN_W,
    NATIONAL_DEX_OLD_UNOWN_X,
    NATIONAL_DEX_OLD_UNOWN_Y,
    NATIONAL_DEX_OLD_UNOWN_Z,
};






enum {
    HOENN_DEX_NONE,
    HOENN_DEX_TREECKO,
    HOENN_DEX_GROVYLE,
    HOENN_DEX_SCEPTILE,
    HOENN_DEX_TORCHIC,
    HOENN_DEX_COMBUSKEN,
    HOENN_DEX_BLAZIKEN,
    HOENN_DEX_MUDKIP,
    HOENN_DEX_MARSHTOMP,
    HOENN_DEX_SWAMPERT,
    HOENN_DEX_POOCHYENA,
    HOENN_DEX_MIGHTYENA,
    HOENN_DEX_ZIGZAGOON,
    HOENN_DEX_LINOONE,
    HOENN_DEX_WURMPLE,
    HOENN_DEX_SILCOON,
    HOENN_DEX_BEAUTIFLY,
    HOENN_DEX_CASCOON,
    HOENN_DEX_DUSTOX,
    HOENN_DEX_LOTAD,
    HOENN_DEX_LOMBRE,
    HOENN_DEX_LUDICOLO,
    HOENN_DEX_SEEDOT,
    HOENN_DEX_NUZLEAF,
    HOENN_DEX_SHIFTRY,
    HOENN_DEX_TAILLOW,
    HOENN_DEX_SWELLOW,
    HOENN_DEX_WINGULL,
    HOENN_DEX_PELIPPER,
    HOENN_DEX_RALTS,
    HOENN_DEX_KIRLIA,
    HOENN_DEX_GARDEVOIR,
    HOENN_DEX_SURSKIT,
    HOENN_DEX_MASQUERAIN,
    HOENN_DEX_SHROOMISH,
    HOENN_DEX_BRELOOM,
    HOENN_DEX_SLAKOTH,
    HOENN_DEX_VIGOROTH,
    HOENN_DEX_SLAKING,
    HOENN_DEX_ABRA,
    HOENN_DEX_KADABRA,
    HOENN_DEX_ALAKAZAM,
    HOENN_DEX_NINCADA,
    HOENN_DEX_NINJASK,
    HOENN_DEX_SHEDINJA,
    HOENN_DEX_WHISMUR,
    HOENN_DEX_LOUDRED,
    HOENN_DEX_EXPLOUD,
    HOENN_DEX_MAKUHITA,
    HOENN_DEX_HARIYAMA,
    HOENN_DEX_GOLDEEN,
    HOENN_DEX_SEAKING,
    HOENN_DEX_MAGIKARP,
    HOENN_DEX_GYARADOS,
    HOENN_DEX_AZURILL,
    HOENN_DEX_MARILL,
    HOENN_DEX_AZUMARILL,
    HOENN_DEX_GEODUDE,
    HOENN_DEX_GRAVELER,
    HOENN_DEX_GOLEM,
    HOENN_DEX_NOSEPASS,
    HOENN_DEX_SKITTY,
    HOENN_DEX_DELCATTY,
    HOENN_DEX_ZUBAT,
    HOENN_DEX_GOLBAT,
    HOENN_DEX_CROBAT,
    HOENN_DEX_TENTACOOL,
    HOENN_DEX_TENTACRUEL,
    HOENN_DEX_SABLEYE,
    HOENN_DEX_MAWILE,
    HOENN_DEX_ARON,
    HOENN_DEX_LAIRON,
    HOENN_DEX_AGGRON,
    HOENN_DEX_MACHOP,
    HOENN_DEX_MACHOKE,
    HOENN_DEX_MACHAMP,
    HOENN_DEX_MEDITITE,
    HOENN_DEX_MEDICHAM,
    HOENN_DEX_ELECTRIKE,
    HOENN_DEX_MANECTRIC,
    HOENN_DEX_PLUSLE,
    HOENN_DEX_MINUN,
    HOENN_DEX_MAGNEMITE,
    HOENN_DEX_MAGNETON,
    HOENN_DEX_VOLTORB,
    HOENN_DEX_ELECTRODE,
    HOENN_DEX_VOLBEAT,
    HOENN_DEX_ILLUMISE,
    HOENN_DEX_ODDISH,
    HOENN_DEX_GLOOM,
    HOENN_DEX_VILEPLUME,
    HOENN_DEX_BELLOSSOM,
    HOENN_DEX_DODUO,
    HOENN_DEX_DODRIO,
    HOENN_DEX_ROSELIA,
    HOENN_DEX_GULPIN,
    HOENN_DEX_SWALOT,
    HOENN_DEX_CARVANHA,
    HOENN_DEX_SHARPEDO,
    HOENN_DEX_WAILMER,
    HOENN_DEX_WAILORD,
    HOENN_DEX_NUMEL,
    HOENN_DEX_CAMERUPT,
    HOENN_DEX_SLUGMA,
    HOENN_DEX_MAGCARGO,
    HOENN_DEX_TORKOAL,
    HOENN_DEX_GRIMER,
    HOENN_DEX_MUK,
    HOENN_DEX_KOFFING,
    HOENN_DEX_WEEZING,
    HOENN_DEX_SPOINK,
    HOENN_DEX_GRUMPIG,
    HOENN_DEX_SANDSHREW,
    HOENN_DEX_SANDSLASH,
    HOENN_DEX_SPINDA,
    HOENN_DEX_SKARMORY,
    HOENN_DEX_TRAPINCH,
    HOENN_DEX_VIBRAVA,
    HOENN_DEX_FLYGON,
    HOENN_DEX_CACNEA,
    HOENN_DEX_CACTURNE,
    HOENN_DEX_SWABLU,
    HOENN_DEX_ALTARIA,
    HOENN_DEX_ZANGOOSE,
    HOENN_DEX_SEVIPER,
    HOENN_DEX_LUNATONE,
    HOENN_DEX_SOLROCK,
    HOENN_DEX_BARBOACH,
    HOENN_DEX_WHISCASH,
    HOENN_DEX_CORPHISH,
    HOENN_DEX_CRAWDAUNT,
    HOENN_DEX_BALTOY,
    HOENN_DEX_CLAYDOL,
    HOENN_DEX_LILEEP,
    HOENN_DEX_CRADILY,
    HOENN_DEX_ANORITH,
    HOENN_DEX_ARMALDO,
    HOENN_DEX_IGGLYBUFF,
    HOENN_DEX_JIGGLYPUFF,
    HOENN_DEX_WIGGLYTUFF,
    HOENN_DEX_FEEBAS,
    HOENN_DEX_MILOTIC,
    HOENN_DEX_CASTFORM,
    HOENN_DEX_STARYU,
    HOENN_DEX_STARMIE,
    HOENN_DEX_KECLEON,
    HOENN_DEX_SHUPPET,
    HOENN_DEX_BANETTE,
    HOENN_DEX_DUSKULL,
    HOENN_DEX_DUSCLOPS,
    HOENN_DEX_TROPIUS,
    HOENN_DEX_CHIMECHO,
    HOENN_DEX_ABSOL,
    HOENN_DEX_VULPIX,
    HOENN_DEX_NINETALES,
    HOENN_DEX_PICHU,
    HOENN_DEX_PIKACHU,
    HOENN_DEX_RAICHU,
    HOENN_DEX_PSYDUCK,
    HOENN_DEX_GOLDUCK,
    HOENN_DEX_WYNAUT,
    HOENN_DEX_WOBBUFFET,
    HOENN_DEX_NATU,
    HOENN_DEX_XATU,
    HOENN_DEX_GIRAFARIG,
    HOENN_DEX_PHANPY,
    HOENN_DEX_DONPHAN,
    HOENN_DEX_PINSIR,
    HOENN_DEX_HERACROSS,
    HOENN_DEX_RHYHORN,
    HOENN_DEX_RHYDON,
    HOENN_DEX_SNORUNT,
    HOENN_DEX_GLALIE,
    HOENN_DEX_SPHEAL,
    HOENN_DEX_SEALEO,
    HOENN_DEX_WALREIN,
    HOENN_DEX_CLAMPERL,
    HOENN_DEX_HUNTAIL,
    HOENN_DEX_GOREBYSS,
    HOENN_DEX_RELICANTH,
    HOENN_DEX_CORSOLA,
    HOENN_DEX_CHINCHOU,
    HOENN_DEX_LANTURN,
    HOENN_DEX_LUVDISC,
    HOENN_DEX_HORSEA,
    HOENN_DEX_SEADRA,
    HOENN_DEX_KINGDRA,
    HOENN_DEX_BAGON,
    HOENN_DEX_SHELGON,
    HOENN_DEX_SALAMENCE,
    HOENN_DEX_BELDUM,
    HOENN_DEX_METANG,
    HOENN_DEX_METAGROSS,
    HOENN_DEX_REGIROCK,
    HOENN_DEX_REGICE,
    HOENN_DEX_REGISTEEL,
    HOENN_DEX_LATIAS,
    HOENN_DEX_LATIOS,
    HOENN_DEX_KYOGRE,
    HOENN_DEX_GROUDON,
    HOENN_DEX_RAYQUAZA,
    HOENN_DEX_JIRACHI,
    HOENN_DEX_DEOXYS,


    HOENN_DEX_BULBASAUR,
    HOENN_DEX_IVYSAUR,
    HOENN_DEX_VENUSAUR,
    HOENN_DEX_CHARMANDER,
    HOENN_DEX_CHARMELEON,
    HOENN_DEX_CHARIZARD,
    HOENN_DEX_SQUIRTLE,
    HOENN_DEX_WARTORTLE,
    HOENN_DEX_BLASTOISE,
    HOENN_DEX_CATERPIE,
    HOENN_DEX_METAPOD,
    HOENN_DEX_BUTTERFREE,
    HOENN_DEX_WEEDLE,
    HOENN_DEX_KAKUNA,
    HOENN_DEX_BEEDRILL,
    HOENN_DEX_PIDGEY,
    HOENN_DEX_PIDGEOTTO,
    HOENN_DEX_PIDGEOT,
    HOENN_DEX_RATTATA,
    HOENN_DEX_RATICATE,
    HOENN_DEX_SPEAROW,
    HOENN_DEX_FEAROW,
    HOENN_DEX_EKANS,
    HOENN_DEX_ARBOK,
    HOENN_DEX_NIDORAN_F,
    HOENN_DEX_NIDORINA,
    HOENN_DEX_NIDOQUEEN,
    HOENN_DEX_NIDORAN_M,
    HOENN_DEX_NIDORINO,
    HOENN_DEX_NIDOKING,
    HOENN_DEX_CLEFAIRY,
    HOENN_DEX_CLEFABLE,
    HOENN_DEX_PARAS,
    HOENN_DEX_PARASECT,
    HOENN_DEX_VENONAT,
    HOENN_DEX_VENOMOTH,
    HOENN_DEX_DIGLETT,
    HOENN_DEX_DUGTRIO,
    HOENN_DEX_MEOWTH,
    HOENN_DEX_PERSIAN,
    HOENN_DEX_MANKEY,
    HOENN_DEX_PRIMEAPE,
    HOENN_DEX_GROWLITHE,
    HOENN_DEX_ARCANINE,
    HOENN_DEX_POLIWAG,
    HOENN_DEX_POLIWHIRL,
    HOENN_DEX_POLIWRATH,
    HOENN_DEX_BELLSPROUT,
    HOENN_DEX_WEEPINBELL,
    HOENN_DEX_VICTREEBEL,
    HOENN_DEX_PONYTA,
    HOENN_DEX_RAPIDASH,
    HOENN_DEX_SLOWPOKE,
    HOENN_DEX_SLOWBRO,
    HOENN_DEX_FARFETCHD,
    HOENN_DEX_SEEL,
    HOENN_DEX_DEWGONG,
    HOENN_DEX_SHELLDER,
    HOENN_DEX_CLOYSTER,
    HOENN_DEX_GASTLY,
    HOENN_DEX_HAUNTER,
    HOENN_DEX_GENGAR,
    HOENN_DEX_ONIX,
    HOENN_DEX_DROWZEE,
    HOENN_DEX_HYPNO,
    HOENN_DEX_KRABBY,
    HOENN_DEX_KINGLER,
    HOENN_DEX_EXEGGCUTE,
    HOENN_DEX_EXEGGUTOR,
    HOENN_DEX_CUBONE,
    HOENN_DEX_MAROWAK,
    HOENN_DEX_HITMONLEE,
    HOENN_DEX_HITMONCHAN,
    HOENN_DEX_LICKITUNG,
    HOENN_DEX_CHANSEY,
    HOENN_DEX_TANGELA,
    HOENN_DEX_KANGASKHAN,
    HOENN_DEX_MR_MIME,
    HOENN_DEX_SCYTHER,
    HOENN_DEX_JYNX,
    HOENN_DEX_ELECTABUZZ,
    HOENN_DEX_MAGMAR,
    HOENN_DEX_TAUROS,
    HOENN_DEX_LAPRAS,
    HOENN_DEX_DITTO,
    HOENN_DEX_EEVEE,
    HOENN_DEX_VAPOREON,
    HOENN_DEX_JOLTEON,
    HOENN_DEX_FLAREON,
    HOENN_DEX_PORYGON,
    HOENN_DEX_OMANYTE,
    HOENN_DEX_OMASTAR,
    HOENN_DEX_KABUTO,
    HOENN_DEX_KABUTOPS,
    HOENN_DEX_AERODACTYL,
    HOENN_DEX_SNORLAX,
    HOENN_DEX_ARTICUNO,
    HOENN_DEX_ZAPDOS,
    HOENN_DEX_MOLTRES,
    HOENN_DEX_DRATINI,
    HOENN_DEX_DRAGONAIR,
    HOENN_DEX_DRAGONITE,
    HOENN_DEX_MEWTWO,
    HOENN_DEX_MEW,
    HOENN_DEX_CHIKORITA,
    HOENN_DEX_BAYLEEF,
    HOENN_DEX_MEGANIUM,
    HOENN_DEX_CYNDAQUIL,
    HOENN_DEX_QUILAVA,
    HOENN_DEX_TYPHLOSION,
    HOENN_DEX_TOTODILE,
    HOENN_DEX_CROCONAW,
    HOENN_DEX_FERALIGATR,
    HOENN_DEX_SENTRET,
    HOENN_DEX_FURRET,
    HOENN_DEX_HOOTHOOT,
    HOENN_DEX_NOCTOWL,
    HOENN_DEX_LEDYBA,
    HOENN_DEX_LEDIAN,
    HOENN_DEX_SPINARAK,
    HOENN_DEX_ARIADOS,
    HOENN_DEX_CLEFFA,
    HOENN_DEX_TOGEPI,
    HOENN_DEX_TOGETIC,
    HOENN_DEX_MAREEP,
    HOENN_DEX_FLAAFFY,
    HOENN_DEX_AMPHAROS,
    HOENN_DEX_SUDOWOODO,
    HOENN_DEX_POLITOED,
    HOENN_DEX_HOPPIP,
    HOENN_DEX_SKIPLOOM,
    HOENN_DEX_JUMPLUFF,
    HOENN_DEX_AIPOM,
    HOENN_DEX_SUNKERN,
    HOENN_DEX_SUNFLORA,
    HOENN_DEX_YANMA,
    HOENN_DEX_WOOPER,
    HOENN_DEX_QUAGSIRE,
    HOENN_DEX_ESPEON,
    HOENN_DEX_UMBREON,
    HOENN_DEX_MURKROW,
    HOENN_DEX_SLOWKING,
    HOENN_DEX_MISDREAVUS,
    HOENN_DEX_UNOWN,
    HOENN_DEX_PINECO,
    HOENN_DEX_FORRETRESS,
    HOENN_DEX_DUNSPARCE,
    HOENN_DEX_GLIGAR,
    HOENN_DEX_STEELIX,
    HOENN_DEX_SNUBBULL,
    HOENN_DEX_GRANBULL,
    HOENN_DEX_QWILFISH,
    HOENN_DEX_SCIZOR,
    HOENN_DEX_SHUCKLE,
    HOENN_DEX_SNEASEL,
    HOENN_DEX_TEDDIURSA,
    HOENN_DEX_URSARING,
    HOENN_DEX_SWINUB,
    HOENN_DEX_PILOSWINE,
    HOENN_DEX_REMORAID,
    HOENN_DEX_OCTILLERY,
    HOENN_DEX_DELIBIRD,
    HOENN_DEX_MANTINE,
    HOENN_DEX_HOUNDOUR,
    HOENN_DEX_HOUNDOOM,
    HOENN_DEX_PORYGON2,
    HOENN_DEX_STANTLER,
    HOENN_DEX_SMEARGLE,
    HOENN_DEX_TYROGUE,
    HOENN_DEX_HITMONTOP,
    HOENN_DEX_SMOOCHUM,
    HOENN_DEX_ELEKID,
    HOENN_DEX_MAGBY,
    HOENN_DEX_MILTANK,
    HOENN_DEX_BLISSEY,
    HOENN_DEX_RAIKOU,
    HOENN_DEX_ENTEI,
    HOENN_DEX_SUICUNE,
    HOENN_DEX_LARVITAR,
    HOENN_DEX_PUPITAR,
    HOENN_DEX_TYRANITAR,
    HOENN_DEX_LUGIA,
    HOENN_DEX_HO_OH,
    HOENN_DEX_CELEBI,
    HOENN_DEX_OLD_UNOWN_B,
    HOENN_DEX_OLD_UNOWN_C,
    HOENN_DEX_OLD_UNOWN_D,
    HOENN_DEX_OLD_UNOWN_E,
    HOENN_DEX_OLD_UNOWN_F,
    HOENN_DEX_OLD_UNOWN_G,
    HOENN_DEX_OLD_UNOWN_H,
    HOENN_DEX_OLD_UNOWN_I,
    HOENN_DEX_OLD_UNOWN_J,
    HOENN_DEX_OLD_UNOWN_K,
    HOENN_DEX_OLD_UNOWN_L,
    HOENN_DEX_OLD_UNOWN_M,
    HOENN_DEX_OLD_UNOWN_N,
    HOENN_DEX_OLD_UNOWN_O,
    HOENN_DEX_OLD_UNOWN_P,
    HOENN_DEX_OLD_UNOWN_Q,
    HOENN_DEX_OLD_UNOWN_R,
    HOENN_DEX_OLD_UNOWN_S,
    HOENN_DEX_OLD_UNOWN_T,
    HOENN_DEX_OLD_UNOWN_U,
    HOENN_DEX_OLD_UNOWN_V,
    HOENN_DEX_OLD_UNOWN_W,
    HOENN_DEX_OLD_UNOWN_X,
    HOENN_DEX_OLD_UNOWN_Y,
    HOENN_DEX_OLD_UNOWN_Z,
};
# 12 "include/global.h" 2
# 1 "include/constants/easy_chat.h" 1
# 13 "include/global.h" 2
# 1 "include/constants/rgb.h" 1
# 14 "include/global.h" 2
# 121 "include/global.h"
extern u8 gStringVar1[];
extern u8 gStringVar2[];
extern u8 gStringVar3[];
extern u8 gStringVar4[];
# 138 "include/global.h"
struct Coords8
{
    s8 x;
    s8 y;
};

struct UCoords8
{
    u8 x;
    u8 y;
};

struct Coords16
{
    s16 x;
    s16 y;
};

struct UCoords16
{
    u16 x;
    u16 y;
};

struct Coords32
{
    s32 x;
    s32 y;
};

struct UCoords32
{
    u32 x;
    u32 y;
};

struct Time
{
             s16 days;
             s8 hours;
             s8 minutes;
             s8 seconds;
};

struct Pokedex
{
             u8 order;
             u8 mode;
             u8 unused;
             u8 nationalMagic;
             u32 unownPersonality;
             u32 spindaPersonality;
             u32 unknown3;
             u8 owned[(((412) / (8)) + (((412) % (8)) ? 1 : 0))];
             u8 seen[(((412) / (8)) + (((412) % (8)) ? 1 : 0))];
};

struct PokemonJumpRecords
{
    u16 jumpsInRow;
    u16 unused1;
    u16 excellentsInRow;
    u16 gamesWithMaxPlayers;
    u32 unused2;
    u32 bestJumpScore;
};

struct BerryPickingResults
{
    u32 bestScore;
    u16 berriesPicked;
    u16 berriesPickedInRow;
    u8 field_8;
    u8 field_9;
    u8 field_A;
    u8 field_B;
    u8 field_C;
    u8 field_D;
    u8 field_E;
    u8 field_F;
};

struct BerryCrush
{
    u16 pressingSpeeds[4];
    u32 berryPowderAmount;
    u32 unk;
};



struct LinkBattleRecord
{
    u8 name[7 + 1];
    u16 trainerId;
    u16 wins;
    u16 losses;
    u16 draws;
};

struct LinkBattleRecords
{
    struct LinkBattleRecord entries[5];
    u8 languages[5];
};

struct RecordMixingGiftData
{
    u8 unk0;
    u8 quantity;
    u16 itemId;
    u8 filler4[8];
};

struct RecordMixingGift
{
    int checksum;
    struct RecordMixingGiftData data;
};

# 1 "include/constants/game_stat.h" 1
# 259 "include/global.h" 2
# 1 "include/global.fieldmap.h" 1
# 16 "include/global.fieldmap.h"
enum {
    METATILE_LAYER_TYPE_NORMAL,
    METATILE_LAYER_TYPE_COVERED,
    METATILE_LAYER_TYPE_SPLIT,
};



enum
{
    METATILE_ATTRIBUTE_BEHAVIOR,
    METATILE_ATTRIBUTE_TERRAIN,
    METATILE_ATTRIBUTE_2,
    METATILE_ATTRIBUTE_3,
    METATILE_ATTRIBUTE_ENCOUNTER_TYPE,
    METATILE_ATTRIBUTE_5,
    METATILE_ATTRIBUTE_LAYER_TYPE,
    METATILE_ATTRIBUTE_7,
    METATILE_ATTRIBUTE_COUNT,
    METATILE_ATTRIBUTES_ALL = 255
};

enum
{
    TILE_ENCOUNTER_NONE,
    TILE_ENCOUNTER_LAND,
    TILE_ENCOUNTER_WATER,
};

enum
{
    TILE_TERRAIN_NORMAL,
    TILE_TERRAIN_GRASS,
    TILE_TERRAIN_WATER,
    TILE_TERRAIN_WATERFALL,
};

typedef void (*TilesetCB)(void);

struct Tileset
{
             bool8 isCompressed;
             bool8 isSecondary;
             const u32 *tiles;
             const u16 (*palettes)[16];
             const u16 *metatiles;
             TilesetCB callback;
             const u32 *metatileAttributes;
};

struct MapLayout
{
             s32 width;
             s32 height;
             u16 *border;
             u16 *map;
             struct Tileset *primaryTileset;
             struct Tileset *secondaryTileset;
             u8 borderWidth;
             u8 borderHeight;
};

struct BackupMapLayout
{
    s32 Xsize;
    s32 Ysize;
    u16 *map;
};

struct ObjectEventTemplate
{
    u8 localId;
    u8 graphicsId;
    u8 kind;
    s16 x, y;
    union {
        struct {
            u8 elevation;
            u8 movementType;
            u16 movementRangeX:4;
            u16 movementRangeY:4;
            u16 trainerType;
            u16 trainerRange_berryTreeId;
        } normal;
        struct {
            u8 targetLocalId;
            u8 padding[3];
            u16 targetMapNum;
            u16 targetMapGroup;
        } clone;
    } objUnion;
    const u8 *script;
    u16 flagId;
};

struct WarpEvent
{
    s16 x, y;
    u8 elevation;
    u8 warpId;
    u8 mapNum;
    u8 mapGroup;
};

struct CoordEvent
{
    u16 x, y;
    u8 elevation;
    u16 trigger;
    u16 index;
    u8 *script;
};

struct BgEvent
{
    u16 x, y;
    u8 elevation;
    u8 kind;
    union {
        u8 *script;
        struct {
            u32 itemId:16;
            u32 hiddenItemId:8;
            u32 quantity:7;
            u32 isUnderfoot:1;
        } hiddenItemStr;
        u32 hiddenItem;
    } bgUnion;
};

struct MapEvents
{
    u8 objectEventCount;
    u8 warpCount;
    u8 coordEventCount;
    u8 bgEventCount;
    struct ObjectEventTemplate *objectEvents;
    struct WarpEvent *warps;
    struct CoordEvent *coordEvents;
    struct BgEvent *bgEvents;
};

struct MapConnection
{
          u8 direction;
          u32 offset;
          u8 mapGroup;
          u8 mapNum;
};

struct MapConnections
{
    s32 count;
    struct MapConnection *connections;
};

struct MapHeader
{
               const struct MapLayout *mapLayout;
               const struct MapEvents *events;
               const u8 *mapScripts;
               const struct MapConnections *connections;
               u16 music;
               u16 mapLayoutId;
               u8 regionMapSectionId;
               u8 cave;
               u8 weather;
               u8 mapType;

               bool8 bikingAllowed;
               bool8 allowEscaping:1;
               bool8 allowRunning:1;
               bool8 showMapName:6;
               s8 floorNum;
               u8 battleType;
};

struct ObjectEvent
{
                    u32 active:1;
                    u32 singleMovementActive:1;
                    u32 triggerGroundEffectsOnMove:1;
                    u32 triggerGroundEffectsOnStop:1;
                    u32 disableCoveringGroundEffects:1;
                    u32 landingJump:1;
                    u32 heldMovementActive:1;
                    u32 heldMovementFinished:1;
                    u32 frozen:1;
                    u32 facingDirectionLocked:1;
                    u32 disableAnim:1;
                    u32 enableAnim:1;
                    u32 inanimate:1;
                    u32 invisible:1;
                    u32 offScreen:1;
                    u32 trackedByCamera:1;
                    u32 isPlayer:1;
                    u32 hasReflection:1;
                    u32 inShortGrass:1;
                    u32 inShallowFlowingWater:1;
                    u32 inSandPile:1;
                    u32 inHotSprings:1;
                    u32 hasShadow:1;
                    u32 spriteAnimPausedBackup:1;
                    u32 spriteAffineAnimPausedBackup:1;
                    u32 disableJumpLandingGroundEffect:1;
                    u32 fixedPriority:1;
                    u32 hideReflection:1;
                    u8 spriteId;
                    u8 graphicsId;
                    u8 movementType;
                    u8 trainerType;
                    u8 localId;
                    u8 mapNum;
                    u8 mapGroup;
                    u8 currentElevation:4;
                    u8 previousElevation:4;
                    struct Coords16 initialCoords;
                    struct Coords16 currentCoords;
                    struct Coords16 previousCoords;
                    u8 facingDirection:4;
                    u8 movementDirection:4;
                    u16 rangeX:4;
                    u16 rangeY:4;
                    u8 fieldEffectSpriteId;
                    u8 warpArrowSpriteId;
                    u8 movementActionId;
                    u8 trainerRange_berryTreeId;
                    u8 currentMetatileBehavior;
                    u8 previousMetatileBehavior;
                    u8 previousMovementDirection;
                    u8 directionSequenceIndex;
                    u8 playerCopyableMovement;

};

struct ObjectEventGraphicsInfo
{
             u16 tileTag;
             u16 paletteTag;
             u16 reflectionPaletteTag;
             u16 size;
             s16 width;
             s16 height;
             u8 paletteSlot:4;
             u8 shadowSize:2;
             u8 inanimate:1;
             u8 disableReflectionPaletteLoad:1;
             u8 tracks;
             const struct OamData *oam;
             const struct SubspriteTable *subspriteTables;
             const union AnimCmd *const *anims;
             const struct SpriteFrameImage *images;
             const union AffineAnimCmd *const *affineAnims;
};

enum {
    PLAYER_AVATAR_STATE_NORMAL,
    PLAYER_AVATAR_STATE_MACH_BIKE,
    PLAYER_AVATAR_STATE_ACRO_BIKE,
    PLAYER_AVATAR_STATE_SURFING,
    PLAYER_AVATAR_STATE_UNDERWATER,
    PLAYER_AVATAR_STATE_CONTROLLABLE,
    PLAYER_AVATAR_STATE_FORCED,
    PLAYER_AVATAR_STATE_DASH,
};
# 291 "include/global.fieldmap.h"
enum {
    PLAYER_AVATAR_GFX_NORMAL,
    PLAYER_AVATAR_GFX_BIKE,
    PLAYER_AVATAR_GFX_RIDE,
    PLAYER_AVATAR_GFX_FIELD_MOVE,
    PLAYER_AVATAR_GFX_FISH,
    PLAYER_AVATAR_GFX_VSSEEKER,
};

enum
{
    ACRO_BIKE_NORMAL,
    ACRO_BIKE_TURNING,
    ACRO_BIKE_WHEELIE_STANDING,
    ACRO_BIKE_BUNNY_HOP,
    ACRO_BIKE_WHEELIE_MOVING,
    ACRO_BIKE_STATE5,
    ACRO_BIKE_STATE6,
};

enum
{
    COLLISION_NONE,
    COLLISION_OUTSIDE_RANGE,
    COLLISION_IMPASSABLE,
    COLLISION_ELEVATION_MISMATCH,
    COLLISION_OBJECT_EVENT,
    COLLISION_STOP_SURFING,
    COLLISION_LEDGE_JUMP,
    COLLISION_PUSHED_BOULDER,
    COLLISION_DIRECTIONAL_STAIR_WARP,
    COLLISION_WHEELIE_HOP,
    COLLISION_ISOLATED_VERTICAL_RAIL,
    COLLISION_ISOLATED_HORIZONTAL_RAIL,
    COLLISION_VERTICAL_RAIL,
    COLLISION_HORIZONTAL_RAIL,
    COLLISION_COUNT
};


enum
{
    NOT_MOVING,
    TURN_DIRECTION,
    MOVING,
};


enum
{
    T_NOT_MOVING,
    T_TILE_TRANSITION,
    T_TILE_CENTER,
};

struct PlayerAvatar
{
             u8 flags;
             u8 transitionFlags;
             u8 runningState;
             u8 tileTransitionState;
             u8 spriteId;
             u8 objectEventId;
             bool8 preventStep;
             u8 gender;

    u8 acroBikeState;
    u8 newDirBackup;
    u8 bikeFrameCounter;
    u8 bikeSpeed;
    u32 directionHistory;
    u32 abStartSelectHistory;
    u8 dirTimerHistory[8];

    u16 lastSpinTile;
};

struct Camera
{
    bool8 active:1;
    s32 x;
    s32 y;
};

extern struct ObjectEvent gObjectEvents[16];
extern u8 gSelectedObjectEvent;
extern struct MapHeader gMapHeader;
extern struct PlayerAvatar gPlayerAvatar;
extern struct Camera gCamera;
# 260 "include/global.h" 2
# 1 "include/global.berry.h" 1







struct Berry
{
    const u8 name[7];
    u8 firmness;
    u16 size;
    u8 maxYield;
    u8 minYield;
    const u8 *description1;
    const u8 *description2;
    u8 stageDuration;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 smoothness;
};



struct Berry2
{
    u8 name[7];
    u8 firmness;
    u16 size;
    u8 maxYield;
    u8 minYield;
    u8 *description1;
    u8 *description2;
    u8 stageDuration;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 smoothness;
};

struct EnigmaBerry
{
    struct Berry2 berry;
    u8 itemEffect[18];
    u8 holdEffect;
    u8 holdEffectParam;
    u32 checksum;
};

struct BattleEnigmaBerry
{
             u8 name[7];
             u8 holdEffect;
             u8 itemEffect[18];
             u8 holdEffectParam;
};

struct BerryTree
{
    u8 berry;
    u8 stage:7;
    u8 growthSparkle:1;
    u16 minutesUntilNextStage;
    u8 berryYield;
    u8 regrowthCount:4;
    u8 watered1:1;
    u8 watered2:1;
    u8 watered3:1;
    u8 watered4:1;
};
# 261 "include/global.h" 2
# 1 "include/pokemon.h" 1




# 1 "include/sprite.h" 1
# 13 "include/sprite.h"
struct SpriteSheet
{
    const void *data;
    u16 size;
    u16 tag;
};

struct CompressedSpriteSheet
{
    const u32 *data;
    u16 size;
    u16 tag;
};

struct SpriteFrameImage
{
    const void *data;
    u16 size;
};




struct SpritePalette
{
    const u16 *data;
    u16 tag;
};

struct CompressedSpritePalette
{
    const u32 *data;
    u16 tag;
};

struct AnimFrameCmd
{


    u32 imageValue:16;

    u32 duration:6;
    u32 hFlip:1;
    u32 vFlip:1;
};

struct AnimLoopCmd
{
    u32 type:16;
    u32 count:6;
};

struct AnimJumpCmd
{
    u32 type:16;
    u32 target:6;
};




union AnimCmd
{
    s16 type;
    struct AnimFrameCmd frame;
    struct AnimLoopCmd loop;
    struct AnimJumpCmd jump;
};
# 91 "include/sprite.h"
struct AffineAnimFrameCmd
{
    s16 xScale;
    s16 yScale;
    u8 rotation;
    u8 duration;
};

struct AffineAnimLoopCmd
{
    s16 type;
    s16 count;
};

struct AffineAnimJumpCmd
{
    s16 type;
    u16 target;
};

struct AffineAnimEndCmdAlt
{
    s16 type;
    u16 val;
};

union AffineAnimCmd
{
    s16 type;
    struct AffineAnimFrameCmd frame;
    struct AffineAnimLoopCmd loop;
    struct AffineAnimJumpCmd jump;
    struct AffineAnimEndCmdAlt end;
};
# 145 "include/sprite.h"
struct AffineAnimState
{
    u8 animNum;
    u8 animCmdIndex;
    u8 delayCounter;
    u8 loopCounter;
    s16 xScale;
    s16 yScale;
    u16 rotation;
};

enum
{
    SUBSPRITES_OFF,
    SUBSPRITES_ON,
    SUBSPRITES_IGNORE_PRIORITY,
};

struct Subsprite
{
    s8 x;
    s8 y;
    u16 shape:2;
    u16 size:2;
    u16 tileOffset:10;
    u16 priority:2;
};

struct SubspriteTable
{
    u8 subspriteCount;
    const struct Subsprite *subsprites;
};

struct Sprite;

typedef void (*SpriteCallback)(struct Sprite *);

struct SpriteTemplate
{
    u16 tileTag;
    u16 paletteTag;
    const struct OamData *oam;
    const union AnimCmd *const *anims;
    const struct SpriteFrameImage *images;
    const union AffineAnimCmd *const *affineAnims;
    SpriteCallback callback;
};

struct Sprite
{
             struct OamData oam;
             const union AnimCmd *const *anims;
             const struct SpriteFrameImage *images;
             const union AffineAnimCmd *const *affineAnims;
             const struct SpriteTemplate *template;
             const struct SubspriteTable *subspriteTables;
             SpriteCallback callback;

             s16 x, y;
             s16 x2, y2;
             s8 centerToCornerVecX;
             s8 centerToCornerVecY;

             u8 animNum;
             u8 animCmdIndex;
             u8 animDelayCounter:6;
             u8 animPaused:1;
             u8 affineAnimPaused:1;
             u8 animLoopCounter;


             s16 data[8];

             u16 inUse:1;
             u16 coordOffsetEnabled:1;
             u16 invisible:1;
             u16 flags_3:1;
             u16 flags_4:1;
             u16 flags_5:1;
             u16 flags_6:1;
             u16 flags_7:1;
             u16 hFlip:1;
             u16 vFlip:1;
             u16 animBeginning:1;
             u16 affineAnimBeginning:1;
             u16 animEnded:1;
             u16 affineAnimEnded:1;
             u16 usingSheet:1;
             u16 anchored:1;

             u16 sheetTileStart;

             u8 subspriteTableNum:6;
             u8 subspriteMode:2;

             u8 subpriority;
};

struct OamMatrix
{
    s16 a;
    s16 b;
    s16 c;
    s16 d;
};

extern const struct OamData gDummyOamData;
extern const union AnimCmd *const gDummySpriteAnimTable[];
extern const union AffineAnimCmd *const gDummySpriteAffineAnimTable[];
extern s16 gSpriteCoordOffsetX;
extern s16 gSpriteCoordOffsetY;
extern const struct SpriteTemplate gDummySpriteTemplate;
extern struct Sprite gSprites[];
extern struct OamMatrix gOamMatrices[];
extern bool8 gAffineAnimsDisabled;
extern u16 gReservedSpriteTileCount;

void ResetSpriteData(void);
void AnimateSprites(void);
void BuildOamBuffer(void);
u8 CreateSprite(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
u8 CreateSpriteAtEnd(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
u8 CreateInvisibleSprite(void (*callback)(struct Sprite *));
u8 CreateSpriteAndAnimate(const struct SpriteTemplate *template, s16 x, s16 y, u8 subpriority);
void DestroySprite(struct Sprite *sprite);
void ResetOamRange(u8 a, u8 b);
void LoadOam(void);
void SetOamMatrix(u8 matrixNum, u16 a, u16 b, u16 c, u16 d);
void CalcCenterToCornerVec(struct Sprite *sprite, u8 shape, u8 size, u8 affineMode);
void SpriteCallbackDummy(struct Sprite *sprite);
void ProcessSpriteCopyRequests(void);
void RequestSpriteCopy(const u8 *src, u8 *dest, u16 size);
void FreeSpriteTiles(struct Sprite *sprite);
void FreeSpritePalette(struct Sprite *sprite);
void FreeSpriteOamMatrix(struct Sprite *sprite);
void DestroySpriteAndFreeResources(struct Sprite *sprite);
void AnimateSprite(struct Sprite *sprite);
void StartSpriteAnim(struct Sprite *sprite, u8 animNum);
void StartSpriteAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void SeekSpriteAnim(struct Sprite *sprite, u8 animCmdIndex);
void StartSpriteAffineAnim(struct Sprite *sprite, u8 animNum);
void StartSpriteAffineAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void ChangeSpriteAffineAnim(struct Sprite *sprite, u8 animNum);
void ChangeSpriteAffineAnimIfDifferent(struct Sprite *sprite, u8 animNum);
void SetSpriteSheetFrameTileNum(struct Sprite *sprite);
u8 AllocOamMatrix(void);
void FreeOamMatrix(u8 matrixNum);
void InitSpriteAffineAnim(struct Sprite *sprite);
void SetOamMatrixRotationScaling(u8 matrixNum, s16 xScale, s16 yScale, u16 rotation);
u16 LoadSpriteSheet(const struct SpriteSheet *sheet);
void LoadSpriteSheets(const struct SpriteSheet *sheets);
u16 AllocTilesForSpriteSheet(struct SpriteSheet *sheet);
void AllocTilesForSpriteSheets(struct SpriteSheet *sheets);
void FreeSpriteTilesByTag(u16 tag);
void FreeSpriteTileRanges(void);
u16 GetSpriteTileStartByTag(u16 tag);
u16 GetSpriteTileTagByTileStart(u16 start);
void RequestSpriteSheetCopy(const struct SpriteSheet *sheet);
u16 LoadSpriteSheetDeferred(const struct SpriteSheet *sheet);
void FreeAllSpritePalettes(void);
u8 LoadSpritePalette(const struct SpritePalette *palette);
void LoadSpritePalettes(const struct SpritePalette *palettes);
u8 AllocSpritePalette(u16 tag);
u8 IndexOfSpritePaletteTag(u16 tag);
u16 GetSpritePaletteTagByPaletteNum(u8 paletteNum);
void FreeSpritePaletteByTag(u16 tag);
void SetSubspriteTables(struct Sprite *sprite, const struct SubspriteTable *subspriteTables);
bool8 AddSpriteToOamBuffer(struct Sprite *object, u8 *oamIndex);
bool8 AddSubspritesToOamBuffer(struct Sprite *sprite, struct OamData *destOam, u8 *oamIndex);
void CopyToSprites(u8 *src);
void CopyFromSprites(u8 *dest);
u8 SpriteTileAllocBitmapOp(u16 bit, u8 op);
void ClearSpriteCopyRequests(void);
void ResetAffineAnimData(void);
void FreeSpriteTilesIfNotUsingSheet(struct Sprite *sprite);
s16 AllocSpriteTiles(u16 tileCount);
void SetSpriteMatrixAnchor(struct Sprite* sprite, s16 xmod, s16 ymod);
# 6 "include/pokemon.h" 2
# 1 "include/constants/pokemon.h" 1
# 7 "include/pokemon.h" 2
# 1 "include/pokemon_storage_system.h" 1
# 20 "include/pokemon_storage_system.h"
enum
{
    WALLPAPER_FOREST,
    WALLPAPER_CITY,
    WALLPAPER_DESERT,
    WALLPAPER_SAVANNA,
    WALLPAPER_CRAG,
    WALLPAPER_VOLCANO,
    WALLPAPER_SNOW,
    WALLPAPER_CAVE,
    WALLPAPER_BEACH,
    WALLPAPER_SEAFLOOR,
    WALLPAPER_RIVER,
    WALLPAPER_SKY,
    WALLPAPER_STARS,
    WALLPAPER_POKECENTER,
    WALLPAPER_TILES,
    WALLPAPER_SIMPLE,
    WALLPAPER_COUNT
};


u8 *GetBoxNamePtr(u8 boxNumber);
struct BoxPokemon *GetBoxedMonPtr(u8 boxId, u8 monPosition);
void SetBoxMonNickAt(u8 boxId, u8 monPosition, const u8 *newNick);
s16 CompactPartySlots(void);
u32 GetBoxMonDataAt(u8 boxId, u8 monPosition, s32 request);
void ZeroBoxMonAt(u8 boxId, u8 monPosition);
void CB2_ReturnToPokeStorage(void);
void ResetPokemonStorageSystem(void);
u8 StorageGetCurrentBox(void);
void DrawTextWindowAndBufferTiles(const u8 *string, void *dst, u8 zero1, u8 zero2, u8 *buffer, s32 bytesToBuffer);
# 8 "include/pokemon.h" 2

struct PokemonSubstruct0
{
    u16 species;
    u16 heldItem;
    u32 experience;
    u8 ppBonuses;
    u8 friendship;
};

struct PokemonSubstruct1
{
    u16 moves[4];
    u8 pp[4];
};

struct PokemonSubstruct2
{
    u8 hpEV;
    u8 attackEV;
    u8 defenseEV;
    u8 speedEV;
    u8 spAttackEV;
    u8 spDefenseEV;
    u8 cool;
    u8 beauty;
    u8 cute;
    u8 smart;
    u8 tough;
    u8 sheen;
};

struct PokemonSubstruct3
{
            u8 pokerus;
            u8 metLocation;

            u16 metLevel:7;
            u16 metGame:4;
            u16 pokeball:4;
            u16 otGender:1;

            u32 hpIV:5;
            u32 attackIV:5;
            u32 defenseIV:5;
            u32 speedIV:5;
            u32 spAttackIV:5;
            u32 spDefenseIV:5;
            u32 isEgg:1;
            u32 abilityNum:1;

            u32 coolRibbon:3;
            u32 beautyRibbon:3;
            u32 cuteRibbon:3;
            u32 smartRibbon:3;
            u32 toughRibbon:3;
            u32 championRibbon:1;
            u32 winningRibbon:1;
            u32 victoryRibbon:1;
            u32 artistRibbon:1;
            u32 effortRibbon:1;
            u32 marineRibbon:1;
            u32 landRibbon:1;
            u32 skyRibbon:1;
            u32 countryRibbon:1;
            u32 nationalRibbon:1;
            u32 earthRibbon:1;
            u32 worldRibbon:1;
            u32 unusedRibbons:4;
            u32 eventLegal:1;
};

union PokemonSubstruct
{
    struct PokemonSubstruct0 type0;
    struct PokemonSubstruct1 type1;
    struct PokemonSubstruct2 type2;
    struct PokemonSubstruct3 type3;
    u16 raw[6];
};

struct BoxPokemon
{
    u32 personality;
    u32 otId;
    u8 nickname[10];
    u8 language;
    u8 isBadEgg:1;
    u8 hasSpecies:1;
    u8 isEgg:1;
    u8 unused:5;
    u8 otName[7];
    u8 markings;
    u16 checksum;
    u16 unknown;

    union
    {
        u32 raw[12];
        union PokemonSubstruct substructs[4];
    } secure;
};

struct Pokemon
{
    struct BoxPokemon box;
    u32 status;
    u8 level;
    u8 mail;
    u16 hp;
    u16 maxHP;
    u16 attack;
    u16 defense;
    u16 speed;
    u16 spAttack;
    u16 spDefense;
};

struct PokemonStorage
{
               u8 currentBox;
               struct BoxPokemon boxes[14][(5 * 6)];
               u8 boxNames[14][8 + 1];
               u8 boxWallpapers[14];
};

struct BattleTowerPokemon
{
             u16 species;
             u16 heldItem;
             u16 moves[4];
             u8 level;
             u8 ppBonuses;
             u8 hpEV;
             u8 attackEV;
             u8 defenseEV;
             u8 speedEV;
             u8 spAttackEV;
             u8 spDefenseEV;
             u32 otId;
             u32 hpIV:5;
             u32 attackIV:5;
             u32 defenseIV:5;
             u32 speedIV:5;
             u32 spAttackIV:5;
             u32 spDefenseIV:5;
             u32 gap:1;
             u32 abilityNum:1;
             u32 personality;
             u8 nickname[11];
             u8 friendship;
};



struct BattlePokemon
{
             u16 species;
             u16 attack;
             u16 defense;
             u16 speed;
             u16 spAttack;
             u16 spDefense;
             u16 moves[4];
             u32 hpIV:5;
             u32 attackIV:5;
             u32 defenseIV:5;
             u32 speedIV:5;
             u32 spAttackIV:5;
             u32 spDefenseIV:5;
             u32 isEgg:1;
             u32 abilityNum:1;
             s8 statStages[8];
             u8 ability;
             u8 type1;
             u8 type2;
             u8 unknown;
             u8 pp[4];
             u16 hp;
             u8 level;
             u8 friendship;
             u16 maxHP;
             u16 item;
             u8 nickname[10 + 1];
             u8 ppBonuses;
             u8 otName[8];
             u32 experience;
             u32 personality;
             u32 status1;
             u32 status2;
             u32 otId;
};

struct BaseStats
{
            u8 baseHP;
            u8 baseAttack;
            u8 baseDefense;
            u8 baseSpeed;
            u8 baseSpAttack;
            u8 baseSpDefense;
            u8 type1;
            u8 type2;
            u8 catchRate;
            u8 expYield;
            u16 evYield_HP:2;
            u16 evYield_Attack:2;
            u16 evYield_Defense:2;
            u16 evYield_Speed:2;
            u16 evYield_SpAttack:2;
            u16 evYield_SpDefense:2;
            u16 item1;
            u16 item2;
            u8 genderRatio;
            u8 eggCycles;
            u8 friendship;
            u8 growthRate;
            u8 eggGroup1;
            u8 eggGroup2;
            u8 abilities[2];
            u8 safariZoneFleeRate;
            u8 bodyColor : 7;
            u8 noFlip : 1;
};

struct BattleMove
{
    u8 effect;
    u8 power;
    u8 type;
    u8 accuracy;
    u8 pp;
    u8 secondaryEffectChance;
    u8 target;
    s8 priority;
    u8 flags;
};

extern const struct BattleMove gBattleMoves[];
# 256 "include/pokemon.h"
struct SpindaSpot
{
    u8 x, y;
    u16 image[16];
};

struct __attribute__((packed)) LevelUpMove
{
    u16 move:9;
    u16 level:7;
};

enum
{
    GROWTH_MEDIUM_FAST,
    GROWTH_ERRATIC,
    GROWTH_FLUCTUATING,
    GROWTH_MEDIUM_SLOW,
    GROWTH_FAST,
    GROWTH_SLOW
};

enum
{
    BODY_COLOR_RED,
    BODY_COLOR_BLUE,
    BODY_COLOR_YELLOW,
    BODY_COLOR_GREEN,
    BODY_COLOR_BLACK,
    BODY_COLOR_BROWN,
    BODY_COLOR_PURPLE,
    BODY_COLOR_GRAY,
    BODY_COLOR_WHITE,
    BODY_COLOR_PINK
};
# 308 "include/pokemon.h"
struct Evolution
{
    u16 method;
    u16 param;
    u16 targetSpecies;
};
# 326 "include/pokemon.h"
extern u8 gPlayerPartyCount;
extern struct Pokemon gPlayerParty[6];
extern u8 gEnemyPartyCount;
extern struct Pokemon gEnemyParty[6];
extern const struct BaseStats gBaseStats[];
extern const u8 *const gItemEffectTable[];
extern const u8 gStatStageRatios[][2];
extern struct SpriteTemplate gMultiuseSpriteTemplate;
extern struct PokemonStorage* gPokemonStoragePtr;
extern const u32 gExperienceTables[][100 + 1];
extern const u16 *const gLevelUpLearnsets[];
extern const u8 gFacilityClassToPicIndex[];
extern const u8 gFacilityClassToTrainerClass[];
extern const struct SpriteTemplate gSpriteTemplates_Battlers[];
extern const u8 gPPUpGetMask[];

void ZeroBoxMonData(struct BoxPokemon *boxMon);
void ZeroMonData(struct Pokemon *mon);
void ZeroPlayerPartyMons(void);
void ZeroEnemyPartyMons(void);
void CreateMon(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId);
void CreateBoxMon(struct BoxPokemon *boxMon, u16 species, u8 level, u8 fixedIV, u8 hasFixedPersonality, u32 fixedPersonality, u8 otIdType, u32 fixedOtId);
void CreateMonWithNature(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 nature);
void CreateMonWithGenderNatureLetter(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 gender, u8 nature, u8 unownLetter);
void CreateMaleMon(struct Pokemon *mon, u16 species, u8 level);
void CreateMonWithIVsPersonality(struct Pokemon *mon, u16 species, u8 level, u32 ivs, u32 personality);
void CreateMonWithEVSpread(struct Pokemon *mon, u16 species, u8 level, u8 fixedIV, u8 evSpread);
void CreateBattleTowerMon(struct Pokemon *mon, struct BattleTowerPokemon *src);
void ConvertPokemonToBattleTowerPokemon(struct Pokemon *mon, struct BattleTowerPokemon *dest);
void CalculateMonStats(struct Pokemon *mon);
void BoxMonToMon(struct BoxPokemon *src, struct Pokemon *dest);
u8 GetLevelFromBoxMonExp(struct BoxPokemon *boxMon);
u16 GiveMoveToMon(struct Pokemon *mon, u16 move);
u16 GiveMoveToBattleMon(struct BattlePokemon *mon, u16 move);
void SetMonMoveSlot(struct Pokemon *mon, u16 move, u8 slot);
void SetBattleMonMoveSlot(struct BattlePokemon *mon, u16 move, u8 slot);
u16 MonTryLearningNewMove(struct Pokemon *mon, bool8 firstMove);
void DeleteFirstMoveAndGiveMoveToMon(struct Pokemon *mon, u16 move);
s32 CalculateBaseDamage(struct BattlePokemon *attacker, struct BattlePokemon *defender, u32 move, u16 sideStatus, u16 powerOverride, u8 typeOverride, u8 battlerIdAtk, u8 battlerIdDef);





u8 CountAliveMonsInBattle(u8 caseId);

u8 GetDefaultMoveTarget(u8 battlerId);
u8 GetMonGender(struct Pokemon *mon);
u8 GetBoxMonGender(struct BoxPokemon *boxMon);
u8 GetGenderFromSpeciesAndPersonality(u16 species, u32 personality);
void SetMultiuseSpriteTemplateToPokemon(u16 speciesTag, u8 battlerPosition);
void SetMultiuseSpriteTemplateToTrainerBack(u16 trainerSpriteId, u8 battlerPosition);
# 388 "include/pokemon.h"
u32 GetMonData();
u32 GetBoxMonData();


void SetMonData(struct Pokemon *mon, s32 field, const void *dataArg);
void SetBoxMonData(struct BoxPokemon *boxMon, s32 field, const void *dataArg);
void CopyMon(void *dest, void *src, size_t size);
u8 GiveMonToPlayer(struct Pokemon *mon);
u8 CalculatePlayerPartyCount(void);
u8 CalculateEnemyPartyCount(void);
u8 GetMonsStateToDoubles(void);
u8 GetAbilityBySpecies(u16 species, bool8 abilityNum);
u8 GetMonAbility(struct Pokemon *mon);
u8 GetSecretBaseTrainerPicIndex(void);
u8 GetSecretBaseTrainerNameIndex(void);
bool8 IsPlayerPartyAndPokemonStorageFull(void);
void GetSpeciesName(u8 *name, u16 species);
u8 CalculatePPWithBonus(u16 move, u8 ppBonuses, u8 moveIndex);
void RemoveMonPPBonus(struct Pokemon *mon, u8 moveIndex);
void RemoveBattleMonPPBonus(struct BattlePokemon *mon, u8 moveIndex);
bool8 ExecuteTableBasedItemEffect(struct Pokemon *mon, u16 item, u8 partyIndex, u8 moveIndex);
bool8 PokemonUseItemEffects(struct Pokemon *mon, u16 item, u8 partyIndex, u8 moveIndex, bool8 usedByAI);
bool8 PokemonItemUseNoEffect(struct Pokemon *mon, u16 item, u8 partyIndex, u8 moveIndex);
u8 GetItemEffectParamOffset(u16 itemId, u8 effectByte, u8 effectBit);
const u8 *Battle_PrintStatBoosterEffectMessage(u16 itemId);
u8 GetNature(struct Pokemon *mon);
u16 GetEvolutionTargetSpecies(struct Pokemon *mon, u8 type, u16 evolutionItem);
u16 NationalPokedexNumToSpecies(u16 nationalNum);
u16 SpeciesToNationalPokedexNum(u16 species);
u16 HoennToNationalOrder(u16 hoennNum);
u16 SpeciesToCryId(u16 species);
void DrawSpindaSpots(u16 species, u32 personality, u8 *dest, bool8 isFrontPic);
void EvolutionRenameMon(struct Pokemon *mon, u16 oldSpecies, u16 newSpecies);
bool8 GetPlayerFlankId(void);
bool16 GetLinkTrainerFlankId(u8 linkPlayerId);
s32 GetBattlerMultiplayerId(u16 a1);
u8 GetTrainerEncounterMusicId(u16 trainer);
void AdjustFriendship(struct Pokemon *mon, u8 event);
void MonGainEVs(struct Pokemon *mon, u16 defeatedSpecies);
u16 GetMonEVCount(struct Pokemon *mon);
void RandomlyGivePartyPokerus(struct Pokemon *party);
u8 CheckPartyPokerus(struct Pokemon *party, u8 party_bm);
u8 CheckPartyHasHadPokerus(struct Pokemon *party, u8 selection);
void PartySpreadPokerus(struct Pokemon *party);
bool8 TryIncrementMonLevel(struct Pokemon *mon);
u32 CanMonLearnTMHM(struct Pokemon *mon, u8 tm);
u8 GetMoveRelearnerMoves(struct Pokemon *mon, u16 *moves);
u8 GetLevelUpMovesBySpecies(u16 species, u16 *moves);
u8 GetNumberOfRelearnableMoves(struct Pokemon *mon);
u16 SpeciesToPokedexNum(u16 species);
void ClearBattleMonForms(void);
void PlayBattleBGM(void);
void PlayMapChosenOrBattleBGM(u16 songId);
const u32 *GetMonFrontSpritePal(struct Pokemon *mon);
const u32 *GetMonSpritePalFromSpeciesAndPersonality(u16 species, u32 otId, u32 personality);
const struct CompressedSpritePalette *GetMonSpritePalStruct(struct Pokemon *mon);
const struct CompressedSpritePalette *GetMonSpritePalStructFromOtIdPersonality(u16 species, u32 otId , u32 personality);
bool32 IsHMMove2(u16 move);
bool8 IsPokeSpriteNotFlipped(u16 species);
s8 GetFlavorRelationByPersonality(u32 personality, u8 flavor);
bool8 IsTradedMon(struct Pokemon *mon);
bool8 IsOtherTrainer(u32 otId, u8 *otName);
void MonRestorePP(struct Pokemon *mon);
void BoxMonRestorePP(struct BoxPokemon *boxMon);
void SetMonPreventsSwitchingString(void);
void SetWildMonHeldItem(void);
bool8 IsMonShiny(struct Pokemon *mon);
u8 *GetTrainerPartnerName(void);
u8 GetPlayerPartyHighestLevel(void);
u16 FacilityClassToPicIndex(u16 facilityClass);
bool8 ShouldIgnoreDeoxysForm(u8 caseId, u8 battlerId);
void SetDeoxysStats(void);
u16 GetUnionRoomTrainerPic(void);
u16 GetUnionRoomTrainerClass(void);
void CreateEventLegalEnemyMon(void);
void HandleSetPokedexFlag(u16 nationalNum, u8 caseId, u32 personality);
bool8 CheckBattleTypeGhost(struct Pokemon *mon, u8 bank);
struct OakSpeechNidoranFStruct *OakSpeechNidoranFSetup(u8 battlePosition, bool8 enable);
void OakSpeechNidoranFFreeResources(void);
void *OakSpeechNidoranFGetBuffer(u8 bufferId);
# 262 "include/global.h" 2

struct BattleTowerRecord
{
             u8 battleTowerLevelType;
             u8 trainerClass;
             u16 winStreak;
             u8 name[7 + 1];
             u8 trainerId[4];
             u16 greeting[6];
             struct BattleTowerPokemon party[3];
             u32 checksum;
};

struct BattleTowerEReaderTrainer
{
                         u8 unk0;
                         u8 trainerClass;
                         u16 winStreak;
                         u8 name[8];
                         u8 trainerId[4];
                         u16 greeting[6];
                         u16 farewellPlayerLost[6];
                         u16 farewellPlayerWon[6];
                         struct BattleTowerPokemon party[3];
                         u32 checksum;
};

struct BattleTowerData
{
                       struct BattleTowerRecord playerRecord;
                       struct BattleTowerRecord records[5];
                       u16 firstMonSpecies;
                       u16 defeatedBySpecies;
                       u8 defeatedByTrainerName[8];
                       u8 firstMonNickname[10];
                       struct BattleTowerEReaderTrainer ereaderTrainer;
                       u8 battleTowerLevelType:1;
                       u8 unk_554:1;
                       u8 battleOutcome;
                       u8 var_4AE[2];
                       u16 curChallengeBattleNum[2];
                       u16 curStreakChallengesNum[2];
                       u16 recordWinStreaks[2];
                       u8 battleTowerTrainerId;
                       u8 selectedPartyMons[0x3];
                       u16 prizeItem;
                       u8 battledTrainerIds[6];
                       u16 totalBattleTowerWins;
                       u16 bestBattleTowerWinStreak;
                       u16 currentWinStreaks[2];
                       u8 lastStreakLevelType;
                       u8 filler_4D1[0x317];
};

struct SaveBlock2
{
              u8 playerName[7 + 1];
              u8 playerGender;
              u8 specialSaveWarpFlags;
              u8 playerTrainerId[4];
              u16 playTimeHours;
              u8 playTimeMinutes;
              u8 playTimeSeconds;
              u8 playTimeVBlanks;
              u8 optionsButtonMode;
              u16 optionsTextSpeed:3;
              u16 optionsWindowFrameType:5;
              u16 optionsSound:1;
              u16 optionsBattleStyle:1;
              u16 optionsBattleSceneOff:1;
              u16 regionMapZoom:1;
              struct Pokedex pokedex;
              u8 filler_90[0x8];
              struct Time localTimeOffset;
              struct Time lastBerryTreeUpdate;
              u32 gcnLinkFlags;
              bool8 unkFlag1;
              bool8 unkFlag2;
              struct BattleTowerData battleTower;
              u16 mapView[0x100];
              struct LinkBattleRecords linkBattleRecords;
              struct BerryCrush berryCrush;
              struct PokemonJumpRecords pokeJump;
              struct BerryPickingResults berryPick;
              u8 filler_B20[0x400];
              u32 encryptionKey;
};

extern struct SaveBlock2 *gSaveBlock2Ptr;

struct SecretBaseParty
{
    u32 personality[6];
    u16 moves[6 * 4];
    u16 species[6];
    u16 heldItems[6];
    u8 levels[6];
    u8 EVs[6];
};


struct SecretBaseRecord
{
               u8 secretBaseId;
               u8 toRegister:4;
               u8 gender:1;
               u8 battledOwnerToday:1;
               u8 registryStatus:2;
               u8 trainerName[7];
               u8 trainerId[4];
               u8 language;
               u16 numSecretBasesReceived;
               u8 numTimesEntered;
               u8 unused;
               u8 decorations[16];
               u8 decorationPos[16];
               struct SecretBaseParty party;
};

struct WarpData
{
    s8 mapGroup;
    s8 mapNum;
    s8 warpId;
    s16 x, y;
};

struct ItemSlot
{
    u16 itemId;
    u16 quantity;
};

struct Pokeblock
{
    u8 color;
    u8 spicy;
    u8 dry;
    u8 sweet;
    u8 bitter;
    u8 sour;
    u8 feel;
};

struct Roamer
{
             u32 ivs;
             u32 personality;
             u16 species;
             u16 hp;
             u8 level;
             u8 status;
             u8 cool;
             u8 beauty;
             u8 cute;
             u8 smart;
             u8 tough;
             bool8 active;
             u8 filler[0x8];
};

struct RamScriptData
{
    u8 magic;
    u8 mapGroup;
    u8 mapNum;
    u8 objectId;
    u8 script[995];
};

struct RamScript
{
    u32 checksum;
    struct RamScriptData data;
};


struct DewfordTrend
{
    u16 trendiness:7;
    u16 maxTrendiness:7;
    u16 gainingTrendiness:1;
    u16 rand;
    u16 words[2];
};

struct MauvilleManCommon
{
    u8 id;
};

struct MauvilleManBard
{
             u8 id;
             u16 songLyrics[6];
             u16 temporaryLyrics[6];
             u8 playerName[7 + 1];
             u8 filler_2DB6[0x3];
             u8 playerTrainerId[4];
             bool8 hasChangedSong;
             u8 language;
};

struct MauvilleManStoryteller
{
    u8 id;
    bool8 alreadyRecorded;
    u8 filler2[2];
    u8 gameStatIDs[4];
    u8 trainerNames[4][7];
    u8 statValues[4][4];
    u8 language[4];
};

struct MauvilleManGiddy
{
             u8 id;
             u8 taleCounter;
             u8 questionNum;
             u16 randomWords[10];
             u8 questionList[8];
             u8 language;
};

struct MauvilleManHipster
{
    u8 id;
    bool8 alreadySpoken;
    u8 language;
};

struct MauvilleOldManTrader
{
    u8 id;
    u8 decorIds[4];
    u8 playerNames[4][11];
    u8 alreadyTraded;
    u8 language[4];
};

typedef union OldMan
{
    struct MauvilleManCommon common;
    struct MauvilleManBard bard;
    struct MauvilleManGiddy giddy;
    struct MauvilleManHipster hipster;
    struct MauvilleOldManTrader trader;
    struct MauvilleManStoryteller storyteller;
    u8 filler[0x40];
} OldMan;

struct Mail
{
             u16 words[9];
             u8 playerName[7 + 1];
             u8 trainerId[4];
             u16 species;
             u16 itemId;
};

struct DayCareMail
{
    struct Mail message;
    u8 OT_name[7 + 1];
    u8 monName[10 + 1];
    u8 gameLanguage:4;
    u8 monLanguage:4;
};

struct DaycareMon
{
    struct BoxPokemon mon;
    struct DayCareMail mail;
    u32 steps;
};

struct DayCare
{
    struct DaycareMon mons[2];
    u16 offspringPersonality;
    u8 stepCounter;
};


struct RecordMixingDayCareMail
{
    struct DayCareMail mail[2];
    u32 numDaycareMons;
    bool16 holdsItem[2];
};

struct QuestLogNPCData
{
    u32 x:8;
    u32 negx:1;
    u32 y:8;
    u32 negy:1;
    u32 elevation:6;
    u32 movementType:8;
};

struct QuestLogObjectEvent
{
             u8 active:1;
             u8 triggerGroundEffectsOnStop:1;
             u8 disableCoveringGroundEffects:1;
             u8 landingJump:1;
             u8 frozen:1;
             u8 facingDirectionLocked:1;
             u8 disableAnim:1;
             u8 enableAnim:1;
             u8 inanimate:1;
             u8 invisible:1;
             u8 offScreen:1;
             u8 trackedByCamera:1;
             u8 isPlayer:1;
             u8 spriteAnimPausedBackup:1;
             u8 spriteAffineAnimPausedBackup:1;
             u8 disableJumpLandingGroundEffect:1;
             u8 fixedPriority:1;
             u8 mapobj_unk_18:4;
             u8 unused_02_5:3;
             u8 mapobj_unk_0B_0:4;
             u8 elevation:4;
             u8 graphicsId;
             u8 animPattern;
             u8 trainerType;
             u8 localId;
             u8 mapNum;
             u8 mapGroup;
             s16 x;
             s16 y;
             u8 trainerRange_berryTreeId;
             u8 previousMetatileBehavior;
             u8 directionSequenceIndex;
             u8 animId;
};

struct QuestLog
{
               u8 startType;
               u8 mapGroup;
               u8 mapNum;
               u8 warpId;
               s16 x;
               s16 y;
               struct QuestLogObjectEvent unk_008[16];



               u8 flags[((((((((0x4FF + 1) + 768 - 1) + 1) + 0xFF) + 1)) / (8)) + ((((((((0x4FF + 1) + 768 - 1) + 1) + 0xFF) + 1)) % (8)) ? 1 : 0))];
               u16 vars[(0x40FF - 0x4000 + 1)];
               struct QuestLogNPCData npcData[64];
               u16 script[128];
               u16 end[0];
};

# 1 "include/fame_checker.h" 1



# 1 "include/main.h" 1



typedef void (*MainCallback)(void);
typedef void (*IntrCallback)(void);
typedef void (*IntrFunc)(void);



extern IntrFunc gIntrTable[];

struct Main
{
              MainCallback callback1;
              MainCallback callback2;

              MainCallback savedCallback;

              IntrCallback vblankCallback;
              IntrCallback hblankCallback;
              IntrCallback vcountCallback;
              IntrCallback serialCallback;

              vu16 intrCheck;

              u32 *vblankCounter1;
              u32 vblankCounter2;

              u16 heldKeysRaw;
              u16 newKeysRaw;
              u16 heldKeys;
              u16 newKeys;
              u16 newAndRepeatedKeys;
              u16 keyRepeatCounter;
              bool16 watchedKeysPressed;
              u16 watchedKeysMask;

              struct OamData oamBuffer[128];

              u8 state;

              u8 oamLoadDisabled:1;
              u8 inBattle:1;
              u8 field_439_x4:1;
};

extern u8 gUnknown_3001764;
extern struct Main gMain;
extern bool8 gSoftResetDisabled;
extern bool8 gLinkVSyncDisabled;

extern const u8 gGameVersion;
extern const u8 gGameLanguage;

void AgbMain(void);
void SetMainCallback2(MainCallback callback);
void InitKeys(void);
void SetVBlankCallback(IntrCallback callback);
void SetHBlankCallback(IntrCallback callback);
void SetVCountCallback(IntrCallback callback);
void SetSerialCallback(IntrCallback callback);
void InitFlashTimer(void);
void DoSoftReset(void);
void ClearPokemonCrySongs(void);
void RestoreSerialTimer3IntrHandlers(void);
void SetVBlankCounter1Ptr(u32 *ptr);
void DisableVBlankCounter1(void);
void StartTimer1(void);
void SeedRngAndSetTrainerId(void);
u16 GetGeneratedTrainerIdLower(void);

extern const char RomHeaderGameCode[4];
extern const char RomHeaderSoftwareVersion;

extern u8 gLinkTransferringData;
extern u16 gKeyRepeatStartDelay;
# 5 "include/fame_checker.h" 2
# 1 "include/constants/fame_checker.h" 1
# 6 "include/fame_checker.h" 2

enum {
    FCWINDOWID_LIST,
    FCWINDOWID_UIHELP,
    FCWINDOWID_MSGBOX,
    FCWINDOWID_ICONDESC
};

extern struct ListMenuTemplate gFameChecker_ListMenuTemplate;
extern u8 gIconDescriptionBoxIsOpen;

void ResetFameChecker(void);
void FullyUnlockFameChecker(void);
void UseFameChecker(MainCallback savedCallback);
void SetFlavorTextFlagFromSpecialVars(void);
void UpdatePickStateFromSpecialVar8005(void);
# 620 "include/global.h" 2

struct FameCheckerSaveData
{
             u16 pickState:2;
    u16 flavorTextFlags:12;
    u16 unk_0_E:2;
};

struct WonderNewsMetadata
{
    u8 unk_0_0:2;
    u8 unk_0_2:3;
    u8 unk_0_5:3;
    u8 berry;
};

struct WonderNews
{
    u16 newsId;
    u8 sendType;
    u8 bgType;
    u8 titleText[40];
    u8 bodyText[10][40];
};

struct WonderCard
{
    u16 flagId;
    u16 iconSpecies;
    u32 idNumber;
    u8 type:2;
    u8 bgType:4;
    u8 sendType:2;
    u8 maxStamps;
    u8 titleText[40];
    u8 subtitleText[40];
    u8 bodyText[4][40];
    u8 footerLine1Text[40];
    u8 footerLine2Text[40];
};

struct WonderCardMetadata
{
    u16 battlesWon;
    u16 battlesLost;
    u16 numTrades;
    u16 iconSpecies;
    u16 stampData[2][7];
};

struct MysteryGiftSave
{
    u32 newsCrc;
    struct WonderNews news;
    u32 cardCrc;
    struct WonderCard card;
    u32 cardMetadataCrc;
    struct WonderCardMetadata cardMetadata;
    u16 questionnaireWords[4];
    struct WonderNewsMetadata newsMetadata;
    u32 trainerIds[2][5];
};

struct TrainerTower
{
    u32 timer;
    u32 bestTime;
    u8 floorsCleared;
    u8 unk9;
    bool8 receivedPrize:1;
    bool8 checkedFinalTime:1;
    bool8 spokeToOwner:1;
    bool8 hasLost:1;
    bool8 unkA_4:1;
    bool8 validated:1;
};

struct TrainerNameRecord
{
    u32 trainerId;
    u8 trainerName[7 + 1];
};



struct ExternalEventData
{
    u8 unknownExternalDataFields1[7];
    u32 unknownExternalDataFields2:8;
    u32 currentPokeCoupons:24;
    u32 gotGoldPokeCouponTitleReward:1;
    u32 gotSilverPokeCouponTitleReward:1;
    u32 gotBronzePokeCouponTitleReward:1;
    u32 receivedAgetoCelebi:1;
    u32 unknownExternalDataFields3:4;
    u32 totalEarnedPokeCoupons:24;
    u8 unknownExternalDataFields4[5];
} __attribute__((packed));



struct ExternalEventFlags
{
    u8 usedBoxRS:1;
    u8 boxRSEggsUnlocked:2;
    u8 padding:5;
    u8 unknownFlag1;
    u8 receivedGCNJirachi;
    u8 unknownFlag3;
    u8 unknownFlag4;
    u8 unknownFlag5;
    u8 unknownFlag6;
    u8 unknownFlag7;
    u8 unknownFlag8;
    u8 unknownFlag9;
    u8 unknownFlag10;
    u8 unknownFlag11;
    u8 unknownFlag12;
    u8 unknownFlag13;
    u8 unknownFlag14;
    u8 unknownFlag15;
    u8 unknownFlag16;
    u8 unknownFlag17;
    u8 unknownFlag18;
    u8 unknownFlag19;
    u8 unknownFlag20;

} __attribute__((packed));

struct SaveBlock1
{
               struct Coords16 pos;
               struct WarpData location;
               struct WarpData continueGameWarp;
               struct WarpData dynamicWarp;
               struct WarpData lastHealLocation;
               struct WarpData escapeWarp;
               u16 savedMusic;
               u8 weather;
               u8 weatherCycleStage;
               u8 flashLevel;
               u16 mapLayoutId;
               u8 playerPartyCount;
               struct Pokemon playerParty[6];
               u32 money;
               u16 coins;
               u16 registeredItem;
               struct ItemSlot pcItems[30];
               struct ItemSlot bagPocket_Items[42];
               struct ItemSlot bagPocket_KeyItems[30];
               struct ItemSlot bagPocket_PokeBalls[13];
               struct ItemSlot bagPocket_TMHM[58];
               struct ItemSlot bagPocket_Berries[43];
               u8 seen1[(((412) / (8)) + (((412) % (8)) ? 1 : 0))];
               u16 berryBlenderRecords[3];
               u8 unused_632[6];
               u16 trainerRematchStepCounter;
               u8 __attribute__((aligned(2))) trainerRematches[100];
               struct ObjectEvent objectEvents[16];
               struct ObjectEventTemplate objectEventTemplates[64];
               u8 flags[((((((((0x4FF + 1) + 768 - 1) + 1) + 0xFF) + 1)) / (8)) + ((((((((0x4FF + 1) + 768 - 1) + 1) + 0xFF) + 1)) % (8)) ? 1 : 0))];
               u16 vars[(0x40FF - 0x4000 + 1)];
               u32 gameStats[64];
               struct QuestLog questLog[4];
               u16 easyChatProfile[6];
               u16 easyChatBattleStart[6];
               u16 easyChatBattleWon[6];
               u16 easyChatBattleLost[6];
               struct Mail mail[(6 + 10)];
               u8 additionalPhrases[(((33) / (8)) + (((33) % (8)) ? 1 : 0))];
               OldMan oldMan;
               struct DewfordTrend dewfordTrends[5];
               struct DayCare daycare;
               u8 giftRibbons[11];
               struct ExternalEventData externalEventData;
               struct ExternalEventFlags externalEventFlags;
               struct Roamer roamer;
               struct EnigmaBerry enigmaBerry;
               struct MysteryGiftSave mysteryGift;
               u8 unused_348C[400];
               struct RamScript ramScript;
               struct RecordMixingGift recordMixingGift;
               u8 seen2[(((412) / (8)) + (((412) % (8)) ? 1 : 0))];
               u8 rivalName[7 + 1];
               struct FameCheckerSaveData fameChecker[16];
               u8 unused_3A94[64];
               u8 registeredTexts[10][21];
               struct TrainerNameRecord trainerNameRecords[20];
               struct DaycareMon route5DayCareMon;
               u8 unused_3D24[16];
               u32 towerChallengeId;
               struct TrainerTower trainerTower[4];
};

struct MapPosition
{
    s16 x;
    s16 y;
    s8 elevation;
};

extern struct SaveBlock1* gSaveBlock1Ptr;
extern u8 gReservedSpritePaletteCount;
# 2 "src/start_menu.c" 2
# 1 "include/gflib.h" 1





# 1 "include/bg.h" 1





struct BGCntrlBitfield
{
    volatile u16 priority:2;
    volatile u16 charBaseBlock:2;
    volatile u16 field_0_2:4;
    volatile u16 field_1_0:5;
    volatile u16 areaOverflowMode:1;
    volatile u16 screenSize:2;
};

enum
{
    BG_CTRL_ATTR_VISIBLE = 1,
    BG_CTRL_ATTR_CHARBASEINDEX = 2,
    BG_CTRL_ATTR_MAPBASEINDEX = 3,
    BG_CTRL_ATTR_SCREENSIZE = 4,
    BG_CTRL_ATTR_PALETTEMODE = 5,
    BG_CTRL_ATTR_PRIORITY = 6,
    BG_CTRL_ATTR_MOSAIC = 7,
    BG_CTRL_ATTR_WRAPAROUND = 8,
};

enum
{
    BG_ATTR_CHARBASEINDEX = 1,
    BG_ATTR_MAPBASEINDEX = 2,
    BG_ATTR_SCREENSIZE = 3,
    BG_ATTR_PALETTEMODE = 4,
    BG_ATTR_MOSAIC = 5,
    BG_ATTR_WRAPAROUND = 6,
    BG_ATTR_PRIORITY = 7,
    BG_ATTR_MAPSIZE = 8,
    BG_ATTR_BGTYPE = 9,
    BG_ATTR_BASETILE = 10
};


enum {
    BG_COORD_SET,
    BG_COORD_ADD,
    BG_COORD_SUB,
};

enum AdjustBgMosaicMode
{
    BG_MOSAIC_SET,
    BG_MOSAIC_SET_H,
    BG_MOSAIC_INC_H,
    BG_MOSAIC_DEC_H,
    BG_MOSAIC_SET_V,
    BG_MOSAIC_INC_V,
    BG_MOSAIC_DEC_V,
};

enum BgTileAllocMode
{
    BG_TILE_FIND_FREE_SPACE,
    BG_TILE_ALLOC,
    BG_TILE_FREE,
};

struct BgTemplate
{
    u16 bg:2;
    u16 charBaseIndex:2;
    u16 mapBaseIndex:5;
    u16 screenSize:2;
    u16 paletteMode:1;
    u16 priority:2;
    u16 baseTile:10;
};

void ResetBgs(void);
u8 GetBgMode(void);
void ResetBgControlStructs(void);
void Unused_ResetBgControlStruct(u8 bg);
void SetBgControlAttributes(u8 bg, u8 charBaseIndex, u8 mapBaseIndex, u8 screenSize, u8 paletteMode, u8 priority, u8 mosaic, u8 wraparound);
u16 GetBgControlAttribute(u8 bg, u8 attributeId);
u8 LoadBgVram(u8 bg, const void *src, u16 size, u16 destOffset, u8 mode);
void SetTextModeAndHideBgs(void);
bool8 IsInvalidBg(u8 bg);
int BgTileAllocOp(int bg, int offset, int count, int mode);
void ResetBgsAndClearDma3BusyFlags(bool32 enableWindowTileAutoAlloc);
void InitBgsFromTemplates(u8 bgMode, const struct BgTemplate *templates, u8 numTemplates);
void InitBgFromTemplate(const struct BgTemplate *template);
void SetBgMode(u8 bgMode);
u16 LoadBgTiles(u8 bg, const void *src, u16 size, u16 destOffset);
u16 LoadBgTilemap(u8 bg, const void *src, u16 size, u16 destOffset);
u16 Unused_LoadBgPalette(u8 bg, const void *src, u16 size, u16 destOffset);
bool8 IsDma3ManagerBusyWithBgCopy(void);
void ShowBg(u8 bg);
void HideBg(u8 bg);
void SetBgAttribute(u8 bg, u8 attributeId, u8 value);
u16 GetBgAttribute(u8 bg, u8 attributeId);
u32 ChangeBgX(u8 bg, u32 value, u8 op);
u32 GetBgX(u8 bg);
u32 ChangeBgY(u8 bg, u32 value, u8 op);
u32 ChangeBgY_ScreenOff(u8 bg, u32 value, u8 op);
u32 GetBgY(u8 bg);
void SetBgAffine(u8 bg, u32 srcCenterX, u32 srcCenterY, s16 dispCenterX, s16 dispCenterY, s16 scaleX, s16 scaleY, u16 rotationAngle);
u8 AdjustBgMosaic(u8 value, u8 mode);
void SetBgTilemapBuffer(u8 bg, void *tilemap);
void UnsetBgTilemapBuffer(u8 bg);
void *GetBgTilemapBuffer(u8 bg);
void CopyToBgTilemapBuffer(u8 bg, const void *src, u16 mode, u16 destOffset);
void CopyBgTilemapBufferToVram(u8 bg);
void CopyToBgTilemapBufferRect(u8 bg, const void *src, u8 destX, u8 destY, u8 width, u8 height);
void CopyToBgTilemapBufferRect_ChangePalette(u8 bg, const void *src, u8 destX, u8 destY, u8 rectWidth, u8 rectHeight, u8 palette);
void CopyRectToBgTilemapBufferRect(u8 bg, const void *src, u8 srcX, u8 srcY, u8 srcWidth, u8 srcHeight, u8 destX, u8 destY, u8 rectWidth, u8 rectHeight, u8 palette1, s16 tileOffset, s16 palette2);
void FillBgTilemapBufferRect_Palette0(u8 bg, u16 tileNum, u8 x, u8 y, u8 width, u8 height);
void FillBgTilemapBufferRect(u8 bg, u16 tileNum, u8 x, u8 y, u8 width, u8 height, u8 palette);
void WriteSequenceToBgTilemapBuffer(u8 bg, u16 firstTileNum, u8 x, u8 y, u8 width, u8 height, u8 paletteSlot, s16 tileNumDelta);
u16 GetBgMetricTextMode(u8 bg, u8 whichMetric);
u32 GetBgMetricAffineMode(u8 bg, u8 whichMetric);
u32 GetTileMapIndexFromCoords(s32 x, s32 y, s32 screenSize, u32 screenWidth, u32 screenHeight);
void CopyTileMapEntry(const u16 *src, u16 *dest, s32 palette1, s32 tileOffset, s32 palette2);
u32 GetBgType(u8 bg);
bool32 IsInvalidBg32(u8 bg);
bool32 IsTileMapOutsideWram(u8 bg);

extern bool32 gWindowTileAutoAllocEnabled;
# 7 "include/gflib.h" 2
# 1 "include/palette.h" 1
# 23 "include/palette.h"
enum
{
    FAST_FADE_IN_FROM_WHITE,
    FAST_FADE_OUT_TO_WHITE,
    FAST_FADE_IN_FROM_BLACK,
    FAST_FADE_OUT_TO_BLACK,
};

struct PaletteFadeControl
{
    u32 multipurpose1;
    u8 delayCounter:6;
    u16 y:5;
    u16 targetY:5;
    u16 blendColor:15;
    u16 active:1;
    u16 multipurpose2:6;
    u16 yDec:1;
    u16 bufferTransferDisabled:1;
    u16 mode:2;
    u16 shouldResetBlendRegisters:1;
    u16 hardwareFadeFinishing:1;
    u16 softwareFadeFinishingCounter:5;
    u16 softwareFadeFinishing:1;
    u16 objPaletteToggle:1;
    u8 deltaY:4;
    u32 unused;
};

extern struct PaletteFadeControl gPaletteFade;
extern u32 gPlttBufferTransferPending;
extern u16 gPlttBufferUnfaded[0x200];
extern u16 gPlttBufferFaded[0x200];

void LoadCompressedPalette(const u32 *src, u16 offset, u16 size);
void LoadPalette(const void *src, u16 offset, u16 size);
void FillPalette(u16 value, u16 offset, u16 size);
void TransferPlttBuffer(void);
u8 UpdatePaletteFade(void);
void ResetPaletteFade(void);
void ReadPlttIntoBuffers(void);
bool8 BeginNormalPaletteFade(u32 selectedPalettes, s8 delay, u8 startY, u8 targetY, u16 blendColor);
void ResetPaletteFadeControl(void);
void InvertPlttBuffer(u32 selectedPalettes);
void TintPlttBuffer(u32 selectedPalettes, s8 r, s8 g, s8 b);
void UnfadePlttBuffer(u32 selectedPalettes);
void BeginFastPaletteFade(u8 submode);
void BeginHardwarePaletteFade(u8 blendCnt, u8 delay, u8 y, u8 targetY, u8 shouldResetBlendRegisters);
void BlendPalettes(u32 selectedPalettes, u8 coeff, u16 color);
void BlendPalettesUnfaded(u32 selectedPalettes, u8 coeff, u16 color);
void TintPalette_GrayScale(u16 *palette, u16 count);
void TintPalette_GrayScale2(u16 *palette, u16 count);
void TintPalette_SepiaTone(u16 *palette, u16 count);
void TintPalette_CustomTone(u16 *palette, u16 count, u16 rTone, u16 gTone, u16 bTone);
void PaletteStruct_ResetById(u16 id);
void CopyPaletteInvertedTint(const u16 *src, u16 *dst, u16 count, u8 tone);
void BlendPalettesGradually(u32 selectedPalettes, s8 delay, u8 coeff, u8 coeffTarget, u16 color, u8 priority, u8 id);
bool32 IsBlendPalettesGraduallyTaskActive(u8 var);
void DestroyBlendPalettesGraduallyTask(void);
# 8 "include/gflib.h" 2
# 1 "include/gpu_regs.h" 1
# 11 "include/gpu_regs.h"
void InitGpuRegManager(void);
void CopyBufferedValuesToGpuRegs(void);
void SetGpuReg(u8 regOffset, u16 value);
void SetGpuReg_ForcedBlank(u8 regOffset, u16 value);
u16 GetGpuReg(u8 regOffset);
void SetGpuRegBits(u8 regOffset, u16 mask);
void ClearGpuRegBits(u8 regOffset, u16 mask);
void EnableInterrupts(u16 mask);
void DisableInterrupts(u16 mask);
# 9 "include/gflib.h" 2
# 1 "include/dma3.h" 1
# 60 "include/dma3.h"
void ClearDma3Requests(void);


void ProcessDma3Requests(void);




s16 RequestDma3Copy(const void *src, void *dest, u16 size, u8 mode);




s16 RequestDma3Fill(s32 value, void *dest, u16 size, u8 mode);





s16 WaitDma3Request(s16 index);
# 10 "include/gflib.h" 2
# 1 "include/malloc.h" 1
# 17 "include/malloc.h"
extern u8 gHeap[];
void *Alloc(u32 size);
void *AllocZeroed(u32 size);
void Free(void *pointer);
void InitHeap(void *pointer, u32 size);
# 11 "include/gflib.h" 2
# 1 "include/sound.h" 1





void InitMapMusic(void);
void MapMusicMain(void);
void ResetMapMusic(void);
u16 GetCurrentMapMusic(void);
void PlayNewMapMusic(u16 songNum);
void StopMapMusic(void);
void FadeOutMapMusic(u8 speed);
void FadeOutAndPlayNewMapMusic(u16 songNum, u8 speed);
void FadeOutAndFadeInNewMapMusic(u16 songNum, u8 fadeOutSpeed, u8 fadeInSpeed);
bool8 IsNotWaitingForBGMStop(void);
void PlayFanfareByFanfareNum(u8 fanfareNum);
bool8 WaitFanfare(bool8 stop);
void StopFanfareByFanfareNum(u8 fanfareNum);
void PlayFanfare(u16 songNum);
bool8 IsFanfareTaskInactive(void);
void FadeInNewBGM(u16 songNum, u8 speed);
void FadeOutBGMTemporarily(u8 speed);
bool8 IsBGMPausedOrStopped(void);
void FadeInBGM(u8 speed);
void FadeOutBGM(u8 speed);
bool8 IsBGMStopped(void);
void PlayCry_Normal(u16 species, s8 pan);
void PlayCry_NormalNoDucking(u16 species, s8 pan, s8 volume, u8 priority);
void PlayCry_ByMode(u16 species, s8 pan, u8 mode);
void PlayCry_ReleaseDouble(u16 species, s8 pan, u8 mode);
void PlayCry_Script(u16 species, u8 mode);
void PlayCryInternal(u16 species, s8 pan, s8 volume, u8 priority, u8 mode);
bool8 IsCryFinished(void);
void StopCryAndClearCrySongs(void);
void StopCry(void);
bool8 IsCryPlayingOrClearCrySongs(void);
bool8 IsCryPlaying(void);
void PlayBGM(u16 songNum);
void PlaySE(u16 songNum);
void PlaySE12WithPanning(u16 songNum, s8 pan);
void PlaySE1WithPanning(u16 songNum, s8 pan);
void PlaySE2WithPanning(u16 songNum, s8 pan);
void SE12PanpotControl(s8 pan);
bool8 IsSEPlaying(void);
bool8 IsBGMPlaying(void);
bool8 IsSpecialSEPlaying(void);
void SetBGMVolume_SuppressHelpSystemReduction(u16 volume);
void BGMVolumeMax_EnableHelpSystemReduction(void);
# 12 "include/gflib.h" 2
# 1 "include/text.h" 1
# 165 "include/text.h"
enum {
    FONT_0,
    FONT_1,
    FONT_2,
    FONT_3,
    FONT_4,
    FONT_5,
    FONT_BRAILLE,
};

enum
{
    FONTATTR_MAX_LETTER_WIDTH,
    FONTATTR_MAX_LETTER_HEIGHT,
    FONTATTR_LETTER_SPACING,
    FONTATTR_LINE_SPACING,
    FONTATTR_UNKNOWN,
    FONTATTR_COLOR_FOREGROUND,
    FONTATTR_COLOR_BACKGROUND,
    FONTATTR_COLOR_SHADOW
};

struct GlyphInfo
{
    u8 pixels[0x80];
    u8 width;
    u8 height;
};

extern struct GlyphInfo gGlyphInfo;

struct TextPrinterSubStruct
{
    u8 glyphId:4;
    bool8 hasPrintBeenSpedUp:1;
    u8 font_type_5:3;
    u8 downArrowDelay:5;
    u8 downArrowYPosIdx:2;
    u8 hasGlyphIdBeenSet:1;
    u8 autoScrollDelay;
};

struct TextPrinterTemplate
{
    const u8 *currentChar;
    u8 windowId;
    u8 fontId;
    u8 x;
    u8 y;
    u8 currentX;
    u8 currentY;
    u8 letterSpacing;
    u8 lineSpacing;
    u8 unk:4;
    u8 fgColor:4;
    u8 bgColor:4;
    u8 shadowColor:4;
};

struct TextPrinter
{
    struct TextPrinterTemplate printerTemplate;
    void (*callback)(struct TextPrinterTemplate *, u16);
    union __attribute__((packed)) {
        struct TextPrinterSubStruct sub;
        u8 fields[7];
    } subUnion;
    u8 active;
    u8 state;
    u8 textSpeed;
    u8 delayCounter;
    u8 scrollDistance;
    u8 minLetterSpacing;
    u8 japanese;
};

struct FontInfo
{
    u16 (*fontFunction)(struct TextPrinter *x);
    u8 maxLetterWidth;
    u8 maxLetterHeight;
    u8 letterSpacing;
    u8 lineSpacing;
    u8 unk:4;
    u8 fgColor:4;
    u8 bgColor:4;
    u8 shadowColor:4;
};

extern const struct FontInfo *gFonts;

struct GlyphWidthFunc
{
    u32 fontId;
    s32 (*func)(u16 glyphId, bool32 isJapanese);
};

struct KeypadIcon
{
    u16 tileOffset;
    u8 width;
    u8 height;
};

typedef struct {
    u8 canABSpeedUpPrint:1;
    u8 useAlternateDownArrow:1;
    u8 autoScroll:1;
    u8 forceMidTextSpeed:1;
} TextFlags;

extern TextFlags gTextFlags;

extern u8 gStringVar1[];
extern u8 gStringVar2[];
extern u8 gStringVar3[];
extern u8 gStringVar4[];

extern const u8 gKeypadIconTiles[];

void SetFontsPointer(const struct FontInfo *fonts);
void DeactivateAllTextPrinters(void);
u16 AddTextPrinterParameterized(u8 windowId, u8 fontId, const u8 *str, u8 x, u8 y, u8 speed, void (*callback)(struct TextPrinterTemplate *, u16));
bool16 AddTextPrinter(struct TextPrinterTemplate *textSubPrinter, u8 speed, void (*callback)(struct TextPrinterTemplate *, u16));
void RunTextPrinters(void);
bool16 IsTextPrinterActive(u8 id);
u32 RenderFont(struct TextPrinter *textPrinter);
void GenerateFontHalfRowLookupTable(u8 fgColor, u8 bgColor, u8 shadowColor);
void SaveTextColors(u8 *fgColor, u8 *bgColor, u8 *shadowColor);
void RestoreTextColors(u8 *fgColor, u8 *bgColor, u8 *shadowColor);
void DecompressGlyphTile(const u16 *src, u16 *dest);
u8 GetLastTextColor(u8 colorType);
void CopyGlyphToWindow(struct TextPrinter *x);
void ClearTextSpan(struct TextPrinter *textPrinter, u32 width);

u16 Font0Func(struct TextPrinter *textPrinter);
u16 Font1Func(struct TextPrinter *textPrinter);
u16 Font2Func(struct TextPrinter *textPrinter);
u16 Font3Func(struct TextPrinter *textPrinter);
u16 Font4Func(struct TextPrinter *textPrinter);
u16 Font5Func(struct TextPrinter *textPrinter);
u16 Font7Func(struct TextPrinter *textPrinter);
u16 Font8Func(struct TextPrinter *textPrinter);
u16 Font6Func(struct TextPrinter *textPrinter);

void TextPrinterInitDownArrowCounters(struct TextPrinter *textPrinter);
void TextPrinterDrawDownArrow(struct TextPrinter *textPrinter);
void TextPrinterClearDownArrow(struct TextPrinter *textPrinter);
bool8 TextPrinterWaitAutoMode(struct TextPrinter *textPrinter);
bool16 TextPrinterWaitWithDownArrow(struct TextPrinter *textPrinter);
bool16 TextPrinterWait(struct TextPrinter *textPrinter);
void DrawDownArrow(u8 windowId, u16 x, u16 y, u8 bgColor, bool8 drawArrow, u8 *counter, u8 *yCoordIndex);
u16 RenderText(struct TextPrinter *textPrinter);
s32 (*GetFontWidthFunc(u8 glyphId))(u16, bool32);
s32 GetStringWidth(u8 fontId, const u8 *str, s16 letterSpacing);
u8 RenderTextFont9(u8 *pixels, u8 fontId, u8 *str, int a3, int a4, int a5, int a6, int a7);
u8 DrawKeypadIcon(u8 windowId, u8 keypadIconId, u16 x, u16 y);
u8 GetKeypadIconTileOffset(u8 keypadIconId);
u8 GetKeypadIconWidth(u8 keypadIconId);
u8 GetKeypadIconHeight(u8 keypadIconId);
u8 GetFontAttribute(u8 fontId, u8 attributeId);
u8 GetMenuCursorDimensionByFont(u8 fontId, u8 whichDimension);
void DecompressGlyphFont0(u16 glyphId, bool32 isJapanese);
s32 GetGlyphWidthFont0(u16 glyphId, bool32 isJapanese);
void DecompressGlyphFont7(u16 glyphId, bool32 isJapanese);
s32 GetGlyphWidthFont7(u16 glyphId, bool32 isJapanese);
void DecompressGlyphFont8(u16 glyphId, bool32 isJapanese);
s32 GetGlyphWidthFont8(u16 glyphId, bool32 isJapanese);
void DecompressGlyphFont2(u16 glyphId, bool32 isJapanese);
s32 GetGlyphWidthFont2(u16 glyphId, bool32 isJapanese);
void DecompressGlyphFont1(u16 glyphId, bool32 isJapanese);
s32 GetGlyphWidthFont1(u16 glyphId, bool32 isJapanese);
void DecompressGlyphFont9(u16 glyphId);
s32 GetGlyphWidthFont3(u16 glyphId, bool32 isJapanese);
s32 GetGlyphWidthFont4(u16 glyphId, bool32 isJapanese);
void DecompressGlyphFont5(u16 glyphId, bool32 isJapanese);
s32 GetGlyphWidthFont5(u16 glyphId, bool32 isJapanese);
void sub_80062B0(struct Sprite *sprite);
u8 CreateTextCursorSpriteForOakSpeech(u8 sheetId, u16 x, u16 y, u8 priority, u8 subpriority);
void DestroyTextCursorSprite(u8 spriteId);
s32 GetGlyphWidthFont6(u16 font_type, bool32 isJapanese);
# 13 "include/gflib.h" 2

# 1 "include/window.h" 1







enum
{
    WINDOW_BG,
    WINDOW_TILEMAP_LEFT,
    WINDOW_TILEMAP_TOP,
    WINDOW_WIDTH,
    WINDOW_HEIGHT,
    WINDOW_PALETTE_NUM,
    WINDOW_BASE_BLOCK,
    WINDOW_TILE_DATA
};


enum {
    COPYWIN_NONE,
    COPYWIN_MAP,
    COPYWIN_GFX,
    COPYWIN_FULL,
};

struct WindowTemplate
{
    u8 bg;
    u8 tilemapLeft;
    u8 tilemapTop;
    u8 width;
    u8 height;
    u8 paletteNum;
    u16 baseBlock;
};
# 54 "include/window.h"
struct Window
{
    struct WindowTemplate window;
    u8 *tileData;
};

typedef void (*WindowFunc)(u8 bg, u8 tilemapLeft, u8 tilemapTop, u8 width, u8 height, u8 paletteNum);

bool16 InitWindows(const struct WindowTemplate *templates);
u16 AddWindow(const struct WindowTemplate *template);
int AddWindowWithoutTileMap(const struct WindowTemplate *template);
void RemoveWindow(u8 windowId);
void FreeAllWindowBuffers(void);

void CopyWindowToVram(u8 windowId, u8 mode);
void CopyWindowToVram8Bit(u8 windowId, u8 mode);

void PutWindowTilemap(u8 windowId);
void PutWindowRectTilemapOverridePalette(u8 windowId, u8 x, u8 y, u8 width, u8 height, u8 palette);
void ClearWindowTilemap(u8 windowId);
void PutWindowRectTilemap(u8 windowId, u8 x, u8 y, u8 width, u8 height);
void BlitBitmapToWindow(u8 windowId, const u8 *pixels, u16 x, u16 y, u16 width, u16 height);
void BlitBitmapRectToWindow(u8 windowId, const u8 *pixels, u16 srcX, u16 srcY, u16 srcWidth, int srcHeight, u16 destX, u16 destY, u16 rectWidth, u16 rectHeight);
void FillWindowPixelRect(u8 windowId, u8 fillValue, u16 x, u16 y, u16 width, u16 height);
void CopyToWindowPixelBuffer(u8 windowId, const void *src, u16 size, u16 tileOffset);
void FillWindowPixelBuffer(u8 windowId, u8 fillValue);
void ScrollWindow(u8 windowId, u8 direction, u8 distance, u8 fillValue);
void CallWindowFunction(u8 windowId, WindowFunc func);
bool8 SetWindowAttribute(u8 windowId, u8 attributeId, u32 value);
u32 GetWindowAttribute(u8 windowId, u8 attributeId);
u16 AddWindow8Bit(const struct WindowTemplate *template);
void FillWindowPixelBuffer8Bit(u8 windowId, u8 fillValue);
void FillWindowPixelRect8Bit(u8 windowId, u8 fillValue, u16 x, u16 y, u16 width, u16 height);
void BlitBitmapRectToWindow4BitTo8Bit(u8 windowId, const u8 *pixels, u16 srcX, u16 srcY, u16 srcWidth, int srcHeight, u16 destX, u16 destY, u16 rectWidth, u16 rectHeight, u8 paletteNum);

extern void *gWindowBgTilemapBuffers[];
extern struct Window gWindows[];
# 15 "include/gflib.h" 2
# 1 "include/blit.h" 1



struct Bitmap
{
    u8 *pixels;
    u32 width:16;
    u32 height:16;
};

void BlitBitmapRect4BitWithoutColorKey(const struct Bitmap *src, struct Bitmap *dst, u16 srcX, u16 srcY, u16 dstX, u16 dstY, u16 width, u16 height);
void BlitBitmapRect4Bit(const struct Bitmap *src, struct Bitmap *dst, u16 srcX, u16 srcY, u16 dstX, u16 dstY, u16 width, u16 height, u8 colorKey);
void FillBitmapRect4Bit(struct Bitmap *surface, u16 x, u16 y, u16 width, u16 height, u8 fillValue);
void BlitBitmapRect4BitTo8Bit(const struct Bitmap *src, struct Bitmap *dst, u16 srcX, u16 srcY, u16 dstX, u16 dstY, u16 width, u16 height, u8 colorKey, u8 paletteOffset);
void FillBitmapRect8Bit(struct Bitmap *surface, u16 x, u16 y, u16 width, u16 height, u8 fillValue);
# 16 "include/gflib.h" 2
# 1 "include/string_util.h" 1





enum StringConvertMode
{
    STR_CONV_MODE_LEFT_ALIGN,
    STR_CONV_MODE_RIGHT_ALIGN,
    STR_CONV_MODE_LEADING_ZEROS
};

u8 *StringCopy_Nickname(u8 *dest, const u8 *src);
u8 *StringGet_Nickname(u8 *str);
u8 *StringCopy_PlayerName(u8 *dest, const u8 *src);
u8 *StringCopy(u8 *dest, const u8 *src);
u8 *StringAppend(u8 *dest, const u8 *src);
u8 *StringCopyN(u8 *dest, const u8 *src, u8 n);
u8 *StringAppendN(u8 *dest, const u8 *src, u8 n);
u16 StringLength(const u8 *str);
s32 StringCompare(const u8 *str1, const u8 *str2);
s32 StringCompareN(const u8 *str1, const u8 *str2, u32 n);
bool8 IsStringLengthAtLeast(const u8 *str, s32 n);
u8 *ConvertIntToDecimalStringN(u8 *dest, s32 value, enum StringConvertMode mode, u8 n);
u8 *ConvertUIntToDecimalStringN(u8 *dest, u32 value, enum StringConvertMode mode, u8 n);
u8 *ConvertIntToHexStringN(u8 *dest, s32 value, enum StringConvertMode mode, u8 n);
u8 *StringExpandPlaceholders(u8 *dest, const u8 *src);
u8 *StringBraille(u8 *dest, const u8 *src);
u8 *GetExpandedPlaceholder(u32 id);
u8 *StringFill(u8 *dest, u8 c, u16 n);
u8 *StringCopyPadded(u8 *dest, const u8 *src, u8 c, u16 n);
u8 *StringFillWithTerminator(u8 *dest, u16 n);
u8 *StringCopyN_Multibyte(u8 *dest, const u8 *src, u32 n);
u32 StringLength_Multibyte(const u8 *str);
u8 *WriteColorChangeControlCode(u8 *dest, u32 colorType, u8 color);
bool32 IsStringJapanese(u8 *str);
u8 GetExtCtrlCodeLength(u8 code);
s32 StringCompareWithoutExtCtrlCodes(const u8 *str1, const u8 *str2);
void ConvertInternationalString(u8 *s, u8 language);
void StripExtCtrlCodes(u8 *str);
# 17 "include/gflib.h" 2
# 3 "src/start_menu.c" 2
# 1 "include/scanline_effect.h" 1
# 17 "include/scanline_effect.h"
struct ScanlineEffectParams
{
    volatile void *dmaDest;
    u32 dmaControl;
    u8 initState;
    u8 unused9;
};

struct ScanlineEffect
{
    void *dmaSrcBuffers[2];
    volatile void *dmaDest;
    u32 dmaControl;
    void (*setFirstScanlineReg)(void);
    u8 srcBuffer;
    u8 state;
    u8 unused16;
    u8 unused17;
    u8 waveTaskId;
};

extern struct ScanlineEffect gScanlineEffect;

extern u16 gScanlineEffectRegBuffers[2][0x3C0];

void ScanlineEffect_Stop(void);
void ScanlineEffect_Clear(void);
void ScanlineEffect_SetParams(struct ScanlineEffectParams);
void ScanlineEffect_InitHBlankDmaTransfer(void);
u8 ScanlineEffect_InitWave(u8 startLine, u8 endLine, u8 frequency, u8 amplitude, u8 delayInterval, u8 regOffset, bool8 a7);
# 4 "src/start_menu.c" 2
# 1 "include/overworld.h" 1
# 30 "include/overworld.h"
struct LinkPlayerObjectEvent
{
    u8 active;
    u8 linkPlayerId;
    u8 objEventId;
    u8 movementMode;
};

struct CreditsOverworldCmd
{
    s16 unk_0;
    s16 unk_2;
    s16 unk_4;
};






extern const struct Coords32 gDirectionToVectors[];

extern struct LinkPlayerObjectEvent gLinkPlayerObjectEvents[4];
extern MainCallback gFieldCallback;

extern struct WarpData gLastUsedWarp;

extern u8 gExitStairsMovementDisabled;
extern u8 gFieldLinkPlayerCount;
extern u8 gLocalLinkPlayerId;

void IncrementGameStat(u8 index);

void SetObjEventTemplateCoords(u8, s16, s16);
void SetObjEventTemplateMovementType(u8, u8);

void SetWarpDestination(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);

void SetDynamicWarp(s32 unused, s8 mapGroup, s8 mapNum, s8 warpId);
void SetDynamicWarpWithCoords(s32 unused, s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetFixedDiveWarp(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetFixedHoleWarp(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void SetEscapeWarp(s8 mapGroup, s8 mapNum, s8 warpId, s8 x, s8 y);
void Overworld_SetHealLocationWarp(u8);
void SetWarpDestinationToEscapeWarp(void);
void SetWarpDestinationToLastHealLocation(void);
u8 IsMapTypeOutdoors(u8 mapType);
void Overworld_ClearSavedMusic(void);
bool32 Overworld_MusicCanOverrideMapMusic(u16 song);

void SetFlashLevel(s32 a1);
u8 Overworld_GetFlashLevel(void);

void Overworld_SetSavedMusic(u16);
void Overworld_ChangeMusicToDefault(void);
void Overworld_ChangeMusicTo(u16);

bool32 IsUpdateLinkStateCBActive(void);

void ClearLinkPlayerObjectEvents(void);
const struct MapHeader *const Overworld_GetMapHeaderByGroupAndId(u16, u16);
void ObjectEventMoveDestCoords(struct ObjectEvent *, u32, s16 *, s16 *);
void CB2_ReturnToField(void);
void CB2_ReturnToFieldContinueScriptPlayMapMusic(void);
void WarpIntoMap(void);
u8 GetMapTypeByGroupAndId(s8 mapGroup, s8 mapNum);
void SetWarpDestinationToMapWarp(s8 mapGroup, s8 mapNum, s8 warpNum);
void SetWarpDestinationToDynamicWarp(u8 unused);

u32 GetGameStat(u8 statId);
void SetGameStat(u8 statId, u32 value);

void CB2_ContinueSavedGame(void);
void Overworld_SetWarpDestinationFromWarp(struct WarpData *);
void CB2_SetUpOverworldForQLPlayback(void);
void CB2_SetUpOverworldForQLPlaybackWithWarpExit(void);
void CB2_EnterFieldFromQuestLog(void);
void Overworld_PlaySpecialMapMusic(void);

u8 GetCurrentRegionMapSectionId(void);

void SetCurrentMapLayout(u16 mapLayoutId);
void SetWarpDestinationToFixedHoleWarp(s16 x, s16 y);

void ResetInitialPlayerAvatarState(void);
void CleanupOverworldWindowsAndTilemaps(void);
u32 ComputeWhiteOutMoneyLoss(void);

extern u8 gDisableMapMusicChangeOnMapLoad;
extern u8 gGlobalFieldTintMode;

extern bool8 (* gFieldCallback2)(void);

void SetLastHealLocationWarp(u8 healLocaionId);
void LoadMapFromCameraTransition(u8 mapGroup, u8 mapNum);
void CB2_ReturnToFieldFromDiploma(void);
void CB2_OverworldBasic(void);
void CB2_NewGame(void);
bool8 IsMapTypeOutdoors(u8 mapType);
bool8 Overworld_MapTypeAllowsTeleportAndFly(u8 mapType);
void Overworld_ResetStateAfterTeleport(void);

void Overworld_FadeOutMapMusic(void);
void CB2_LoadMap(void);
bool8 BGMusicStopped(void);
bool8 IsMapTypeIndoors(u8 mapType);
bool32 Overworld_IsBikingAllowed(void);
void Overworld_ResetStateAfterDigEscRope(void);
bool32 Overworld_LinkRecvQueueLengthMoreThan2(void);
u8 GetCurrentMapType(void);

u8 GetLastUsedWarpMapType(void);
const struct MapHeader *const GetDestinationWarpMapHeader(void);
void TryFadeOutOldMapMusic(void);
void CB2_ReturnToFieldCableClub(void);
void ResetGameStats(void);

void Overworld_CreditsMainCB(void);
bool32 Overworld_DoScrollSceneForCredits(u8 *, const struct CreditsOverworldCmd *, u8);

bool32 IsSendingKeysOverCable(void);

void CB2_ReturnToFieldWithOpenMenu(void);
void CB2_WhiteOut(void);
void CB2_ReturnToFieldFromMultiplayer(void);
void ApplyNewEncryptionKeyToGameStats(u32 newKey);
void SetContinueGameWarpToDynamicWarp(int);

void SetContinueGameWarpToHealLocation(u8 loc);

void UpdateAmbientCry(s16 *state, u16 *delayCounter);
void SetWarpDestinationToHealLocation(u8 a0);
bool32 Overworld_SendKeysToLinkIsRunning(void);
bool32 Overworld_RecvKeysFromLinkIsRunning(void);
void OverworldWhiteOutGetMoneyLoss(void);
u8 GetCurrentMapBattleScene(void);
void Overworld_ResetStateAfterFly(void);
bool8 MetatileBehavior_IsSurfableInSeafoamIslands(u16 metatileBehavior);
void Overworld_ResetMapMusic(void);
u16 QueueExitLinkRoomKey(void);
u16 SetInCableClubSeat(void);
u32 GetCableClubPartnersReady(void);
u16 SetStartedCableClubActivity(void);
u16 SetLinkWaitingForScript(void);
void SetMainCallback1(MainCallback cb);
void CB1_Overworld(void);
void CB2_ReturnToFieldContinueScript(void);
u8 GetLastUsedWarpMapSectionId(void);
void StoreInitialPlayerAvatarState(void);
void UpdateEscapeWarp(s16 x, s16 y);
bool8 SetDiveWarpEmerge(u16 x, u16 y);
bool8 SetDiveWarpDive(u16 x, u16 y);

extern u16 *gBGTilemapBuffers1;
extern u16 *gBGTilemapBuffers2;
extern u16 *gBGTilemapBuffers3;
extern u16 gHeldKeyCodeToSend;
# 5 "src/start_menu.c" 2
# 1 "include/link.h" 1
# 105 "include/link.h"
enum {
    BLOCK_REQ_SIZE_NONE,
    BLOCK_REQ_SIZE_200,
    BLOCK_REQ_SIZE_100,
    BLOCK_REQ_SIZE_220,
    BLOCK_REQ_SIZE_40,
};






enum
{
    LINK_STATE_START0,
    LINK_STATE_START1,
    LINK_STATE_HANDSHAKE,
    LINK_STATE_INIT_TIMER,
    LINK_STATE_CONN_ESTABLISHED,
};

enum
{
    EXCHANGE_NOT_STARTED,
    EXCHANGE_COMPLETE,
    EXCHANGE_TIMED_OUT,
    EXCHANGE_DIFF_SELECTIONS,
    EXCHANGE_PLAYER_NOT_READY,
    EXCHANGE_PARTNER_NOT_READY,
    EXCHANGE_WRONG_NUM_PLAYERS,
};

enum
{
    QUEUE_FULL_NONE,
    QUEUE_FULL_SEND,
    QUEUE_FULL_RECV,
};

enum
{
    LAG_NONE,
    LAG_MASTER,
    LAG_SLAVE,
};

struct LinkPlayer
{
               u16 version;
               u16 lp_field_2;
               u32 trainerId;
               u8 name[7 + 1];
               u8 progressFlags;
               u8 neverRead;
               u8 progressFlagsCopy;
               u8 gender;
               u32 linkType;
               u16 id;
               u16 language;
};

struct LinkPlayerBlock
{
    u8 magic1[16];
    struct LinkPlayer linkPlayer;
    u8 magic2[16];
};



struct SendQueue
{
    u16 data[8][50];
    u8 pos;
    u8 count;
};

struct RecvQueue
{
    u16 data[4][8][50];
    u8 pos;
    u8 count;
};

struct Link
{
    u8 isMaster;
    u8 state;
    u8 localId;
    u8 playerCount;
    u16 tempRecvBuffer[4];
    bool8 receivedNothing;
    s8 serialIntrCounter;
    bool8 handshakeAsMaster;
    u8 link_field_F;


    bool8 hardwareError;
    bool8 badChecksum;
    u8 queueFull;
    u8 lag;

    u16 checksum;

    u8 sendCmdIndex;
    u8 recvCmdIndex;

    struct SendQueue sendQueue;
    struct RecvQueue recvQueue;
};

struct BlockRequest
{
    void *address;
    u32 size;
};

extern const struct BlockRequest sBlockRequestLookupTable[5];

extern struct Link gLink;
extern u16 gRecvCmds[5][8];
extern u8 gBlockSendBuffer[0x100];
extern u16 gLinkType;
extern u32 gLinkStatus;
extern u16 gBlockRecvBuffer[5][0x100 / 2];
extern u16 gSendCmd[8];
extern u8 gShouldAdvanceLinkState;
extern struct LinkPlayer gLinkPlayers[5];
extern u16 word_3002910[];
extern bool8 gReceivedRemoteLinkPlayers;
extern bool8 gLinkVSyncDisabled;
extern u8 gWirelessCommType;
extern struct LinkPlayer gLocalLinkPlayer;

extern u8 gShouldAdvanceLinkState;
extern u16 gLinkPartnersHeldKeys[6];

void Task_DestroySelf(u8);
void OpenLink(void);
void CloseLink(void);
u16 LinkMain2(const u16 *);
void ClearLinkCallback(void);
void ClearLinkCallback_2(void);
u8 GetLinkPlayerCount(void);
void OpenLinkTimed(void);
u8 GetLinkPlayerDataExchangeStatusTimed(int lower, int higher);
bool8 IsLinkPlayerDataExchangeComplete(void);
u32 GetLinkPlayerTrainerId(u8);
void ResetLinkPlayers(void);
u8 GetMultiplayerId(void);
u8 BitmaskAllOtherLinkPlayers(void);
bool8 SendBlock(u8, const void *, u16);
u8 GetBlockReceivedStatus(void);
void ResetBlockReceivedFlags(void);
void ResetBlockReceivedFlag(u8);
void SetLinkDebugValues(u32, u32);
u8 GetSavedPlayerCount(void);
u8 GetLinkPlayerCount_2(void);
bool8 IsLinkMaster(void);
void CB2_LinkError(void);
u8 GetSioMultiSI(void);
bool8 IsLinkConnectionEstablished(void);
void SetSuppressLinkErrorMessage(bool8);
bool8 HasLinkErrorOccurred(void);
void ResetSerial(void);
u32 LinkMain1(u8 *, u16 *, u16[5][8]);
void RFUVSync(void);
void Timer3Intr(void);
void SerialCB(void);
u8 GetLinkPlayerCount(void);
bool32 InUnionRoom(void);

void SetLinkStandbyCallback(void);
void SetWirelessCommType1(void);
void LinkRfu_DestroyIdleTask(void);
void SetCloseLinkCallback(void);
void OpenLink(void);
bool8 IsLinkMaster(void);
void CheckShouldAdvanceLinkState(void);
void SetCloseLinkCallbackAndType(u16 type);
void CloseLink(void);
bool8 IsLinkTaskFinished(void);
bool32 IsLinkRecvQueueAtOverworldMax(void);
void ResetSerial(void);
void SetWirelessCommType1(void);
void LoadWirelessStatusIndicatorSpriteGfx(void);
void CreateWirelessStatusIndicatorSprite(u8, u8);
void StartSendingKeysToLink(void);
void ClearLinkCallback_2(void);
void Rfu_SetLinkStandbyCallback(void);
void ConvertLinkPlayerName(struct LinkPlayer * linkPlayer);
bool8 IsWirelessAdapterConnected(void);
bool8 SendBlockRequest(u8 blockRequestType);
void LinkVSync(void);
bool8 HandleLinkConnection(void);
void LocalLinkPlayerToBlock(void);
void LinkPlayerFromBlock(u32 who);
void SetLinkErrorFromRfu(u32 status, u8 lastSendQueueCount, u8 lastRecvQueueCount, u8 isConnectionError);
u8 GetLinkPlayerCountAsBitFlags(void);
void ResetLinkPlayerCount(void);
void SaveLinkPlayers(u8 numPlayers);
u8 GetSavedLinkPlayerCountAsBitFlags(void);
void CheckLinkPlayersMatchSaved(void);
void SetLocalLinkPlayerId(u8 playerId);
bool32 IsSendingKeysToLink(void);
u32 GetLinkRecvQueueLength(void);
# 6 "src/start_menu.c" 2
# 1 "include/pokedex.h" 1



enum
{
    DEX_MODE_KANTO,
    DEX_MODE_NATIONAL
};

enum
{
    FLAG_GET_SEEN,
    FLAG_GET_CAUGHT,
    FLAG_SET_SEEN,
    FLAG_SET_CAUGHT
};

struct PokedexEntry
{
             u8 categoryName[12];
             u16 height;
             u16 weight;
             const u8 *description;
             const u8 *unusedDescription;
             u16 unused;
             u16 pokemonScale;
             u16 pokemonOffset;
             u16 trainerScale;
             u16 trainerOffset;
};

void ResetPokedex(void);
void CopyMonCategoryText(u16 species, u8 *dst);
u16 GetPokedexHeightWeight(u16 dexNum, u8 data);
u16 GetNationalPokedexCount(u8);
u16 GetKantoPokedexCount(u8);
bool16 HasAllMons(void);
u8 CreateDexDisplayMonDataTask(u16 dexNum, u32 trainerId, u32 personality);
s8 GetSetPokedexFlag(u16 nationalNum, u8 caseId);
u16 GetNationalPokedexCount(u8);
u16 GetKantoPokedexCount(u8);
bool16 HasAllHoennMons(void);
bool16 HasAllKantoMons(void);
bool16 HasAllMons(void);

u8 DexScreen_RegisterMonToPokedex(u16 species);
# 7 "src/start_menu.c" 2
# 1 "include/item_menu.h" 1




# 1 "include/task.h" 1
# 13 "include/task.h"
typedef void (*TaskFunc)(u8 taskId);

struct Task
{
    TaskFunc func;
    bool8 isActive;
    u8 prev;
    u8 next;
    u8 priority;
    s16 data[16];
};

extern struct Task gTasks[];

void ResetTasks(void);
u8 CreateTask(TaskFunc func, u8 priority);
void DestroyTask(u8 taskId);
void RunTasks(void);
void TaskDummy(u8 taskId);
void SetTaskFuncWithFollowupFunc(u8 taskId, TaskFunc func, TaskFunc followupFunc);
void SwitchTaskToFollowupFunc(u8 taskId);
bool8 FuncIsActiveTask(TaskFunc func);
u8 FindTaskIdByFunc(TaskFunc func);
u8 GetTaskCount(void);
void SetWordTaskArg(u8 taskId, u8 dataElem, unsigned long value);
u32 GetWordTaskArg(u8 taskId, u8 dataElem);
# 6 "include/item_menu.h" 2
# 1 "include/constants/item_menu.h" 1
# 7 "include/item_menu.h" 2





struct BagStruct
{
    MainCallback bagCallback;
    u8 location;
    bool8 bagOpen;
    u16 pocket;
    u16 itemsAbove[3];
    u16 cursorPos[3];
};

extern struct BagStruct gBagMenuState;

extern u16 gSpecialVar_ItemId;


void CB2_SetUpReshowBattleScreenAfterMenu(void);
void ResetBagCursorPositions(void);
void InitPokedudeBag(u8);
void CB2_BagMenuFromStartMenu(void);
void MoveItemSlotInList(struct ItemSlot * itemSlots_, u32 from, u32 to_);
void ItemMenu_StartFadeToExitCallback(u8 taskId);
void Bag_BeginCloseWin0Animation(void);
void ItemMenu_SetExitCallback(void (*)(void));
void DisplayItemMessageInBag(u8 taskId, u8 fontId, const u8 * string, TaskFunc followUpFunc);
void Task_ReturnToBagFromContextMenu(u8 taskId);
void CB2_BagMenuFromBattle(void);
void InitOldManBag(void);
void Pocket_CalculateNItemsAndMaxShowed(u8 pocketId);
void PocketCalculateInitialCursorPosAndItemsAbove(u8 pocketId);
void GoToBagMenu(u8 menuType, u8 pocket, MainCallback callback);
bool8 UseRegisteredKeyItemOnField(void);
# 8 "src/start_menu.c" 2
# 1 "include/party_menu.h" 1





# 1 "include/constants/party_menu.h" 1
# 131 "include/constants/party_menu.h"
enum
{
    CHOOSE_MONS_FOR_CABLE_CLUB_BATTLE,
    CHOOSE_MONS_FOR_BATTLE_TOWER,
    CHOOSE_MONS_FOR_UNION_ROOM_BATTLE,
};
# 7 "include/party_menu.h" 2

struct PartyMenu
{
    MainCallback exitCallback;
    TaskFunc task;
    u8 menuType:4;
    u8 layout:2;
    u8 chooseMonsBattleType:2;
    s8 slotId;
    s8 slotId2;
    u8 action;
    u16 bagItem;
    s16 data[2];
};

extern struct PartyMenu gPartyMenu;
extern bool8 gPartyMenuUseExitCallback;
extern u8 gSelectedMonPartyId;
extern MainCallback gPostMenuFieldCallback;
extern u8 gSelectedOrderFromParty[3];
extern u8 gBattlePartyCurrentOrder[6 / 2];

extern void (*gItemUseCB)(u8, TaskFunc);

void InitPartyMenu(u8 menuType, u8 layout, u8 partyAction, bool8 keepCursorPos, u8 messageId, TaskFunc task, MainCallback callback);
void AnimatePartySlot(u8 slot, u8 animNum);
bool8 IsMultiBattle(void);
u8 GetCursorSelectionMonId(void);
u8 GetPartyMenuType(void);
void Task_HandleChooseMonInput(u8 taskId);
u8 *GetMonNickname(struct Pokemon *mon, u8 *dest);
u8 DisplayPartyMenuMessage(const u8 *str, bool8 keepOpen);
bool8 IsPartyMenuTextPrinterActive(void);
void PartyMenuModifyHP(u8 taskId, u8 slot, s8 hpIncrement, s16 hpDifference, TaskFunc task);
u8 GetAilmentFromStatus(u32 status);
u8 GetMonAilment(struct Pokemon *mon);
void DisplayPartyMenuStdMessage(u32 stringId);
void LoadHeldItemIcons(void);
void DrawHeldItemIconsForTrade(u8 *partyCounts, u8 *partySpriteIds, u8 whichParty);
void SpriteCB_BounceConfirmCancelButton(u8 spriteId, u8 spriteId2, u8 animNum);
void CB2_SelectBagItemToGive(void);
void CB2_GiveHoldItem(void);
bool8 FieldCallback_PrepareFadeInFromMenu(void);
void CB2_ReturnToPartyMenuFromFlyMap(void);
void SetUsedFlyQuestLogEvent(const u8 *healLocCtrlData);
void CB2_ShowPartyMenuForItemUse(void);
void ItemUseCB_Medicine(u8 taskId, TaskFunc func);
void ItemUseCB_MedicineStep(u8 taskId, TaskFunc func);
void ItemUseCB_TryRestorePP(u8 taskId, TaskFunc func);
void ItemUseCB_PPUp(u8 taskId, TaskFunc func);
u16 ItemIdToBattleMoveId(u16 item);
bool8 IsMoveHm(u16 move);
bool8 MonKnowsMove(struct Pokemon *mon, u16 move);
void ItemUseCB_TMHM(u8 taskId, TaskFunc func);
void ItemUseCB_RareCandy(u8 taskId, TaskFunc func);
void ItemUseCB_SacredAsh(u8 taskId, TaskFunc func);
void ItemUseCB_EvolutionStone(u8 taskId, TaskFunc func);
u8 GetItemEffectType(u16 item);
void CB2_PartyMenuFromStartMenu(void);
void CB2_ChooseMonToGiveItem(void);
void ChooseMonToGiveMailFromMailbox(void);
void InitChooseMonsForBattle(u8 chooseMonsBattleType);
void ClearSelectedPartyOrder(void);
void ChooseMonForTradingBoard(u8 menuType, MainCallback callback);
void ChooseMonForMoveTutor(void);
void ChooseMonForWirelessMinigame(void);
void OpenPartyMenuInTutorialBattle(u8 partyAction);
void Pokedude_OpenPartyMenuInBattle(void);
void Pokedude_ChooseMonForInBattleItem(void);
void EnterPartyFromItemMenuInBattle(void);
void BufferBattlePartyCurrentOrder(void);
void BufferBattlePartyCurrentOrderBySide(u8 battlerId, u8 flankId);
void SwitchPartyOrderLinkMulti(u8 battlerId, u8 slot, u8 slot2);
void SwitchPartyMonSlots(u8 slot, u8 slot2);
u8 GetPartyIdFromBattlePartyId(u8 battlePartyId);
void ShowPartyMenuToShowcaseMultiBattleParty(void);
void ChooseMonForDaycare(void);
void ChoosePartyMonByMenuType(u8 menuType);
# 9 "src/start_menu.c" 2
# 1 "include/save.h" 1
# 45 "include/save.h"
enum
{
    SAVE_NORMAL,
    SAVE_LINK,
    SAVE_EREADER,
    SAVE_HALL_OF_FAME,
    SAVE_OVERWRITE_DIFFERENT_FILE,
    SAVE_HALL_OF_FAME_ERASE_BEFORE,
};



struct SaveSectorLocation
{
    u8 *data;
    u16 size;
};

struct SaveSector
{
    u8 data[3968];
    u8 unused[128 - 12];
    u16 id;
    u16 checksum;
    u32 signature;
    u32 counter;
};





enum
{
    ENABLE,
    DISABLE,
    CHECK
};

extern u32 gDamagedSaveSectors;
extern struct SaveSector *gSaveDataBufferPtr;
extern u16 gSaveFileStatus;
extern void (*gGameContinueCallback)(void);
extern u16 gSaveAttemptStatus;

extern struct SaveSector gSaveDataBuffer;

void ClearSaveData(void);
void Save_ResetSaveCounters(void);
u8 HandleSavingData(u8 saveType);
u8 TrySavingData(u8 saveType);
bool8 LinkFullSave_Init(void);
bool8 LinkFullSave_WriteSector(void);
bool8 LinkFullSave_ReplaceLastSector(void);
bool8 LinkFullSave_SetLastSectorSignature(void);
bool8 WriteSaveBlock2(void);
bool8 WriteSaveBlock1Sector(void);
u8 LoadGameSave(u8 saveType);
u32 TryReadSpecialSaveSector(u8 sector, u8 *dst);
u32 TryWriteSpecialSaveSector(u8 sector, u8 *src);
void Task_LinkFullSave(u8 taskId);
# 10 "src/start_menu.c" 2
# 1 "include/link_rfu.h" 1




# 1 "include/librfu.h" 1
# 279 "include/librfu.h"
struct RfuPacket8
{
    u8 data[0x74];
};

struct RfuPacket32
{
    u32 command;
    u32 data[0x1C];
};

union RfuPacket
{
    struct RfuPacket32 rfuPacket32;
    struct RfuPacket8 rfuPacket8;
};

struct STWIStatus
{
    vs32 state;
    u8 reqLength;
    u8 reqNext;
    u8 reqActiveCommand;
    u8 ackLength;
    u8 ackNext;
    u8 ackActiveCommand;
    u8 timerSelect;
    u8 unk_b;



    u32 timerState;

    vu8 timerActive;
    u8 unk_11;
    vu16 error;
    vu8 msMode;
    u8 recoveryCount;
    u8 unk_16;
    u8 unk_17;
    void (*callbackM)();
    void (*callbackS)(u16);
    void (*callbackID)(void);
    union RfuPacket *txPacket;
    union RfuPacket *rxPacket;
    vu8 sending;
};


struct RfuIntrStruct
{
    union RfuPacket rxPacketAlloc;
    union RfuPacket txPacketAlloc;
    u8 block1[0x960];
    struct STWIStatus block2;
};


struct UNISend
{
    u16 state;
    u8 dataReadyFlag;

    u8 bmSlot;
    u16 payloadSize;
    const void *src;
};


struct UNIRecv
{
    u16 state;
    u16 errorCode;
    u16 dataSize;
    u8 newDataFlag;

    u8 dataBlockFlag;
};


struct RfuSlotStatusUNI
{
    struct UNISend send;
    struct UNIRecv recv;
    void *recvBuffer;
    u32 recvBufferSize;
};



struct NIComm
{
    u16 state;
    u16 failCounter;
    const u8 *now_p[4];
    u32 remainSize;
    u16 errorCode;
    u8 bmSlot;


    u8 recvAckFlag[4];
    u8 ack;
    u8 phase;
    u8 n[4];

    const void *src;
    u8 bmSlotOrg;
    u8 dataType;
    u16 payloadSize;
    u32 dataSize;

};

struct RfuSlotStatusNI
{
    struct NIComm send;
    struct NIComm recv;
    void *recvBuffer;
    u32 recvBufferSize;
};


struct RfuTgtData
{
    u16 id;
    u8 slot;
    u8 mbootFlag;

    u16 serialNo;
    u8 gname[13 + 2];
    u8 uname[8 + 1];
};

struct RfuLinkStatus
{
    u8 parentChild;
    u8 connCount;
    u8 connSlotFlag;
    u8 linkLossSlotFlag;
    u8 sendSlotNIFlag;
    u8 recvSlotNIFlag;
    u8 sendSlotUNIFlag;
    u8 getNameFlag;

    u8 findParentCount;
    u8 watchInterval;
    u8 strength[4];
    vu8 LLFReadyFlag;
    u8 remainLLFrameSizeParent;
    u8 remainLLFrameSizeChild[4];
    struct RfuTgtData partner[4];


    struct RfuTgtData my;
};


struct RfuFixed
{
    void (*reqCallback)(u16, u16);
    void (*fastCopyPtr)(const u8 **, u8 **, s32);
    u16 fastCopyBuffer[24];
    u32 fastCopyBuffer2[12];
    u32 LLFBuffer[29];
    struct RfuIntrStruct *STWIBuffer;
};

struct RfuStatic
{
    u8 flags;
    u8 NIEndRecvFlag;
    u8 recvRenewalFlag;
    u8 commExistFlag;
    u8 recvErrorFlag;
    u8 recoveryBmSlot;
    u8 nowWatchInterval;
    u8 nullFrameCount;
    u8 emberCount;
    u8 SCStartFlag;
    u8 linkEmergencyFlag[4];
    u8 lsFixedCount[4];
    u16 cidBak[4];
    u16 linkEmergencyLimit;
    u16 reqResult;
    u16 tryPid;
    u16 watchdogTimer;
    u32 totalPacketSize;
};

extern struct STWIStatus *gSTWIStatus;
extern struct RfuLinkStatus *gRfuLinkStatus;
extern struct RfuStatic *gRfuStatic;
extern struct RfuFixed *gRfuFixed;
extern struct RfuSlotStatusNI *gRfuSlotStatusNI[4];
extern struct RfuSlotStatusUNI *gRfuSlotStatusUNI[4];


s32 AgbRFU_checkID(u8 maxTries);






u16 rfu_initializeAPI(u32 *APIBuffer, u16 buffByteSize, IntrFunc *sioIntrTable_p, bool8 copyInterruptToRam);

void rfu_setTimerInterrupt(u8 timerNo, IntrFunc *timerIntrTable_p);

u16 rfu_syncVBlank(void);

void rfu_setREQCallback(void (*callback)(u16 reqCommandId, u16 reqResult));

u16 rfu_waitREQComplete(void);



u32 rfu_REQBN_softReset_and_checkID(void);

void rfu_REQ_reset(void);

void rfu_REQ_stopMode(void);

void rfu_REQ_configSystem(u16 availSlotFlag, u8 maxMFrame, u8 mcTimer);

void rfu_REQ_configGameData(u8 mbootFlag, u16 serialNo, const u8 *gname, const u8 *uname);



void rfu_REQ_startSearchChild(void);
void rfu_REQ_pollSearchChild(void);
void rfu_REQ_endSearchChild(void);

void rfu_REQ_startSearchParent(void);
void rfu_REQ_pollSearchParent(void);
void rfu_REQ_endSearchParent(void);

void rfu_REQ_startConnectParent(u16 pid);
void rfu_REQ_pollConnectParent(void);
void rfu_REQ_endConnectParent(void);
u16 rfu_getConnectParentStatus(u8 *status,u8 *connectSlotNo);

void rfu_REQ_CHILD_startConnectRecovery(u8 bmRecoverySlot);
void rfu_REQ_CHILD_pollConnectRecovery(void);
void rfu_REQ_CHILD_endConnectRecovery(void);
u16 rfu_CHILD_getConnectRecoveryStatus(u8 *status);



u16 rfu_REQBN_watchLink(u16 reqCommandId, u8 *bmLinkLossSlot, u8 *linkLossReason, u8 *parentBmLinkRecoverySlot);

void rfu_REQ_disconnect(u8 bmDisconnectSlot);



void rfu_REQ_changeMasterSlave(void);

bool8 rfu_getMasterSlave(void);



void rfu_setMSCCallback(void (*callback)(u16 reqCommandId));


void rfu_clearAllSlot(void);
u16 rfu_clearSlot(u8 connTypeFlag, u8 slotStatusIndex);

u16 rfu_setRecvBuffer(u8 connType, u8 slotNo, void *buffer, u32 buffSize);




u16 rfu_UNI_setSendData(u8 bmSendSlot, const void *src, u8 size);

void rfu_UNI_readySendData(u8 slotStatusIndex);

u16 rfu_UNI_changeAndReadySendData(u8 slotStatusIndex, const void *src, u8 size);

u16 rfu_UNI_PARENT_getDRAC_ACK(u8 *ackFlag);

void rfu_UNI_clearRecvNewDataFlag(u8 slotStatusIndex);


u16 rfu_NI_setSendData(u8 bmSendSlot, u8 subFrameSize, const void *src, u32 size);

u16 rfu_NI_CHILD_setSendGameName(u8 slotNo, u8 subFrameSize);

u16 rfu_NI_stopReceivingData(u8 slotStatusIndex);


u16 rfu_changeSendTarget(u8 connType, u8 slotStatusIndex, u8 bmNewTgtSlot);



void rfu_REQ_sendData(bool8 clockChangeFlag);

void rfu_REQ_PARENT_resumeRetransmitAndChange(void);

void rfu_REQ_recvData(void);



u16 rfu_MBOOT_CHILD_inheritanceLinkStatus(void);



u8 *rfu_getSTWIRecvBuffer(void);

void rfu_REQ_RFUStatus(void);
u16 rfu_getRFUStatus(u8 *rfuState);

void rfu_REQ_noise(void);


void IntrSIO32(void);


void STWI_init_all(struct RfuIntrStruct *interruptStruct, IntrFunc *interrupt, bool8 copyInterruptToRam);
void STWI_set_MS_mode(u8 mode);
void STWI_init_Callback_M(void);
void STWI_init_Callback_S(void);
void STWI_set_Callback_M(void *callbackM);
void STWI_set_Callback_S(void (*callbackS)(u16));
void STWI_init_timer(IntrFunc *interrupt, s32 timerSelect);
void AgbRFU_SoftReset(void);
void STWI_set_Callback_ID(void (*func)(void));
u16 STWI_read_status(u8 index);
u16 STWI_poll_CommandEnd(void);
void STWI_send_DataRxREQ(void);
void STWI_send_MS_ChangeREQ(void);
void STWI_send_StopModeREQ(void);
void STWI_send_SystemStatusREQ(void);
void STWI_send_GameConfigREQ(const u8 *serial_uname, const u8 *gname);
void STWI_send_ResetREQ(void);
void STWI_send_LinkStatusREQ(void);
void STWI_send_VersionStatusREQ(void);
void STWI_send_SlotStatusREQ(void);
void STWI_send_ConfigStatusREQ(void);
void STWI_send_ResumeRetransmitAndChangeREQ(void);
void STWI_send_SystemConfigREQ(u16 availSlotFlag, u8 maxMFrame, u8 mcTimer);
void STWI_send_SC_StartREQ(void);
void STWI_send_SC_PollingREQ(void);
void STWI_send_SC_EndREQ(void);
void STWI_send_SP_StartREQ(void);
void STWI_send_SP_PollingREQ(void);
void STWI_send_SP_EndREQ(void);
void STWI_send_CP_StartREQ(u16 unk1);
void STWI_send_CP_PollingREQ(void);
void STWI_send_CP_EndREQ(void);
void STWI_send_DataTxREQ(const void *in, u8 size);
void STWI_send_DataTxAndChangeREQ(const void *in, u8 size);
void STWI_send_DataReadyAndChangeREQ(u8 unk);
void STWI_send_DisconnectedAndChangeREQ(u8 unk0, u8 unk1);
void STWI_send_DisconnectREQ(u8 unk);
void STWI_send_TestModeREQ(u8 unk0, u8 unk1);
void STWI_send_CPR_StartREQ(u16 unk0, u16 unk1, u8 unk2);
void STWI_send_CPR_PollingREQ(void);
void STWI_send_CPR_EndREQ(void);
# 6 "include/link_rfu.h" 2
# 1 "include/link.h" 1
# 7 "include/link_rfu.h" 2
# 1 "include/AgbRfu_LinkManager.h" 1
# 114 "include/AgbRfu_LinkManager.h"
typedef struct InitializeParametersTag {

    u8 maxMFrame;
    u8 MC_TimerCount;
    u16 availSlot_flag;


    u8 mboot_flag;
    u16 serialNo;
    u8 *gameName;
    u8 *userName;


    u8 fastSearchParent_flag;


    u8 linkRecovery_enable;
    u16 linkRecovery_period;


    u16 NI_failCounter_limit;
}INIT_PARAM;



typedef struct VblankTimerTag {
    u8 active;
    u16 count_max;
    u16 count[4];
}VBL_TIMER;

typedef struct linkManagerTag
{
                u8 acceptSlot_flag;
                u8 acceptCount;
                vu8 childClockSlave_flag;
                vu8 parentAck_flag;
                u8 state;
                u8 next_state;
                u8 parent_child;
                u8 pcswitch_flag;
                u8 RFU_powerOn_flag;
                u8 linkRecovery_enable;
                u8 linkRecovery_start_flag;
                u8 fastSearchParent_flag;
                u8 connectSlot_flag_old;
                u8 reserveDisconnectSlot_flag;
                u8 active;
                u8 msc_exe_flag;
                u8 child_slot;
                u8 state_bak[2];
                u16 param[2];
                u16 NI_failCounter_limit;
                u16 connect_period;
                u16 pcswitch_period_bak;
                u16 work;
                u16 *acceptable_serialNo_list;
                VBL_TIMER nameAcceptTimer;
                VBL_TIMER linkRecoveryTimer;
                INIT_PARAM *init_param;
                void (*LMAN_callback)(u8, u8);
                void (*MSC_callback)(u16);
} LINK_MANAGER;

extern struct linkManagerTag lman;

u32 rfu_LMAN_REQBN_softReset_and_checkID(void);
void rfu_LMAN_requestChangeAgbClockMaster(void);
void rfu_LMAN_initializeRFU(INIT_PARAM *init_params);
u8 rfu_LMAN_establishConnection(u8 parent_child, u16 connect_period, u16 name_accept_period, u16 *acceptable_serialNo_list);
void rfu_LMAN_stopManager(bool8 forced_stop_and_RFU_reset_flag);
void rfu_LMAN_setMSCCallback(void (*MSC_callback_p)(u16));
void rfu_LMAN_REQ_sendData(bool8 clockChangeFlag);
void rfu_LMAN_powerDownRFU(void);
u8 rfu_LMAN_CHILD_connectParent(u16 parentId, u16 connect_period);
u8 rfu_LMAN_setLinkRecovery(u8 enable_flag, u16 recovery_period);
void rfu_LMAN_manager_entity(u32 rand);
void rfu_LMAN_syncVBlank(void);
u8 rfu_LMAN_initializeManager(void (*LMAN_callback_p)(u8, u8), void (*MSC_callback_p)(u16));
void rfu_LMAN_forceChangeSP(void);
# 8 "include/link_rfu.h" 2
# 60 "include/link_rfu.h"
struct GFtgtGnameSub
{
    u16 language:4;
    u16 hasNews:1;
    u16 hasCard:1;
    u16 unknown:1;
    u16 isChampion:1;
    u16 hasNationalDex:1;
    u16 gameClear:1;
    u16 version:4;
    u16 unk_01_6:2;
    u8 playerTrainerId[2];
};

struct __attribute__((packed, aligned(2))) GFtgtGname
{
    struct GFtgtGnameSub unk_00;
    u8 child_sprite_gender[4];



    u16 species:10;
    u16 type:6;
    u8 activity:7;
    u8 started:1;
    u8 playerGender:1;
    u8 level:7;
    u8 padding;
};

struct Padded_U8
{
    u8 value;
};

struct RfuBlockSend
{
               u16 next;
               u16 count;
               const u8 *payload;
               u32 receivedFlags;
               u32 failedFlags;
               u8 sending;
               u8 owner;
               u8 receiving;
};

struct RfuRecvQueue
{
                u8 slots[20][(14 * 5)];
                vu8 recv_slot;
                vu8 send_slot;
                vu8 count;
                vu8 full;
};

struct RfuSendQueue
{
                u8 slots[40][14];
                vu8 recv_slot;
                vu8 send_slot;
                vu8 count;
                vu8 full;
};

struct RfuBackupQueue
{
               u8 slots[2][14];
               vu8 recv_slot;
               vu8 send_slot;
               vu8 count;
};

struct RfuUnusedQueue
{
                u8 slots[2][256];
                vu8 recv_slot;
                vu8 send_slot;
                vu8 count;
                vu8 full;
};

typedef struct UnkRfuStruct_2
{
                void (*RfuFunc)(void);
                u16 state;
                u8 filler_06[4];
                u16 linkman_msg;
                u8 parent_child;
                u8 playerCount;
                u8 unk_0e;
                u8 unk_0f;
                u16 linkman_param[2];
                u8 main_UNI_recvBuffer[4][14];
                u8 lastCmdBeforeCommInterrupt[14];
                u8 cmdA100_blockRequestType;
                u8 sendBlockInitDelay;
                bool8 blockReceived[5];
                u8 numBlocksReceived[5];
                u8 idleTaskId;
                u8 searchTaskId;
                u8 filler_68[4];
                struct RfuBlockSend sendBlock;
                struct RfuBlockSend recvBlock[5];
                bool8 readyCloseLink[5];
                bool8 readyExitStandby[5];
                vu8 errorState;
                bool8 isShuttingDown;
                u8 linkLossRecoveryState;
                u8 status;
                u16 packet[6];
                u16 resendExitStandbyTimer;
                u16 resendExitStandbyCount;
                u8 unk_102;
                struct RfuTgtData tgtData;
                struct RfuRecvQueue recvQueue;
                struct RfuSendQueue sendQueue;
                struct RfuBackupQueue backupQueue;
                vu8 linkRecovered;
                u8 reconnectedParentIdx;
                vu8 child_slot;
                u8 unk_c3f[70];
                u8 sendStatus;
                u8 recvStatus;
                u8 recvCmds[5][7][2];
                u8 parentId;
                u8 multiplayerId;
                u8 unk_ccf;
                vu8 sem_UNI_SendRecv;
                u8 partnerSendStatuses[4];
                u8 partnerRecvStatuses[4];
                u8 linkClosing;
                u8 unk_cda;
                volatile bool8 unk_cdb;
                volatile bool8 unk_cdc;
                u8 unk_cdd;
                u8 linkPlayerIdx[4];
                u8 bm_PartnerFlags;
                u8 bm_DisconnectSlot;
                u8 unk_ce4;
                u8 bmChatLeaderMaybe;
                u8 unionRoomChatters;
                u8 acceptSlot_flag;
                bool8 foundNewLeaderMaybe;
                u8 unk_ce9;
                u8 unk_cea[4];
                u8 unk_cee[4];
} GF_RFU_MANAGER;

extern struct GFtgtGname gHostRFUtgtGnameBuffer;
extern u8 gHostRFUtgtUnameBuffer[];
extern GF_RFU_MANAGER Rfu;


void AddTextPrinterToWindow1(const u8 *str);
bool32 MG_PrintTextOnWindow1AndWaitButton(u8 * cmdPtr, const u8 * src);
void LinkRfu_FatalError(void);
void MG_DrawCheckerboardPattern(void);
void Rfu_SetCloseLinkCallback(void);
bool8 IsLinkRfuTaskFinished(void);
void DestroyWirelessStatusIndicatorSprite(void);
void MEvent_CreateTask_CardOrNewsWithFriend(u32 arg0);
void MEvent_CreateTask_CardOrNewsOverWireless(u32 arg0);
void MEvent_CreateTask_Leader(u32 arg0);
void Rfu_SendPacket(void *data);
u8 CreateTask_ListenToWireless(void);
void LinkRfu_DestroyIdleTask(void);
void InitRFUAPI(void);
void sub_80FB128(bool32 a0);
bool32 IsSendingKeysToRfu(void);
void ClearLinkRfuCallback(void);
u8 GetRfuPlayerCount(void);
void StartSendingKeysToRfu(void);
u8 LinkRfu_GetMultiplayerId(void);
bool32 Rfu_InitBlockSend(const u8 * src, size_t size);
bool8 Rfu_SendBlockRequest(u8 blockRequestType);
u8 Rfu_GetBlockReceivedStatus(void);
void Rfu_SetBlockReceivedFlag(u8 linkPlayerId);
void Rfu_ResetBlockReceivedFlag(u8 linkPlayerId);
bool8 Rfu_IsMaster(void);
void ResetLinkRfuGFLayer(void);
bool32 LinkRfuMain1(void);
bool32 LinkRfuMain2(void);
bool32 IsRfuRecvQueueEmpty(void);
u32 GetRfuRecvQueueLength(void);
void LinkRfu_Shutdown(void);
void LinkRfu_CreateIdleTask(void);
bool8 ToggleLMANlinkRecovery(bool32 enable);
void var_800D_set_xB(void);
struct GFtgtGname *GetHostRFUtgtGname(void);
void UpdateWirelessStatusIndicatorSprite(void);
void InitRFU(void);
bool32 RfuHasErrored(void);

void RfuRecvQueue_Reset(struct RfuRecvQueue *queue);
void RfuSendQueue_Reset(struct RfuSendQueue *queue);

void RfuSetStatus(u8 status, u16 msg);
u8 RfuGetStatus(void);
void RfuRecvQueue_Enqueue(struct RfuRecvQueue *queue, u8 *src);
bool8 RfuSendQueue_Dequeue(struct RfuSendQueue *queue, u8 *dest);
bool8 RfuBackupQueue_Dequeue(struct RfuBackupQueue *queue, u8 *dest);
void RfuBackupQueue_Enqueue(struct RfuBackupQueue *queue, const u8 *dest);
bool8 RfuRecvQueue_Dequeue(struct RfuRecvQueue * queue, u8 *dest);
void RfuSendQueue_Enqueue(struct RfuSendQueue * queue, u8 *src);
void InitHostRFUtgtGname(struct GFtgtGname *data, u8 activity, bool32 started, s32 child_sprite_genders);
void UpdateGameData_GroupLockedIn(bool8 started);
bool32 IsRfuSerialNumberValid(u32 serialNo);
bool8 IsRfuRecoveringFromLinkLoss(void);
bool8 LmanAcceptSlotFlagIsNotZero(void);
void LinkRfu_StopManagerAndFinalizeSlots(void);
bool32 sub_80FA5D4(void);
bool32 sub_80FC1CC(void);
bool32 WaitRfuState(bool32 a0);
bool32 CheckTrainerHasLeftByIdAndName(u16 trainerId, const u8 *trainerName);
void SendByteToPartnerByIdAndName(u8 a0, u16 a1, const u8 *a2);
u32 WaitSendByteToPartnerByIdAndName(u16 a0, const u8 *a1);
void SetHostRFUtgtGname(u8 activity, u32 child_sprite_genders, u32 a2);
void InitializeRfuLinkManager_LinkLeader(u32 availSlots);
void RequestDisconnectSlotByTrainerNameAndId(const u8 *trainerName, u16 trainerId);
void LinkRfu3_SetGnameUnameFromStaticBuffers(struct GFtgtGname *gname, u8 *uname);
void InitializeRfuLinkManager_JoinGroup(void);
void SendLeaveGroupNotice(void);
void CreateTask_RfuReconnectWithParent(const u8 *src, u16 trainerId);
void UpdateGameDataWithActivitySpriteGendersFlag(u8 activity, u32 child_sprite_genders, u32 started);
void RecordMixTrainerNames(void);
void LinkRfu_CreateConnectionAsParent();
void LinkRfu_StopManagerBeforeEnteringChat();
void SetGnameBufferWonderFlags(bool32 hasNews, bool32 hasCard);
void ClearAndInitHostRFUtgtGname(void);
void sub_80F8FA0(void);
void RfuUpdatePlayerGnameStateAndSend(u32 type, u32 species, u32 level);
bool32 IsUnionRoomListenTaskActive(void);
void InitializeRfuLinkManager_EnterUnionRoom(void);
void sub_80FBD6C(u32 a0);
void sub_80FC114(const u8 *name, struct GFtgtGname *structPtr, u8 a2);
bool32 PlayerHasMetTrainerBefore(u16 id, u8 *name);
bool8 LinkRfu_GetNameIfCompatible(struct GFtgtGname *gname, u8 *uname, u8 idx);
bool8 LinkRfu_GetNameIfSerial7F7D(struct GFtgtGname *gname, u8 *uname, u8 idx);
bool32 RfuHasFoundNewLeader(void);
void Rfu_UnionRoomChat_StopLinkManager(void);
void sub_80FB9D0(void);
void sub_80FB030(u32 a0);
void ClearRecvCommands(void);

# 1 "include/mevent_server.h" 1







struct mevent_srv_sub
{
    s32 seqno;
    u8 sendPlayerNo;
    u8 recvPlayerNo;
    u16 recvIdent;
    u16 recvCounter;
    u16 recvCRC;
    u16 recvSize;
    u16 sendIdent;
    u16 sendCounter;
    u16 sendCRC;
    u16 sendSize;
    void *recvBfr;
    const void *sendBfr;
    u32 (*recvFunc)(struct mevent_srv_sub *);
    u32 (*sendFunc)(struct mevent_srv_sub *);
};

struct send_recv_header
{
    u16 ident;
    u16 crc;
    u16 size;
};

struct mevent_client_cmd
{
    u32 instr;
    u32 parameter;
};
# 55 "include/mevent_server.h"
struct mevent_client
{
    u32 unk_00;
    u32 param;
    u32 mainseqno;
    u32 flag;
    u32 cmdidx;
    void *sendBuffer;
    void *recvBuffer;
    struct mevent_client_cmd * cmdBuffer;
    void *buffer;
    struct mevent_srv_sub manager;
};

struct mevent_server_cmd
{
    u32 instr;
    bool32 flag;
    void *parameter;
};
# 95 "include/mevent_server.h"
struct mevent_srv_common
{
    u32 unk_00;
    u32 param;
    u32 mainseqno;
    u32 cmdidx;
    const struct mevent_server_cmd * cmdBuffer;
    void *recvBuffer;
    struct WonderCard * card;
    struct WonderNews * news;
    struct MEventClientHeaderStruct * mevent_unk1442cc;
    void *sendBuffer1;
    u32 sendBuffer1Size;
    void *sendBuffer2;
    u32 sendBuffer2Size;
    u32 sendWord;
    struct mevent_srv_sub manager;
};

u32 mevent_srv_sub_recv(struct mevent_srv_sub * svr);
u32 mevent_srv_sub_send(struct mevent_srv_sub * svr);
void mevent_srv_sub_init(struct mevent_srv_sub * svr, u32 sendPlayerNo, u32 recvPlayerNo);
void mevent_srv_sub_init_send(struct mevent_srv_sub * svr, u32 ident, const void *src, u32 size);
void mevent_srv_sub_init_recv(struct mevent_srv_sub * svr, u32 ident, void *dest);

void mevent_client_do_init(void);
u32 mevent_client_do_exec(u16 * a0);
void mevent_client_inc_flag(void);
void *mevent_client_get_buffer(void);
void mevent_client_set_param(u32 a0);
void mevent_srv_init_wnews(void);
void mevent_srv_new_wcard(void);
u32 mevent_srv_common_do_exec(u16 * a0);
# 306 "include/link_rfu.h" 2
extern const struct mevent_server_cmd gServerScript_ClientCanceledCard[];
# 11 "src/start_menu.c" 2
# 1 "include/help_message.h" 1



extern const u8 gHelpMessageWindow_Gfx[];

void DestroyHelpMessageWindow(u8 a0);
u8 CreateHelpMessageWindow(void);
void PrintTextOnHelpMessageWindow(const u8 * text, u8 mode);
void MapNamePopupWindowIdSetDummy(void);
void DrawHelpMessageWindowTilesById(u8 windowId);
# 12 "src/start_menu.c" 2
# 1 "include/event_data.h" 1





extern u16 gSpecialVar_0x8000;
extern u16 gSpecialVar_0x8001;
extern u16 gSpecialVar_0x8002;
extern u16 gSpecialVar_0x8003;
extern u16 gSpecialVar_0x8004;
extern u16 gSpecialVar_0x8005;
extern u16 gSpecialVar_0x8006;
extern u16 gSpecialVar_0x8007;
extern u16 gSpecialVar_0x8008;
extern u16 gSpecialVar_0x8009;
extern u16 gSpecialVar_0x800A;
extern u16 gSpecialVar_0x800B;
extern u16 gSpecialVar_Facing;
extern u16 gSpecialVar_Result;
extern u16 gSpecialVar_LastTalked;
extern u16 gSpecialVar_MonBoxId;
extern u16 gSpecialVar_MonBoxPos;
extern u16 gSpecialVar_TextColor;
extern u16 gSpecialVar_PrevTextColor;

void InitEventData(void);
void ClearTempFieldEventData(void);
void ClearUpperFlags(void);
void DisableNationalPokedex(void);
void EnableNationalPokedex(void);
bool32 IsNationalPokedexEnabled(void);
void DisableMysteryEvent(void);
void EnableMysteryEvent(void);
bool32 IsMysteryEventEnabled(void);
void DisableMysteryGift(void);
void EnableMysteryGift(void);
bool32 IsMysteryGiftEnabled(void);
void DisableResetRTC(void);
void EnableResetRTC(void);
bool32 CanResetRTC(void);
u16 *GetVarPointer(u16 id);
u16 VarGet(u16 id);
bool8 VarSet(u16 id, u16 value);
u8 VarGetObjectEventGraphicsId(u8 id);
u8 *GetFlagPointer(u16 id);
u8 FlagSet(u16 id);
u8 FlagClear(u16 id);
bool8 FlagGet(u16 id);
u16 * GetVarPointer(u16 id);
bool32 IsMysteryGiftEnabled(void);
void ResetSpecialVars(void);
void ResetMysteryEventFlags(void);
void ResetMysteryEventVars(void);
bool32 IsNationalPokedexEnabled(void);
void EnableNationalPokedex_RSE(void);
void ClearTempFieldEventData(void);
# 13 "src/start_menu.c" 2
# 1 "include/fieldmap.h" 1
# 23 "include/fieldmap.h"
extern struct BackupMapLayout VMap;
extern const struct MapLayout Route1_Layout;

u32 MapGridGetMetatileIdAt(s32, s32);
u32 MapGridGetMetatileBehaviorAt(s16, s16);
u8 MapGridGetMetatileLayerTypeAt(s16 x, s16 y);
void MapGridSetMetatileIdAt(s32, s32, u16);
void MapGridSetMetatileEntryAt(s32, s32, u16);
u8 MapGridGetElevationAt(s32 x, s32 y);
void GetCameraCoords(u16 *, u16 *);
bool8 MapGridGetCollisionAt(s32, s32);
s32 GetMapBorderIdAt(s32, s32);
bool32 CanCameraMoveInDirection(s32);
const struct MapHeader * GetMapHeaderFromConnection(struct MapConnection * connection);
struct MapConnection * GetMapConnectionAtPos(s16 x, s16 y);
void ApplyGlobalTintToPaletteSlot(u8 slot, u8 count);
void SaveMapView(void);
u32 ExtractMetatileAttribute(u32 attributes, u8 attributeType);
u32 MapGridGetMetatileAttributeAt(s16 x, s16 y, u8 attributeType);
void MapGridSetMetatileImpassabilityAt(s32 x, s32 y, bool32 arg2);
bool8 CameraMove(s32 x, s32 y);
void CopyMapTilesetsToVram(struct MapLayout const * mapLayout);
void LoadMapTilesetPalettes(struct MapLayout const * mapLayout);
void InitMap(void);
void CopySecondaryTilesetToVramUsingHeap(const struct MapLayout * mapLayout);
void LoadSecondaryTilesetPalette(const struct MapLayout * mapLayout);
void InitMapFromSavedGame(void);
void CopyPrimaryTilesetToVram(const struct MapLayout *mapLayout);
void CopySecondaryTilesetToVram(const struct MapLayout *mapLayout);
void GetCameraFocusCoords(u16 *x, u16 *y);
void SetCameraFocusCoords(u16 x, u16 y);
# 14 "src/start_menu.c" 2
# 1 "include/safari_zone.h" 1





extern u8 gNumSafariBalls;
extern u16 gSafariZoneStepCounter;

bool32 GetSafariZoneFlag(void);
void SetSafariZoneFlag(void);
void ResetSafariZoneFlag(void);

void EnterSafariMode(void);
void ExitSafariMode(void);

bool8 SafariZoneTakeStep(void);
void SafariZoneRetirePrompt(void);

void CB2_EndSafariBattle(void);
# 15 "src/start_menu.c" 2
# 1 "include/start_menu.h" 1





void AppendToList(u8 *list, u8 *pos, u8 newEntry);
void Task_StartMenuHandleInput(u8 taskId);
void SetUpReturnToStartMenu(void);
void ShowStartMenu(void);
void Field_AskSaveTheGame(void);
void CB2_SetUpSaveAfterLinkBattle(void);
# 16 "src/start_menu.c" 2
# 1 "include/menu.h" 1
# 11 "include/menu.h"
struct MenuAction
{
    const u8 *text;
    union {
        void (*void_u8)(u8);
        u8 (*u8_void)(void);
    } func;
};


void AddTextPrinterParameterized3(u8 windowId, u8 fontId, u8 x, u8 y, const u8 * color, s8 speed, const u8 * str);
void AddTextPrinterParameterized4(u8 windowId, u8 fontId, u8 x, u8 y, u8 letterSpacing, u8 lineSpacing, const u8 *color, s8 speed, const u8 *str);
void AddTextPrinterParameterized5(u8 windowId, u8 fontId, const u8 *str, u8 x, u8 y, u8 speed, void (*callback)(struct TextPrinterTemplate *, u16), u8 letterSpacing, u8 lineSpacing);
void Menu_PrintFormatIntlPlayerName(u8 windowId, const u8 * src, u16 x, u16 y);
void StartBlendTask(u8 eva_start, u8 evb_start, u8 eva_end, u8 evb_end, u8 ev_step, u8 priority);
bool8 IsBlendTaskActive(void);
u8 Menu2_GetMonSpriteAnchorCoord(u16 species, u32 personality, u8 a2);
s8 Menu2_GetMonSpriteAnchorCoordMinusx20(u16 species, u32 personality, u8 a2);


void ListMenu_LoadMonIconPalette(u8 palOffset, u16 speciesId);
void ListMenu_DrawMonIconGraphics(u8 windowId, u16 speciesId, u32 personality, u16 x, u16 y);
void ListMenuLoadStdPalAt(u8 palOffset, u8 palId);
void BlitMoveInfoIcon(u8 windowId, u8 iconId, u16 x, u16 y);


s8 Menu_ProcessInputGridLayout(void);
u8 MultichoiceGrid_InitCursor(u8 windowId, u8 fontId, u8 left, u8 top, u8 optionWidth, u8 cols, u8 rows, u8 cursorPos);
void MultichoiceGrid_PrintItems(u8 windowId, u8 fontId, u8 itemWidth, u8 itemHeight, u8 cols, u8 rows, const struct MenuAction *strs);
void DestroyYesNoMenu(void);
s8 Menu_ProcessInputNoWrapClearOnChoose(void);
void CreateYesNoMenu(const struct WindowTemplate *window, u8 fontId, u8 left, u8 top, u16 baseTileNum, u8 paletteNum, u8 initialCursorPos);
void AddItemMenuActionTextPrinters(u8 windowId, u8 fontId, u8 left, u8 top, u8 letterSpacing, u8 lineHeight, u8 itemCount, const struct MenuAction *strs, const u8 *orderArray);
void UnionRoomAndTradeMenuPrintOptions(u8 windowId, u8 fontId, u8 lineHeight, u8 itemCount, const struct MenuAction *strs);
void MultichoiceList_PrintItems(u8 windowId, u8 fontId, u8 left, u8 top, u8 lineHeight, u8 itemCount, const struct MenuAction *strs, u8 letterSpacing, u8 lineSpacing);
void PrintTextArray(u8 windowId, u8 fontId, u8 left, u8 top, u8 lineHeight, u8 itemCount, const struct MenuAction *strs);
s8 Menu_ProcessInputNoWrapAround_other(void);
s8 Menu_ProcessInput_other(void);
s8 Menu_ProcessInputNoWrapAround(void);
s8 Menu_ProcessInput(void);
u8 Menu_GetCursorPos(void);
u8 Menu_MoveCursorNoWrapAround(s8 cursorDelta);
u8 Menu_MoveCursor(s8 cursorDelta);
u8 Menu_InitCursor(u8 windowId, u8 fontId, u8 left, u8 top, u8 cursorHeight, u8 numChoices, u8 initialCursorPos);
u8 Menu_InitCursorInternal(u8 windowId, u8 fontId, u8 left, u8 top, u8 cursorHeight, u8 numChoices, u8 initialCursorPos, bool8 APressMuted);
void TopBarWindowPrintTwoStrings(const u8 *string, const u8 *string2, bool8 fgColorChooser, u8 notUsed, bool8 copyToVram);
void TopBarWindowPrintString(const u8 *string, u8 unUsed, bool8 copyToVram);
void ClearTopBarWindow(void);
void DestroyTopBarWindow(void);
u8 CreateTopBarWindowLoadPalette(u8 bg, u8 width, u8 yPos, u8 palette, u16 baseTile);
void ClearStdWindowAndFrameToTransparent(u8 windowId, bool8 copyToVram);
void DrawStdFrameWithCustomTileAndPalette(u8 windowId, bool8 copyToVram, u16 baseTileNum, u8 paletteNum);
void ClearDialogWindowAndFrameToTransparent(u8 windowId, bool8 copyToVram);
void DrawDialogFrameWithCustomTileAndPalette(u8 windowId, bool8 copyToVram, u16 tileNum, u8 paletteNum);
struct WindowTemplate SetWindowTemplateFields(u8 bg, u8 left, u8 top, u8 width, u8 height, u8 paletteNum, u16 baseBlock);
# 17 "src/start_menu.c" 2
# 1 "include/load_save.h" 1





extern bool32 gFlashMemoryPresent;
extern struct SaveBlock1 gSaveBlock1;
extern struct SaveBlock2 gSaveBlock2;
extern struct PokemonStorage gPokemonStorage;

void ClearSav2(void);
void ClearSav1(void);
void CheckForFlashMemory(void);
void MoveSaveBlocks_ResetHeap(void);
bool32 GetSecretBase2Field_9(void);
void ClearSecretBase2Field_9(void);
void SetSecretBase2Field_9(void);
void SetSecretBase2Field_9_AndHideBG(void);
void ClearSecretBase2Field_9_2(void);
void SavePlayerParty(void);
void LoadPlayerParty(void);
void SaveSerializedGame(void);
void LoadSerializedGame(void);
void LoadPlayerBag(void);
void SavePlayerBag(void);
void SetSaveBlocksPointers(void);
void MoveSaveBlocks_ResetHeap(void);
void ApplyNewEncryptionKeyToAllEncryptedData(u32 encryptionKey);
void ApplyNewEncryptionKeyToBagItems(u32 encryptionKey);
void ApplyNewEncryptionKeyToWord(u32 * word, u32 encryptionKey);
void ApplyNewEncryptionKeyToHword(u16 * hword, u32 encryptionKey);
void ClearContinueGameWarpStatus2(void);
void SetContinueGameWarpStatusToDynamicWarp(void);
void SetContinueGameWarpStatus(void);
bool32 UseContinueGameWarp(void);
void ClearContinueGameWarpStatus();
# 18 "src/start_menu.c" 2
# 1 "include/strings.h" 1
# 12 "include/strings.h"
extern const u8 gText_FromSpace[];
extern const u8 gText_Lv50[];
extern const u8 gText_OpenLevel[];
extern const u8 gText_Mom[];
extern const u8 gText_Dad[];
extern const u8 gText_Cool[];
extern const u8 gText_Beauty[];
extern const u8 gText_Cute[];
extern const u8 gText_Smart[];
extern const u8 gText_Tough[];
extern const u8 gText_Single[];
extern const u8 gText_Double[];
extern const u8 gText_Spicy2[];
extern const u8 gText_Dry2[];
extern const u8 gText_Sweet2[];
extern const u8 gText_Bitter2[];
extern const u8 gText_Sour2[];
extern const u8 gText_Excellent[];
extern const u8 gText_VeryGood[];
extern const u8 gText_Good[];
extern const u8 gText_SoSo[];
extern const u8 gText_Bad[];
extern const u8 gText_TheWorst[];
extern const u8 gText_Slots[];
extern const u8 gText_Roulette[];
extern const u8 gText_Jackpot[];
extern const u8 gText_First[];
extern const u8 gText_Second[];
extern const u8 gText_Third[];
extern const u8 gText_NoDecorations[];
extern const u8 gText_NoDecorationsInUse[];
extern const u8 gText_Cancel[];
extern const u8 gText_Color161Shadow161[];
extern const u8 gText_GoBackPrevMenu[];
extern const u8 gText_CantPlaceInRoom[];
extern const u8 gText_NoMoreDecorations[];
extern const u8 gText_NoMoreDecorations2[];
extern const u8 gText_InUseAlready[];
extern const u8 gText_CancelDecorating[];
extern const u8 gText_PlaceItHere[];
extern const u8 gText_CantBePlacedHere[];
extern const u8 gText_DecorationReturnedToPC[];
extern const u8 gText_StopPuttingAwayDecorations[];
extern const u8 gText_ReturnDecorationToPC[];
extern const u8 gText_NoDecorationHere[];
extern const u8 gText_DecorationWillBeDiscarded[];
extern const u8 gText_CantThrowAwayInUse[];
extern const u8 gText_DecorationThrownAway[];
extern const u8 gText_Desk[];
extern const u8 gText_Chair[];
extern const u8 gText_Plant[];
extern const u8 gText_Ornament[];
extern const u8 gText_Mat[];
extern const u8 gText_Poster[];
extern const u8 gText_PutOutSelectedDecorItem[];
extern const u8 gText_StoreChosenDecorInPC[];
extern const u8 gText_ThrowAwayUnwantedDecors[];
extern const u8 gText_Doll[];
extern const u8 gText_Cushion[];
extern const u8 gText_Decorate[];
extern const u8 gText_PutAway[];
extern const u8 gText_Toss2[];
extern const u8 gText_Hoenn[];
extern const u8 gText_Ferry[];
extern const u8 gText_SecretBase[];
extern const u8 gText_Hideout[];
extern const u8 gText_FlyToWhere[];
extern const u8 gText_ApostropheSBase[];
extern const u8 gText_NoRegistry[];
extern const u8 gText_OkayToDeleteFromRegistry[];
extern const u8 gText_RegisteredDataDeleted[];
extern const u8 gUnknown_085EA79D[];
extern const u8 gText_Confirm3[];
extern const u8 gText_Cancel4[];
extern const u8 gText_IsThisTheCorrectTime[];
extern const u8 gText_PkmnFainted3[];
extern const u8 gText_Coins[];
extern const u8 gText_EggNickname[];
extern const u8 gText_MenuPokemon[];

extern const u8 gOtherText_Use[];
extern const u8 gOtherText_Toss[];
extern const u8 gOtherText_Give[];
extern const u8 gOtherText_Exit[];
extern const u8 gText_ThreeHyphens[];
extern const u8 gText_SevenHyphens[];
extern const u8 gText_NumberClear01[];
extern const u8 gText_TimesStrVar1[];
extern const u8 gText_IsSelected[];
extern const u8 gText_ThereIsNoPokemon[];
extern const u8 gText_ItemCantBeHeld[];
extern const u8 gText_TMCase[];
extern const u8 gText_Close[];
extern const u8 gText_TMCaseWillBePutAway[];
extern const u8 gText_FontSize0[];
extern const u8 gText_FontSize2[];
extern const u8 gText_OhNoICantBuyThat[];
extern const u8 gText_HowManyWouldYouLikeToSell[];
extern const u8 gText_ICanPayThisMuch_WouldThatBeOkay[];
extern const u8 gText_TurnedOverItemsWorthYen[];
extern const u8 gPokedudeText_TMTypes[];
extern const u8 gPokedudeText_ReadTMDescription[];
extern const u8 gFameCheckerText_Cancel[];
extern const u8 gText_SelectorArrow2[];
extern const u8 gFameCheckerText_FameCheckerWillBeClosed[];
extern const u8 gFameCheckerText_ClearTextbox[];
extern const u8 gFameCheckerText_MainScreenUI[];
extern const u8 gFameCheckerText_PickScreenUI[];
extern const u8 gFameCheckerText_FlavorTextUI[];
extern const u8 gFameCheckerOakName[];
extern const u8 gFameCheckerDaisyName[];
extern const u8 gFameCheckerBillName[];
extern const u8 gFameCheckerMrFujiName[];


extern const u8 gTeachyTvString_TeachBattle[];
extern const u8 gTeachyTvString_StatusProblems[];
extern const u8 gTeachyTvString_TypeMatchups[];
extern const u8 gTeachyTvString_CatchPkmn[];
extern const u8 gTeachyTvString_AboutTMs[];
extern const u8 gTeachyTvString_RegisterItem[];
extern const u8 gTeachyTvString_Cancel[];
extern const u8 gTeachyTvText_PokedudeSaysHello[];
extern const u8 gTeachyTvText_BattleScript1[];
extern const u8 gTeachyTvText_StatusScript1[];
extern const u8 gTeachyTvText_MatchupsScript1[];
extern const u8 gTeachyTvText_CatchingScript1[];
extern const u8 gTeachyTvText_TMsScript1[];
extern const u8 gTeachyTvText_RegisterScript1[];
extern const u8 gTeachyTvText_BattleScript2[];
extern const u8 gTeachyTvText_StatusScript2[];
extern const u8 gTeachyTvText_MatchupsScript2[];
extern const u8 gTeachyTvText_CatchingScript2[];
extern const u8 gTeachyTvText_TMsScript2[];
extern const u8 gTeachyTvText_RegisterScript2[];


extern const u8 gText_HelpSystemControls_A_Next[];
extern const u8 gText_HelpSystemControls_PickOkEnd[];
extern const u8 gText_HelpSystemControls_AorBtoCancel[];
extern const u8 gText_HelpSystemControls_PickOkCancel[];


extern const u8 gString_Bill[];
extern const u8 gString_Someone[];
extern const u8 gString_Help[];
extern const u8 gString_HelpSystem_ClearTo8[];

extern const u8 gText_Var1IsSelected[];
extern const u8 gOtherText_WhereShouldTheStrVar1BePlaced[];
extern const u8 gOtherText_Powder[];
extern const u8 gText_NoMoreRoomInBag[];
extern const u8 gText_WithdrawHowMany[];
extern const u8 gText_WithdrewQuantItem[];
extern const u8 gText_WithdrawItem[];
extern const u8 gText_Withdraw[];
extern const u8 gText_ReturnToPC[];

extern const u8 gText_OakForbidsUseOfItemHere[];
extern const u8 gText_CantDismountBike[];
extern const u8 gText_CoinCase[];
extern const u8 gText_PlayerUsedVar2[];
extern const u8 gText_RepelEffectsLingered[];
extern const u8 gText_UsedVar2WildLured[];
extern const u8 gText_UsedVar2WildRepelled[];
extern const u8 gText_BoxFull[];
extern const u8 gText_PowderQty[];
extern const u8 gText_PlayedPokeFluteCatchy[];
extern const u8 gText_PlayedPokeFlute[];
extern const u8 gText_PokeFluteAwakenedMon[];
extern const u8 gText_WontHaveEffect[];
extern const u8 gText_YesNo[];
extern const u8 gText_Berry[];
extern const u8 gText_Ghost[];


extern const u8 gBattleText_Rose[];
extern const u8 gText_DefendersStatRose[];
extern const u8 gBattleText_GetPumped[];
extern const u8 gBattleText_MistShroud[];
extern const u8 gText_BadEgg[];
extern const u8 gText_PkmnsXPreventsSwitching[];
extern const u8 *const gStatNamesTable[];


extern const u8 gText_Diploma_Player[];
extern const u8 gText_Diploma_ThisDocument[];
extern const u8 gText_Diploma_GameFreak[];
extern const u8 gText_Diploma_National[];
extern const u8 gText_Diploma_Kanto[];


extern const u8 gString_BattleRecords_PlayersBattleResults[];
extern const u8 gString_BattleRecords_TotalRecord[];
extern const u8 gString_BattleRecords_ColumnHeaders[];
extern const u8 gString_BattleRecords_7Dashes[];
extern const u8 gString_BattleRecords_4Dashes[];


extern const u8 gString_OutOfCoins[];
extern const u8 gString_QuitPlaying[];
extern const u8 gString_SlotMachineControls[];


extern const u8 gText_EmptyString3[];
extern const u8 gText_SafariZoneMenu[];
extern const u8 gText_WhatWillPlayerThrow[];


extern const u8 gText_BattleSwitchWhich[];
extern const u8 gText_MoveInterfaceDynamicColors[];
extern const u8 gText_MoveInterfacePP[];
extern const u8 gText_MoveInterfaceType[];
extern const u8 gText_LinkStandby[];
extern const u8 gText_BattleMenu[];
extern const u8 gText_WhatWillPkmnDo[];


extern const u8 gText_BattleYesNoChoice[];


extern const u8 gText_ForPetesSake[];
extern const u8 gText_TheTrainerThat[];
extern const u8 gText_TryBattling[];
extern const u8 gText_InflictingDamageIsKey[];
extern const u8 gText_LoweringStats[];
extern const u8 gText_KeepAnEyeOnHP[];
extern const u8 gText_OakNoRunningFromATrainer[];
extern const u8 gText_WinEarnsPrizeMoney[];
extern const u8 gText_HowDissapointing[];
extern const u8 gText_WhatWillOldManDo[];


extern const u8 Pokedude_Text_SpeedierBattlerGoesFirst[];
extern const u8 Pokedude_Text_MyRattataFasterThanPidgey[];
extern const u8 Pokedude_Text_BattlersTakeTurnsAttacking[];
extern const u8 Pokedude_Text_MyRattataWonGetsEXP[];
extern const u8 Pokedude_Text_UhOhRattataPoisoned[];
extern const u8 Pokedude_Text_HealStatusRightAway[];
extern const u8 Pokedude_Text_UsingItemTakesTurn[];
extern const u8 Pokedude_Text_YayWeManagedToWin[];
extern const u8 Pokedude_Text_WaterNotVeryEffectiveAgainstGrass[];
extern const u8 Pokedude_Text_GrassEffectiveAgainstWater[];
extern const u8 Pokedude_Text_LetsTryShiftingMons[];
extern const u8 Pokedude_Text_ShiftingUsesTurn[];
extern const u8 Pokedude_Text_ButterfreeDoubleResistsGrass[];
extern const u8 Pokedude_Text_ButterfreeGoodAgainstOddish[];
extern const u8 Pokedude_Text_YeahWeWon[];
extern const u8 Pokedude_Text_WeakenMonBeforeCatching[];
extern const u8 Pokedude_Text_BestIfTargetStatused[];
extern const u8 Pokedude_Text_CantDoubleUpOnStatus[];
extern const u8 Pokedude_Text_LetMeThrowBall[];
extern const u8 Pokedude_Text_PickBestKindOfBall[];


extern const u8 gText_ChoosePokemon[];
extern const u8 gText_ChoosePokemonCancel[];
extern const u8 gText_ChoosePokemonConfirm[];
extern const u8 gText_MoveToWhere[];
extern const u8 gText_TeachWhichPokemon[];
extern const u8 gText_UseOnWhichPokemon[];
extern const u8 gText_GiveToWhichPokemon[];
extern const u8 gText_NothingToCut[];
extern const u8 gText_CantSurfHere[];
extern const u8 gText_AlreadySurfing[];
extern const u8 gText_CurrentIsTooFast[];
extern const u8 gText_EnjoyCycling[];
extern const u8 gText_InUseAlready_PM[];
extern const u8 gText_CantUseHere[];
extern const u8 gText_NoPokemonForBattle[];
extern const u8 gText_ChoosePokemon2[];
extern const u8 gText_NotEnoughHp[];
extern const u8 gText_ThreePkmnAreNeeded[];
extern const u8 gText_TwoPokemonAreNeeded[];
extern const u8 gText_PokemonCantBeSame[];
extern const u8 gText_NoIdenticalHoldItems[];
extern const u8 gText_DoWhatWithPokemon[];
extern const u8 gText_RestoreWhichMove[];
extern const u8 gText_BoostPp[];
extern const u8 gText_DoWhatWithItem[];
extern const u8 gText_DoWhatWithMail[];
extern const u8 gText_NoUse[];
extern const u8 gText_Able[];
extern const u8 gText_First_PM[];
extern const u8 gText_Second_PM[];
extern const u8 gText_Third_PM[];
extern const u8 gText_NotAble[];
extern const u8 gText_Able3[];
extern const u8 gText_NotAble2[];
extern const u8 gText_Learned[];
extern const u8 gText_Able2[];
extern const u8 gText_CutATreeOrGrass[];
extern const u8 gText_FlyToAKnownTown[];
extern const u8 gText_TravelOnWater[];
extern const u8 gText_MoveHeavyBoulders[];
extern const u8 gText_LightUpDarkness[];
extern const u8 gText_ShatterACrackedRock[];
extern const u8 gText_ClimbAWaterfall[];
extern const u8 gText_EscapeFromHere[];
extern const u8 gText_LureWildPokemon[];
extern const u8 gText_ShareHp[];
extern const u8 gText_ReturnToAHealingSpot[];
extern const u8 gText_Summary5[];
extern const u8 gText_Switch2[];
extern const u8 gText_Item[];
extern const u8 gText_Take[];
extern const u8 gText_Mail[];
extern const u8 gText_Take2[];
extern const u8 gText_Read2[];
extern const u8 gText_Shift[];
extern const u8 gText_SendOut[];
extern const u8 gText_Enter[];
extern const u8 gText_NoEntry[];
extern const u8 gText_Store[];
extern const u8 gText_Trade4[];
extern const u8 gText_NotPkmnOtherTrainerWants[];
extern const u8 gText_ThatIsntAnEgg[];
extern const u8 gText_OtherTrainerCantAcceptPkmn[];
extern const u8 gText_CantTradeWithTrainer[];
extern const u8 gText_CancelBattle[];
extern const u8 gText_PkmnWasGivenItem[];
extern const u8 gText_ReceivedItemFromPkmn[];
extern const u8 gText_PkmnAlreadyHoldingItemSwitch[];
extern const u8 gText_SwitchedPkmnItem[];
extern const u8 gText_BagFullCouldNotRemoveItem[];
extern const u8 gText_PkmnCantParticipate[];
extern const u8 gText_CancelParticipation[];
extern const u8 gText_OakThisIsListOfPokemon[];
extern const u8 gText_PartyMenu_OK[];
extern const u8 gText_MaleSymbol[];
extern const u8 gText_FemaleSymbol[];
extern const u8 gText_Slash[];
extern const u8 gText_OakImportantToGetToKnowPokemonThroughly[];
extern const u8 gText_PkmnNotHolding[];
extern const u8 gText_PCMailboxFull[];
extern const u8 gText_MailSentToPC[];
extern const u8 gText_MailMessageWillBeLost[];
extern const u8 gText_SendMailToPC[];
extern const u8 gText_MailTakenFromPkmn[];
extern const u8 gText_NoMoreThanTwoMayEnter[];
extern const u8 gText_NoMoreThanThreeMayEnter[];
extern const u8 gText_PauseUntilPress[];
extern const u8 gText_CantUseUntilNewBadge[];
extern const u8 gText_ReturnToHealingSpot[];
extern const u8 gText_EscapeFromHereAndReturnTo[];
extern const u8 gText_PkmnCuredOfPoison[];
extern const u8 gText_PkmnWokeUp2[];
extern const u8 gText_PkmnBurnHealed[];
extern const u8 gText_PkmnThawedOut[];
extern const u8 gText_PkmnCuredOfParalysis[];
extern const u8 gText_PkmnSnappedOutOfConfusion[];
extern const u8 gText_PkmnGotOverInfatuation[];
extern const u8 gText_PkmnBecameHealthy[];
extern const u8 gText_ItemEffect_HP[];
extern const u8 gText_ItemEffect_Attack[];
extern const u8 gText_ItemEffect_Defense[];
extern const u8 gText_ItemEffect_Speed[];
extern const u8 gText_ItemEffect_SpAtk[];
extern const u8 gText_ItemEffect_SpDef[];
extern const u8 gText_PkmnBaseVar2StatIncreased[];
extern const u8 gText_MovesPPIncreased[];
extern const u8 gText_PPWasRestored[];
extern const u8 gText_PkmnHPRestoredByVar2[];
extern const u8 gText_PkmnNeedsToReplaceMove[];
extern const u8 gText_PkmnCantLearnMove[];
extern const u8 gText_PkmnAlreadyKnows[];
extern const u8 gText_PkmnLearnedMove3[];
extern const u8 gText_WhichMoveToForget[];
extern const u8 gText_12PoofForgotMove[];
extern const u8 gText_StopLearningMove2[];
extern const u8 gText_MoveNotLearned[];
extern const u8 gText_PkmnElevatedToLvVar2[];
extern const u8 gText_PkmnHoldingItemCantHoldMail[];
extern const u8 gText_MailTransferredFromMailbox[];
extern const u8 gText_RemoveMailBeforeItem[];
extern const u8 gText_CantSwitchWithAlly[];
extern const u8 gText_PkmnHasNoEnergy[];
extern const u8 gText_PkmnAlreadyInBattle[];
extern const u8 gText_EggCantBattle[];
extern const u8 gText_PkmnAlreadySelected[];
extern const u8 gText_PkmnCantSwitchOut[];


extern const u8 gString_Dummy[];
extern const u8 gString_PokemonFireRed_Staff[];
extern const u8 gString_PokemonLeafGreen_Staff[];
extern const u8 gCreditsString_Director[];
extern const u8 gCreditsString_Junichi_Masuda[];
extern const u8 gCreditsString_Art_Director_Battle_Director[];
extern const u8 gCreditsString_Ken_Sugimori_Shigeki_Morimoto[];
extern const u8 gCreditsString_Program_Leader_Planning_Leader_Graphic_Design_Leader[];
extern const u8 gCreditsString_Tetsuya_Watanabe_Koji_Nishino_Takao_Unno[];
extern const u8 gCreditsString_Programmers[];
extern const u8 gCreditsString_Hiroyuki_Nakamura_Masao_Taya_Satoshi_Nohara_Miyuki_Iwasawa_Daisuke_Goto[];
extern const u8 gCreditsString_System_Programmers[];
extern const u8 gCreditsString_Tetsuya_Watanabe_Akito_Mori_Hisashi_Sogabe_Sousuke_Tamada[];
extern const u8 gCreditsString_Graphic_Designers[];
extern const u8 gCreditsString_Takao_Unno_Asuka_Iwashita_Kanako_Eo_Hiroki_Fuchino[];
extern const u8 gCreditsString_Graphic_Designers_2[];
extern const u8 gCreditsString_Ken_Sugimori_Hironobu_Yoshida[];
extern const u8 gCreditsString_Music_Composition[];
extern const u8 gCreditsString_Go_Ichinose_Junichi_Masuda[];
extern const u8 gCreditsString_Sound_Effects[];
extern const u8 gCreditsString_Go_Ichinose[];
extern const u8 gCreditsString_Game_Designers[];
extern const u8 gCreditsString_Junichi_Masuda_Koji_Nishino_Tetsuji_Ohta[];
extern const u8 gCreditsString_Game_Designers_2[];
extern const u8 gCreditsString_Hitomi_Sato_Shigeru_Ohmori_Tadashi_Takahashi[];
extern const u8 gCreditsString_Game_Scenario[];
extern const u8 gCreditsString_Hitomi_Sato_Satoshi_Tajiri[];
extern const u8 gCreditsString_Script_Designer_Map_Designer[];
extern const u8 gCreditsString_Satoshi_Nohara_Shigeru_Ohmori[];
extern const u8 gCreditsString_Parametric_Designers[];
extern const u8 gCreditsString_Koji_Nishino_Tetsuji_Ohta_Shigeki_Morimoto[];
extern const u8 gCreditsString_POKeDEX_Text[];
extern const u8 gCreditsString_Kenji_Matsushima[];
extern const u8 gCreditsString_POKeMON_Designers[];
extern const u8 gCreditsString_Ken_Sugimori_Motofumi_Fujiwara_Shigeki_Morimoto_Hironobu_Yoshida[];
extern const u8 gCreditsString_POKeMON_Designers_2[];
extern const u8 gCreditsString_Satoshi_Ohta_Asuka_Iwashita_Takao_Unno_Kanako_Eo_Aimi_Tomita[];
extern const u8 gCreditsString_POKeMON_Designers_3[];
extern const u8 gCreditsString_Atsuko_Nishida_Muneo_Saito_Rena_Yoshikawa_Jun_Okutani[];
extern const u8 gCreditsString_Supporting_Programmers[];
extern const u8 gCreditsString_Teruyuki_Yoshioka_Takao_Nakano_Satoshi_Mitsuhara_Daisuke_Hoshino[];
extern const u8 gCreditsString_NCL_Product_Testing[];
extern const u8 gCreditsString_NCL_Super_Mario_Club[];
extern const u8 gCreditsString_Special_Thanks[];
extern const u8 gCreditsString_Hiro_Nakamura_Hiroyuki_Uesugi_Teruki_Murakawa_Kazuya_Suyama[];
extern const u8 gCreditsString_Special_Thanks_2[];
extern const u8 gCreditsString_Kenji_Tominaga_Kenjiro_Ito_Tomotaka_Komura_Michiko_Takizawa[];
extern const u8 gCreditsString_Special_Thanks_3[];
extern const u8 gCreditsString_Makiko_Takada_Mikiko_Ohashi_Shusaku_Egami_Takanao_Kondo_Rui_Kawaguchi[];
extern const u8 gCreditsString_Braille_Code_Check[];
extern const u8 gCreditsString_Japan_Braille_Library[];
extern const u8 gCreditsString_Information_Supervisors[];
extern const u8 gCreditsString_Hiroki_Enomoto_Kazuyuki_Terada_Yuri_Sakurai_Yumi_Funasaka_Naoko_Yanase[];
extern const u8 gCreditsString_Coordinators[];
extern const u8 gCreditsString_Azusa_Tajima_Akira_Kinashi_Kazuki_Yoshihara_Retsuji_Nomoto[];
extern const u8 gCreditsString_Task_Managers[];
extern const u8 gCreditsString_Hitoshi_Yamagami_Gakuji_Nomoto[];
extern const u8 gCreditsString_Producers[];
extern const u8 gCreditsString_Hiroyuki_Jinnai_Takehiro_Izushi_Hiroaki_Tsuru[];
extern const u8 gCreditsString_Executive_Director[];
extern const u8 gCreditsString_Satoshi_Tajiri[];
extern const u8 gCreditsString_Executive_Producer[];
extern const u8 gCreditsString_Satoru_Iwata[];
extern const u8 gCreditsString_Executive_Producer_2[];
extern const u8 gCreditsString_Tsunekaz_Ishihara[];
extern const u8 gCreditsString_English_Version_Coordinators[];
extern const u8 gCreditsString_Hiro_Nakamura_Seth_McMahill[];
extern const u8 gCreditsString_Translator_Text_Editor[];
extern const u8 gCreditsString_Nob_Ogasawara_Teresa_Lillygren[];
extern const u8 gCreditsString_Programmers_2[];
extern const u8 gCreditsString_Teruki_Murakawa_Souichi_Yamamoto_Yuichiro_Ito_Akira_Kinashi[];
extern const u8 gCreditsString_Environment_Tool_Programmers[];
extern const u8 gCreditsString_Teruki_Murakawa_Souichi_Yamamoto_Kimiko_Nakamichi[];
extern const u8 gCreditsString_NOA_Product_Testing[];
extern const u8 gCreditsString_Thomas_Hertzog_Kathy_Huguenard_Mika_Kurosawa[];
extern const u8 gCreditsString_Braille_Code_Check_2[];
extern const u8 gCreditsString_National_Federation_of_the_Blind_Patricia_A_Maurer_Japan_Braille_Library_European_Blind_Union[];
extern const u8 gCreditsString_Braille_Code_Check_3[];
extern const u8 gCreditsString_National_Information_Library_Service_Margaret_Campion[];
extern const u8 gCreditsString_Special_Thanks_4[];
extern const u8 gCreditsString_Takehiro_Izushi_Motoyasu_Tojima_Hitoshi_Yamagami_Hiroyuki_Uesugi[];
extern const u8 gCreditsString_Special_Thanks_5[];
extern const u8 gCreditsString_Nicola_Pratt_Barlow_Shellie_Dow_Anthony_Howitt_Naoko_Saeki_Kyoko_Onishi[];
extern const u8 gCreditsString_Braille_Code_Check_4[];
extern const u8 gCreditsString_The_Royal_New_Zealand_Foundation_of_the_Blind_Greg_Moran[];
extern const u8 gCreditsString_Graphic_Designer[];
extern const u8 gCreditsString_Akira_Kinashi[];


extern const u8 gText_TheStrVar1CantBeHeldHere[];
extern const u8 gText_TossOutHowManyStrVar1s[];
extern const u8 gText_ThrewAwayStrVar2StrVar1s[];
extern const u8 gText_ThrowAwayStrVar2OfThisItemQM[];
extern const u8 gText_BerryPouch[];
extern const u8 gText_TheBerryPouchWillBePutAway[];


extern const u8 gText_ItemfinderResponding[];
extern const u8 gText_ItemfinderShakingWildly[];
extern const u8 gText_NopeTheresNoResponse[];


extern const u8 gText_CommErrorEllipsis[];
extern const u8 gText_MoveCloserToLinkPartner[];
extern const u8 gText_CommErrorCheckConnections[];
extern const u8 gText_ABtnTitleScreen[];
extern const u8 gText_ABtnRegistrationCounter[];


extern const u8 gText_SaveFileCorrupted[];
extern const u8 gText_SaveFileHasBeenDeleted[];
extern const u8 gText_1MSubCircuitBoardNotInstalled[];
extern const u8 gText_NewGame[];
extern const u8 gText_Continue[];
extern const u8 gText_MysteryGift[];
extern const u8 gText_WirelessNotConnected[];
extern const u8 gText_MysteryGiftCantUse[];
extern const u8 gText_Player[];
extern const u8 gText_Time[];
extern const u8 gText_Colon[];
extern const u8 gText_Pokedex[];
extern const u8 gTextJPDummy_Hiki[];
extern const u8 gText_Badges[];
extern const u8 gTextJPDummy_Ko[];
extern const u8 gText_Register[];


extern const u8 gText_PickOKExit[];
extern const u8 gText_PickOKCancel[];
extern const u8 gText_MysteryGift2[];
extern const u8 gJPText_MysteryGift[];
extern const u8 gJPText_DecideStop[];
extern const u8 gText_WhatToDoWithCards[];
extern const u8 gText_WhatToDoWithNews[];
extern const u8 gText_OkayToDiscardNews[];
extern const u8 gText_IfThrowAwayCardEventWontHappen[];
extern const u8 gText_WonderCardThrownAway[];
extern const u8 gText_WonderNewsThrownAway[];
extern const u8 gText_DataWillBeSaved[];
extern const u8 gText_SaveCompletedPressA[];
extern const u8 gText_WonderCards[];
extern const u8 gText_WonderNews[];
extern const u8 gText_Exit3[];
extern const u8 gText_WirelessCommunication[];
extern const u8 gText_Friend2[];
extern const u8 gText_Receive[];
extern const u8 gText_Send[];
extern const u8 gText_Toss[];
extern const u8 gText_VarietyOfEventsImportedWireless[];
extern const u8 gText_WonderCardsInPossession[];
extern const u8 gText_ReadNewsThatArrived[];
extern const u8 gText_ReturnToTitle[];
extern const u8 gText_NothingSentOver[];
extern const u8 gText_RecordUploadedViaWireless[];
extern const u8 gText_WonderCardReceived[];
extern const u8 gText_WonderCardReceivedFrom[];
extern const u8 gText_WonderNewsReceived[];
extern const u8 gText_WonderNewsReceivedFrom[];
extern const u8 gText_NewStampReceived[];
extern const u8 gText_AlreadyHadCard[];
extern const u8 gText_AlreadyHadStamp[];
extern const u8 gText_AlreadyHadNews[];
extern const u8 gText_NoMoreRoomForStamps[];
extern const u8 gText_CommunicationCanceled[];
extern const u8 gText_CantAcceptCardFromTrainer[];
extern const u8 gText_CantAcceptNewsFromTrainer[];
extern const u8 gText_CommunicationError[];
extern const u8 gText_NewTrainerReceived[];
extern const u8 gText_WonderCardSentTo[];
extern const u8 gText_WonderNewsSentTo[];
extern const u8 gText_StampSentTo[];
extern const u8 gText_OtherTrainerHasCard[];
extern const u8 gText_OtherTrainerHasStamp[];
extern const u8 gText_OtherTrainerHasNews[];
extern const u8 gText_OtherTrainerCanceled[];
extern const u8 gText_GiftSentTo[];
extern const u8 gText_CantSendGiftToTrainer[];
extern const u8 gText_DontHaveCardNewOneInput[];
extern const u8 gText_DontHaveNewsNewOneInput[];
extern const u8 gText_WhereShouldCardBeAccessed[];
extern const u8 gText_WhereShouldNewsBeAccessed[];
extern const u8 gText_Communicating[];
extern const u8 gText_ThrowAwayWonderCard[];
extern const u8 gText_HaventReceivedCardsGift[];
extern const u8 gText_CommunicationCompleted[];
extern const u8 gText_HaventReceivedGiftOkayToDiscard[];
extern const u8 gText_SendingWonderCard[];
extern const u8 gText_SendingWonderNews[];


extern const u8 gText_BerryPickingRecords[];
extern const u8 gText_BerriesPicked[];
extern const u8 gText_BerriesInRowFivePlayers[];
extern const u8 gText_BestScore[];
extern const u8 gText_1Colon[];
extern const u8 gText_2Colon[];
extern const u8 gText_3Colon[];
extern const u8 gText_4Colon[];
extern const u8 gText_5Colon[];
extern const u8 gText_SpacePoints[];
extern const u8 gText_10P30P50P50P[];
extern const u8 gText_AnnouncingPrizes[];
extern const u8 gText_AnnouncingRankings[];
extern const u8 gText_FirstPlacePrize[];
extern const u8 gText_CantHoldAnyMore[];
extern const u8 gText_FilledStorageSpace[];
extern const u8 gText_BerryPickingResults[];
extern const u8 gText_WantToPlayAgain[];
extern const u8 gText_CommunicationStandby3[];
extern const u8 gText_SomeoneDroppedOut[];


extern const u8 gText_WhatWouldYouLikeToDo[];
extern const u8 gText_TakeOutItemsFromThePC[];
extern const u8 gText_StoreItemsInThePC[];
extern const u8 gText_GoBackToThePreviousMenu[];
extern const u8 gText_ItemStorage[];
extern const u8 gText_Mailbox[];
extern const u8 gText_TurnOff[];
extern const u8 gText_WithdrawItem2[];
extern const u8 gText_DepositItem2[];
extern const u8 gOtherText_Read[];
extern const u8 gOtherText_MoveToBag[];
extern const u8 gOtherText_Give2[];
extern const u8 gText_TheresNoMailHere[];
extern const u8 gText_ThereAreNoItems[];
extern const u8 gText_WhatWouldYouLikeToDoWithPlayersMail[];
extern const u8 gText_MessageWillBeLost[];
extern const u8 gText_BagIsFull[];
extern const u8 gText_MailReturnedToBagMessageErased[];


extern const u8 gText_MenuPokedex[];
extern const u8 gText_MenuBag[];
extern const u8 gText_MenuPlayer[];
extern const u8 gText_MenuSave[];
extern const u8 gText_MenuOption[];
extern const u8 gText_MenuExit[];
extern const u8 gText_MenuRetire[];
extern const u8 gText_MenuSafariStats[];
extern const u8 gStartMenuDesc_Pokedex[];
extern const u8 gStartMenuDesc_Pokemon[];
extern const u8 gStartMenuDesc_Bag[];
extern const u8 gStartMenuDesc_Save[];
extern const u8 gStartMenuDesc_Option[];
extern const u8 gStartMenuDesc_Exit[];
extern const u8 gStartMenuDesc_Retire[];
extern const u8 gStartMenuDesc_Player[];
extern const u8 gText_SaveError_PleaseExchangeBackupMemory[];
extern const u8 gText_SavingDontTurnOffThePower2[];
extern const u8 gSaveStatName_Player[];
extern const u8 gSaveStatName_Badges[];
extern const u8 gSaveStatName_Pokedex[];
extern const u8 gSaveStatName_Time[];


extern const u8 gText_From[];


extern const u8 gText_BigGuy[];
extern const u8 gText_BigGirl[];
extern const u8 gText_Son[];
extern const u8 gText_Daughter[];
extern const u8 gText_NowOn[];
extern const u8 gText_B4F[];
extern const u8 gText_B3F[];
extern const u8 gText_B2F[];
extern const u8 gText_B1F[];
extern const u8 gText_1F[];
extern const u8 gText_2F[];
extern const u8 gText_3F[];
extern const u8 gText_4F[];
extern const u8 gText_5F[];
extern const u8 gText_6F[];
extern const u8 gText_7F[];
extern const u8 gText_8F[];
extern const u8 gText_9F[];
extern const u8 gText_10F[];
extern const u8 gText_11F[];
extern const u8 gText_Rooftop[];
extern const u8 gText_BoulderBadge[];
extern const u8 gText_CascadeBadge[];
extern const u8 gText_ThunderBadge[];
extern const u8 gText_RainbowBadge[];
extern const u8 gText_SoulBadge[];
extern const u8 gText_MarshBadge[];
extern const u8 gText_VolcanoBadge[];
extern const u8 gText_EarthBadge[];
extern const u8 gText_LinkedGamePlay[];
extern const u8 gText_DirectCorner[];
extern const u8 gText_UnionRoom[];
extern const u8 gOtherText_Quit[];
extern const u8 gText_Energypowder_50[];
extern const u8 gText_EnergyRoot_80[];
extern const u8 gText_HealPowder_50[];
extern const u8 gText_RevivalHerb_300[];
extern const u8 gText_Protein_1000[];
extern const u8 gText_Iron_1000[];
extern const u8 gText_Carbos_1000[];
extern const u8 gText_Calcium_1000[];
extern const u8 gText_Zinc_1000[];
extern const u8 gText_HpUp_1000[];
extern const u8 gText_PpUp_3000[];


extern const u8 Text_AccessWhichPC[];
extern const u8 gText_SomeoneSPc[];
extern const u8 gText_BillSPc[];
extern const u8 gText_SPc[];
extern const u8 gText_HallOfFame_2[];
extern const u8 gText_LogOff[];
extern const u8 gText_ProfOakSPc[];
extern const u8 gText_Other[];
extern const u8 gOtherText_Double[];
extern const u8 gOtherText_Knockout[];
extern const u8 gOtherText_Mixed[];
extern const u8 gOtherText_Single[];
extern const u8 gText_Info[];
extern const u8 gText_Eggs[];
extern const u8 gText_HallOfFame[];
extern const u8 gText_Victories[];
extern const u8 gText_Quit[];
extern const u8 gText_Psn[];
extern const u8 gText_Par[];
extern const u8 gText_Slp[];
extern const u8 gText_Brn[];
extern const u8 gText_Frz[];
extern const u8 gText_Yes[];
extern const u8 gText_No[];
extern const u8 gText_SingleBattle[];
extern const u8 gText_DoubleBattle[];
extern const u8 gText_MultiBattle[];
extern const u8 gText_MakeAChallenge[];
extern const u8 gText_Info_2[];
extern const u8 gText_FreshWater_200[];
extern const u8 gText_SodaPop_300[];
extern const u8 gText_Lemonade_350[];
extern const u8 gText_50Coins_1000[];
extern const u8 gText_500Coins_10000[];
extern const u8 gText_Excellent[];
extern const u8 gText_NotSoBad[];
extern const u8 gText_RedShard[];
extern const u8 gText_YellowShard[];
extern const u8 gText_BlueShard[];
extern const u8 gText_GreenShard[];
extern const u8 gText_Right[];
extern const u8 gText_Left[];
extern const u8 gText_Tm13_4000Coins[];
extern const u8 gText_Tm23_3500Coins[];
extern const u8 gText_Tm24_4000Coins[];
extern const u8 gText_Tm30_4500Coins[];
extern const u8 gText_Tm35_4000Coins[];
extern const u8 gText_1F_2[];
extern const u8 gText_2F_2[];
extern const u8 gText_3F_2[];
extern const u8 gText_4F_2[];
extern const u8 gText_5F_2[];
extern const u8 gText_Normal[];
extern const u8 gText_Black[];
extern const u8 gText_Pink[];
extern const u8 gText_Sepia[];
extern const u8 gText_Eevee[];
extern const u8 gText_Flareon[];
extern const u8 gText_Jolteon[];
extern const u8 gText_Vaporeon[];
extern const u8 gText_QuitLooking[];
extern const u8 gText_FreshWater[];
extern const u8 gText_SodaPop[];
extern const u8 gText_Lemonade[];
extern const u8 gText_Bicycle_Price[];
extern const u8 gText_NoThanks[];
extern const u8 gText_Abra_180Coins[];
extern const u8 gText_Clefairy_500Coins[];
extern const u8 gText_Dratini_2800Coins[];
extern const u8 gText_Scyther_5500Coins[];
extern const u8 gText_Porygon_9999Coins[];
extern const u8 gText_Abra_120Coins[];
extern const u8 gText_Clefairy_750Coins[];
extern const u8 gText_Pinsir_2500Coins[];
extern const u8 gText_Dratini_4600Coins[];
extern const u8 gText_Porygon_6500Coins[];
extern const u8 gText_NoThanks_2[];
extern const u8 gText_HelixFossil[];
extern const u8 gText_DomeFossil[];
extern const u8 gText_OldAmber[];
extern const u8 gText_TradeCenter[];
extern const u8 gText_Colosseum[];
extern const u8 gText_GameLinkCable[];
extern const u8 gText_Wireless[];
extern const u8 gText_OneIsland[];
extern const u8 gText_TwoIsland[];
extern const u8 gText_ThreeIsland[];
extern const u8 gText_Vermilion[];
extern const u8 gText_Colosseum_2[];
extern const u8 gText_BerryCrush[];
extern const u8 gText_EmptyLinkService1[];
extern const u8 gText_EmptyLinkService2[];
extern const u8 gText_RecordCorner[];
extern const u8 gText_PokemonJump[];
extern const u8 gText_DodrioBerryPicking[];
extern const u8 gText_2Tinymushrooms[];
extern const u8 gText_1BigMushroom[];
extern const u8 gText_SeviiIslands[];
extern const u8 gText_NavelRock[];
extern const u8 gText_BirthIsland[];
extern const u8 gText_MiracleSeed_1000Coins[];
extern const u8 gText_Charcoal_1000Coins[];
extern const u8 gText_MysticWater_1000Coins[];
extern const u8 gText_YellowFlute_1600Coins[];
extern const u8 gText_SmokeBall_800Coins[];
extern const u8 gText_Multichoice_Empty1[];
extern const u8 gText_Multichoice_Empty2[];
extern const u8 gText_BecomeLeader[];
extern const u8 gText_JoinGroup[];
extern const u8 gText_Cool_2[];
extern const u8 gText_Beauty_2[];
extern const u8 gText_Cute_2[];
extern const u8 gText_Smart_2[];
extern const u8 gText_Tough_2[];
extern const u8 gText_Items[];
extern const u8 gText_KeyItems[];
extern const u8 gText_PokeBalls[];
extern const u8 gText_TMsAndHMs[];
extern const u8 gText_Berries[];
extern const u8 gText_Boulderbadge[];
extern const u8 gText_Cascadebadge[];
extern const u8 gText_Thunderbadge[];
extern const u8 gText_Rainbowbadge[];
extern const u8 gText_Soulbadge[];
extern const u8 gText_Marshbadge[];
extern const u8 gText_Volcanobadge[];
extern const u8 gText_Earthbadge[];
extern const u8 gText_Coins_2[];
extern const u8 gText_ItemsPocket[];
extern const u8 gText_KeyItemsPocket[];
extern const u8 gText_PokeBallsPocket[];
extern const u8 gText_TmCase[];
extern const u8 gText_BerryPouch_2[];
extern const u8 gText_FourIsland[];
extern const u8 gText_FiveIsland[];
extern const u8 gText_SixIsland[];
extern const u8 gText_SevenIsland[];


extern const u8 gText_IsThisTradeOkay[];
extern const u8 gText_XWillBeSentToY[];
extern const u8 gText_ByeByeVar1[];
extern const u8 gText_XSentOverY[];
extern const u8 gText_TakeGoodCareOfX[];
extern const u8 gText_CommunicationStandby5[];
extern const u8 gTradeText_Cancel[];
extern const u8 gTradeText_ChooseAPokemon[];
extern const u8 gTradeText_Summary[];
extern const u8 gTradeText_Trade[];
extern const u8 gText_CancelTrade[];
extern const u8 gTradeText_PressBButtonToExit[];
extern const u8 gText_TradeAction_Summary[];
extern const u8 gText_TradeAction_Trade[];
extern const u8 gText_Trade_CommunicationStandby[];
extern const u8 gText_TradeHasBeenCanceled[];
extern const u8 gText_Trade_OnlyPkmnForBattle[];
extern const u8 gText_OnlyPkmnForBattle[];
extern const u8 gText_WaitingForFriendToFinish[];
extern const u8 gText_FriendWantsToTrade[];
extern const u8 gText_PkmnCantBeTradedNow[];
extern const u8 gText_EggCantBeTradedNow[];
extern const u8 gText_OtherTrainersPkmnCantBeTraded[];
extern const u8 gText_4Qmark[];

extern const u8 gEasyChatGroupName_Pokemon[];
extern const u8 gEasyChatGroupName_Trainer[];
extern const u8 gEasyChatGroupName_Status[];
extern const u8 gEasyChatGroupName_Battle[];
extern const u8 gEasyChatGroupName_Greetings[];
extern const u8 gEasyChatGroupName_People[];
extern const u8 gEasyChatGroupName_Voices[];
extern const u8 gEasyChatGroupName_Speech[];
extern const u8 gEasyChatGroupName_Endings[];
extern const u8 gEasyChatGroupName_Feelings[];
extern const u8 gEasyChatGroupName_Conditions[];
extern const u8 gEasyChatGroupName_Actions[];
extern const u8 gEasyChatGroupName_Lifestyle[];
extern const u8 gEasyChatGroupName_Hobbies[];
extern const u8 gEasyChatGroupName_Time[];
extern const u8 gEasyChatGroupName_Misc[];
extern const u8 gEasyChatGroupName_Adjectives[];
extern const u8 gEasyChatGroupName_Events[];
extern const u8 gEasyChatGroupName_Move1[];
extern const u8 gEasyChatGroupName_Move2[];
extern const u8 gEasyChatGroupName_TrendySaying[];
extern const u8 gEasyChatGroupName_Pokemon2[];
extern const u8 gText_ThreeQuestionMarks[];


extern const u8 gText_LeagueChamp[];
extern const u8 gText_HOFNumber[];
extern const u8 gText_UPDOWNPick_ABUTTONBBUTTONCancel[];
extern const u8 gText_UPDOWNPick_ABUTTONNext_BBUTTONBack[];
extern const u8 gText_ABUTTONExit[];
extern const u8 gText_HOFCorrupted[];
extern const u8 gText_WelcomeToHOF[];
extern const u8 gText_Number[];
extern const u8 gText_Level[];
extern const u8 gText_IDNumber[];
extern const u8 gText_Name[];
extern const u8 gText_MainMenuTime[];


extern const u8 gText_TeachWhichMoveToMon[];
extern const u8 gText_MonLearnedMove[];
extern const u8 gText_MonIsTryingToLearnMove[];
extern const u8 gText_StopLearningMove[];
extern const u8 gText_1_2_and_Poof[];
extern const u8 gText_MonForgotOldMoveAndMonLearnedNewMove[];
extern const u8 gText_WhichMoveShouldBeForgotten[];
extern const u8 gText_TeachMoveQues[];
extern const u8 gText_GiveUpTryingToTeachNewMove[];


extern const u8 gText_DecimalPoint[];


extern const u8 gText_Rooftop2[];


extern const u8 gText_TextSpeed[];
extern const u8 gText_BattleScene[];
extern const u8 gText_BattleStyle[];
extern const u8 gText_Sound[];
extern const u8 gText_ButtonMode[];
extern const u8 gText_Frame[];
extern const u8 gText_OptionMenuCancel[];
extern const u8 gText_TextSpeedSlow[];
extern const u8 gText_TextSpeedMid[];
extern const u8 gText_TextSpeedFast[];
extern const u8 gText_BattleSceneOn[];
extern const u8 gText_BattleSceneOff[];
extern const u8 gText_BattleStyleShift[];
extern const u8 gText_BattleStyleSet[];
extern const u8 gText_SoundMono[];
extern const u8 gText_SoundStereo[];
extern const u8 gText_ButtonTypeHelp[];
extern const u8 gText_ButtonTypeLR[];
extern const u8 gText_ButtonTypeLEqualsA[];
extern const u8 gText_Option[];
extern const u8 gText_FrameType[];
extern const u8 gTextJP_Type[];
extern const u8 gText_PickSwitchCancel[];


extern const u8 gText_PkmnIsEvolving[];
extern const u8 gText_CongratsPkmnEvolved[];
extern const u8 gText_EllipsisQuestionMark[];
extern const u8 gText_PkmnStoppedEvolving[];


extern const u8 gText_ShopBuy[];
extern const u8 gText_ShopSell[];
extern const u8 gText_ShopQuit[];
extern const u8 gText_AnythingElseICanHelp[];
extern const u8 gText_QuitShopping[];
extern const u8 gText_PokedollarVar1[];
extern const u8 gText_YouDontHaveMoney[];
extern const u8 gText_Var1CertainlyHowMany[];
extern const u8 gText_InBagVar1[];
extern const u8 gText_Var1AndYouWantedVar2[];
extern const u8 gText_HereYouGoThankYou[];
extern const u8 gText_NoMoreRoomForThis[];


extern const u8 gText_PokedexTableOfContents[];
extern const u8 gText_PickOK[];
extern const u8 gText_Seen[];
extern const u8 gText_Owned[];
extern const u8 gText_Kanto[];
extern const u8 gText_National[];
extern const u8 gText_PokemonListNoColor[];
extern const u8 gText_SearchNoColor[];
extern const u8 gText_5Dashes[];
extern const u8 gText_PickFlipPageCheckCancel[];
extern const u8 gText_PokedexNo[];
extern const u8 gText_Page[];
extern const u8 gText_DexCategory_GrasslandPkmn[];
extern const u8 gText_DexCategory_ForestPkmn[];
extern const u8 gText_DexCategory_WatersEdgePkmn[];
extern const u8 gText_DexCategory_SeaPkmn[];
extern const u8 gText_DexCategory_CavePkmn[];
extern const u8 gText_DexCategory_MountainPkmn[];
extern const u8 gText_DexCategory_RoughTerrainPkmn[];
extern const u8 gText_DexCategory_UrbanPkmn[];
extern const u8 gText_DexCategory_RarePkmn[];
extern const u8 gText_PokemonList[];
extern const u8 gText_NumericalMode[];
extern const u8 gText_PokemonHabitats[];
extern const u8 gText_Search[];
extern const u8 gText_AToZMode[];
extern const u8 gText_TypeMode[];
extern const u8 gText_LightestMode[];
extern const u8 gText_SmallestMode[];
extern const u8 gText_PokedexOther[];
extern const u8 gText_ClosePokedex[];
extern const u8 gText_NumericalModeKanto[];
extern const u8 gText_NumericalModeNational[];
extern const u8 gText_PokedexPokemon[];
extern const u8 gText_HT[];
extern const u8 gText_WT[];
extern const u8 gText_Lbs[];
extern const u8 gText_Cry[];
extern const u8 gText_NextDataCancel[];
extern const u8 gText_Next[];
extern const u8 gText_CancelPreviousData[];
extern const u8 gText_Area[];
extern const u8 gText_Size[];
extern const u8 gText_AreaUnknown[];


extern const u8 gText_Lv[];
extern const u8 gDaycareText_GetAlongVeryWell[];
extern const u8 gDaycareText_GetAlong[];
extern const u8 gDaycareText_DontLikeOther[];
extern const u8 gDaycareText_PlayOther[];
extern const u8 gExpandedPlaceholder_Empty[];
extern const u8 gText_HatchedFromEgg[];
extern const u8 gText_NickHatchPrompt[];


extern const u8 gText_WaitingTrainerFinishReading[];
extern const u8 gText_TrainerCardName[];
extern const u8 gText_TrainerCardIDNo[];
extern const u8 gText_TrainerCardMoney[];
extern const u8 gText_TrainerCardYen[];
extern const u8 gText_TrainerCardPokedex[];
extern const u8 gText_TrainerCardNull[];
extern const u8 gText_Colon2[];
extern const u8 gText_TrainerCardTime[];
extern const u8 gText_Var1sTrainerCard[];
extern const u8 gText_HallOfFameDebut[];
extern const u8 gText_WinLossRatio[];
extern const u8 gText_PokemonTrades[];
extern const u8 gText_BerryCrushes[];
extern const u8 gText_UnionRoomTradesBattles[];
extern const u8 gText_LinkBattles[];
extern const u8 gText_LinkCableBattles[];


extern const u8 gText_RegionMap_DPadMove[];
extern const u8 gText_RegionMap_Space[];
extern const u8 gText_RegionMap_AButtonGuide[];
extern const u8 gText_RegionMap_AButtonCancel[];
extern const u8 gText_RegionMap_AButtonCancel2[];
extern const u8 gText_RegionMap_AButtonSwitch[];
extern const u8 gText_RegionMap_AButtonOK[];
extern const u8 gText_RegionMap_UpDownPick[];
extern const u8 gText_RegionMap_NoData[];
extern const u8 gText_RegionMap_AreaDesc_ViridianForest[];
extern const u8 gText_RegionMap_AreaDesc_MtMoon[];
extern const u8 gText_RegionMap_AreaDesc_DiglettsCave[];
extern const u8 gText_RegionMap_AreaDesc_VictoryRoad[];
extern const u8 gText_RegionMap_AreaDesc_PokemonMansion[];
extern const u8 gText_RegionMap_AreaDesc_SafariZone[];
extern const u8 gText_RegionMap_AreaDesc_RockTunnel[];
extern const u8 gText_RegionMap_AreaDesc_SeafoamIslands[];
extern const u8 gText_RegionMap_AreaDesc_PokemonTower[];
extern const u8 gText_RegionMap_AreaDesc_CeruleanCave[];
extern const u8 gText_RegionMap_AreaDesc_PowerPlant[];
extern const u8 gText_RegionMap_AreaDesc_MtEmber[];
extern const u8 gText_RegionMap_AreaDesc_BerryForest[];
extern const u8 gText_RegionMap_AreaDesc_IcefallCave[];
extern const u8 gText_RegionMap_AreaDesc_LostCave[];
extern const u8 gText_RegionMap_AreaDesc_TanobyRuins[];
extern const u8 gText_RegionMap_AreaDesc_AlteringCave[];
extern const u8 gText_RegionMap_AreaDesc_PatternBush[];
extern const u8 gText_RegionMap_AreaDesc_DottedHole[];


extern const u8 gText_PlayerScurriedToCenter[];
extern const u8 gText_PlayerScurriedBackHome[];


extern const u8 gText_SaveFailedCheckingBackup[];
extern const u8 gText_BackupMemoryDamaged[];
extern const u8 gText_SaveCompletePressA[];


extern const u8 gText_DepositItem[];


extern const u8 gOtherText_Register[];
extern const u8 gOtherText_Walk[];
extern const u8 gOtherText_Check[];
extern const u8 gOtherText_Open[];
extern const u8 gOtherText_Deselect[];
extern const u8 gText_Items2[];
extern const u8 gText_PokeBalls2[];
extern const u8 gText_KeyItems2[];
extern const u8 gText_CloseBag[];
extern const u8 gText_CantWriteMailHere[];
extern const u8 gText_DepositHowManyStrVars1[];
extern const u8 gText_DepositedStrVar2StrVar1s[];
extern const u8 gText_NoRoomToStoreItems[];


extern const u8 gText_CommStandbyAwaitingOtherPlayer[];
extern const u8 gText_RefusedBattle[];
extern const u8 gText_BattleWasRefused[];


extern const u8 gText_F700JoinedChat[];
extern const u8 gText_F700LeftChat[];
extern const u8 gText_Hello[];
extern const u8 gText_Pokemon2[];
extern const u8 gText_Trade[];
extern const u8 gText_Battle[];
extern const u8 gText_Lets[];
extern const u8 gText_Ok[];
extern const u8 gText_Sorry[];
extern const u8 gText_YaySmileEmoji[];
extern const u8 gText_ThankYou[];
extern const u8 gText_ByeBye[];


extern const u8 gText_QuitChatting[];
extern const u8 gText_RegisterTextWhere[];
extern const u8 gText_RegisterTextHere[];
extern const u8 gText_InputText[];
extern const u8 gText_ExitingTheChat[];
extern const u8 gText_LeaderHasLeftEndingChat[];
extern const u8 gText_RegisteredTextChanged_OKtoSave[];
extern const u8 gText_RegisteredTextChanged_AlreadySavedFile[];
extern const u8 gText_RegisteredTextChanged_SavingDontTurnOff[];
extern const u8 gText_RegisteredTextChanged_SavedTheGame[];
extern const u8 gText_IfLeaderLeavesChatWillEnd[];
extern const u8 gText_Upper[];
extern const u8 gText_Lower[];
extern const u8 gText_Symbols[];
extern const u8 gText_Register2[];
extern const u8 gText_Exit[];


extern const u8 gText_Dynamic0Players[];
extern const u8 gText_Dynamic1Players[];
extern const u8 gText_Dynamic2Players[];
extern const u8 gText_Dynamic3Players[];
extern const u8 gText_WirelessCommunicationStatus[];
extern const u8 gText_PeopleTrading[];
extern const u8 gText_PeopleBattling[];
extern const u8 gText_PeopleInUnionRoom[];
extern const u8 gText_PeopleCommunicating[];


extern const u8 gJPText_ReceiveMysteryGiftWithEReader[];
extern const u8 gJPText_SelectConnectFromEReaderMenu[];
extern const u8 gJPText_SelectConnectWithGBA[];
extern const u8 gJPText_LinkIsIncorrect[];
extern const u8 gJPText_CardReadingHasBeenHalted[];
extern const u8 gJPText_Connecting[];
extern const u8 gJPText_ConnectionErrorCheckLink[];
extern const u8 gJPText_ConnectionErrorTryAgain[];
extern const u8 gJPText_AllowEReaderToLoadCard[];
extern const u8 gJPText_ConnectionComplete[];
extern const u8 gJPText_NewTrainerHasComeToSevii[];
extern const u8 gJPText_PleaseWaitAMoment[];
extern const u8 gJPText_WriteErrorUnableToSaveData[];


extern const u8 gText_WantToPlayAgain2[];
extern const u8 gText_SavingDontTurnOffPower[];
extern const u8 gText_SomeoneDroppedOut2[];
extern const u8 gText_CommunicationStandby4[];
extern const u8 gText_AwesomeWonF701F700[];
extern const u8 gText_FilledStorageSpace2[];
extern const u8 gText_CantHoldMore[];
extern const u8 gText_SpacePoints2[];
extern const u8 gText_SpaceTimes3[];
extern const u8 gText_JumpsInARow[];
extern const u8 gText_BestScore2[];
extern const u8 gText_ExcellentsInARow[];
extern const u8 gText_PkmnJumpRecords[];


extern const u8 gText_NumPlayerLink[];
extern const u8 gText_BronzeCard[];
extern const u8 gText_CopperCard[];
extern const u8 gText_SilverCard[];
extern const u8 gText_GoldCard[];


extern const u8 gText_BerryCrush_AreYouReady[];
extern const u8 gText_BerryCrush_WaitForOthersToChooseBerry[];
extern const u8 gText_BerryCrush_GainedXUnitsOfPowder[];
extern const u8 gText_BerryCrush_RecordingGameResults[];
extern const u8 gText_BerryCrush_WantToPlayAgain[];
extern const u8 gText_BerryCrush_NoBerries[];
extern const u8 gText_BerryCrush_MemberDroppedOut[];
extern const u8 gText_BerryCrush_TimeUp[];
extern const u8 gText_BerryCrush_CommunicationStandby[];
extern const u8 gText_1_ClrBluShdwLtBlu_Dynamic0[];
extern const u8 gText_1_Dynamic0[];
extern const u8 gText_SpaceTimes2[];
extern const u8 gText_XDotY[];
extern const u8 gText_StrVar1Berry[];
extern const u8 gText_TimeColon[];
extern const u8 gText_PressingSpeed[];
extern const u8 gText_Silkiness[];
extern const u8 gText_StrVar1[];
extern const u8 gText_SpaceMin[];
extern const u8 gText_XDotY2[];
extern const u8 gText_SpaceSec[];
extern const u8 gText_XDotY3[];
extern const u8 gText_TimesPerSec[];
extern const u8 gText_Var1Percent[];
extern const u8 gText_PressesRankings[];
extern const u8 gText_CrushingResults[];
extern const u8 gText_BerryCrush2[];
extern const u8 gText_PressingSpeedRankings[];
extern const u8 gText_Var1Players[];
extern const u8 gText_NeatnessRankings[];
extern const u8 gText_CooperativeRankings[];
extern const u8 gText_PressingPowerRankings[];


extern const u8 gText_QuestLog_PreviouslyOnYourQuest[];
extern const u8 gText_QuestLog_SwitchMon1WithMon2[];
extern const u8 gText_QuestLog_SwappedHeldItemsOnMon[];
extern const u8 gText_QuestLog_TookHeldItemFromMon[];
extern const u8 gText_QuestLog_UsedItemOnMonAtThisLocation[];
extern const u8 gText_QuestLog_UsedTheItem[];
extern const u8 gText_QuestLog_UsedTheKeyItem[];
extern const u8 gText_QuestLog_MonLearnedMoveFromTM[];
extern const u8 gText_QuestLog_MonReplacedMoveWithTM[];
extern const u8 gText_QuestLog_MonsWereFullyRestoredAtCenter[];
extern const u8 gText_QuestLog_PlayerBattledChampionRival[];
extern const u8 gText_QuestLog_PlayerSentOutMon1RivalSentOutMon2[];
extern const u8 gText_QuestLog_WonTheMatchAsAResult[];
extern const u8 gText_QuestLog_StoredItemInPC[];
extern const u8 gText_QuestLog_WithdrewItemFromPC[];
extern const u8 gText_QuestLog_TradedMon1ForPersonsMon2[];
extern const u8 gText_QuestLog_SingleBattleWithPersonResultedInOutcome[];
extern const u8 gText_QuestLog_DoubleBattleWithPersonResultedInOutcome[];
extern const u8 gText_QuestLog_MultiBattleWithPeopleResultedInOutcome[];
extern const u8 gText_QuestLog_Win[];
extern const u8 gText_QuestLog_Loss[];
extern const u8 gText_QuestLog_MingledInUnionRoom[];
extern const u8 gText_QuestLog_DepartedPlaceInTownForNextDestination[];
extern const u8 gText_QuestLog_SwitchedMonsBetweenBoxes[];
extern const u8 gText_QuestLog_MovedMonToNewBox[];
extern const u8 gText_QuestLog_SwitchedMonsWithinBox[];
extern const u8 gText_QuestLog_MovedMonWithinBox[];
extern const u8 gText_QuestLog_SwitchedPartyMonForPCMon[];
extern const u8 gText_QuestLog_WithdrewMonFromPC[];
extern const u8 gText_QuestLog_DepositedMonInPC[];
extern const u8 gText_QuestLog_SwitchedMultipleMons[];
extern const u8 gText_QuestLog_ADifferentSpot[];
extern const u8 gText_QuestLog_GaveMonHeldItemFromPC[];
extern const u8 gText_QuestLog_SwappedHeldItemFromPC[];
extern const u8 gText_QuestLog_ChattedWithManyTrainers[];
extern const u8 gText_QuestLog_Handily[];
extern const u8 gText_QuestLog_Tenaciously[];
extern const u8 gText_QuestLog_Somehow[];
extern const u8 gText_QuestLog_TradedMon1ForTrainersMon2[];
extern const u8 gText_QuestLog_BattledTrainerEndedInOutcome[];
extern const u8 gText_QuestLog_BoughtItem[];
extern const u8 gText_QuestLog_BoughtItemsIncludingItem[];
extern const u8 gText_QuestLog_SoldNumOfItem[];
extern const u8 gText_QuestLog_SoldItemsIncludingItem[];
extern const u8 gText_QuestLog_JustOne[];
extern const u8 gText_QuestLog_Num[];
extern const u8 gText_QuestLog_UsedSoftboiled[];
extern const u8 gText_QuestLog_UsedMilkDrink[];
extern const u8 gText_QuestLog_MonLearnedMoveFromHM[];
extern const u8 gText_QuestLog_MonReplacedMoveWithHM[];
extern const u8 gText_QuestLog_DefeatedWildMon[];
extern const u8 gText_QuestLog_DefeatedWildMons[];
extern const u8 gText_QuestLog_CaughtWildMon[];
extern const u8 gText_QuestLog_CaughtWildMons[];
extern const u8 gText_QuestLog_DefeatedWildMonAndCaughtWildMon[];
extern const u8 gText_QuestLog_DefeatedWildMonAndCaughtWildMons[];
extern const u8 gText_QuestLog_DefeatedWildMonsAndCaughtWildMon[];
extern const u8 gText_QuestLog_DefeatedWildMonsAndCaughtWildMons[];
extern const u8 gText_QuestLog_GaveMonHeldItem[];
extern const u8 gText_QuestLog_GaveMonHeldItem2[];
extern const u8 gText_QuestLog_UsedCut[];
extern const u8 gText_QuestLog_UsedFly[];
extern const u8 gText_QuestLog_UsedSurf[];
extern const u8 gText_QuestLog_UsedStrength[];
extern const u8 gText_QuestLog_UsedFlash[];
extern const u8 gText_QuestLog_UsedRockSmash[];
extern const u8 gText_QuestLog_UsedWaterfall[];
extern const u8 gText_QuestLog_UsedDive[];
extern const u8 gText_QuestLog_UsedDigInLocation[];
extern const u8 gText_QuestLog_UsedSweetScent[];
extern const u8 gText_QuestLog_UsedTeleportToLocation[];
extern const u8 gText_QuestLog_LeftTownsLocationForNextDestination[];
extern const u8 gText_QuestLog_PlayedGamesAtGameCorner[];
extern const u8 gText_QuestLog_RestedAtHome[];
extern const u8 gText_QuestLog_LeftOaksLab[];
extern const u8 gText_QuestLog_GymWasFullOfToughTrainers[];
extern const u8 gText_QuestLog_DepartedGym[];
extern const u8 gText_QuestLog_HadGreatTimeInSafariZone[];
extern const u8 gText_QuestLog_ManagedToGetOutOfLocation[];
extern const u8 gText_QuestLog_TookOnGymLeadersMonWithMonAndWon[];
extern const u8 gText_QuestLog_TookOnEliteFoursMonWithMonAndWon[];
extern const u8 gText_QuestLog_TookOnTrainersMonWithMonAndWon[];
extern const u8 gText_QuestLog_Coolly[];
extern const u8 gText_QuestLog_Barely[];
extern const u8 gText_QuestLog_UsedEscapeRope[];
extern const u8 gText_QuestLog_Draw[];
extern const u8 gText_QuestLog_DepartedTheLocationForNextDestination[];
extern const u8 gText_QuestLog_DepartedFromLocationToNextDestination[];
extern const u8 gText_QuestLog_ObtainedItemInLocation[];
extern const u8 gText_QuestLog_ArrivedInLocation[];
extern const u8 gText_QuestLog_SavedGameAtLocation[];
extern const u8 gText_QuestLog_Home[];
extern const u8 gText_QuestLog_OakResearchLab[];
extern const u8 gText_QuestLog_Gym[];
extern const u8 gText_QuestLog_PokemonLeagueGate[];
extern const u8 gText_QuestLog_ViridianForest[];
extern const u8 gText_QuestLog_PewterMuseumOfScience[];
extern const u8 gText_QuestLog_MtMoon[];
extern const u8 gText_QuestLog_BikeShop[];
extern const u8 gText_QuestLog_BillsHouse[];
extern const u8 gText_QuestLog_DayCare[];
extern const u8 gText_QuestLog_UndergroundPath[];
extern const u8 gText_QuestLog_PokemonFanClub[];
extern const u8 gText_QuestLog_SSAnne[];
extern const u8 gText_QuestLog_DiglettsCave[];
extern const u8 gText_QuestLog_RockTunnel[];
extern const u8 gText_QuestLog_PowerPlant[];
extern const u8 gText_QuestLog_PokemonTower[];
extern const u8 gText_QuestLog_VolunteerHouse[];
extern const u8 gText_QuestLog_NameRatersHouse[];
extern const u8 gText_QuestLog_CeladonDeptStore[];
extern const u8 gText_QuestLog_CeladonMansion[];
extern const u8 gText_QuestLog_RocketGameCorner[];
extern const u8 gText_QuestLog_Restaurant[];
extern const u8 gText_QuestLog_RocketHideout[];
extern const u8 gText_QuestLog_SafariZone[];
extern const u8 gText_QuestLog_WardensHome[];
extern const u8 gText_QuestLog_FightingDojo[];
extern const u8 gText_QuestLog_SilphCo[];
extern const u8 gText_QuestLog_SeafoamIslands[];
extern const u8 gText_QuestLog_PokemonMansion[];
extern const u8 gText_QuestLog_PokemonResearchLab[];
extern const u8 gText_QuestLog_VictoryRoad[];
extern const u8 gText_QuestLog_PokemonLeague[];
extern const u8 gText_QuestLog_CeruleanCave[];


extern const u8 gText_ClearAllSaveData[];
extern const u8 gText_ClearingData[];


extern const u8 gText_CombineFourWordsOrPhrases[];
extern const u8 gText_AndMakeYourProfile[];
extern const u8 gText_MakeMessageSixPhrases[];
extern const u8 gText_MaxTwoTwelveLetterPhrases[];
extern const u8 gText_FindWordsThatDescribeYour[];
extern const u8 gText_FeelingsRightNow[];
extern const u8 gText_CombineNineWordsOrPhrases[];
extern const u8 gText_AndMakeAMessage[];
extern const u8 gText_ChangeJustOneWordOrPhrase[];
extern const u8 gText_AndImproveTheBardsSong[];
extern const u8 gText_AndFillOutTheQuestionnaire[];
extern const u8 gText_YourProfile[];
extern const u8 gText_YourFeelingAtTheBattlesStart[];
extern const u8 gText_WhatYouSayIfYouWin[];
extern const u8 gText_WhatYouSayIfYouLose[];
extern const u8 gText_TheAnswer[];
extern const u8 gText_TheMailMessage[];
extern const u8 gText_TheNewSong[];
extern const u8 gText_CombineTwoWordsOrPhrases[];
extern const u8 gText_AndMakeATrendySaying[];
extern const u8 gText_TheTrendySaying[];
extern const u8 gText_IsAsShownOkay[];
extern const u8 gText_AllTextBeingEditedWill[];
extern const u8 gText_BeDeletedThatOkay[];
extern const u8 gText_QuitEditing[];
extern const u8 gText_StopGivingPkmnMail[];
extern const u8 gText_Profile[];
extern const u8 gText_AtTheBattlesStart[];
extern const u8 gText_UponWinningABattle[];
extern const u8 gText_UponLosingABattle[];
extern const u8 gText_TheBardsSong[];
extern const u8 gText_WhatsHipAndHappening[];
extern const u8 gText_Interview[];
extern const u8 gText_Questionnaire[];
extern const u8 gText_DelAllCancelOk[];


extern const u8 gText_MoveOkBack[];
extern const u8 gText_AlphabetUpperLower[];
extern const u8 gText_YourName[];
extern const u8 gText_BoxName[];
extern const u8 gText_PkmnsNickname[];
extern const u8 gText_RivalsName[];


extern const u8 gText_WithdrawPokemon[];
extern const u8 gText_WithdrawMonDescription[];
extern const u8 gText_DepositPokemon[];
extern const u8 gText_DepositMonDescription[];
extern const u8 gText_MovePokemon[];
extern const u8 gText_MoveMonDescription[];
extern const u8 gText_MoveItems[];
extern const u8 gText_MoveItemsDescription[];
extern const u8 gText_SeeYa[];
extern const u8 gText_SeeYaDescription[];
extern const u8 gText_PartyFull[];
extern const u8 gText_JustOnePkmn[];
extern const u8 gText_Box[];
extern const u8 gText_ExitFromBox[];
extern const u8 gText_WhatDoYouWantToDo[];
extern const u8 gText_PleasePickATheme[];
extern const u8 gText_PickTheWallpaper[];
extern const u8 gText_PkmnIsSelected[];
extern const u8 gText_JumpToWhichBox[];
extern const u8 gText_DepositInWhichBox[];
extern const u8 gText_PkmnWasDeposited[];
extern const u8 gText_BoxIsFull2[];
extern const u8 gText_ReleaseThisPokemon[];
extern const u8 gText_PkmnWasReleased[];
extern const u8 gText_ByeByePkmn[];
extern const u8 gText_MarkYourPkmn[];
extern const u8 gText_ThatsYourLastPkmn[];
extern const u8 gText_YourPartysFull[];
extern const u8 gText_YoureHoldingAPkmn[];
extern const u8 gText_WhichOneWillYouTake[];
extern const u8 gText_YouCantReleaseAnEgg[];
extern const u8 gText_ContinueBoxOperations[];
extern const u8 gText_PkmnCameBack[];
extern const u8 gText_WasItWorriedAboutYou[];
extern const u8 gText_FourEllipsesExclamation[];
extern const u8 gText_PleaseRemoveTheMail[];
extern const u8 gText_PkmnIsSelected[];
extern const u8 gText_GiveToAPkmn[];
extern const u8 gText_PlacedItemInBag[];
extern const u8 gText_BagIsFull2[];
extern const u8 gText_PutItemInBag[];
extern const u8 gText_ItemIsNowHeld[];
extern const u8 gText_ChangedToNewItem[];
extern const u8 gText_MailCantBeStored[];
extern const u8 gPCText_Cancel[];
extern const u8 gPCText_Store[];
extern const u8 gPCText_Withdraw[];
extern const u8 gPCText_Move[];
extern const u8 gPCText_Shift[];
extern const u8 gPCText_Place[];
extern const u8 gPCText_Summary[];
extern const u8 gPCText_Release[];
extern const u8 gPCText_Mark[];
extern const u8 gPCText_Jump[];
extern const u8 gPCText_Wallpaper[];
extern const u8 gPCText_Name[];
extern const u8 gPCText_Take[];
extern const u8 gPCText_Give[];
extern const u8 gPCText_Switch[];
extern const u8 gPCText_Bag[];
extern const u8 gPCText_Info[];
extern const u8 gPCText_Scenery1[];
extern const u8 gPCText_Scenery2[];
extern const u8 gPCText_Scenery3[];
extern const u8 gPCText_Etcetera[];
extern const u8 gPCText_Forest[];
extern const u8 gPCText_City[];
extern const u8 gPCText_Desert[];
extern const u8 gPCText_Savanna[];
extern const u8 gPCText_Crag[];
extern const u8 gPCText_Volcano[];
extern const u8 gPCText_Snow[];
extern const u8 gPCText_Cave[];
extern const u8 gPCText_Beach[];
extern const u8 gPCText_Seafloor[];
extern const u8 gPCText_River[];
extern const u8 gPCText_Sky[];
extern const u8 gPCText_PolkaDot[];
extern const u8 gPCText_Pokecenter[];
extern const u8 gPCText_Machine[];
extern const u8 gPCText_Simple[];


extern const u8 gText_Counting_1[];
extern const u8 gText_Counting_2And[];
extern const u8 gText_Poof[];
extern const u8 gText_WasUsedOn[];
extern const u8 gText_Period[];
extern const u8 gText_LevelRoseTo[];
extern const u8 gText_Period2[];
extern const u8 gText_MonLearnedTMHM[];
extern const u8 gText_MonForgotMove[];
extern const u8 gText_And[];
extern const u8 gText_MachineSet[];
extern const u8 gText_Huh[];
extern const u8 gText_LevelUp_MaxHP[];
extern const u8 gText_LevelUp_Attack[];
extern const u8 gText_LevelUp_Defense[];
extern const u8 gText_LevelUp_SpAtk[];
extern const u8 gText_LevelUp_SpDef[];
extern const u8 gText_LevelUp_Speed[];
extern const u8 gText_LevelUp_Minus[];
extern const u8 gText_LevelUp_Plus[];


extern const u8 gText_PokemonOnHook[];
extern const u8 gText_NotEvenANibble[];
extern const u8 gText_ItGotAway[];


extern const u8 gText_PokeSum_PageName_KnownMoves[];
extern const u8 gText_PokeSum_Controls_PickSwitch[];
extern const u8 gText_PokeSum_Controls_Pick[];
extern const u8 gText_PokeSum_NoData[];
extern const u8 gText_PokeSum_Controls_PageDetail[];
extern const u8 gText_PokeSum_DexNoUnknown[];
extern const u8 gText_PokeSum_Item_None[];
extern const u8 gText_PokeSum_OneHyphen[];
extern const u8 gText_PokeSum_TwoHyphens[];
extern const u8 gText_PokeSum_PP[];
extern const u8 gText_Somewhere[];
extern const u8 gText_PokeSum_ATrade[];
extern const u8 gText_PokeSum_FatefulEncounterHatched_BoldGentleGrammar[];
extern const u8 gText_PokeSum_FatefulEncounterHatched[];
extern const u8 gText_PokeSum_Hatched_BoldGentleGrammar[];
extern const u8 gText_PokeSum_Hatched[];
extern const u8 gText_PokeSum_FatefulEncounterMet_BoldGentleGrammar[];
extern const u8 gText_PokeSum_FatefulEncounterMet[];
extern const u8 gText_PokeSum_Met_BoldGentleGrammar[];
extern const u8 gText_PokeSum_Met[];
extern const u8 gText_PokeSum_MetInATrade_BoldGentleGrammar[];
extern const u8 gText_PokeSum_MetInATrade[];
extern const u8 gText_PokeSum_ApparentlyFatefulEncounterHatched_BoldGentleGrammar[];
extern const u8 gText_PokeSum_ApparentlyFatefulEncounterHatched[];
extern const u8 gText_PokeSum_ApparentlyMet[];
extern const u8 gText_PokeSum_ApparentlyMet_BoldGentleGrammar[];
extern const u8 gText_PokeSum_ExpPoints[];
extern const u8 gText_PokeSum_NextLv[];
extern const u8 gText_PokeSum_PageName_PokemonInfo[];
extern const u8 gText_PokeSum_Controls_PageCancel[];
extern const u8 gText_PokeSum_Controls_Cancel[];
extern const u8 gText_PokeSum_PageName_PokemonSkills[];
extern const u8 gText_PokeSum_Controls_Page[];
extern const u8 gText_PokeSum_Controls_PickDelete[];
extern const u8 gText_PokeSum_HmMovesCantBeForgotten[];
extern const u8 gText_PokeSum_EggHatch_LongTime[];
extern const u8 gText_PokeSum_EggHatch_SomeTime[];
extern const u8 gText_PokeSum_EggHatch_Soon[];
extern const u8 gText_PokeSum_EggHatch_AlmostReady[];
extern const u8 gText_PokeSum_EggOrigin_DayCare[];
extern const u8 gText_PokeSum_EggOrigin_Trade[];
extern const u8 gText_PokeSum_EggOrigin_TravelingMan[];
extern const u8 gText_PokeSum_EggOrigin_Trade[];
extern const u8 gText_PokeSum_EggOrigin_NicePlace[];
extern const u8 gText_PokeSum_EggOrigin_Spa[];
extern const u8 gText_PokeSum_EggOrigin_Trade[];
# 19 "src/start_menu.c" 2
# 1 "include/menu_helpers.h" 1
# 11 "include/menu_helpers.h"
struct YesNoFuncTable
{
    TaskFunc yesFunc;
    TaskFunc noFunc;
};

bool16 RunTextPrinters_CheckActive(u8 textPrinterId);
bool8 MenuHelpers_CallLinkSomething(void);
bool8 sub_80BF748(void);
bool8 MenuHelpers_LinkSomething(void);
void SetVBlankHBlankCallbacksToNull(void);
void ResetAllBgsCoordinatesAndBgCntRegs(void);
u8 GetDialogBoxFontId(void);
bool8 AdjustQuantityAccordingToDPadInput(s16 *quantity_p, u16 qmax);
void DisplayMessageAndContinueTask(u8 taskId, u8 windowId, u16 tileNum, u8 paletteNum, u8 fontId, u8 textSpeed, const u8 *string, void *taskFunc);
void CreateYesNoMenuWithCallbacks(u8 taskId, const struct WindowTemplate *template, u8 fontId, u8 left, u8 top, u16 tileStart, u8 palette, const struct YesNoFuncTable *yesNo);
u8 GetLRKeysState(void);
u8 GetLRKeysPressedAndHeld(void);
bool8 itemid_link_can_give_berry(u16 itemId);
bool8 CanWriteMailHere(u16 itemId);
void ResetVramOamAndBgCntRegs(void);
# 20 "src/start_menu.c" 2
# 1 "include/text_window.h" 1





struct TilesPal
{
    u32 *tiles;
    u16 *pal;
};

void rbox_fill_rectangle(u8 windowId);
const u16 *GetTextWindowPalette(u8 id);
const u16 *GetOverworldTextboxPalettePtr(void);
void LoadMenuMessageWindowGfx(u8 windowId, u16 tileStart, u8 palette);
void LoadStdWindowGfx(u8 windowId, u16 tileStart, u8 palette);
void LoadUserWindowGfx(u8 windowId, u16 tileStart, u8 palette);
void LoadUserWindowGfx2(u8 windowId, u16 tileStart, u8 palette);
void LoadStdWindowGfxOnBg(u8 bgId, u16 tileStart, u8 palette);
void DrawTextBorderOuter(u8 windowId, u16 tileStart, u8 palette);
void DrawTextBorderInner(u8 windowId, u16 tileNum, u8 palNum);
void LoadHelpMessageWindowGfx(u8 windowId, u16 destOffset, u8 palIdx);
void LoadSignpostWindowGfx(u8 windowId, u16 destOffset, u8 palIdx);
void LoadStdWindowTiles(u8 windowId, u16 destOffset);
void LoadQuestLogWindowTiles(u8 windowId, u16 destOffset);
# 21 "src/start_menu.c" 2
# 1 "include/field_fadetransition.h" 1





void FieldCB_RushInjuredPokemonToCenter(void);
void DoWarp(void);
void DoDiveWarp(void);
void DoDoorWarp(void);

void DoFallWarp(void);
void DoTeleportWarp(void);
void DoTeleport2Warp(void);
void FieldCB_DefaultWarpExit(void);
void WarpFadeOutScreen(void);
void FieldCB_ContinueScriptHandleMusic(void);
void FadeInFromBlack(void);
void FadeTransition_FadeInOnReturnToStartMenu(void);
void WarpFadeInScreen(void);

void FieldCB_ContinueScriptUnionRoom(void);

bool32 FieldFadeTransitionBackgroundEffectIsFinished(void);
void palette_bg_faded_fill_black(void);
void DoStairWarp(u16 metatileBehavior, u16 delay);
void DoEscalatorWarp(u8 a0);
void DoLavaridgeGymB1FWarp(void);
void DoLavaridgeGym1FWarp(void);
void DoTeleportWarp(void);
void DoUnionRoomWarp(void);
void FieldCB_ReturnToFieldWirelessLink(void);
void FieldCB_ReturnToFieldCableLink(void);
bool8 FieldCB_ReturnToFieldOpenStartMenu(void);
void FieldCB_ContinueScript(void);
void FieldCB_ContinueScriptHandleMusic(void);
void FieldCB_WarpExitFadeFromBlack(void);
# 22 "src/start_menu.c" 2
# 1 "include/field_player_avatar.h" 1





void ClearPlayerAvatarInfo(void);
void SetPlayerAvatarExtraStateTransition(u8, u8);
u8 GetPlayerAvatarGenderByGraphicsId(u8);
bool8 TestPlayerAvatarFlags(u8);
void PlayerGetDestCoords(s16 *, s16 *);
u8 GetPlayerFacingDirection(void);
u8 GetPlayerMovementDirection(void);
u8 PlayerGetCopyableMovement(void);
void MovePlayerNotOnBike(u8 direction, u16 heldKeys);

void MovementType_Player(struct Sprite *sprite);
void HandleEnforcedLookDirectionOnPlayerStopMoving(void);
void StopPlayerAvatar(void);
void GetXYCoordsOneStepInFrontOfPlayer(s16 *xPtr, s16 *yPtr);
u8 GetPlayerAvatarGraphicsIdByStateId(u8);
void SetPlayerAvatarStateMask(u8 mask);
void AlignFishingAnimationFrames(struct Sprite *sprite);
void CreateStopSurfingTask_NoMusicChange(u8 direction);
void SavePlayerFacingDirectionForTeleport(u8 direction);
void SetPlayerAvatarTransitionFlags(u16 flags);
bool8 IsPlayerFacingSurfableFishableWater(void);
void StartFishing(u8 secondaryId);
u8 GetPlayerAvatarObjectId(void);
u8 PlayerGetElevation(void);
u8 GetPlayerAvatarGraphicsIdByCurrentState(void);
void StartPlayerAvatarSummonMonForFieldMoveAnim(void);
void SetPlayerInvisibility(bool8);
void StartTeleportInPlayerAnim(void);
void StartTeleportWarpOutPlayerAnim(void);
bool32 WaitTeleportWarpOutPlayerAnim(void);
bool32 WaitTeleportInPlayerAnim(void);
bool8 PartyHasMonWithSurf(void);
bool8 IsPlayerSurfingNorth(void);
u8 player_get_pos_including_state_based_drift(s16 *x, s16 *y);
void StartPlayerAvatarVsSeekerAnim(void);
u8 GetRivalAvatarGraphicsIdByStateIdAndGender(u8 state, u8 gender);
u8 GetPlayerAvatarGraphicsIdByStateIdAndGender(u8 state, u8 gender);
u8 CheckForObjectEventCollision(struct ObjectEvent *objectEvent, s16 x, s16 y, u8 direction, u8 metatileBehavior);
void PlayerWalkSlower(u8 direction);
void PlayerWalkSlow(u8 direction);
void PlayerWalkNormal(u8 direction);
void PlayerWalkFast(u8 direction);
void PlayerGlide(u8 direction);
void PlayerRideWaterCurrent(u8 direction);
void PlayerWalkFaster(u8 direction);
void PlayerRun(u8 direction);
void PlayerRunSlow(u8 direction);
void PlayerOnBikeCollide(u8 direction);
void PlayerNotOnBikeCollide(u8 direction);
void PlayerFaceDirection(u8 direction);
void PlayerFaceDirectionFast(u8 direction);
void PlayerTurnInPlace(u8 direction);
void PlayerJumpLedge(u8 direction);
void PlayerShakeHeadOrWalkInPlace(void);
void player_step(u8 direction, u16 newKeys, u16 heldKeys);
bool32 PlayerIsMovingOnRockStairs(u8 direction);
void UpdatePlayerAvatarTransitionState(void);
void InitPlayerAvatar(s16 x, s16 y, u8 direction, u8 gender);
void PlayerUseAcroBikeOnBumpySlope(u8 direction);
u8 GetRSAvatarGraphicsIdByGender(u8 gender);
# 23 "src/start_menu.c" 2
# 1 "include/new_menu_helpers.h" 1







extern const u16 gMenuMessageWindow_Gfx[];

void ClearScheduledBgCopiesToVram(void);
void ScheduleBgCopyTilemapToVram(u8 bgId);
void DoScheduledBgTilemapCopiesToVram(void);
void ResetTempTileDataBuffers(void);
bool8 FreeTempTileDataBuffersIfPossible(void);
void *DecompressAndCopyTileDataToVram(u8 bgId, const void *src, u32 size, u16 offset, u8 mode);
void *DecompressAndCopyTileDataToVram2(u8 bgId, const void *src, u32 size, u16 offset, u8 mode);
void DecompressAndLoadBgGfxUsingHeap(u8 bgId, const void *src, u32 size, u16 offset, u8 mode);
void DecompressAndLoadBgGfxUsingHeap2(u8 bgId, const void *src, u32 size, u16 offset, u8 mode);
void *MallocAndDecompress(const void *src, u32 * size);
void SetBgTilemapPalette(u8 bgId, u8 left, u8 top, u8 width, u8 height, u8 palette);
void CopyToBufferFromBgTilemap(u8 bgId, u16 *dest, u8 left, u8 top, u8 width, u8 height);
void ResetBgPositions(void);
void InitStandardTextBoxWindows(void);
void FreeAllOverworldWindowBuffers(void);
void InitTextBoxGfxAndPrinters(void);
u16 RunTextPrinters_CheckPrinter0Active(void);
u16 AddTextPrinterParameterized2(u8 windowId, u8 fontId, const u8 *str, u8 speed, void (*callback)(struct TextPrinterTemplate *, u16), u8 fgColor, u8 bgColor, u8 shadowColor);
void AddTextPrinterDiffStyle(bool8 allowSkippingDelayWithButtonPress);
void AddTextPrinterForMessage(bool8 allowSkippingDelayWithButtonPress);
void AddTextPrinterWithCustomSpeedForMessage(bool8 allowSkippingDelayWithButtonPress, u8 speed);
void LoadStdWindowFrameGfx(void);
void DrawDialogueFrame(u8 windowId, bool8 transfer);
void DrawStdWindowFrame(u8 windowId, bool8 copyNow);
void ClearDialogWindowAndFrame(u8 windowId, bool8 copyToVram);
void ClearStdWindowAndFrame(u8 windowId, bool8 copyNow);
void EraseFieldMessageBox(bool8 copyToVram);
void SetStdWindowBorderStyle(u8 windowId, bool8 copyToVram);
void LoadMessageBoxAndFrameGfx(u8 windowId, bool8 copyToVram);
void Menu_LoadStdPal(void);
void Menu_LoadStdPalAt(u16 offset);
void DisplayItemMessageOnField(u8 taskId, u8 fontId, const u8 *src, TaskFunc callback);
void DisplayYesNoMenuDefaultYes(void);
void DisplayYesNoMenuDefaultNo(void);
u8 GetTextSpeedSetting(void);
u8 CreateStartMenuWindow(u8 height);
u8 GetStartMenuWindowId(void);
void RemoveStartMenuWindow(void);
u16 GetStdWindowBaseTileNum(void);
void DrawHelpMessageWindowWithText(const u8 * text);
void DestroyHelpMessageWindow_(void);
void LoadSignpostWindowFrameGfx(void);
void SetDefaultFontsPointer(void);
# 24 "src/start_menu.c" 2
# 1 "include/event_object_movement.h" 1
# 9 "include/event_object_movement.h"
enum {
    PALSLOT_PLAYER,
    PALSLOT_PLAYER_REFLECTION,
    PALSLOT_NPC_1,
    PALSLOT_NPC_2,
    PALSLOT_NPC_3,
    PALSLOT_NPC_4,
    PALSLOT_NPC_1_REFLECTION,
    PALSLOT_NPC_2_REFLECTION,
    PALSLOT_NPC_3_REFLECTION,
    PALSLOT_NPC_4_REFLECTION,
    PALSLOT_NPC_SPECIAL,
    PALSLOT_NPC_SPECIAL_REFLECTION,
    OBJ_PALSLOT_COUNT

};

enum SpinnerRunnerFollowPatterns
{
    RUNFOLLOW_ANY,
    RUNFOLLOW_NORTH_SOUTH,
    RUNFOLLOW_EAST_WEST,
    RUNFOLLOW_NORTH_WEST,
    RUNFOLLOW_NORTH_EAST,
    RUNFOLLOW_SOUTH_WEST,
    RUNFOLLOW_SOUTH_EAST,
    RUNFOLLOW_NORTH_SOUTH_WEST,
    RUNFOLLOW_NORTH_SOUTH_EAST,
    RUNFOLLOW_NORTH_EAST_WEST,
    RUNFOLLOW_SOUTH_EAST_WEST
};

struct StepAnimTable
{
    const union AnimCmd *const *anims;
    u8 animPos[4];
};

typedef void (*MovementAction)(u8 direction);
# 70 "include/event_object_movement.h"
struct PairedPalettes
{
    u16 tag;
    const u16 *data;
};





u8 GetObjectEventIdByLocalIdAndMap(u8, u8, u8);
bool8 TryGetObjectEventIdByLocalIdAndMap(u8, u8, u8, u8 *);
u8 GetObjectEventIdByXY(s16, s16);
void SetObjectEventDirection(struct ObjectEvent *, u8);
void RemoveObjectEventByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup);
u16 GetBoulderRevealFlagByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup);
void LoadPlayerObjectReflectionPalette(u16, u8);
void LoadSpecialObjectReflectionPalette(u16, u8);
void TryMoveObjectEventToMapCoords(u8, u8, u8, s16, s16);
void PatchObjectPalette(u16, u8);
void SpawnObjectEventsOnReturnToField(s16 x, s16 y);
void GetMapCoordsFromSpritePos(s16, s16, s16 *, s16 *);
u8 GetFaceDirectionAnimNum(u8);
void SetSpritePosToOffsetMapCoords(s16 *, s16 *, s16, s16);
void ObjectEventClearHeldMovement(struct ObjectEvent *);
void ObjectEventClearHeldMovementIfActive(struct ObjectEvent *);
u8 CreateVirtualObject(u8 graphicsId, u8 virtualObjId, s16 x, s16 y, u8 elevation, u8 direction);
u8 CreateObjectGraphicsSprite(u16 graphicsId, SpriteCallback callback, s16 x, s16 y, u8 subpriority);
u8 TrySpawnObjectEvent(u8 localId, u8 mapNum, u8 mapGroup);
int SpawnSpecialObjectEventParameterized(u8, u8, u8, s16, s16, u8);
u8 SpawnSpecialObjectEvent(struct ObjectEventTemplate *);
void CameraObjectReset1(void);
void CameraObjectReset2(void);
void ObjectEventSetGraphicsId(struct ObjectEvent *, u8);
void ObjectEventTurn(struct ObjectEvent *, u8);
void ObjectEventTurnByLocalIdAndMap(u8, u8, u8, u8);
void ObjectEventForceSetHeldMovement(struct ObjectEvent *, u8);
const struct ObjectEventGraphicsInfo *GetObjectEventGraphicsInfo(u8);
void SetObjectInvisibility(u8 localId, u8 mapNum, u8 mapGroup, u8 state);
void FreeAndReserveObjectSpritePalettes(void);
void SetObjectPositionByLocalIdAndMap(u8 localId, u8 mapNum, u8 mapGroup, s16 x, s16 y);
void ResetObjectSubpriority(u8 localId, u8 mapNum, u8 mapGroup);
void SetObjectSubpriority(u8 localId, u8 mapNum, u8 mapGroup, u8 subpriority);
void ObjectEventGetLocalIdAndMap(struct ObjectEvent *objectEvent, void *localId, void *mapNum, void *mapGroup);
void ShiftObjectEventCoords(struct ObjectEvent *, s16, s16);
void TryOverrideObjectEventTemplateCoords(u8, u8, u8);
void UpdateObjectEventCurrentMovement(struct ObjectEvent *, struct Sprite *, bool8(struct ObjectEvent *, struct Sprite *));
u8 ObjectEventFaceOppositeDirection(struct ObjectEvent *, u8);
u8 GetOppositeDirection(u8);
u8 GetWalkInPlaceFasterMovementAction(u32);
u8 GetStepInPlaceDelay8AnimId(u32);
u8 GetWalkInPlaceNormalMovementAction(u32);
u8 GetWalkInPlaceSlowMovementAction(u32);
u8 GetWalkInPlaceFastMovementAction(u32);
u8 GetCollisionAtCoords(struct ObjectEvent *, s16, s16, u32);
void MoveCoords(u8, s16 *, s16 *);
bool8 ObjectEventIsHeldMovementActive(struct ObjectEvent *);
u8 ObjectEventClearHeldMovementIfFinished(struct ObjectEvent *);
u8 GetObjectEventIdByPosition(u16 x, u16 y, u8 elevation);
void UpdateQuestLogObjectEventCurrentMovement(struct ObjectEvent *, struct Sprite *);
bool8 ObjectEventSetHeldMovement(struct ObjectEvent *, u8);
void ShiftStillObjectEventCoords(struct ObjectEvent *);
void OverrideMovementTypeForObjectEvent(const struct ObjectEvent *, u8);
void SetTrainerMovementType(struct ObjectEvent *, u8);
u8 GetFishingDirectionAnimNum(u8 direction);
u8 GetFishingNoCatchDirectionAnimNum(u8 a0);
void ObjectEventSetGraphicsId(struct ObjectEvent *objectEvent, u8 a1);
u8 CreateFameCheckerObject(u8 graphicsId, u8 localId, s16 x, s16 y);
void InitObjectEventPalettes(u8 mode);
bool8 ObjectEventIsMovementOverridden(struct ObjectEvent *objectEvent);
u8 ObjectEventCheckHeldMovementStatus(struct ObjectEvent *objectEvent);
u8 GetWalkNormalMovementAction(u32);
u8 GetWalkFastMovementAction(u32);
u8 GetWalkFasterMovementAction(u32);
u8 GetWalkSlowerMovementAction(u32 direction);
u8 GetTrainerFacingDirectionMovementType(u8 direction);
u8 GetFaceDirectionMovementAction(u32);
u8 GetFaceDirectionFastMovementAction(u32);
void CameraObjectSetFollowedObjectId(u8 objectId);
void UnfreezeObjectEvents(void);
u8 GetSlideMovementAction(u32);
u8 GetJumpInPlaceMovementAction(u32);
u8 GetJumpMovementAction(u32);
u8 GetJump2MovementAction(u32);
bool8 UpdateWalkSlowerAnim(struct Sprite *sprite);
void SetJumpSpriteData(struct Sprite *, u8, u8, u8);
u8 DoJumpSpriteMovement(struct Sprite *);
u8 DoJumpSpecialSpriteMovement(struct Sprite *);
void TurnVirtualObject(u8 virtualObjId, u8 direction);
const u8 *GetObjectEventScriptPointerByObjectEventId(u8 objectEventId);
u8 GetFirstInactiveObjectEventId(void);
u8 GetCollisionFlagsAtCoords(struct ObjectEvent * objectEvent, s16 x, s16 y, u8 direction);
void OverrideTemplateCoordsForObjectEvent(const struct ObjectEvent *objectEvent);
void CancelPlayerForcedMovement(void);
void FreezeObjectEvents(void);
bool8 FreezeObjectEvent(struct ObjectEvent *);
void UnfreezeObjectEvent(struct ObjectEvent *);
void FreezeObjectEventsExceptOne(u8 objEventId);
void SetVirtualObjectGraphics(u8 virtualObjId, u8 direction);
void SetVirtualObjectInvisibility(u8 virtualObjId, bool32 invisible);
bool32 IsVirtualObjectInvisible(u8 virtualObjId);
void SetVirtualObjectSpriteAnim(u8 virtualObjId, u8 animNo);
bool32 IsVirtualObjectAnimating(u8 virtualObjId);
u8 GetJumpSpecialMovementAction(u32 direction);
void EnableObjectGroundEffectsByXY(s16 x, s16 y);
void MoveObjectEventToMapCoords(struct ObjectEvent *objectEvent, s16 x, s16 y);
u8 CreateCopySpriteAt(struct Sprite *sprite, s16 x, s16 y, u8 subpriority);
u16 GetObjectPaletteTag(u8 paletteIndex);
void SetSpritePosToMapCoords(s16 x, s16 y, s16 *x2, s16 *y2);
void UpdateObjectEventSpriteInvisibility(struct Sprite *sprite, bool8 invisible);
u8 ElevationToPriority(u8 elevation);
void ObjectEventUpdateElevation(struct ObjectEvent *pObject);
void SetObjectSubpriorityByElevation(u8 elevation, struct Sprite *sprite, u8 offset);
void CopyObjectGraphicsInfoToSpriteTemplate(u16 graphicsId, void (*callback)(struct Sprite *), struct SpriteTemplate *spriteTemplate, const struct SubspriteTable **subspriteTables);
u8 AddCameraObject(u8 trackedSpriteId);
void UpdateObjectEventsForCameraUpdate(s16 x, s16 y);
void SpriteCB_VirtualObject(struct Sprite *);
void SetMovementDelay(struct Sprite *, s16);
bool8 WaitForMovementDelay(struct Sprite *);
void SetSpriteDataForNormalStep(struct Sprite *, u8, u8);
bool8 NpcTakeStep(struct Sprite *sprite);
void SetWalkSlowerSpriteData(struct Sprite *, u8);
void SetWalkSlowestSpriteData(struct Sprite *, u8);
bool8 UpdateWalkSlowestAnim(struct Sprite *sprite);
void SetWalkSlowSpriteData(struct Sprite *, u8);
bool8 UpdateWalkSlowAnim(struct Sprite *sprite);
void DoShadowFieldEffect(struct ObjectEvent *);
void SetRunSlowSpriteData(struct Sprite *, u8);
bool8 UpdateRunSlowAnim(struct Sprite *sprite);
void SetAndStartSpriteAnim(struct Sprite *, u8, u8);
bool8 SpriteAnimEnded(struct Sprite *);
u8 ObjectEventGetHeldMovementActionId(struct ObjectEvent *objectEvent);
u8 GetMoveDirectionAnimNum(u8 direction);



extern const struct SpriteTemplate *const gFieldEffectObjectTemplatePointers[];
extern const struct SpritePalette gSpritePalette_GeneralFieldEffect1;
extern const struct SpriteTemplate * const gFieldEffectObjectTemplatePointers[];
extern const struct OamData gObjectEventBaseOam_32x32;
extern const u16 gFieldEffectObjectPic_CutGrass[];
extern const u16 gFieldEffectPal_CutGrass[];
extern const u8 gReflectionEffectPaletteMap[];
u8 GetLedgeJumpDirection(s16 x, s16 y, u8 direction);
u8 GetGlideMovementAction(u32 direction);
u8 GetRideWaterCurrentMovementAction(u32 direction);
u8 GetPlayerRunMovementAction(u32 direction);
u8 GetPlayerRunSlowMovementAction(u32 direction);
u8 GetWalkSlowMovementAction(u32 direction);
u8 GetSpinMovementAction(u32 direction);
u8 GetAcroWheelieFaceDirectionMovementAction(u32 direction);
u8 GetAcroPopWheelieFaceDirectionMovementAction(u32 direction);
u8 GetAcroEndWheelieFaceDirectionMovementAction(u32 direction);
u8 GetAcroWheelieHopFaceDirectionMovementAction(u32 direction);
u8 GetAcroWheelieHopMovementAction(u32 direction);
u8 GetAcroPopWheelieMoveMovementAction(u32 direction);
u8 GetAcroWheelieJumpMovementAction(u32 direction);
u8 GetJumpInPlaceTurnAroundMovementAction(u32 direction);
u8 GetAcroWheelieInPlaceMovementAction(u32 direction);
u8 GetAcroPopWheelieMoveMovementAction(u32 direction);
u8 GetAcroWheelieMoveMovementAction(u32 direction);
u8 GetJumpSpecialWithEffectMovementAction(u32 direction);
u8 GetFishingBiteDirectionAnimNum(u8 direction);
void TrySpawnObjectEvents(s16 cameraX, s16 cameraY);
void ResetObjectEvents(void);
# 25 "src/start_menu.c" 2
# 1 "include/event_object_lock.h" 1





bool8 IsFreezePlayerFinished(void);
void FreezeObjects_WaitForPlayer(void);
bool8 IsFreezeSelectedObjectAndPlayerFinished(void);
void FreezeObjects_WaitForPlayerAndSelected(void);
void ClearPlayerHeldMovementAndUnfreezeObjectEvents(void);
bool8 walkrun_is_standing_still(void);
void UnionRoom_UnlockPlayerAndChatPartner(void);
# 26 "src/start_menu.c" 2
# 1 "include/script.h" 1





struct ScriptContext;

typedef bool8 (*ScrCmdFunc)(struct ScriptContext *);
typedef u8 Script[];

struct ScriptContext
{
    u8 stackDepth;
    u8 mode;
    u8 comparisonResult;
    u8 (*nativePtr)(void);
    const u8 *scriptPtr;
    const u8 *stack[20];
    ScrCmdFunc *cmdTable;
    ScrCmdFunc *cmdTableEnd;
    u32 data[4];
};



void InitScriptContext(struct ScriptContext *ctx, void *cmdTable, void *cmdTableEnd);
u8 SetupBytecodeScript(struct ScriptContext *ctx, const u8 *ptr);
void SetupNativeScript(struct ScriptContext *ctx, bool8 (*ptr)(void));
void StopScript(struct ScriptContext *ctx);
bool8 RunScriptCommand(struct ScriptContext *ctx);
void ScriptJump(struct ScriptContext *ctx, const u8 *ptr);
void ScriptCall(struct ScriptContext *ctx, const u8 *ptr);
void ScriptReturn(struct ScriptContext *ctx);
u16 ScriptReadHalfword(struct ScriptContext *ctx);
u32 ScriptReadWord(struct ScriptContext *ctx);
void LockPlayerFieldControls(void);
void UnlockPlayerFieldControls(void);
bool8 ArePlayerFieldControlsLocked(void);
void ScriptContext_Init(void);
bool8 ScriptContext_IsEnabled(void);
bool8 ScriptContext_RunScript(void);
void ScriptContext_SetupScript(const u8 *ptr);
void ScriptContext_Stop(void);
void ScriptContext_Enable(void);
void RunScriptImmediately(const u8 *ptr);
void RunOnLoadMapScript(void);
void RunOnTransitionMapScript(void);
void RunOnResumeMapScript(void);
void RunOnReturnToFieldMapScript(void);
void RunOnDiveWarpMapScript(void);
bool8 TryRunOnFrameMapScript(void);
void TryRunOnWarpIntoMapScript(void);
u32 CalculateRamScriptChecksum(void);
void ClearRamScript(void);
bool8 InitRamScript(u8 *script, u16 scriptSize, u8 mapGroup, u8 mapNum, u8 objectId);
const u8 *GetRamScript(u8 objectId, const u8 *script);
bool32 ValidateRamScript(void);
void InitRamScript_NoObjectEvent(u8 * script, u16 scriptSize);
u8 * GetSavedRamScriptIfValid(void);
void RegisterQuestLogInput(u8 var);
void ClearMsgBoxCancelableState(void);
void SetQuestLogInputIsDpadFlag(void);
void ClearQuestLogInput(void);
void ClearQuestLogInputIsDpadFlag(void);
void MsgSetSignpost(void);
void MsgSetNotSignpost(void);
bool8 IsMsgSignpost(void);
bool8 IsQuestLogInputDpad(void);
u8 GetRegisteredQuestLogInput(void);
void ResetFacingNpcOrSignpostVars(void);
bool8 CanWalkAwayToCancelMsgBox(void);
void SetWalkingIntoSignVars(void);
bool8 IsMsgBoxWalkawayDisabled(void);

extern const u8 *gRamScriptRetAddr;
extern u8 gWalkAwayFromSignInhibitTimer;
# 27 "src/start_menu.c" 2
# 1 "include/quest_log.h" 1




# 1 "include/quest_log_battle.h" 1





void TrySetQuestLogBattleEvent(void);
void TrySetQuestLogLinkBattleEvent(void);
# 6 "include/quest_log.h" 2
# 1 "include/constants/quest_log.h" 1
# 7 "include/quest_log.h" 2
# 1 "include/field_control_avatar.h" 1





struct FieldInput
{
    bool8 pressedAButton:1;
    bool8 checkStandardWildEncounter:1;
    bool8 pressedStartButton:1;
    bool8 pressedSelectButton:1;
    bool8 heldDirection:1;
    bool8 heldDirection2:1;
    bool8 tookStep:1;
    bool8 pressedBButton:1;
    bool8 pressedRButton:1;
    bool8 input_field_1_0:1;
    bool8 input_field_1_1:1;
    bool8 input_field_1_2:1;
    bool8 input_field_1_3:1;
    u8 dpadDirection;
};

extern struct FieldInput gInputToStoreInQuestLogMaybe;

void RestartWildEncounterImmunitySteps(void);
void ClearPoisonStepCounter(void);
int SetCableClubWarp(void);
void HandleBoulderFallThroughHole(struct ObjectEvent *);
bool8 dive_warp(struct MapPosition * pos, u16 behavior);
bool8 IsDirectionalStairWarpMetatileBehavior(u16 metatileBehavior, u8 playerDirection);
const u8 *GetInteractedLinkPlayerScript(struct MapPosition *position, u8 metatileBehavior, u8 direction);
const u8 *GetCoordEventScriptAtMapPosition(struct MapPosition *position);
void FieldClearPlayerInput(struct FieldInput *input);
int ProcessPlayerFieldInput(struct FieldInput *input);
void FieldInput_HandleCancelSignpost(struct FieldInput * input);
void FieldGetPlayerInput(struct FieldInput *input, u16 newKeys, u16 heldKeys);
void HandleBoulderActivateVictoryRoadSwitch(u16 x, u16 y);
# 8 "include/quest_log.h" 2





struct QuestLogEntry
{

    u8 localId;
    u8 mapNum;
    u8 mapGroup;
    u8 animId;
    u16 duration;
    u8 command;
};

struct UnkStruct_203B044
{
    u8 id;
    u8 unk_1;
    u16 unk_2;
};

extern u8 gQuestLogState;
extern u8 gQuestLogPlaybackState;
extern struct FieldInput gQuestLogFieldInput;
extern struct UnkStruct_203B044 gUnknown_203B044;
extern u16 *gUnknown_203AE04;
extern u16 *sEventRecordingPointer;
extern u16 sQuestLogCursor;

void QuestLogRecordPlayerAvatarGfxTransition(u8);
void SetQuestLogEvent(u16, const u16 *);
void SetQLPlayedTheSlots(void);
void QuestLog_RecordEnteredMap(u16);
u8 sub_8112CAC(void);
bool8 QuestLog_SchedulePlaybackCB(void (*func)(void));
void QuestLog_BackUpPalette(u16 offset, u16 size);
void CommitQuestLogWindow1(void);
void QuestLog_DrawPreviouslyOnQuestHeaderIfInPlaybackMode(void);
void ResetQuestLog(void);
void ResetTrainerFanClub(void);
void TrySetUpQuestLogScenes_ElseContinueFromSave(u8 taskId);
void SaveQuestLogData(void);
void QuestLog_CutRecording(void);
u8 sub_8112CAC(void);
void ResetDeferredLinkEvent(void);
void FinishRecordingQuestLogScene(void);
void QuestLogEvents_HandleEndTrainerBattle(void);
void *QuestLogGetFlagOrVarPtr(bool8 isFlag, u16 idx);
void QuestLogSetFlagOrVar(bool8 isFlag, u16 idx, u16 value);
void SetQuestLogRecordAndPlaybackPointers(void *oldSave);
void sub_811246C(struct Sprite *sprite);
void QuestLogRecordNPCStep(u8 a0, u8 a1, u8 a2, u8 a3);
bool8 sub_8111C2C(void);
void QuestLog_OnEscalatorWarp(u8 direction);
void QuestLogRecordPlayerAvatarGfxTransitionWithDuration(u8 movementActionId, u8 duration);
void Special_UpdateTrainerFansAfterLinkBattle(void);
void QuestLogRecordPlayerStep(u8 movementActionId);
void QuestLogRecordPlayerStepWithDuration(u8 movementActionId, u8 duration);
void QuestLogRecordNPCStepWithDuration(u8 localId, u8 mapNum, u8 mapGroup, u8 movementActionId, u8 duration);
void QL_AfterRecordFishActionSuccessful(void);
void sub_8110920(void);
void sub_8111708(void);
void sub_81127F8(struct FieldInput * a0);
void sub_8112B3C(void);
void RunQuestLogCB(void);
void sub_8111C68(void);
bool8 QuestLogScenePlaybackIsEnding(void);
void sub_8115798(void);
bool8 QuestLog_ShouldEndSceneOnMapChange(void);
void QuestLog_AdvancePlayhead_(void);
void QuestLog_InitPalettesBackup(void);
void sub_8110FCC(void);
u8 GetQuestLogStartType(void);
void sub_81113E4(void);
void sub_8111438(void);
void StartRecordingQuestLogEntry(u16 eventId);
bool8 WillCommandOfSizeFitInSav1Record(u16 *cursor, size_t size);
bool8 sub_8110944(const void *a0, size_t cmdSize);

void sub_8113BD8(void);
void ResetUnk203B044(void);
u16 *TryRecordEvent39_NoParams(u16 *);
u16 *sub_8113C8C(u16 *, struct QuestLogEntry *);
u16 *sub_8113CC8(u16 *, struct QuestLogEntry *);
u16 *sub_8113D08(u16 *, struct QuestLogEntry *);
u16 *sub_8113D48(u16 *, struct QuestLogEntry *);
u16 *sub_8113D94(u16 *, struct QuestLogEntry *);
void QL_EnableRecordingSteps(void);
u16 *QuestLog_SkipCommand(u16 *, u16 **);
void sub_8113ABC(const u16 *);
u16 *sub_8113C20(u16 *, struct QuestLogEntry *);
bool8 sub_8113AE8(const u16 *);
bool8 sub_8113B44(const u16 *);
void TryRecordEvent41_IncCursor(u16);
# 28 "src/start_menu.c" 2
# 1 "include/new_game.h" 1





extern bool8 gDifferentSaveFile;

void SetTrainerId(u32 trainerId, u8 *dst);
void CopyTrainerId(u8 *dst, u8 *src);
void NewGameInitData(void);
void ResetMenuAndMonGlobals(void);
void Sav2_ClearSetDefault(void);
# 29 "src/start_menu.c" 2
# 1 "include/event_scripts.h" 1
# 10 "include/event_scripts.h"
extern const u8 gUnknown_0823B4E8[];
extern const u8 gUnknown_0823B5E9[];
extern const u8 EventScript_275BB7[];
extern const u8 EventScript_275D0C[];
extern const u8 EventScript_275D1F[];
extern const u8 EventScript_275D2E[];
extern const u8 EventScript_2766A2[];
extern const u8 EventScript_2766A6[];

extern const u8 gTVBravoTrainerText00[];
extern const u8 gTVBravoTrainerText01[];
extern const u8 gTVBravoTrainerText02[];
extern const u8 gTVBravoTrainerText03[];
extern const u8 gTVBravoTrainerText04[];
extern const u8 gTVBravoTrainerText05[];
extern const u8 gTVBravoTrainerText06[];
extern const u8 gTVBravoTrainerText07[];
extern const u8 gTVBravoTrainerText08[];
extern const u8 gTVBravoTrainerBattleTowerText00[];
extern const u8 gTVBravoTrainerBattleTowerText01[];
extern const u8 gTVBravoTrainerBattleTowerText02[];
extern const u8 gTVBravoTrainerBattleTowerText03[];
extern const u8 gTVBravoTrainerBattleTowerText04[];
extern const u8 gTVBravoTrainerBattleTowerText05[];
extern const u8 gTVBravoTrainerBattleTowerText06[];
extern const u8 gTVBravoTrainerBattleTowerText07[];
extern const u8 gTVBravoTrainerBattleTowerText08[];
extern const u8 gTVBravoTrainerBattleTowerText09[];
extern const u8 gTVBravoTrainerBattleTowerText10[];
extern const u8 gTVBravoTrainerBattleTowerText11[];
extern const u8 gTVBravoTrainerBattleTowerText12[];
extern const u8 gTVBravoTrainerBattleTowerText13[];
extern const u8 gTVBravoTrainerBattleTowerText14[];
extern const u8 gTVFanClubOpinionsText00[];
extern const u8 gTVFanClubOpinionsText01[];
extern const u8 gTVFanClubOpinionsText02[];
extern const u8 gTVFanClubOpinionsText03[];
extern const u8 gTVFanClubOpinionsText04[];
extern const u8 gTVFanClubText00[];
extern const u8 gTVFanClubText01[];
extern const u8 gTVFanClubText02[];
extern const u8 gTVFanClubText03[];
extern const u8 gTVFanClubText04[];
extern const u8 gTVFanClubText05[];
extern const u8 gTVFanClubText06[];
extern const u8 gTVFanClubText07[];
extern const u8 gTVRecentHappeningsText00[];
extern const u8 gTVRecentHappeningsText01[];
extern const u8 gTVRecentHappeningsText02[];
extern const u8 gTVRecentHappeningsText03[];
extern const u8 gTVRecentHappeningsText04[];
extern const u8 gTVRecentHappeningsText05[];
extern const u8 gTVMassOutbreakText00[];
extern const u8 gTV3CheersForPokeblocksText00[];
extern const u8 gTV3CheersForPokeblocksText01[];
extern const u8 gTV3CheersForPokeblocksText02[];
extern const u8 gTV3CheersForPokeblocksText03[];
extern const u8 gTV3CheersForPokeblocksText04[];
extern const u8 gTV3CheersForPokeblocksText05[];
extern const u8 gTVTrainerFanClubSpecialText00[];
extern const u8 gTVTrainerFanClubSpecialText01[];
extern const u8 gTVTrainerFanClubSpecialText02[];
extern const u8 gTVTrainerFanClubSpecialText03[];
extern const u8 gTVTrainerFanClubSpecialText04[];
extern const u8 gTVTrainerFanClubSpecialText05[];
extern const u8 gTVNameRaterText00[];
extern const u8 gTVNameRaterText01[];
extern const u8 gTVNameRaterText02[];
extern const u8 gTVNameRaterText03[];
extern const u8 gTVNameRaterText04[];
extern const u8 gTVNameRaterText05[];
extern const u8 gTVNameRaterText06[];
extern const u8 gTVNameRaterText07[];
extern const u8 gTVNameRaterText08[];
extern const u8 gTVNameRaterText09[];
extern const u8 gTVNameRaterText10[];
extern const u8 gTVNameRaterText11[];
extern const u8 gTVNameRaterText12[];
extern const u8 gTVNameRaterText13[];
extern const u8 gTVNameRaterText14[];
extern const u8 gTVNameRaterText15[];
extern const u8 gTVNameRaterText16[];
extern const u8 gTVNameRaterText17[];
extern const u8 gTVNameRaterText18[];
extern const u8 gTVPokemonAnglerText00[];
extern const u8 gTVPokemonAnglerText01[];
extern const u8 gTVPokemonTodayFailedText00[];
extern const u8 gTVPokemonTodayFailedText01[];
extern const u8 gTVPokemonTodayFailedText02[];
extern const u8 gTVPokemonTodayFailedText03[];
extern const u8 gTVPokemonTodayFailedText04[];
extern const u8 gTVPokemonTodayFailedText05[];
extern const u8 gTVPokemonTodayFailedText06[];
extern const u8 gTVPokemonTodaySuccessfulText00[];
extern const u8 gTVPokemonTodaySuccessfulText01[];
extern const u8 gTVPokemonTodaySuccessfulText02[];
extern const u8 gTVPokemonTodaySuccessfulText03[];
extern const u8 gTVPokemonTodaySuccessfulText04[];
extern const u8 gTVPokemonTodaySuccessfulText05[];
extern const u8 gTVPokemonTodaySuccessfulText06[];
extern const u8 gTVPokemonTodaySuccessfulText07[];
extern const u8 gTVPokemonTodaySuccessfulText08[];
extern const u8 gTVPokemonTodaySuccessfulText09[];
extern const u8 gTVPokemonTodaySuccessfulText10[];
extern const u8 gTVPokemonTodaySuccessfulText11[];
extern const u8 gTVTodaysSmartShopperText00[];
extern const u8 gTVTodaysSmartShopperText01[];
extern const u8 gTVTodaysSmartShopperText02[];
extern const u8 gTVTodaysSmartShopperText03[];
extern const u8 gTVTodaysSmartShopperText04[];
extern const u8 gTVTodaysSmartShopperText05[];
extern const u8 gTVTodaysSmartShopperText06[];
extern const u8 gTVTodaysSmartShopperText07[];
extern const u8 gTVTodaysSmartShopperText08[];
extern const u8 gTVTodaysSmartShopperText09[];
extern const u8 gTVTodaysSmartShopperText10[];
extern const u8 gTVTodaysSmartShopperText11[];
extern const u8 gTVTodaysSmartShopperText12[];
extern const u8 gTVWorldOfMastersText00[];
extern const u8 gTVWorldOfMastersText01[];
extern const u8 gTVWorldOfMastersText02[];
extern const u8 gTVTodaysRivalTrainerText00[];
extern const u8 gTVTodaysRivalTrainerText07[];
extern const u8 gTVTodaysRivalTrainerText08[];
extern const u8 gTVTodaysRivalTrainerText09[];
extern const u8 gTVTodaysRivalTrainerText10[];
extern const u8 gTVTodaysRivalTrainerText01[];
extern const u8 gTVTodaysRivalTrainerText02[];
extern const u8 gTVTodaysRivalTrainerText03[];
extern const u8 gTVTodaysRivalTrainerText04[];
extern const u8 gTVTodaysRivalTrainerText05[];
extern const u8 gTVTodaysRivalTrainerText06[];
extern const u8 gTVDewfordTrendWatcherNetworkText00[];
extern const u8 gTVDewfordTrendWatcherNetworkText01[];
extern const u8 gTVDewfordTrendWatcherNetworkText02[];
extern const u8 gTVDewfordTrendWatcherNetworkText03[];
extern const u8 gTVDewfordTrendWatcherNetworkText04[];
extern const u8 gTVDewfordTrendWatcherNetworkText05[];
extern const u8 gTVDewfordTrendWatcherNetworkText06[];
extern const u8 gTVHoennTreasureInvestigatorsText00[];
extern const u8 gTVHoennTreasureInvestigatorsText01[];
extern const u8 gTVHoennTreasureInvestigatorsText02[];
extern const u8 gTVFindThatGamerText00[];
extern const u8 gTVFindThatGamerText01[];
extern const u8 gTVFindThatGamerText02[];
extern const u8 gTVFindThatGamerText03[];
extern const u8 gTVBreakingNewsText00[];
extern const u8 gTVBreakingNewsText01[];
extern const u8 gTVBreakingNewsText02[];
extern const u8 gTVBreakingNewsText03[];
extern const u8 gTVBreakingNewsText04[];
extern const u8 gTVBreakingNewsText05[];
extern const u8 gTVBreakingNewsText06[];
extern const u8 gTVBreakingNewsText07[];
extern const u8 gTVBreakingNewsText12[];
extern const u8 gTVBreakingNewsText08[];
extern const u8 gTVBreakingNewsText09[];
extern const u8 gTVBreakingNewsText10[];
extern const u8 gTVBreakingNewsText11[];
extern const u8 gTVSecretBaseVisitText00[];
extern const u8 gTVSecretBaseVisitText01[];
extern const u8 gTVSecretBaseVisitText02[];
extern const u8 gTVSecretBaseVisitText03[];
extern const u8 gTVSecretBaseVisitText04[];
extern const u8 gTVSecretBaseVisitText05[];
extern const u8 gTVSecretBaseVisitText06[];
extern const u8 gTVSecretBaseVisitText07[];
extern const u8 gTVSecretBaseVisitText08[];
extern const u8 gTVSecretBaseVisitText09[];
extern const u8 gTVSecretBaseVisitText10[];
extern const u8 gTVSecretBaseVisitText11[];
extern const u8 gTVSecretBaseVisitText12[];
extern const u8 gTVSecretBaseVisitText13[];
extern const u8 gTVPokemonLotteryWinnerFlashReportText00[];
extern const u8 gTVThePokemonBattleSeminarText00[];
extern const u8 gTVThePokemonBattleSeminarText01[];
extern const u8 gTVThePokemonBattleSeminarText02[];
extern const u8 gTVThePokemonBattleSeminarText03[];
extern const u8 gTVThePokemonBattleSeminarText04[];
extern const u8 gTVThePokemonBattleSeminarText05[];
extern const u8 gTVThePokemonBattleSeminarText06[];
extern const u8 gTVTrainerFanClubText00[];
extern const u8 gTVTrainerFanClubText01[];
extern const u8 gTVTrainerFanClubText02[];
extern const u8 gTVTrainerFanClubText03[];
extern const u8 gTVTrainerFanClubText04[];
extern const u8 gTVTrainerFanClubText05[];
extern const u8 gTVTrainerFanClubText06[];
extern const u8 gTVTrainerFanClubText07[];
extern const u8 gTVTrainerFanClubText08[];
extern const u8 gTVTrainerFanClubText09[];
extern const u8 gTVTrainerFanClubText10[];
extern const u8 gTVTrainerFanClubText11[];
extern const u8 gTVCutiesText00[];
extern const u8 gTVCutiesText01[];
extern const u8 gTVCutiesText02[];
extern const u8 gTVCutiesText03[];
extern const u8 gTVCutiesText04[];
extern const u8 gTVCutiesText05[];
extern const u8 gTVCutiesText06[];
extern const u8 gTVCutiesText07[];
extern const u8 gTVCutiesText08[];
extern const u8 gTVCutiesText09[];
extern const u8 gTVCutiesText10[];
extern const u8 gTVCutiesText11[];
extern const u8 gTVCutiesText12[];
extern const u8 gTVCutiesText13[];
extern const u8 gTVCutiesText14[];
extern const u8 gTVCutiesText15[];
extern const u8 gTVPokemonNewsBattleFrontierText00[];
extern const u8 gTVPokemonNewsBattleFrontierText01[];
extern const u8 gTVPokemonNewsBattleFrontierText02[];
extern const u8 gTVPokemonNewsBattleFrontierText03[];
extern const u8 gTVPokemonNewsBattleFrontierText04[];
extern const u8 gTVPokemonNewsBattleFrontierText05[];
extern const u8 gTVPokemonNewsBattleFrontierText06[];
extern const u8 gTVPokemonNewsBattleFrontierText07[];
extern const u8 gTVPokemonNewsBattleFrontierText08[];
extern const u8 gTVPokemonNewsBattleFrontierText09[];
extern const u8 gTVPokemonNewsBattleFrontierText10[];
extern const u8 gTVPokemonNewsBattleFrontierText11[];
extern const u8 gTVPokemonNewsBattleFrontierText12[];
extern const u8 gTVPokemonNewsBattleFrontierText13[];
extern const u8 gTVPokemonNewsBattleFrontierText14[];
extern const u8 gTVPokemonNewsBattleFrontierText15[];
extern const u8 gTVPokemonNewsBattleFrontierText16[];
extern const u8 gTVPokemonNewsBattleFrontierText17[];
extern const u8 gTVPokemonNewsBattleFrontierText18[];
extern const u8 gTVWhatsNo1InHoennTodayText00[];
extern const u8 gTVWhatsNo1InHoennTodayText01[];
extern const u8 gTVWhatsNo1InHoennTodayText02[];
extern const u8 gTVWhatsNo1InHoennTodayText03[];
extern const u8 gTVWhatsNo1InHoennTodayText04[];
extern const u8 gTVWhatsNo1InHoennTodayText05[];
extern const u8 gTVWhatsNo1InHoennTodayText06[];
extern const u8 gTVWhatsNo1InHoennTodayText07[];
extern const u8 gTVWhatsNo1InHoennTodayText08[];
extern const u8 gTVSecretBaseSecretsText00[];
extern const u8 gTVSecretBaseSecretsText01[];
extern const u8 gTVSecretBaseSecretsText02[];
extern const u8 gTVSecretBaseSecretsText03[];
extern const u8 gTVSecretBaseSecretsText04[];
extern const u8 gTVSecretBaseSecretsText05[];
extern const u8 gTVSecretBaseSecretsText06[];
extern const u8 gTVSecretBaseSecretsText07[];
extern const u8 gTVSecretBaseSecretsText08[];
extern const u8 gTVSecretBaseSecretsText09[];
extern const u8 gTVSecretBaseSecretsText10[];
extern const u8 gTVSecretBaseSecretsText11[];
extern const u8 gTVSecretBaseSecretsText12[];
extern const u8 gTVSecretBaseSecretsText13[];
extern const u8 gTVSecretBaseSecretsText14[];
extern const u8 gTVSecretBaseSecretsText15[];
extern const u8 gTVSecretBaseSecretsText16[];
extern const u8 gTVSecretBaseSecretsText17[];
extern const u8 gTVSecretBaseSecretsText18[];
extern const u8 gTVSecretBaseSecretsText19[];
extern const u8 gTVSecretBaseSecretsText20[];
extern const u8 gTVSecretBaseSecretsText21[];
extern const u8 gTVSecretBaseSecretsText22[];
extern const u8 gTVSecretBaseSecretsText23[];
extern const u8 gTVSecretBaseSecretsText24[];
extern const u8 gTVSecretBaseSecretsText25[];
extern const u8 gTVSecretBaseSecretsText26[];
extern const u8 gTVSecretBaseSecretsText27[];
extern const u8 gTVSecretBaseSecretsText28[];
extern const u8 gTVSecretBaseSecretsText29[];
extern const u8 gTVSecretBaseSecretsText30[];
extern const u8 gTVSecretBaseSecretsText31[];
extern const u8 gTVSecretBaseSecretsText32[];
extern const u8 gTVSecretBaseSecretsText33[];
extern const u8 gTVSecretBaseSecretsText34[];
extern const u8 gTVSecretBaseSecretsText35[];
extern const u8 gTVSecretBaseSecretsText36[];
extern const u8 gTVSecretBaseSecretsText37[];
extern const u8 gTVSecretBaseSecretsText38[];
extern const u8 gTVSecretBaseSecretsText39[];
extern const u8 gTVSecretBaseSecretsText40[];
extern const u8 gTVSecretBaseSecretsText41[];
extern const u8 gTVSecretBaseSecretsText42[];
extern const u8 gTVSafariFanClubText00[];
extern const u8 gTVSafariFanClubText01[];
extern const u8 gTVSafariFanClubText02[];
extern const u8 gTVSafariFanClubText03[];
extern const u8 gTVSafariFanClubText04[];
extern const u8 gTVSafariFanClubText05[];
extern const u8 gTVSafariFanClubText06[];
extern const u8 gTVSafariFanClubText07[];
extern const u8 gTVSafariFanClubText08[];
extern const u8 gTVSafariFanClubText09[];
extern const u8 gTVSafariFanClubText10[];
extern const u8 gTVContestLiveUpdatesText00[];
extern const u8 gTVContestLiveUpdatesText01[];
extern const u8 gTVContestLiveUpdatesText02[];
extern const u8 gTVContestLiveUpdatesText03[];
extern const u8 gTVContestLiveUpdatesText04[];
extern const u8 gTVContestLiveUpdatesText05[];
extern const u8 gTVContestLiveUpdatesText06[];
extern const u8 gTVContestLiveUpdatesText07[];
extern const u8 gTVContestLiveUpdatesText08[];
extern const u8 gTVContestLiveUpdatesText09[];
extern const u8 gTVContestLiveUpdatesText10[];
extern const u8 gTVContestLiveUpdatesText11[];
extern const u8 gTVContestLiveUpdatesText12[];
extern const u8 gTVContestLiveUpdatesText13[];
extern const u8 gTVContestLiveUpdatesText14[];
extern const u8 gTVContestLiveUpdatesText15[];
extern const u8 gTVContestLiveUpdatesText16[];
extern const u8 gTVContestLiveUpdatesText17[];
extern const u8 gTVContestLiveUpdatesText18[];
extern const u8 gTVContestLiveUpdatesText19[];
extern const u8 gTVContestLiveUpdatesText20[];
extern const u8 gTVContestLiveUpdatesText21[];
extern const u8 gTVContestLiveUpdatesText22[];
extern const u8 gTVContestLiveUpdatesText23[];
extern const u8 gTVContestLiveUpdatesText24[];
extern const u8 gTVContestLiveUpdatesText25[];
extern const u8 gTVContestLiveUpdatesText26[];
extern const u8 gTVContestLiveUpdatesText27[];
extern const u8 gTVContestLiveUpdatesText28[];
extern const u8 gTVContestLiveUpdatesText29[];
extern const u8 gTVContestLiveUpdatesText30[];
extern const u8 gTVContestLiveUpdatesText31[];
extern const u8 gTVContestLiveUpdatesText32[];
extern const u8 gTVPokemonBattleUpdateText00[];
extern const u8 gTVPokemonBattleUpdateText01[];
extern const u8 gTVPokemonBattleUpdateText02[];
extern const u8 gTVPokemonBattleUpdateText03[];
extern const u8 gTVPokemonBattleUpdateText04[];
extern const u8 gTVPokemonBattleUpdateText05[];
extern const u8 gTVPokemonBattleUpdateText06[];
extern const u8 gTVPokemonBattleUpdateText07[];
extern const u8 gTVInSearchOfTrainersText00[];
extern const u8 gTVInSearchOfTrainersText01[];
extern const u8 gTVInSearchOfTrainersText02[];
extern const u8 gTVInSearchOfTrainersText03[];
extern const u8 gTVInSearchOfTrainersText04[];
extern const u8 gTVInSearchOfTrainersText05[];
extern const u8 gTVInSearchOfTrainersText06[];
extern const u8 gTVInSearchOfTrainersText07[];
extern const u8 gTVInSearchOfTrainersText08[];
extern const u8 gTVPokemonContestLiveUpdates2Text00[];
extern const u8 gTVPokemonContestLiveUpdates2Text01[];
extern const u8 gTVPokemonContestLiveUpdates2Text02[];
extern const u8 gTVPokemonContestLiveUpdates2Text03[];
extern const u8 gPokeNewsTextSlateport_Upcoming[];
extern const u8 gPokeNewsTextSlateport_Ongoing[];
extern const u8 gPokeNewsTextSlateport_Ending[];
extern const u8 gPokeNewsTextGameCorner_Upcoming[];
extern const u8 gPokeNewsTextGameCorner_Ongoing[];
extern const u8 gPokeNewsTextGameCorner_Ending[];
extern const u8 gPokeNewsTextLilycove_Upcoming[];
extern const u8 gPokeNewsTextLilycove_Ongoing[];
extern const u8 gPokeNewsTextLilycove_Ending[];
extern const u8 gPokeNewsTextBlendMaster_Upcoming[];
extern const u8 gPokeNewsTextBlendMaster_Ongoing[];
extern const u8 gPokeNewsTextBlendMaster_Ending[];
extern const u8 SecretBase_RedCave1_Text_274966[];
extern const u8 SecretBase_RedCave1_Text_274D13[];
extern const u8 SecretBase_RedCave1_Text_274FFE[];
extern const u8 SecretBase_RedCave1_Text_275367[];
extern const u8 SecretBase_RedCave1_Text_2756C7[];
extern const u8 SecretBase_RedCave1_Text_274B24[];
extern const u8 SecretBase_RedCave1_Text_274E75[];
extern const u8 SecretBase_RedCave1_Text_2751E1[];
extern const u8 SecretBase_RedCave1_Text_2754F6[];
extern const u8 SecretBase_RedCave1_Text_2758CC[];

extern const u8 gText_LtSurge[];
extern const u8 gText_Koga[];
extern const u8 gText_PokemonCenter[];

extern const u8 VSSeeker_Text_BatteryNotChargedNeedXSteps[];
extern const u8 VSSeeker_Text_NoTrainersWithinRange[];
extern const u8 VSSeeker_Text_TrainersNotReady[];



extern const u8 gFameCheckerFlavorText_ProfOak0[];
extern const u8 gFameCheckerFlavorText_ProfOak1[];
extern const u8 gFameCheckerFlavorText_ProfOak2[];
extern const u8 gFameCheckerFlavorText_ProfOak3[];
extern const u8 gFameCheckerFlavorText_ProfOak4[];
extern const u8 gFameCheckerFlavorText_ProfOak5[];
extern const u8 gFameCheckerFlavorText_Daisy0[];
extern const u8 gFameCheckerFlavorText_Daisy1[];
extern const u8 gFameCheckerFlavorText_Daisy2[];
extern const u8 gFameCheckerFlavorText_Daisy3[];
extern const u8 gFameCheckerFlavorText_Daisy4[];
extern const u8 gFameCheckerFlavorText_Daisy5[];
extern const u8 gFameCheckerFlavorText_Brock0[];
extern const u8 gFameCheckerFlavorText_Brock1[];
extern const u8 gFameCheckerFlavorText_Brock2[];
extern const u8 gFameCheckerFlavorText_Brock3[];
extern const u8 gFameCheckerFlavorText_Brock4[];
extern const u8 gFameCheckerFlavorText_Brock5[];
extern const u8 gFameCheckerFlavorText_Misty0[];
extern const u8 gFameCheckerFlavorText_Misty1[];
extern const u8 gFameCheckerFlavorText_Misty2[];
extern const u8 gFameCheckerFlavorText_Misty3[];
extern const u8 gFameCheckerFlavorText_Misty4[];
extern const u8 gFameCheckerFlavorText_Misty5[];
extern const u8 gFameCheckerFlavorText_LtSurge0[];
extern const u8 gFameCheckerFlavorText_LtSurge1[];
extern const u8 gFameCheckerFlavorText_LtSurge2[];
extern const u8 gFameCheckerFlavorText_LtSurge3[];
extern const u8 gFameCheckerFlavorText_LtSurge4[];
extern const u8 gFameCheckerFlavorText_LtSurge5[];
extern const u8 gFameCheckerFlavorText_Erika0[];
extern const u8 gFameCheckerFlavorText_Erika1[];
extern const u8 gFameCheckerFlavorText_Erika2[];
extern const u8 gFameCheckerFlavorText_Erika3[];
extern const u8 gFameCheckerFlavorText_Erika4[];
extern const u8 gFameCheckerFlavorText_Erika5[];
extern const u8 gFameCheckerFlavorText_Koga0[];
extern const u8 gFameCheckerFlavorText_Koga1[];
extern const u8 gFameCheckerFlavorText_Koga2[];
extern const u8 gFameCheckerFlavorText_Koga3[];
extern const u8 gFameCheckerFlavorText_Koga4[];
extern const u8 gFameCheckerFlavorText_Koga5[];
extern const u8 gFameCheckerFlavorText_Sabrina0[];
extern const u8 gFameCheckerFlavorText_Sabrina1[];
extern const u8 gFameCheckerFlavorText_Sabrina2[];
extern const u8 gFameCheckerFlavorText_Sabrina3[];
extern const u8 gFameCheckerFlavorText_Sabrina4[];
extern const u8 gFameCheckerFlavorText_Sabrina5[];
extern const u8 gFameCheckerFlavorText_Blaine0[];
extern const u8 gFameCheckerFlavorText_Blaine1[];
extern const u8 gFameCheckerFlavorText_Blaine2[];
extern const u8 gFameCheckerFlavorText_Blaine3[];
extern const u8 gFameCheckerFlavorText_Blaine4[];
extern const u8 gFameCheckerFlavorText_Blaine5[];
extern const u8 gFameCheckerFlavorText_Lorelei0[];
extern const u8 gFameCheckerFlavorText_Lorelei1[];
extern const u8 gFameCheckerFlavorText_Lorelei2[];
extern const u8 gFameCheckerFlavorText_Lorelei3[];
extern const u8 gFameCheckerFlavorText_Lorelei4[];
extern const u8 gFameCheckerFlavorText_Lorelei5[];
extern const u8 gFameCheckerFlavorText_Bruno0[];
extern const u8 gFameCheckerFlavorText_Bruno1[];
extern const u8 gFameCheckerFlavorText_Bruno2[];
extern const u8 gFameCheckerFlavorText_Bruno3[];
extern const u8 gFameCheckerFlavorText_Bruno4[];
extern const u8 gFameCheckerFlavorText_Bruno5[];
extern const u8 gFameCheckerFlavorText_Agatha0[];
extern const u8 gFameCheckerFlavorText_Agatha1[];
extern const u8 gFameCheckerFlavorText_Agatha2[];
extern const u8 gFameCheckerFlavorText_Agatha3[];
extern const u8 gFameCheckerFlavorText_Agatha4[];
extern const u8 gFameCheckerFlavorText_Agatha5[];
extern const u8 gFameCheckerFlavorText_Lance0[];
extern const u8 gFameCheckerFlavorText_Lance1[];
extern const u8 gFameCheckerFlavorText_Lance2[];
extern const u8 gFameCheckerFlavorText_Lance3[];
extern const u8 gFameCheckerFlavorText_Lance4[];
extern const u8 gFameCheckerFlavorText_Lance5[];
extern const u8 gFameCheckerFlavorText_Bill0[];
extern const u8 gFameCheckerFlavorText_Bill1[];
extern const u8 gFameCheckerFlavorText_Bill2[];
extern const u8 gFameCheckerFlavorText_Bill3[];
extern const u8 gFameCheckerFlavorText_Bill4[];
extern const u8 gFameCheckerFlavorText_Bill5[];
extern const u8 gFameCheckerFlavorText_MrFuji0[];
extern const u8 gFameCheckerFlavorText_MrFuji1[];
extern const u8 gFameCheckerFlavorText_MrFuji2[];
extern const u8 gFameCheckerFlavorText_MrFuji3[];
extern const u8 gFameCheckerFlavorText_MrFuji4[];
extern const u8 gFameCheckerFlavorText_MrFuji5[];
extern const u8 gFameCheckerFlavorText_Giovanni0[];
extern const u8 gFameCheckerFlavorText_Giovanni1[];
extern const u8 gFameCheckerFlavorText_Giovanni2[];
extern const u8 gFameCheckerFlavorText_Giovanni3[];
extern const u8 gFameCheckerFlavorText_Giovanni4[];
extern const u8 gFameCheckerFlavorText_Giovanni5[];
extern const u8 gFameCheckerPersonName_ProfOak[];
extern const u8 gFameCheckerPersonQuote_ProfOak[];
extern const u8 gFameCheckerPersonName_Daisy[];
extern const u8 gFameCheckerPersonQuote_Daisy[];
extern const u8 gFameCheckerPersonName_Brock[];
extern const u8 gFameCheckerPersonQuote_Brock[];
extern const u8 gFameCheckerPersonName_Misty[];
extern const u8 gFameCheckerPersonQuote_Misty[];
extern const u8 gFameCheckerPersonName_LtSurge[];
extern const u8 gFameCheckerPersonQuote_LtSurge[];
extern const u8 gFameCheckerPersonName_Erika[];
extern const u8 gFameCheckerPersonQuote_Erika[];
extern const u8 gFameCheckerPersonName_Koga[];
extern const u8 gFameCheckerPersonQuote_Koga[];
extern const u8 gFameCheckerPersonName_Sabrina[];
extern const u8 gFameCheckerPersonQuote_Sabrina[];
extern const u8 gFameCheckerPersonName_Blaine[];
extern const u8 gFameCheckerPersonQuote_Blaine[];
extern const u8 gFameCheckerPersonName_Lorelei[];
extern const u8 gFameCheckerPersonQuote_Lorelei[];
extern const u8 gFameCheckerPersonName_Bruno[];
extern const u8 gFameCheckerPersonQuote_Bruno[];
extern const u8 gFameCheckerPersonName_Agatha[];
extern const u8 gFameCheckerPersonQuote_Agatha[];
extern const u8 gFameCheckerPersonName_Lance[];
extern const u8 gFameCheckerPersonQuote_Lance[];
extern const u8 gFameCheckerPersonName_Bill[];
extern const u8 gFameCheckerPersonQuote_Bill[];
extern const u8 gFameCheckerPersonName_MrFuji[];
extern const u8 gFameCheckerPersonQuote_MrFuji[];
extern const u8 gFameCheckerPersonName_Giovanni[];
extern const u8 gFameCheckerPersonQuote_Giovanni[];
extern const u8 gFameCheckerFlavorTextOriginLocation_ProfOak0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_ProfOak1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_ProfOak2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_ProfOak3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_ProfOak4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_ProfOak5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Daisy0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Daisy1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Daisy2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Daisy3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Daisy4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Daisy5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Brock0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Brock1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Brock2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Brock3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Brock4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Brock5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Misty0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Misty1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Misty2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Misty3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Misty4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Misty5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_LtSurge0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_LtSurge1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_LtSurge2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_LtSurge3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_LtSurge4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_LtSurge5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Erika0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Erika1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Erika2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Erika3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Erika4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Erika5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Koga0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Koga1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Koga2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Koga3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Koga4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Koga5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Sabrina0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Sabrina1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Sabrina2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Sabrina3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Sabrina4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Sabrina5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Blaine0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Blaine1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Blaine2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Blaine3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Blaine4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Blaine5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lorelei0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lorelei1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lorelei2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lorelei3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lorelei4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lorelei5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bruno0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bruno1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bruno2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bruno3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bruno4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bruno5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Agatha0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Agatha1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Agatha2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Agatha3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Agatha4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Agatha5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lance0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lance1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lance2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lance3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lance4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Lance5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bill0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bill1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bill2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bill3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bill4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Bill5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_MrFuji0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_MrFuji1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_MrFuji2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_MrFuji3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_MrFuji4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_MrFuji5[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Giovanni0[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Giovanni1[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Giovanni2[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Giovanni3[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Giovanni4[];
extern const u8 gFameCheckerFlavorTextOriginLocation_Giovanni5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_ProfOak0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_ProfOak1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_ProfOak2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_ProfOak3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_ProfOak4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_ProfOak5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Daisy0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Daisy1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Daisy2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Daisy3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Daisy4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Daisy5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Brock0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Brock1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Brock2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Brock3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Brock4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Brock5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Misty0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Misty1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Misty2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Misty3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Misty4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Misty5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_LtSurge0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_LtSurge1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_LtSurge2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_LtSurge3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_LtSurge4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_LtSurge5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Erika0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Erika1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Erika2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Erika3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Erika4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Erika5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Koga0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Koga1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Koga2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Koga3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Koga4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Koga5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Sabrina0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Sabrina1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Sabrina2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Sabrina3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Sabrina4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Sabrina5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Blaine0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Blaine1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Blaine2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Blaine3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Blaine4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Blaine5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lorelei0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lorelei1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lorelei2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lorelei3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lorelei4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lorelei5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bruno0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bruno1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bruno2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bruno3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bruno4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bruno5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Agatha0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Agatha1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Agatha2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Agatha3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Agatha4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Agatha5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lance0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lance1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lance2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lance3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lance4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Lance5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bill0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bill1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bill2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bill3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bill4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Bill5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_MrFuji0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_MrFuji1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_MrFuji2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_MrFuji3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_MrFuji4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_MrFuji5[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Giovanni0[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Giovanni1[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Giovanni2[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Giovanni3[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Giovanni4[];
extern const u8 gFameCheckerFlavorTextOriginObjectName_Giovanni5[];

extern const u8 gOtherText_NewName[];
extern const u8 gNameChoice_Green[];
extern const u8 gNameChoice_Red[];
extern const u8 gNameChoice_Fire[];
extern const u8 gNameChoice_Leaf[];
extern const u8 gNameChoice_Gary[];
extern const u8 gNameChoice_Kaz[];
extern const u8 gNameChoice_Toru[];
extern const u8 gNameChoice_Ash[];
extern const u8 gNameChoice_Kene[];
extern const u8 gNameChoice_Geki[];
extern const u8 gNameChoice_Jak[];
extern const u8 gNameChoice_Janne[];
extern const u8 gNameChoice_Jonn[];
extern const u8 gNameChoice_Kamon[];
extern const u8 gNameChoice_Karl[];
extern const u8 gNameChoice_Taylor[];
extern const u8 gNameChoice_Oscar[];
extern const u8 gNameChoice_Hiro[];
extern const u8 gNameChoice_Max[];
extern const u8 gNameChoice_Jon[];
extern const u8 gNameChoice_Ralph[];
extern const u8 gNameChoice_Kay[];
extern const u8 gNameChoice_Tosh[];
extern const u8 gNameChoice_Roak[];
extern const u8 gNameChoice_Omi[];
extern const u8 gNameChoice_Jodi[];
extern const u8 gNameChoice_Amanda[];
extern const u8 gNameChoice_Hillary[];
extern const u8 gNameChoice_Makey[];
extern const u8 gNameChoice_Michi[];
extern const u8 gNameChoice_Paula[];
extern const u8 gNameChoice_June[];
extern const u8 gNameChoice_Cassie[];
extern const u8 gNameChoice_Rey[];
extern const u8 gNameChoice_Seda[];
extern const u8 gNameChoice_Kiko[];
extern const u8 gNameChoice_Mina[];
extern const u8 gNameChoice_Norie[];
extern const u8 gNameChoice_Sai[];
extern const u8 gNameChoice_Momo[];
extern const u8 gNameChoice_Suzi[];
extern const u8 gNewGame_HelpDocs1[];
extern const u8 gNewGame_HelpDocs2[];
extern const u8 gNewGame_HelpDocs3[];
extern const u8 gNewGame_HelpDocs4[];
extern const u8 gNewGame_HelpDocs5[];
extern const u8 gNewGame_HelpDocs6[];
extern const u8 gNewGame_HelpDocs7[];
extern const u8 gOakText_AskPlayerGender[];
extern const u8 gNewGameAdventureIntro1[];
extern const u8 gNewGameAdventureIntro2[];
extern const u8 gNewGameAdventureIntro3[];
extern const u8 gOakText_WelcomeToTheWorld[];
extern const u8 gOakText_WorldInhabited1[];
extern const u8 gOakText_WorldInhabited2[];
extern const u8 gOakText_PetsBattlingStudy[];
extern const u8 gOakText_TellMeALittleAboutYourself[];
extern const u8 gOakText_AskPlayerName[];
extern const u8 gOakText_FinalizePlayerName[];
extern const u8 gOakText_IntroduceRival[];
extern const u8 gOakText_AskRivalName[];
extern const u8 gOakText_ConfirmRivalName[];
extern const u8 gOakText_RememberRivalName[];
extern const u8 gOakText_LegendAboutToUnfold[];


extern const u8 Help_Text_WhatShouldIDo[];
extern const u8 Help_Text_HowDoIDoThis[];
extern const u8 Help_Text_WhatDoesThisTermMean[];
extern const u8 Help_Text_AboutThisGame[];
extern const u8 Help_Text_TypeMatchupList[];
extern const u8 Help_Text_Exit[];
extern const u8 Help_Text_Cancel[];
extern const u8 gUnknown_81B2E76[];
extern const u8 Help_Text_DescWhatShouldIDo[];
extern const u8 Help_Text_DescHowDoIDoThis[];
extern const u8 Help_Text_DescWhatDoesThisTermMean[];
extern const u8 Help_Text_DescAboutThisGame[];
extern const u8 Help_Text_DescTypeMatchupList[];
extern const u8 Help_Text_DescExit[];
extern const u8 Help_Text_Greetings[];
extern const u8 Help_Text_PlayingForFirstTime[];
extern const u8 Help_Text_WhatShouldIBeDoing[];
extern const u8 Help_Text_CantGetOutOfRoom[];
extern const u8 Help_Text_CantFindPersonIWant[];
extern const u8 Help_Text_TalkedToEveryoneNowWhat[];
extern const u8 Help_Text_SomeoneBlockingMyWay[];
extern const u8 Help_Text_ICantGoOn[];
extern const u8 Help_Text_OutOfThingsToDo[];
extern const u8 Help_Text_WhatHappenedToItemIGot[];
extern const u8 Help_Text_WhatAreMyAdventureBasics[];
extern const u8 Help_Text_HowAreRoadsForestsDifferent[];
extern const u8 Help_Text_HowAreCavesDifferent[];
extern const u8 Help_Text_HowDoIProgress[];
extern const u8 Help_Text_WhenCanIUseItem[];
extern const u8 Help_Text_WhatsABattle[];
extern const u8 Help_Text_HowDoIPrepareForBattle[];
extern const u8 Help_Text_WhatIsAMonsVitality[];
extern const u8 Help_Text_MyMonsAreHurt[];
extern const u8 Help_Text_WhatIsStatusProblem[];
extern const u8 Help_Text_WhatHappensIfAllMyMonsFaint[];
extern const u8 Help_Text_CantCatchMons[];
extern const u8 Help_Text_RanOutOfPotions[];
extern const u8 Help_Text_CanIBuyPokeBalls[];
extern const u8 Help_Text_WhatsATrainer[];
extern const u8 Help_Text_HowDoIWinAgainstTrainer[];
extern const u8 Help_Text_WhereDoMonsAppear[];
extern const u8 Help_Text_WhatAreMoves[];
extern const u8 Help_Text_WhatAreHiddenMoves[];
extern const u8 Help_Text_WhatMovesShouldIUse[];
extern const u8 Help_Text_WantToAddMoreMoves[];
extern const u8 Help_Text_WantToMakeMonStronger[];
extern const u8 Help_Text_FoeMonsTooStrong[];
extern const u8 Help_Text_WhatDoIDoInCave[];
extern const u8 Help_Text_NothingIWantToKnow[];
extern const u8 Help_Text_WhatsPokemonCenter[];
extern const u8 Help_Text_WhatsPokemonMart[];
extern const u8 Help_Text_WantToEndGame[];
extern const u8 Help_Text_WhatsAMon[];
extern const u8 Help_Text_WhatIsThatPersonLike[];
extern const u8 Help_Text_WhatDoesHiddenMoveDo[];
extern const u8 Help_Text_WhatDoIDoInSafari[];
extern const u8 Help_Text_WhatAreSafariRules[];
extern const u8 Help_Text_WantToEndSafari[];
extern const u8 Help_Text_WhatIsAGym[];
extern const u8 Help_Text_AnswerPlayingForFirstTime[];
extern const u8 Help_Text_AnswerWhatShouldIBeDoing[];
extern const u8 Help_Text_AnswerCantGetOutOfRoom[];
extern const u8 Help_Text_AnswerCantFindPersonIWant[];
extern const u8 Help_Text_AnswerTalkedToEveryoneNowWhat[];
extern const u8 Help_Text_AnswerSomeoneBlockingMyWay[];
extern const u8 Help_Text_AnswerICantGoOn[];
extern const u8 Help_Text_AnswerOutOfThingsToDo[];
extern const u8 Help_Text_AnswerWhatHappenedToItemIGot[];
extern const u8 Help_Text_AnswerWhatAreMyAdventureBasics[];
extern const u8 Help_Text_AnswerHowAreRoadsForestsDifferent[];
extern const u8 Help_Text_AnswerHowAreCavesDifferent[];
extern const u8 Help_Text_AnswerHowDoIProgress[];
extern const u8 Help_Text_AnswerWhenCanIUseItem[];
extern const u8 Help_Text_AnswerWhatsABattle[];
extern const u8 Help_Text_AnswerHowDoIPrepareForBattle[];
extern const u8 Help_Text_AnswerWhatIsAMonsVitality[];
extern const u8 Help_Text_AnswerMyMonsAreHurt[];
extern const u8 Help_Text_AnswerWhatIsStatusProblem[];
extern const u8 Help_Text_AnswerWhatHappensIfAllMyMonsFaint[];
extern const u8 Help_Text_AnswerCantCatchMons[];
extern const u8 Help_Text_AnswerRanOutOfPotions[];
extern const u8 Help_Text_AnswerCanIBuyPokeBalls[];
extern const u8 Help_Text_AnswerWhatsATrainer[];
extern const u8 Help_Text_AnswerHowDoIWinAgainstTrainer[];
extern const u8 Help_Text_AnswerWhereDoMonsAppear[];
extern const u8 Help_Text_AnswerWhatAreMoves[];
extern const u8 Help_Text_AnswerWhatAreHiddenMoves[];
extern const u8 Help_Text_AnswerWhatMovesShouldIUse[];
extern const u8 Help_Text_AnswerWantToAddMoreMoves[];
extern const u8 Help_Text_AnswerWantToMakeMonStronger[];
extern const u8 Help_Text_AnswerFoeMonsTooStrong[];
extern const u8 Help_Text_AnswerWhatDoIDoInCave[];
extern const u8 Help_Text_AnswerNothingIWantToKnow[];
extern const u8 Help_Text_AnswerWhatsPokemonCenter[];
extern const u8 Help_Text_AnswerWhatsPokemonMart[];
extern const u8 Help_Text_AnswerWantToEndGame[];
extern const u8 Help_Text_AnswerWhatsAMon[];
extern const u8 Help_Text_AnswerWhatIsThatPersonLike[];
extern const u8 Help_Text_AnswerWhatDoesHiddenMoveDo[];
extern const u8 Help_Text_AnswerWhatDoIDoInSafari[];
extern const u8 Help_Text_AnswerWhatAreSafariRules[];
extern const u8 Help_Text_AnswerWantToEndSafari[];
extern const u8 Help_Text_AnswerWhatIsAGym[];
extern const u8 Help_Text_UsingPokedex[];
extern const u8 Help_Text_UsingPokemon[];
extern const u8 Help_Text_UsingSummary[];
extern const u8 Help_Text_UsingSwitch[];
extern const u8 Help_Text_UsingItem[];
extern const u8 Help_Text_UsingBag[];
extern const u8 Help_Text_UsingAnItem[];
extern const u8 Help_Text_UsingKeyItem[];
extern const u8 Help_Text_UsingPokeBall[];
extern const u8 Help_Text_UsingPlayer[];
extern const u8 Help_Text_UsingSave[];
extern const u8 Help_Text_UsingOption[];
extern const u8 Help_Text_UsingPotion[];
extern const u8 Help_Text_UsingTownMap[];
extern const u8 Help_Text_UsingTM[];
extern const u8 Help_Text_UsingHM[];
extern const u8 Help_Text_UsingMoveOutsideOfBattle[];
extern const u8 Help_Text_RidingBicycle[];
extern const u8 Help_Text_EnteringName[];
extern const u8 Help_Text_UsingPC[];
extern const u8 Help_Text_UsingBillsPC[];
extern const u8 Help_Text_UsingWithdraw[];
extern const u8 Help_Text_UsingDeposit[];
extern const u8 Help_Text_UsingMove[];
extern const u8 Help_Text_MovingItems[];
extern const u8 Help_Text_UsingPlayersPC[];
extern const u8 Help_Text_UsingWithdrawItem[];
extern const u8 Help_Text_UsingDepositItem[];
extern const u8 Help_Text_UsingMailbox[];
extern const u8 Help_Text_UsingProfOaksPC[];
extern const u8 Help_Text_OpeningMenu[];
extern const u8 Help_Text_UsingFight[];
extern const u8 Help_Text_UsingPokemon2[];
extern const u8 Help_Text_UsingShift[];
extern const u8 Help_Text_UsingSummary2[];
extern const u8 Help_Text_UsingBag2[];
extern const u8 Help_Text_ReadingPokedex[];
extern const u8 Help_Text_UsingHomePC[];
extern const u8 Help_Text_UsingItemStorage[];
extern const u8 Help_Text_UsingWithdrawItem2[];
extern const u8 Help_Text_UsingDepositItem2[];
extern const u8 Help_Text_UsingMailbox2[];
extern const u8 Help_Text_UsingRun[];
extern const u8 Help_Text_RegisterKeyItem[];
extern const u8 Help_Text_UsingBall[];
extern const u8 Help_Text_UsingBait[];
extern const u8 Help_Text_UsingRock[];
extern const u8 Help_Text_UsingHallOfFame[];
extern const u8 Help_Text_HowToUsePokedex[];
extern const u8 Help_Text_HowToUsePokemon[];
extern const u8 Help_Text_HowToUseSummary[];
extern const u8 Help_Text_HowToUseSwitch[];
extern const u8 Help_Text_HowToUseItem[];
extern const u8 Help_Text_HowToUseBag[];
extern const u8 Help_Text_HowToUseAnItem[];
extern const u8 Help_Text_HowToUseKeyItem[];
extern const u8 Help_Text_HowToUsePokeBall[];
extern const u8 Help_Text_HowToUsePlayer[];
extern const u8 Help_Text_HowToUseSave[];
extern const u8 Help_Text_HowToUseOption[];
extern const u8 Help_Text_HowToUsePotion[];
extern const u8 Help_Text_HowToUseTownMap[];
extern const u8 Help_Text_HowToUseTM[];
extern const u8 Help_Text_HowToUseHM[];
extern const u8 Help_Text_HowToUseMoveOutsideOfBattle[];
extern const u8 Help_Text_HowToRideBicycle[];
extern const u8 Help_Text_HowToEnterName[];
extern const u8 Help_Text_HowToUsePC[];
extern const u8 Help_Text_HowToUseBillsPC[];
extern const u8 Help_Text_HowToUseWithdraw[];
extern const u8 Help_Text_HowToUseDeposit[];
extern const u8 Help_Text_HowToUseMove[];
extern const u8 Help_Text_HowToMoveItems[];
extern const u8 Help_Text_HowToUsePlayersPC[];
extern const u8 Help_Text_HowToUseWithdrawItem[];
extern const u8 Help_Text_HowToUseDepositItem[];
extern const u8 Help_Text_HowToUseMailbox[];
extern const u8 Help_Text_HowToUseProfOaksPC[];
extern const u8 Help_Text_HowToOpenMenu[];
extern const u8 Help_Text_HowToUseFight[];
extern const u8 Help_Text_HowToUsePokemon2[];
extern const u8 Help_Text_HowToUseShift[];
extern const u8 Help_Text_HowToUseSummary2[];
extern const u8 Help_Text_HowToUseBag2[];
extern const u8 Help_Text_HowToReadPokedex[];
extern const u8 Help_Text_HowToUseHomePC[];
extern const u8 Help_Text_HowToUseItemStorage[];
extern const u8 Help_Text_HowToUseWithdrawItem2[];
extern const u8 Help_Text_HowToUseDepositItem2[];
extern const u8 Help_Text_HowToUseMailbox2[];
extern const u8 Help_Text_HowToUseRun[];
extern const u8 Help_Text_HowToRegisterKeyItem[];
extern const u8 Help_Text_HowToUseBall[];
extern const u8 Help_Text_HowToUseBait[];
extern const u8 Help_Text_HowToUseRock[];
extern const u8 Help_Text_HowToUseHallOfFame[];
extern const u8 Help_Text_HP[];
extern const u8 Help_Text_EXP[];
extern const u8 Help_Text_Moves[];
extern const u8 Help_Text_Attack[];
extern const u8 Help_Text_Defense[];
extern const u8 Help_Text_SpAtk[];
extern const u8 Help_Text_SpDef[];
extern const u8 Help_Text_Speed[];
extern const u8 Help_Text_Level[];
extern const u8 Help_Text_Type[];
extern const u8 Help_Text_OT[];
extern const u8 Help_Text_Item[];
extern const u8 Help_Text_Ability[];
extern const u8 Help_Text_Money[];
extern const u8 Help_Text_MoveType[];
extern const u8 Help_Text_Nature[];
extern const u8 Help_Text_IDNo[];
extern const u8 Help_Text_PP[];
extern const u8 Help_Text_Power[];
extern const u8 Help_Text_Accuracy[];
extern const u8 Help_Text_FNT[];
extern const u8 Help_Text_Items[];
extern const u8 Help_Text_KeyItems[];
extern const u8 Help_Text_PokeBalls[];
extern const u8 Help_Text_Pokedex[];
extern const u8 Help_Text_PlayTime[];
extern const u8 Help_Text_Badges[];
extern const u8 Help_Text_TextSpeed[];
extern const u8 Help_Text_BattleScene[];
extern const u8 Help_Text_BattleStyle[];
extern const u8 Help_Text_Sound[];
extern const u8 Help_Text_ButtonMode[];
extern const u8 Help_Text_Frame[];
extern const u8 Help_Text_Cancel2[];
extern const u8 Help_Text_TM[];
extern const u8 Help_Text_HM[];
extern const u8 Help_Text_HMMove[];
extern const u8 Help_Text_Evolution[];
extern const u8 Help_Text_StatusProblem[];
extern const u8 Help_Text_Pokemon[];
extern const u8 Help_Text_IDNo2[];
extern const u8 Help_Text_Money2[];
extern const u8 Help_Text_Badges2[];
extern const u8 Help_Text_DefineHP[];
extern const u8 Help_Text_DefineEXP[];
extern const u8 Help_Text_DefineMoves[];
extern const u8 Help_Text_DefineAttack[];
extern const u8 Help_Text_DefineDefense[];
extern const u8 Help_Text_DefineSpAtk[];
extern const u8 Help_Text_DefineSpDef[];
extern const u8 Help_Text_DefineSpeed[];
extern const u8 Help_Text_DefineLevel[];
extern const u8 Help_Text_DefineType[];
extern const u8 Help_Text_DefineOT[];
extern const u8 Help_Text_DefineItem[];
extern const u8 Help_Text_DefineAbility[];
extern const u8 Help_Text_DefineMoney[];
extern const u8 Help_Text_DefineMoveType[];
extern const u8 Help_Text_DefineNature[];
extern const u8 Help_Text_DefineIDNo[];
extern const u8 Help_Text_DefinePP[];
extern const u8 Help_Text_DefinePower[];
extern const u8 Help_Text_DefineAccuracy[];
extern const u8 Help_Text_DefineFNT[];
extern const u8 Help_Text_DefineItems[];
extern const u8 Help_Text_DefineKeyItems[];
extern const u8 Help_Text_DefinePokeBalls[];
extern const u8 Help_Text_DefinePokedex[];
extern const u8 Help_Text_DefinePlayTime[];
extern const u8 Help_Text_DefineBadges[];
extern const u8 Help_Text_DefineTextSpeed[];
extern const u8 Help_Text_DefineBattleScene[];
extern const u8 Help_Text_DefineBattleStyle[];
extern const u8 Help_Text_DefineSound[];
extern const u8 Help_Text_DefineButtonMode[];
extern const u8 Help_Text_DefineFrame[];
extern const u8 Help_Text_DefineCancel2[];
extern const u8 Help_Text_DefineTM[];
extern const u8 Help_Text_DefineHM[];
extern const u8 Help_Text_DefineHMMove[];
extern const u8 Help_Text_DefineEvolution[];
extern const u8 Help_Text_DefineStatusProblem[];
extern const u8 Help_Text_DefinePokemon[];
extern const u8 Help_Text_DefineIDNo2[];
extern const u8 Help_Text_DefineMoney2[];
extern const u8 Help_Text_DefineBadges2[];
extern const u8 Help_Text_TheHelpSystem[];
extern const u8 Help_Text_TheGame[];
extern const u8 Help_Text_WirelessAdapter[];
extern const u8 Help_Text_GameFundamentals1[];
extern const u8 Help_Text_GameFundamentals2[];
extern const u8 Help_Text_GameFundamentals3[];
extern const u8 Help_Text_WhatArePokemon[];
extern const u8 Help_Text_DescTheHelpSystem[];
extern const u8 Help_Text_DescTheGame[];
extern const u8 Help_Text_DescWirelessAdapter[];
extern const u8 Help_Text_DescGameFundamentals1[];
extern const u8 Help_Text_DescGameFundamentals2[];
extern const u8 Help_Text_DescGameFundamentals3[];
extern const u8 Help_Text_DescWhatArePokemon[];
extern const u8 Help_Text_UsingTypeMatchupList[];
extern const u8 Help_Text_OwnMoveDark[];
extern const u8 Help_Text_OwnPokemonDark[];
extern const u8 Help_Text_OwnMoveRock[];
extern const u8 Help_Text_OwnPokemonRock[];
extern const u8 Help_Text_OwnMovePsychic[];
extern const u8 Help_Text_OwnPokemonPsychic[];
extern const u8 Help_Text_OwnMoveFighting[];
extern const u8 Help_Text_OwnPokemonFighting[];
extern const u8 Help_Text_OwnMoveGrass[];
extern const u8 Help_Text_OwnPokemonGrass[];
extern const u8 Help_Text_OwnMoveGhost[];
extern const u8 Help_Text_OwnPokemonGhost[];
extern const u8 Help_Text_OwnMoveIce[];
extern const u8 Help_Text_OwnPokemonIce[];
extern const u8 Help_Text_OwnMoveGround[];
extern const u8 Help_Text_OwnPokemonGround[];
extern const u8 Help_Text_OwnMoveElectric[];
extern const u8 Help_Text_OwnPokemonElectric[];
extern const u8 Help_Text_OwnMovePoison[];
extern const u8 Help_Text_OwnPokemonPoison[];
extern const u8 Help_Text_OwnMoveDragon[];
extern const u8 Help_Text_OwnPokemonDragon[];
extern const u8 Help_Text_OwnMoveNormal[];
extern const u8 Help_Text_OwnPokemonNormal[];
extern const u8 Help_Text_OwnMoveSteel[];
extern const u8 Help_Text_OwnPokemonSteel[];
extern const u8 Help_Text_OwnMoveFlying[];
extern const u8 Help_Text_OwnPokemonFlying[];
extern const u8 Help_Text_OwnMoveFire[];
extern const u8 Help_Text_OwnPokemonFire[];
extern const u8 Help_Text_OwnMoveWater[];
extern const u8 Help_Text_OwnPokemonWater[];
extern const u8 Help_Text_OwnMoveBug[];
extern const u8 Help_Text_OwnPokemonBug[];
extern const u8 Help_Text_HowToUseTypeMatchupList[];
extern const u8 Help_Text_TypeMatchupOwnMoveDark[];
extern const u8 Help_Text_TypeMatchupOwnPokemonDark[];
extern const u8 Help_Text_TypeMatchupOwnMoveRock[];
extern const u8 Help_Text_TypeMatchupOwnPokemonRock[];
extern const u8 Help_Text_TypeMatchupOwnMovePsychic[];
extern const u8 Help_Text_TypeMatchupOwnPokemonPsychic[];
extern const u8 Help_Text_TypeMatchupOwnMoveFighting[];
extern const u8 Help_Text_TypeMatchupOwnPokemonFighting[];
extern const u8 Help_Text_TypeMatchupOwnMoveGrass[];
extern const u8 Help_Text_TypeMatchupOwnPokemonGrass[];
extern const u8 Help_Text_TypeMatchupOwnMoveGhost[];
extern const u8 Help_Text_TypeMatchupOwnPokemonGhost[];
extern const u8 Help_Text_TypeMatchupOwnMoveIce[];
extern const u8 Help_Text_TypeMatchupOwnPokemonIce[];
extern const u8 Help_Text_TypeMatchupOwnMoveGround[];
extern const u8 Help_Text_TypeMatchupOwnPokemonGround[];
extern const u8 Help_Text_TypeMatchupOwnMoveElectric[];
extern const u8 Help_Text_TypeMatchupOwnPokemonElectric[];
extern const u8 Help_Text_TypeMatchupOwnMovePoison[];
extern const u8 Help_Text_TypeMatchupOwnPokemonPoison[];
extern const u8 Help_Text_TypeMatchupOwnMoveDragon[];
extern const u8 Help_Text_TypeMatchupOwnPokemonDragon[];
extern const u8 Help_Text_TypeMatchupOwnMoveNormal[];
extern const u8 Help_Text_TypeMatchupOwnPokemonNormal[];
extern const u8 Help_Text_TypeMatchupOwnMoveSteel[];
extern const u8 Help_Text_TypeMatchupOwnPokemonSteel[];
extern const u8 Help_Text_TypeMatchupOwnMoveFlying[];
extern const u8 Help_Text_TypeMatchupOwnPokemonFlying[];
extern const u8 Help_Text_TypeMatchupOwnMoveFire[];
extern const u8 Help_Text_TypeMatchupOwnPokemonFire[];
extern const u8 Help_Text_TypeMatchupOwnMoveWater[];
extern const u8 Help_Text_TypeMatchupOwnPokemonWater[];
extern const u8 Help_Text_TypeMatchupOwnMoveBug[];
extern const u8 Help_Text_TypeMatchupOwnPokemonBug[];

extern const u8 EventScript_FldEffStrength[];
extern const u8 EventScript_FailSweetScent[];
extern const u8 EventScript_FldEffRockSmash[];

extern const u8 SafariZone_EventScript_TimesUp[];
extern const u8 SafariZone_EventScript_RetirePrompt[];
extern const u8 SafariZone_EventScript_OutOfBallsMidBattle[];
extern const u8 SafariZone_EventScript_OutOfBalls[];

extern const u8 EventScript_ItemfinderDigUpUnderfootItem[];


extern const u8 EventScript_DoNoIntroTrainerBattle[];
extern const u8 EventScript_TryDoDoubleTrainerBattle[];
extern const u8 EventScript_TryDoNormalTrainerBattle[];
extern const u8 EventScript_TryDoDoubleRematchBattle[];
extern const u8 EventScript_TryDoRematchBattle[];
extern const u8 EventScript_DoTrainerBattleFromApproach[];
extern const u8 EventScript_TestSignpostMsg[];


extern const u8 EventScript_ResetAllMapFlags[];


extern const u8 EventScript_PalletTown_PlayersHouse_2F_ShutDownPC[];


extern const u8 EventScript_AfterWhiteOutMomHeal[];
extern const u8 EventScript_AfterWhiteOutHeal[];


extern const u8 gText_WouldYouLikeToSaveTheGame[];
extern const u8 gText_AlreadySaveFile_WouldLikeToOverwrite[];
extern const u8 gText_SavingDontTurnOffThePower[];
extern const u8 gText_PlayerSavedTheGame[];
extern const u8 gText_DifferentGameFile[];


extern const u8 EventScript_ReleaseEnd[];
extern const u8 CableClub_Text_TradeMonsUsingLinkCable[];
extern const u8 CableClub_Text_BattleUsingLinkCable[];
extern const u8 CableClub_Text_CancelSelectedItem[];
extern const u8 CableClub_Text_YouMayTradeHere[];
extern const u8 CableClub_Text_YouMayBattleHere[];
extern const u8 CableClub_Text_CanMakeBerryPowder[];
extern const u8 EventScript_PC[];

extern const u8 EventScript_RepelWoreOff[];


extern const u8 Text_MonSentToBoxInSomeonesPC[];
extern const u8 Text_MonSentToBoxInBillsPC[];
extern const u8 Text_MonSentToBoxSomeonesBoxFull[];
extern const u8 Text_MonSentToBoxBillsBoxFull[];

extern const u8 EventScript_BagItemCanBeRegistered[];


extern const u8 EventScript_FldEffCut[];


extern const u8 CableClub_Text_WhenAllPlayersReadyAConfirmBCancel[];
extern const u8 CableClub_Text_AwaitingLinkupBCancel[];
extern const u8 CableClub_Text_StartLinkWithXPlayersAConfirmBCancel[];
extern const u8 CableClub_Text_PleaseWaitBCancel[];


extern const u8 EventScript_FldEffFlash[];


extern const u8 EventScript_CancelMessageBox[];
extern const u8 PalletTown_PlayersHouse_2F_EventScript_PC[];
extern const u8 EventScript_HiddenItemScript[];
extern const u8 EventScript_PC[];
extern const u8 EventScript_WallTownMap[];
extern const u8 EventScript_Bookshelf[];
extern const u8 EventScript_PokeMartShelf[];
extern const u8 EventScript_Food[];
extern const u8 EventScript_ImpressiveMachine[];
extern const u8 EventScript_Blueprints[];
extern const u8 EventScript_VideoGame[];
extern const u8 EventScript_Burglary[];
extern const u8 EventScript_Computer[];
extern const u8 TrainerTower_EventScript_ShowTime[];
extern const u8 EventScript_PlayerFacingTVScreen[];
extern const u8 EventScript_Cabinet[];
extern const u8 EventScript_Kitchen[];
extern const u8 EventScript_Dresser[];
extern const u8 EventScript_Snacks[];
extern const u8 EventScript_Painting[];
extern const u8 EventScript_PowerPlantMachine[];
extern const u8 EventScript_Telephone[];
extern const u8 EventScript_AdvertisingPoster[];
extern const u8 EventScript_TastyFood[];
extern const u8 EventScript_TrashBin[];
extern const u8 EventScript_Cup[];
extern const u8 EventScript_PolishedWindow[];
extern const u8 EventScript_BeautifulSkyWindow[];
extern const u8 EventScript_BlinkingLights[];
extern const u8 EventScript_NeatlyLinedUpTools[];
extern const u8 CableClub_EventScript_ShowWirelessCommunicationScreen[];
extern const u8 EventScript_Questionnaire[];
extern const u8 CableClub_EventScript_ShowBattleRecords[];
extern const u8 EventScript_Indigo_UltimateGoal[];
extern const u8 EventScript_Indigo_HighestAuthority[];
extern const u8 EventScript_PokemartSign[];
extern const u8 EventScript_PokecenterSign[];
extern const u8 EventScript_CurrentTooFast[];
extern const u8 EventScript_UseSurf[];
extern const u8 EventScript_Waterfall[];
extern const u8 EventScript_CantUseWaterfall[];
extern const u8 EventScript_VsSeekerChargingDone[];
extern const u8 EventScript_FieldPoison[];
extern const u8 EventScript_EggHatch[];
extern const u8 EventScript_DoFallWarp[];



extern const u8 EventScript_ResetEliteFourEnd[];
extern const u8 CableClub_EventScript_DoLinkRoomExit[];
extern const u8 CableClub_EventScript_TooBusyToNotice[];
extern const u8 CableClub_EventScript_ReadTrainerCard[];
extern const u8 CableClub_EventScript_ReadTrainerCardColored[];
extern const u8 BattleColosseum_4P_EventScript_PlayerSpot0[];
extern const u8 BattleColosseum_4P_EventScript_PlayerSpot1[];
extern const u8 BattleColosseum_4P_EventScript_PlayerSpot2[];
extern const u8 BattleColosseum_4P_EventScript_PlayerSpot3[];
extern const u8 RecordCorner_EventScript_Spot0[];
extern const u8 RecordCorner_EventScript_Spot1[];
extern const u8 RecordCorner_EventScript_Spot2[];
extern const u8 RecordCorner_EventScript_Spot3[];
extern const u8 BattleColosseum_2P_EventScript_PlayerSpot0[];
extern const u8 BattleColosseum_2P_EventScript_PlayerSpot1[];
extern const u8 TradeCenter_EventScript_Chair0[];
extern const u8 TradeCenter_EventScript_Chair1[];
extern const u8 TradeCenter_ConfirmLeaveRoom[];
extern const u8 TradeCenter_TerminateLink[];
# 30 "src/start_menu.c" 2
# 1 "include/field_weather.h" 1




# 1 "include/constants/field_weather.h" 1
# 6 "include/field_weather.h" 2


enum {
    GFXTAG_CLOUD = 0x1200,
    GFXTAG_FOG_H,
    GFXTAG_ASH,
    GFXTAG_FOG_D,
    GFXTAG_SANDSTORM,
    GFXTAG_BUBBLE,
    GFXTAG_RAIN,
};
enum {
    PALTAG_WEATHER = 0x1200,
};

struct Weather
{
    union
    {
        struct
        {
            struct Sprite *rainSprites[24];
            struct Sprite *snowflakeSprites[101];
            struct Sprite *cloudSprites[3];
        } s1;
        struct
        {
            u8 filler0[0xA0];
            struct Sprite *fogHSprites[20];
            struct Sprite *ashSprites[20];
            struct Sprite *fogDSprites[20];
            struct Sprite *sandstormSprites1[20];
            struct Sprite *sandstormSprites2[5];
        } s2;
    } sprites;
    u8 gammaShifts[19][32];
    u8 altGammaShifts[19][32];
    s8 gammaIndex;
    s8 gammaTargetIndex;
    u8 gammaStepDelay;
    u8 gammaStepFrameCounter;
    u16 fadeDestColor;
    u8 palProcessingState;
    u8 fadeScreenCounter;
    bool8 readyForInit;
    u8 taskId;
    u8 fadeInActive;
    u8 fadeInCounter;
    u16 initStep;
    u16 finishStep;
    u8 currWeather;
    u8 nextWeather;
    u8 weatherGfxLoaded;
    bool8 weatherChangeComplete;
    u8 weatherPicSpritePalIndex;
    u8 altGammaSpritePalIndex;
    u16 rainSpriteVisibleCounter;
    u8 curRainSpriteIndex;
    u8 targetRainSpriteCount;
    u8 rainSpriteCount;
    u8 rainSpriteVisibleDelay;
    u8 isDownpour;
    u8 rainStrength;
    bool8 cloudSpritesCreated;
    u16 snowflakeVisibleCounter;
    u16 snowflakeTimer;
    u8 snowflakeSpriteCount;
    u8 targetSnowflakeSpriteCount;
    u16 thunderDelay;
    u16 thunderCounter;
    bool8 thunderAllowEnd;
    bool8 thunderSkipShort;
    u8 thunderShortRetries;
    bool8 thunderTriggered;
    u16 fogHScrollPosX;
    u16 fogHScrollCounter;
    u16 fogHScrollOffset;
    u8 lightenedFogSpritePals[6];
    u8 lightenedFogSpritePalsCount;
    bool8 fogHSpritesCreated;
    u16 ashBaseSpritesX;
    u16 ashUnused;
    bool8 ashSpritesCreated;
    u32 sandstormXOffset;
    u32 sandstormYOffset;
    u8 filler_70C[2];
    u16 sandstormBaseSpritesX;
    u16 sandstormPosY;
    u16 sandstormWaveIndex;
    u16 sandstormWaveCounter;
    bool8 sandstormSpritesCreated;
    bool8 sandstormSwirlSpritesCreated;
    u16 fogDBaseSpritesX;
    u16 fogDPosY;
    u16 fogDScrollXCounter;
    u16 fogDScrollYCounter;
    u16 fogDXOffset;
    u16 fogDYOffset;
    bool8 fogDSpritesCreated;
    u16 bubblesDelayCounter;
    u16 bubblesDelayIndex;
    u16 bubblesCoordsIndex;
    u16 bubblesSpriteCount;
    bool8 bubblesSpritesCreated;
    u16 currBlendEVA;
    u16 currBlendEVB;
    u16 targetBlendEVA;
    u16 targetBlendEVB;
    u8 blendUpdateCounter;
    u8 blendFrameCounter;
    u8 blendDelay;
    s16 droughtBrightnessStage;
    s16 droughtLastBrightnessStage;
    s16 droughtTimer;
    s16 droughtState;
    u8 filler_744[0xD-4];
    s8 loadDroughtPalsIndex;
    u8 loadDroughtPalsOffset;
};

extern struct Weather *const gWeatherPtr;

void FadeScreen(u8 mode, s8 delay);

void SetSavedWeather(u32);
u8 GetSav1Weather(void);

void DoCurrentWeather(void);
void SetSavedWeatherFromCurrMapHeader(void);
void SlightlyDarkenPalsInWeather(u16 *, u16 *, u32);
void PlayRainStoppingSoundEffect(void);
bool8 IsWeatherNotFadingIn(void);
void SetWeatherScreenFadeOut(void);
void WeatherProcessingIdle(void);
u8 GetCurrentWeather(void);
void delay(u8, u8, u32);
void UpdateSpritePaletteWithWeather(u8 palIdx);
void ResetPreservedPalettesInWeather(void);
void PreservePaletteInWeather(u8 palIdx);

void SetNextWeather(u8 weather);
void SetCurrentAndNextWeather(u8 weather);
void Weather_SetBlendCoeffs(u8 eva, u8 evb);
void Weather_SetTargetBlendCoeffs(u8 eva, u8 evb, int delay);
bool8 Weather_UpdateBlend(void);
void LoadCustomWeatherSpritePalette(const u16 *palette);
void ResetDroughtWeatherPaletteLoading(void);
bool8 LoadDroughtWeatherPalettes(void);
void DroughtStateInit(void);
void DroughtStateRun(void);
void SetRainStrengthFromSoundEffect(u16 soundEffect);
void WeatherShiftGammaIfPalStateIdle(s8 gammaIndex);
void WeatherBeginGammaFade(u8 gammaIndex, u8 gammaTargetIndex, u8 gammaStepDelay);
void ApplyWeatherGammaShiftToPal(u8 paletteIndex);
void StartWeather(void);
void ResumePausedWeather(void);
void FadeSelectedPals(u8 mode, s8 delay, u32 selectedPalettes);

extern const u16 gCloudsWeatherPalette[];
extern const u16 gSandstormWeatherPalette[];
extern const u8 gWeatherFogDiagonalTiles[];
extern const u8 gWeatherFogHorizontalTiles[];
extern const u8 gWeatherCloudTiles[];
extern const u8 gWeatherSnow1Tiles[];
extern const u8 gWeatherSnow2Tiles[];
extern const u8 gWeatherBubbleTiles[];
extern const u8 gWeatherAshTiles[];
extern const u8 gWeatherRainTiles[];
extern const u8 gWeatherSandstormTiles[];
# 31 "src/start_menu.c" 2
# 1 "include/field_specials.h" 1





enum HiddenItemAttr
{
    HIDDEN_ITEM_ID = 0,
    HIDDEN_ITEM_FLAG,
    HIDDEN_ITEM_QUANTITY,
    HIDDEN_ITEM_UNDERFOOT
};

u8 GetLeadMonIndex(void);
s32 CountDigits(s32 number);
void TV_PrintIntToStringVar(u8 varidx, s32 number);
u16 GetStarterSpecies(void);
void StopPokemonLeagueLightingEffectTask(void);
void FieldCB_ShowPortholeView(void);
u8 ContextNpcGetTextColor(void);
void SetPCBoxToSendMon(u8);
u16 GetPCBoxToSendMon(void);
bool8 IsDestinationBoxFull(void);
bool8 ShouldShowBoxWasFullMessage(void);
u16 GetHiddenItemAttr(u32 hiddenItem, u8 attr);
u8 GetUnlockedSeviiAreas(void);
u32 GetPlayerTrainerId(void);
bool8 CutMoveRuinValleyCheck(void);
void CutMoveOpenDottedHoleDoor(void);
void RunMassageCooldownStepCounter(void);
void IncrementResortGorgeousStepCounter(void);
void IncrementBirthIslandRockStepCount(void);
void ResetCyclingRoadChallengeData(void);
void ResetFieldTasksArgs(void);
bool8 UsedPokemonCenterWarp(void);
void QuestLog_CheckDepartingIndoorsMap(void);
void QuestLog_TryRecordDepartedLocation(void);
# 32 "src/start_menu.c" 2
# 1 "include/pokedex_screen.h" 1
# 24 "include/pokedex_screen.h"
# 1 "include/pokedex.h" 1
# 25 "include/pokedex_screen.h" 2

extern const struct PokedexEntry gPokedexEntries[];

void CB2_OpenPokedexFromStartMenu(void);
s8 DexScreen_GetSetPokedexFlag(u16 nationalDexNo, u8 caseId, bool8 indexIsSpecies);
# 33 "src/start_menu.c" 2
# 1 "include/trainer_card.h" 1



# 1 "include/constants/trainer_card.h" 1
# 5 "include/trainer_card.h" 2

struct TrainerCardRSE
{
             u8 gender;
             u8 stars;
             bool8 hasPokedex;
             bool8 caughtAllHoenn;
             bool8 hasAllPaintings;
             u16 hofDebutHours;
             u16 hofDebutMinutes;
             u16 hofDebutSeconds;
             u16 caughtMonsCount;
             u16 trainerId;
             u16 playTimeHours;
             u16 playTimeMinutes;
             u16 linkBattleWins;
             u16 linkBattleLosses;
             u16 battleTowerWins;
             u16 battleTowerStraightWins;
             u16 contestsWithFriends;
             u16 pokeblocksWithFriends;
             u16 pokemonTrades;
             u32 money;
             u16 easyChatProfile[4];
             u8 playerName[7 + 1];
};

struct TrainerCard
{
             struct TrainerCardRSE rse;
             u8 version;
             bool16 hasAllFrontierSymbols;
             u32 berryCrushPoints;
             u32 unionRoomNum;
             u32 berriesPicked;
             u32 jumpsInRow;
             bool8 shouldDrawStickers;
             bool8 hasAllMons;
             u8 monIconTint;
             u8 facilityClass;
             u8 stickers[3];
             u16 monSpecies[6];
};

extern struct TrainerCard gTrainerCards[4];

void ShowPlayerTrainerCard(void (*callback)(void));
void ShowTrainerCardInLink(u8 whoseCard, MainCallback callback);
u8 GetTrainerCardStars(u8 cardId);
void TrainerCard_GenerateCardForLinkPlayer(struct TrainerCard *trainerCard);
# 34 "src/start_menu.c" 2
# 1 "include/option_menu.h" 1



void CB2_OptionsMenuFromStartMenu(void);
# 35 "src/start_menu.c" 2
# 1 "include/save_menu_util.h" 1



enum SaveStat
{
    SAVE_STAT_NAME = 0,
    SAVE_STAT_POKEDEX,
    SAVE_STAT_TIME,
    SAVE_STAT_LOCATION,
    SAVE_STAT_BADGES,
    SAVE_STAT_TIME_HR_RT_ALIGN
};

void SaveStatToString(u8 a0, u8 *a1, u8 a2);
# 36 "src/start_menu.c" 2
# 1 "include/help_system.h" 1




# 1 "include/list_menu.h" 1
# 15 "include/list_menu.h"
enum
{
    SCROLL_ARROW_LEFT,
    SCROLL_ARROW_RIGHT,
    SCROLL_ARROW_UP,
    SCROLL_ARROW_DOWN,
};

struct ListMenuItem
{
    const u8 *label;
    u32 index;
};

struct ListMenu;


enum ListMenuFields
{
    LISTFIELD_MOVECURSORFUNC = 0,
    LISTFIELD_MOVECURSORFUNC2,
    LISTFIELD_TOTALITEMS,
    LISTFIELD_MAXSHOWED,
    LISTFIELD_WINDOWID,
    LISTFIELD_HEADERX,
    LISTFIELD_ITEMX,
    LISTFIELD_CURSORX,
    LISTFIELD_UPTEXTY,
    LISTFIELD_CURSORPAL,
    LISTFIELD_FILLVALUE,
    LISTFIELD_CURSORSHADOWPAL,
    LISTFIELD_LETTERSPACING,
    LISTFIELD_ITEMVERTICALPADDING,
    LISTFIELD_SCROLLMULTIPLE,
    LISTFIELD_FONTID,
    LISTFIELD_CURSORKIND,
};

struct ListMenuTemplate
{
             const struct ListMenuItem *items;
             void (* moveCursorFunc)(s32 itemIndex, bool8 onInit, struct ListMenu *list);
             void (* itemPrintFunc)(u8 windowId, u32 itemId, u8 y);
             u16 totalItems;
             u16 maxShowed;
             u8 windowId;
             u8 header_X;
             u8 item_X;
             u8 cursor_X;
             u8 upText_Y:4;
             u8 cursorPal:4;
             u8 fillValue:4;
             u8 cursorShadowPal:4;
             u8 lettersSpacing:3;
             u8 itemVerticalPadding:3;
             u8 scrollMultiple:2;
             u8 fontId:6;
             u8 cursorKind:2;
};

struct ListMenu
{
    struct ListMenuTemplate template;
    u16 cursorPos;
    u16 itemsAbove;
    u8 unk_1C;
    u8 unk_1D;
    u8 taskId;
    u8 unk_1F;
};

struct ListMenuWindowRect
{
    u8 x;
    u8 y;
    u8 width;
    u8 height;
    u8 palNum;
};

extern struct ListMenuTemplate gMultiuseListMenuTemplate;

u32 DoMysteryGiftListMenu(const struct WindowTemplate *windowTemplate, const struct ListMenuTemplate *listMenuTemplate, u8 arg2, u16 tileNum, u16 palNum);
u8 ListMenuInit(const struct ListMenuTemplate *listMenuTemplate, u16 cursorPos, u16 itemsAbove);
u8 ListMenuInitInRect(const struct ListMenuTemplate *listMenuTemplate, const struct ListMenuWindowRect *rect, u16 cursorPos, u16 itemsAbove);
s32 ListMenu_ProcessInput(u8 listTaskId);
void DestroyListMenuTask(u8 listTaskId, u16 *cursorPos, u16 *itemsAbove);
void RedrawListMenu(u8 listTaskId);
void ListMenuGetScrollAndRow(u8 listTaskId, u16 *cursorPos, u16 *itemsAbove);
u16 ListMenuGetYCoordForPrintingArrowCursor(u8 listTaskId);
void ListMenuOverrideSetColors(u8 cursorPal, u8 fillValue, u8 cursorShadowPal);
void ListMenuDefaultCursorMoveFunc(s32 itemIndex, bool8 onInit, struct ListMenu *list);
void ListMenuSetTemplateField(u8 taskId, u8 field, s32 value);
# 6 "include/help_system.h" 2

# 1 "include/constants/help_system.h" 1
# 8 "include/help_system.h" 2

struct HelpSystemListMenu_sub
{
    struct ListMenuItem * items;
    u16 totalItems;
    u16 maxShowed;
    u8 left;
    u8 top;
};

struct HelpSystemListMenu
{
    struct HelpSystemListMenu_sub sub;
    u8 itemsAbove;
    u8 cursorPos;
    u8 state;
    u8 filler_10[0xC];
};

extern struct HelpSystemListMenu gHelpSystemListMenu;
extern struct ListMenuItem gHelpSystemListMenuItems[];
extern bool8 gHelpSystemEnabled;
extern bool8 gHelpSystemToggleWithRButtonDisabled;


void SetHelpContextDontCheckBattle(u8);
void SetHelpContextForMap(void);
void SetHelpContext(u8);
bool8 HelpSystem_UpdateHasntSeenIntro(void);
bool8 HelpSystem_IsSinglePlayer(void);
void HelpSystem_Disable(void);
void HelpSystem_Enable(void);
void HelpSystem_EnableToggleWithRButton(void);
bool8 RunHelpMenuSubroutine(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
bool8 HelpSystemSubroutine_PrintWelcomeMessage(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
bool8 HelpSystemSubroutine_WelcomeWaitButton(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
bool8 HelpSystemSubroutine_WelcomeEndGotoMenu(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
bool8 HelpSystemSubroutine_MenuInputHandlerMain(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
bool8 HelpMenuSubroutine_InitSubmenu(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
bool8 HelpMenuSubroutine_ReturnFromSubmenu(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
bool8 HelpMenuSubroutine_SubmenuInputHandler(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
void HelpSystem_PrintTopicLabel(void);
bool8 HelpMenuSubroutine_HelpItemPrint(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
bool8 HelpMenuSubroutine_ReturnFromHelpItem(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
bool8 HelpMenuSubroutine_HelpItemWaitButton(struct HelpSystemListMenu * helpListMenu, struct ListMenuItem * listMenuItemsBuffer);
bool8 GetHelpSystemMenuLevel(void);


bool8 RunHelpSystemCallback(void);
void SaveCallbacks(void);
void SaveMapGPURegs(void);
void SaveMapTiles(void);
void SaveMapTextColors(void);
void RestoreCallbacks(void);
void RestoreGPURegs(void);
void RestoreMapTiles(void);
void RestoreMapTextColors(void);
void CommitTilemap(void);
void HS_BufferFillMapWithTile1FF(void);
void HS_ShowOrHideWordHELPinTopLeft(u8 mode);
void HS_ShowOrHideControlsGuideInTopRight(u8 mode);
void HS_ShowOrHideMainWindowText(u8 mode);
void HS_SetMainWindowBgBrightness(u8 mode);
void HS_ShowOrHideToplevelTooltipWindow(u8 mode);
void HS_ShowOrHideHeaderAndFooterLines_Lighter(u8 mode);
void HS_ShowOrHideHeaderAndFooterLines_Darker(u8 mode);
void HS_ShowOrHideVerticalBlackBarsAlongSides(u8 mode);
void HS_ShowOrHideHeaderLine_Darker_FooterStyle(u8 mode);
void HS_ShowOrHideScrollArrows(u8 which, u8 mode);
void HelpSystem_PrintTextRightAlign_Row52(const u8 *str);
void HelpSystem_PrintTextAt(const u8 *, u8, u8);
void HelpSystem_PrintQuestionAndAnswerPair(const u8 *a0, const u8 *a1);
void HelpSystem_PrintTopicMouseoverDescription(const u8 *str);
void HelpSystem_FillPanel2(void);
void HelpSystem_FillPanel1(void);
void HelpSystem_InitListMenuController(struct HelpSystemListMenu *, u8, u8);
void HelpSystem_SetInputDelay(u8);
s32 HelpSystem_GetMenuInput(void);
void HS_UpdateMenuScrollArrows(void);

void DecompressAndRenderGlyph(u8 fontId, u16 glyph, struct Bitmap *srcBlit, struct Bitmap *destBlit, u8 *destBuffer, u8 x, u8 y, u8 width, u8 height);
void HelpSystem_PrintTextInTopLeftCorner(const u8 * str);
void HelpSystem_FillPanel3(void);
void PrintListMenuItems(void);
void PlaceListMenuCursor(void);
bool8 MoveCursor(u8 by, u8 dirn);
void BackupHelpContext(void);
void RestoreHelpContext(void);
void HelpSystemRenderText(u8 fontId, u8 * dest, const u8 * src, u8 x, u8 y, u8 width, u8 height);
void HelpSystem_DisableToggleWithRButton(void);
# 37 "src/start_menu.c" 2
# 1 "include/constants/songs.h" 1
# 38 "src/start_menu.c" 2
# 1 "include/constants/field_weather.h" 1
# 39 "src/start_menu.c" 2

enum StartMenuOption
{
    STARTMENU_POKEDEX = 0,
    STARTMENU_POKEMON,
    STARTMENU_BAG,
    STARTMENU_PLAYER,
    STARTMENU_SAVE,
    STARTMENU_OPTION,
    STARTMENU_EXIT,
    STARTMENU_RETIRE,
    STARTMENU_PLAYER2,
    MAX_STARTMENU_ITEMS
};

enum SaveCBReturn
{
    SAVECB_RETURN_CONTINUE = 0,
    SAVECB_RETURN_OKAY,
    SAVECB_RETURN_CANCEL,
    SAVECB_RETURN_ERROR
};

static __attribute__((section("ewram_data"))) bool8 (*sStartMenuCallback)(void) = ((void *)0);
static __attribute__((section("ewram_data"))) u8 sStartMenuCursorPos = 0;
static __attribute__((section("ewram_data"))) u8 sNumStartMenuItems = 0;
static __attribute__((section("ewram_data"))) u8 sStartMenuOrder[MAX_STARTMENU_ITEMS] = {};
static __attribute__((section("ewram_data"))) s8 sDrawStartMenuState[2] = {};
static __attribute__((section("ewram_data"))) u8 sSafariZoneStatsWindowId = 0;
static __attribute__((aligned(4))) __attribute__((section("ewram_data"))) u8 sSaveStatsWindowId = 0;

static u8 (*sSaveDialogCB)(void);
static u8 sSaveDialogDelay;
static bool8 sSaveDialogIsPrinting;

static void SetUpStartMenu_Link(void);
static void SetUpStartMenu_UnionRoom(void);
static void SetUpStartMenu_SafariZone(void);
static void SetUpStartMenu_NormalField(void);
static bool8 StartCB_HandleInput(void);
static void StartMenu_FadeScreenIfLeavingOverworld(void);
static bool8 StartMenuPokedexSanityCheck(void);
static bool8 StartMenuPokedexCallback(void);
static bool8 StartMenuPokemonCallback(void);
static bool8 StartMenuBagCallback(void);
static bool8 StartMenuPlayerCallback(void);
static bool8 StartMenuSaveCallback(void);
static bool8 StartMenuOptionCallback(void);
static bool8 StartMenuExitCallback(void);
static bool8 StartMenuSafariZoneRetireCallback(void);
static bool8 StartMenuLinkPlayerCallback(void);
static bool8 StartCB_Save1(void);
static bool8 StartCB_Save2(void);
static void StartMenu_PrepareForSave(void);
static u8 RunSaveDialogCB(void);
static void task50_save_game(u8 taskId);
static u8 SaveDialogCB_PrintAskSaveText(void);
static u8 SaveDialogCB_AskSavePrintYesNoMenu(void);
static u8 SaveDialogCB_AskSaveHandleInput(void);
static u8 SaveDialogCB_PrintAskOverwriteText(void);
static u8 SaveDialogCB_AskOverwritePrintYesNoMenu(void);
static u8 SaveDialogCB_AskReplacePreviousFilePrintYesNoMenu(void);
static u8 SaveDialogCB_AskOverwriteOrReplacePreviousFileHandleInput(void);
static u8 SaveDialogCB_PrintSavingDontTurnOffPower(void);
static u8 SaveDialogCB_DoSave(void);
static u8 SaveDialogCB_PrintSaveResult(void);
static u8 SaveDialogCB_WaitPrintSuccessAndPlaySE(void);
static u8 SaveDialogCB_ReturnSuccess(void);
static u8 SaveDialogCB_WaitPrintErrorAndPlaySE(void);
static u8 SaveDialogCB_ReturnError(void);
static void CB2_WhileSavingAfterLinkBattle(void);
static void task50_after_link_battle_save(u8 taskId);
static void PrintSaveStats(void);
static void CloseSaveStatsWindow(void);
static void CloseStartMenu(void);

static const struct MenuAction sStartMenuActionTable[] = {
    { gText_MenuPokedex, {.u8_void = StartMenuPokedexCallback} },
    { gText_MenuPokemon, {.u8_void = StartMenuPokemonCallback} },
    { gText_MenuBag, {.u8_void = StartMenuBagCallback} },
    { gText_MenuPlayer, {.u8_void = StartMenuPlayerCallback} },
    { gText_MenuSave, {.u8_void = StartMenuSaveCallback} },
    { gText_MenuOption, {.u8_void = StartMenuOptionCallback} },
    { gText_MenuExit, {.u8_void = StartMenuExitCallback} },
    { gText_MenuRetire, {.u8_void = StartMenuSafariZoneRetireCallback} },
    { gText_MenuPlayer, {.u8_void = StartMenuLinkPlayerCallback} }
};

static const struct WindowTemplate sSafariZoneStatsWindowTemplate = {
    .bg = 0,
    .tilemapLeft = 1,
    .tilemapTop = 1,
    .width = 10,
    .height = 4,
    .paletteNum = 15,
    .baseBlock = 0x008
};

static const u8 *const sStartMenuDescPointers[] = {
    gStartMenuDesc_Pokedex,
    gStartMenuDesc_Pokemon,
    gStartMenuDesc_Bag,
    gStartMenuDesc_Player,
    gStartMenuDesc_Save,
    gStartMenuDesc_Option,
    gStartMenuDesc_Exit,
    gStartMenuDesc_Retire,
    gStartMenuDesc_Player
};

static const struct BgTemplate sBGTemplates_AfterLinkSaveMessage[] = {
    {
        .bg = 0,
        .charBaseIndex = 2,
        .mapBaseIndex = 31,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 0,
        .baseTile = 0x000
    }
};

static const struct WindowTemplate sWindowTemplates_AfterLinkSaveMessage[] = {
    {
        .bg = 0,
        .tilemapLeft = 2,
        .tilemapTop = 15,
        .width = 26,
        .height = 4,
        .paletteNum = 15,
        .baseBlock = 0x198
    }, { 0xFF, 0, 0, 0, 0, 0, 0, }
};

static const struct WindowTemplate sSaveStatsWindowTemplate = {
    .bg = 0,
    .tilemapLeft = 1,
    .tilemapTop = 1,
    .width = 14,
    .height = 9,
    .paletteNum = 13,
    .baseBlock = 0x008
};

static __attribute__((aligned(2))) const u8 sTextColor_StatName[] = { 1, 2, 3 };
static __attribute__((aligned(2))) const u8 sTextColor_StatValue[] = { 1, 4, 5 };
static __attribute__((aligned(2))) const u8 sTextColor_LocationHeader[] = { 1, 6, 7 };

static void SetUpStartMenu(void)
{
    sNumStartMenuItems = 0;
    if (IsUpdateLinkStateCBActive() == 1)
        SetUpStartMenu_Link();
    else if (InUnionRoom() == 1)
        SetUpStartMenu_UnionRoom();
    else if (GetSafariZoneFlag() == 1)
        SetUpStartMenu_SafariZone();
    else
        SetUpStartMenu_NormalField();
}

static void AppendToStartMenuItems(u8 newEntry)
{
    AppendToList(sStartMenuOrder, &sNumStartMenuItems, newEntry);
}

static void SetUpStartMenu_NormalField(void)
{
    if (FlagGet(((((0x4FF + 1) + 768 - 1) + 1) + 0x29)) == 1)
        AppendToStartMenuItems(STARTMENU_POKEDEX);
    if (FlagGet(((((0x4FF + 1) + 768 - 1) + 1) + 0x28)) == 1)
        AppendToStartMenuItems(STARTMENU_POKEMON);
    AppendToStartMenuItems(STARTMENU_BAG);
    AppendToStartMenuItems(STARTMENU_PLAYER);
    AppendToStartMenuItems(STARTMENU_SAVE);
    AppendToStartMenuItems(STARTMENU_OPTION);
    AppendToStartMenuItems(STARTMENU_EXIT);
}

static void SetUpStartMenu_SafariZone(void)
{
    AppendToStartMenuItems(STARTMENU_RETIRE);
    AppendToStartMenuItems(STARTMENU_POKEDEX);
    AppendToStartMenuItems(STARTMENU_POKEMON);
    AppendToStartMenuItems(STARTMENU_BAG);
    AppendToStartMenuItems(STARTMENU_PLAYER);
    AppendToStartMenuItems(STARTMENU_OPTION);
    AppendToStartMenuItems(STARTMENU_EXIT);
}

static void SetUpStartMenu_Link(void)
{
    AppendToStartMenuItems(STARTMENU_POKEMON);
    AppendToStartMenuItems(STARTMENU_BAG);
    AppendToStartMenuItems(STARTMENU_PLAYER2);
    AppendToStartMenuItems(STARTMENU_OPTION);
    AppendToStartMenuItems(STARTMENU_EXIT);
}

static void SetUpStartMenu_UnionRoom(void)
{
    AppendToStartMenuItems(STARTMENU_POKEMON);
    AppendToStartMenuItems(STARTMENU_BAG);
    AppendToStartMenuItems(STARTMENU_PLAYER);
    AppendToStartMenuItems(STARTMENU_OPTION);
    AppendToStartMenuItems(STARTMENU_EXIT);
}

static void DrawSafariZoneStatsWindow(void)
{
    sSafariZoneStatsWindowId = AddWindow(&sSafariZoneStatsWindowTemplate);
    PutWindowTilemap(sSafariZoneStatsWindowId);
    DrawStdWindowFrame(sSafariZoneStatsWindowId, 0);
    ConvertIntToDecimalStringN(gStringVar1, gSafariZoneStepCounter, STR_CONV_MODE_RIGHT_ALIGN, 3);
    ConvertIntToDecimalStringN(gStringVar2, 600, STR_CONV_MODE_RIGHT_ALIGN, 3);
    ConvertIntToDecimalStringN(gStringVar3, gNumSafariBalls, STR_CONV_MODE_RIGHT_ALIGN, 2);
    StringExpandPlaceholders(gStringVar4, gText_MenuSafariStats);
    AddTextPrinterParameterized(sSafariZoneStatsWindowId, FONT_2, gStringVar4, 4, 3, 0xFF, ((void *)0));
    CopyWindowToVram(sSafariZoneStatsWindowId, COPYWIN_GFX);
}

static void DestroySafariZoneStatsWindow(void)
{
    if (GetSafariZoneFlag())
    {
        ClearStdWindowAndFrameToTransparent(sSafariZoneStatsWindowId, 0);
        CopyWindowToVram(sSafariZoneStatsWindowId, COPYWIN_GFX);
        RemoveWindow(sSafariZoneStatsWindowId);
    }
}

static s8 PrintStartMenuItems(s8 *cursor_p, u8 nitems)
{
    s16 i = *cursor_p;
    do
    {
        if (sStartMenuOrder[i] == STARTMENU_PLAYER || sStartMenuOrder[i] == STARTMENU_PLAYER2)
        {
            Menu_PrintFormatIntlPlayerName(GetStartMenuWindowId(), sStartMenuActionTable[sStartMenuOrder[i]].text, 8, i * 15);
        }
        else
        {
            StringExpandPlaceholders(gStringVar4, sStartMenuActionTable[sStartMenuOrder[i]].text);
            AddTextPrinterParameterized(GetStartMenuWindowId(), FONT_2, gStringVar4, 8, i * 15, 0xFF, ((void *)0));
        }
        i++;
        if (i >= sNumStartMenuItems)
        {
            *cursor_p = i;
            return 1;
        }
    } while (--nitems);
    *cursor_p = i;
    return 0;
}

static s8 DoDrawStartMenu(void)
{
    switch (sDrawStartMenuState[0])
    {
    case 0:
        sDrawStartMenuState[0]++;
        break;
    case 1:
        SetUpStartMenu();
        sDrawStartMenuState[0]++;
        break;
    case 2:
        LoadStdWindowFrameGfx();
        DrawStdWindowFrame(CreateStartMenuWindow(sNumStartMenuItems), 0);
        sDrawStartMenuState[0]++;
        break;
    case 3:
        if (GetSafariZoneFlag())
            DrawSafariZoneStatsWindow();
        sDrawStartMenuState[0]++;
        break;
    case 4:
        if (PrintStartMenuItems(&sDrawStartMenuState[1], 2) == 1)
            sDrawStartMenuState[0]++;
        break;
    case 5:
        sStartMenuCursorPos = Menu_InitCursor(GetStartMenuWindowId(), FONT_2, 0, 0, 15, sNumStartMenuItems, sStartMenuCursorPos);
        if (!MenuHelpers_LinkSomething() && InUnionRoom() != 1 && gSaveBlock2Ptr->optionsButtonMode == 0)
        {
            DrawHelpMessageWindowWithText(sStartMenuDescPointers[sStartMenuOrder[sStartMenuCursorPos]]);
        }
        CopyWindowToVram(GetStartMenuWindowId(), COPYWIN_MAP);
        return 1;
    }
    return 0;
}

static void DrawStartMenuInOneGo(void)
{
    sDrawStartMenuState[0] = 0;
    sDrawStartMenuState[1] = 0;
    while (!DoDrawStartMenu())
        ;
}

static void task50_startmenu(u8 taskId)
{
    if (DoDrawStartMenu() == 1)
        SwitchTaskToFollowupFunc(taskId);
}

static void OpenStartMenuWithFollowupFunc(TaskFunc func)
{
    u8 taskId;
    sDrawStartMenuState[0] = 0;
    sDrawStartMenuState[1] = 0;
    taskId = CreateTask(task50_startmenu, 80);
    SetTaskFuncWithFollowupFunc(taskId, task50_startmenu, func);
}

static bool8 FieldCB2_DrawStartMenu(void)
{
    if (!DoDrawStartMenu())
        return 0;
    FadeTransition_FadeInOnReturnToStartMenu();
    return 1;
}

void SetUpReturnToStartMenu(void)
{
    sDrawStartMenuState[0] = 0;
    sDrawStartMenuState[1] = 0;
    gFieldCallback2 = FieldCB2_DrawStartMenu;
}

void Task_StartMenuHandleInput(u8 taskId)
{
    s16 *data = gTasks[taskId].data;
    switch (data[0])
    {
    case 0:
        if (InUnionRoom() == 1)
            var_800D_set_xB();
        sStartMenuCallback = StartCB_HandleInput;
        data[0]++;
        break;
    case 1:
        if (sStartMenuCallback() == 1)
            DestroyTask(taskId);
        break;
    }
}

void ShowStartMenu(void)
{
    if (!IsUpdateLinkStateCBActive())
    {
        FreezeObjectEvents();
        HandleEnforcedLookDirectionOnPlayerStopMoving();
        StopPlayerAvatar();
    }
    OpenStartMenuWithFollowupFunc(Task_StartMenuHandleInput);
    LockPlayerFieldControls();
}

static bool8 StartCB_HandleInput(void)
{
    if (({(gMain.newKeys) & (0x0040);}))
    {
        PlaySE(5);
        sStartMenuCursorPos = Menu_MoveCursor(-1);
        if (!MenuHelpers_LinkSomething() && InUnionRoom() != 1 && gSaveBlock2Ptr->optionsButtonMode == 0)
        {
            PrintTextOnHelpMessageWindow(sStartMenuDescPointers[sStartMenuOrder[sStartMenuCursorPos]], 2);
        }
    }
    if (({(gMain.newKeys) & (0x0080);}))
    {
        PlaySE(5);
        sStartMenuCursorPos = Menu_MoveCursor(+1);
        if (!MenuHelpers_LinkSomething() && InUnionRoom() != 1 && gSaveBlock2Ptr->optionsButtonMode == 0)
        {
            PrintTextOnHelpMessageWindow(sStartMenuDescPointers[sStartMenuOrder[sStartMenuCursorPos]], 2);
        }
    }
    if (({(gMain.newKeys) & (0x0001);}))
    {
        PlaySE(5);
        if (!StartMenuPokedexSanityCheck())
            return 0;
        sStartMenuCallback = sStartMenuActionTable[sStartMenuOrder[sStartMenuCursorPos]].func.u8_void;
        StartMenu_FadeScreenIfLeavingOverworld();
        return 0;
    }
    if (({(gMain.newKeys) & (0x0002 | 0x0008);}))
    {
        DestroySafariZoneStatsWindow();
        DestroyHelpMessageWindow_();
        CloseStartMenu();
        return 1;
    }
    return 0;
}

static void StartMenu_FadeScreenIfLeavingOverworld(void)
{
    if (sStartMenuCallback != StartMenuSaveCallback
     && sStartMenuCallback != StartMenuExitCallback
     && sStartMenuCallback != StartMenuSafariZoneRetireCallback)
    {
        StopPokemonLeagueLightingEffectTask();
        FadeScreen(1, 0);
    }
}

static bool8 StartMenuPokedexSanityCheck(void)
{
    if (sStartMenuActionTable[sStartMenuOrder[sStartMenuCursorPos]].func.u8_void == StartMenuPokedexCallback && GetNationalPokedexCount(0) == 0)
        return 0;
    return 1;
}

static bool8 StartMenuPokedexCallback(void)
{
    if (!gPaletteFade.active)
    {
        IncrementGameStat(41);
        PlayRainStoppingSoundEffect();
        DestroySafariZoneStatsWindow();
        CleanupOverworldWindowsAndTilemaps();
        SetMainCallback2(CB2_OpenPokedexFromStartMenu);
        return 1;
    }
    return 0;
}

static bool8 StartMenuPokemonCallback(void)
{
    if (!gPaletteFade.active)
    {
        PlayRainStoppingSoundEffect();
        DestroySafariZoneStatsWindow();
        CleanupOverworldWindowsAndTilemaps();
        SetMainCallback2(CB2_PartyMenuFromStartMenu);
        return 1;
    }
    return 0;
}

static bool8 StartMenuBagCallback(void)
{
    if (!gPaletteFade.active)
    {
        PlayRainStoppingSoundEffect();
        DestroySafariZoneStatsWindow();
        CleanupOverworldWindowsAndTilemaps();
        SetMainCallback2(CB2_BagMenuFromStartMenu);
        return 1;
    }
    return 0;
}

static bool8 StartMenuPlayerCallback(void)
{
    if (!gPaletteFade.active)
    {
        PlayRainStoppingSoundEffect();
        DestroySafariZoneStatsWindow();
        CleanupOverworldWindowsAndTilemaps();
        ShowPlayerTrainerCard(CB2_ReturnToFieldWithOpenMenu);
        return 1;
    }
    return 0;
}

static bool8 StartMenuSaveCallback(void)
{
    sStartMenuCallback = StartCB_Save1;
    return 0;
}

static bool8 StartMenuOptionCallback(void)
{
    if (!gPaletteFade.active)
    {
        PlayRainStoppingSoundEffect();
        DestroySafariZoneStatsWindow();
        CleanupOverworldWindowsAndTilemaps();
        SetMainCallback2(CB2_OptionsMenuFromStartMenu);
        gMain.savedCallback = CB2_ReturnToFieldWithOpenMenu;
        return 1;
    }
    return 0;
}

static bool8 StartMenuExitCallback(void)
{
    DestroySafariZoneStatsWindow();
    DestroyHelpMessageWindow_();
    CloseStartMenu();
    return 1;
}

static bool8 StartMenuSafariZoneRetireCallback(void)
{
    DestroySafariZoneStatsWindow();
    DestroyHelpMessageWindow_();
    CloseStartMenu();
    SafariZoneRetirePrompt();
    return 1;
}


static bool8 StartMenuLinkPlayerCallback(void)
{
    if (!gPaletteFade.active)
    {
        PlayRainStoppingSoundEffect();
        CleanupOverworldWindowsAndTilemaps();
        ShowTrainerCardInLink(gLocalLinkPlayerId, CB2_ReturnToFieldWithOpenMenu);
        return 1;
    }
    return 0;
}

static bool8 StartCB_Save1(void)
{
    BackupHelpContext();
    SetHelpContext(12);
    StartMenu_PrepareForSave();
    sStartMenuCallback = StartCB_Save2;
    return 0;
}

static bool8 StartCB_Save2(void)
{
    switch (RunSaveDialogCB())
    {
    case SAVECB_RETURN_CONTINUE:
        break;
    case SAVECB_RETURN_OKAY:
        ClearDialogWindowAndFrameToTransparent(0, 1);
        ClearPlayerHeldMovementAndUnfreezeObjectEvents();
        UnlockPlayerFieldControls();
        RestoreHelpContext();
        return 1;
    case SAVECB_RETURN_CANCEL:
        ClearDialogWindowAndFrameToTransparent(0, 0);
        DrawStartMenuInOneGo();
        RestoreHelpContext();
        sStartMenuCallback = StartCB_HandleInput;
        break;
    case SAVECB_RETURN_ERROR:
        ClearDialogWindowAndFrameToTransparent(0, 1);
        ClearPlayerHeldMovementAndUnfreezeObjectEvents();
        UnlockPlayerFieldControls();
        RestoreHelpContext();
        return 1;
    }
    return 0;
}

static void StartMenu_PrepareForSave(void)
{
    SaveMapView();
    sSaveDialogCB = SaveDialogCB_PrintAskSaveText;
    sSaveDialogIsPrinting = 0;
}

static u8 RunSaveDialogCB(void)
{
    if (RunTextPrinters_CheckPrinter0Active() == 1)
        return 0;
    sSaveDialogIsPrinting = 0;
    return sSaveDialogCB();
}

void Field_AskSaveTheGame(void)
{
    BackupHelpContext();
    SetHelpContext(12);
    StartMenu_PrepareForSave();
    CreateTask(task50_save_game, 80);
}

static void PrintSaveTextWithFollowupFunc(const u8 *str, bool8 (*saveDialogCB)(void))
{
    StringExpandPlaceholders(gStringVar4, str);
    LoadMessageBoxAndFrameGfx(0, 1);
    AddTextPrinterForMessage(1);
    sSaveDialogIsPrinting = 1;
    sSaveDialogCB = saveDialogCB;
}

static void task50_save_game(u8 taskId)
{
    switch (RunSaveDialogCB())
    {
    case 0:
        return;
    case 2:
    case 3:
        gSpecialVar_Result = 0;
        break;
    case 1:
        gSpecialVar_Result = 1;
        break;
    }
    DestroyTask(taskId);
    ScriptContext_Enable();
    RestoreHelpContext();
}

static void CloseSaveMessageWindow(void)
{
    ClearDialogWindowAndFrame(0, 1);
}

static void CloseSaveStatsWindow_(void)
{
    CloseSaveStatsWindow();
}

static void SetSaveDialogDelayTo60Frames(void)
{
    sSaveDialogDelay = 60;
}

static bool8 SaveDialog_Wait60FramesOrAButtonHeld(void)
{
    sSaveDialogDelay--;
    if (({(gMain.heldKeys) & (0x0001);}))
    {
        PlaySE(5);
        return 1;
    }
    else if (sSaveDialogDelay == 0)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

static bool8 SaveDialog_Wait60FramesThenCheckAButtonHeld(void)
{
    if (sSaveDialogDelay == 0)
    {
        if (({(gMain.heldKeys) & (0x0001);}))
        {
            return 1;
        }
        else
        {
            return 0;
        }
    }
    else
    {
        sSaveDialogDelay--;
        return 0;
    }
}

static u8 SaveDialogCB_PrintAskSaveText(void)
{
    ClearStdWindowAndFrame(GetStartMenuWindowId(), 0);
    RemoveStartMenuWindow();
    DestroyHelpMessageWindow(0);
    PrintSaveStats();
    PrintSaveTextWithFollowupFunc(gText_WouldYouLikeToSaveTheGame, SaveDialogCB_AskSavePrintYesNoMenu);
    return SAVECB_RETURN_CONTINUE;
}

static u8 SaveDialogCB_AskSavePrintYesNoMenu(void)
{
    DisplayYesNoMenuDefaultYes();
    sSaveDialogCB = SaveDialogCB_AskSaveHandleInput;
    return SAVECB_RETURN_CONTINUE;
}

static u8 SaveDialogCB_AskSaveHandleInput(void)
{
    switch (Menu_ProcessInputNoWrapClearOnChoose())
    {
    case 0:
        if ((gSaveFileStatus != 0 && gSaveFileStatus != 2) || !gDifferentSaveFile)
            sSaveDialogCB = SaveDialogCB_PrintAskOverwriteText;
        else
            sSaveDialogCB = SaveDialogCB_PrintSavingDontTurnOffPower;
        break;
    case 1:
    case -1:
        CloseSaveStatsWindow_();
        CloseSaveMessageWindow();
        return SAVECB_RETURN_CANCEL;
    }
    return SAVECB_RETURN_CONTINUE;
}

static u8 SaveDialogCB_PrintAskOverwriteText(void)
{
    if (gDifferentSaveFile == 1)
        PrintSaveTextWithFollowupFunc(gText_DifferentGameFile, SaveDialogCB_AskReplacePreviousFilePrintYesNoMenu);
    else
        PrintSaveTextWithFollowupFunc(gText_AlreadySaveFile_WouldLikeToOverwrite, SaveDialogCB_AskOverwritePrintYesNoMenu);
    return SAVECB_RETURN_CONTINUE;
}

static u8 SaveDialogCB_AskOverwritePrintYesNoMenu(void)
{
    DisplayYesNoMenuDefaultYes();
    sSaveDialogCB = SaveDialogCB_AskOverwriteOrReplacePreviousFileHandleInput;
    return SAVECB_RETURN_CONTINUE;
}

static u8 SaveDialogCB_AskReplacePreviousFilePrintYesNoMenu(void)
{
    DisplayYesNoMenuDefaultNo();
    sSaveDialogCB = SaveDialogCB_AskOverwriteOrReplacePreviousFileHandleInput;
    return SAVECB_RETURN_CONTINUE;
}

static u8 SaveDialogCB_AskOverwriteOrReplacePreviousFileHandleInput(void)
{
    switch (Menu_ProcessInputNoWrapClearOnChoose())
    {
    case 0:
        sSaveDialogCB = SaveDialogCB_PrintSavingDontTurnOffPower;
        break;
    case 1:
    case -1:
        CloseSaveStatsWindow_();
        CloseSaveMessageWindow();
        return SAVECB_RETURN_CANCEL;
    }
    return SAVECB_RETURN_CONTINUE;
}

static u8 SaveDialogCB_PrintSavingDontTurnOffPower(void)
{
    SaveQuestLogData();
    PrintSaveTextWithFollowupFunc(gText_SavingDontTurnOffThePower, SaveDialogCB_DoSave);
    return SAVECB_RETURN_CONTINUE;
}

static u8 SaveDialogCB_DoSave(void)
{
    IncrementGameStat(0);
    if (gDifferentSaveFile == 1)
    {
        TrySavingData(SAVE_OVERWRITE_DIFFERENT_FILE);
        gDifferentSaveFile = 0;
    }
    else
    {
        TrySavingData(SAVE_NORMAL);
    }
    sSaveDialogCB = SaveDialogCB_PrintSaveResult;
    return SAVECB_RETURN_CONTINUE;
}

static u8 SaveDialogCB_PrintSaveResult(void)
{
    if (gSaveAttemptStatus == 1)
        PrintSaveTextWithFollowupFunc(gText_PlayerSavedTheGame, SaveDialogCB_WaitPrintSuccessAndPlaySE);
    else
        PrintSaveTextWithFollowupFunc(gText_SaveError_PleaseExchangeBackupMemory, SaveDialogCB_WaitPrintErrorAndPlaySE);
    SetSaveDialogDelayTo60Frames();
    return SAVECB_RETURN_CONTINUE;
}

static u8 SaveDialogCB_WaitPrintSuccessAndPlaySE(void)
{
    if (!RunTextPrinters_CheckPrinter0Active())
    {
        PlaySE(48);
        sSaveDialogCB = SaveDialogCB_ReturnSuccess;
    }
    return SAVECB_RETURN_CONTINUE;
}

static u8 SaveDialogCB_ReturnSuccess(void)
{
    if (!IsSEPlaying() && SaveDialog_Wait60FramesOrAButtonHeld())
    {
        CloseSaveStatsWindow_();
        return SAVECB_RETURN_OKAY;
    }
    return SAVECB_RETURN_CONTINUE;
}

static u8 SaveDialogCB_WaitPrintErrorAndPlaySE(void)
{
    if (!RunTextPrinters_CheckPrinter0Active())
    {
        PlaySE(22);
        sSaveDialogCB = SaveDialogCB_ReturnError;
    }
    return SAVECB_RETURN_CONTINUE;
}

static u8 SaveDialogCB_ReturnError(void)
{
    if (!SaveDialog_Wait60FramesThenCheckAButtonHeld())
        return SAVECB_RETURN_CONTINUE;
    CloseSaveStatsWindow_();
    return SAVECB_RETURN_ERROR;
}

static void VBlankCB_WhileSavingAfterLinkBattle(void)
{
    TransferPlttBuffer();
}

bool32 DoSetUpSaveAfterLinkBattle(u8 *state)
{
    switch (*state)
    {
    case 0:
        SetGpuReg(0x0, 0);
        SetVBlankCallback(((void *)0));
        ScanlineEffect_Stop();
        { void *_dest = (void *)(void *)0x5000000; u32 _size = 0x400; { vu16 tmp = (vu16)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(_dest); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | ((_size)/(16/8))); dmaRegs[2]; }; }; };
        { void *_dest = (void *)(void *)0x6000000; u32 _size = 0x18000; while (1) { { vu16 tmp = (vu16)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(_dest); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | (((0x1000))/(16/8))); dmaRegs[2]; }; }; _dest += (0x1000); _size -= (0x1000); if (_size <= (0x1000)) { { vu16 tmp = (vu16)(0); { vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4); dmaRegs[0] = (vu32)(&tmp); dmaRegs[1] = (vu32)(_dest); dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0100 | 0x0000) << 16 | ((_size)/(16/8))); dmaRegs[2]; }; }; break; } } };
        break;
    case 1:
        ResetSpriteData();
        ResetTasks();
        ResetPaletteFade();
        ScanlineEffect_Clear();
        break;
    case 2:
        ResetBgsAndClearDma3BusyFlags(0);
        InitBgsFromTemplates(0, sBGTemplates_AfterLinkSaveMessage, (sizeof(sBGTemplates_AfterLinkSaveMessage) / sizeof((sBGTemplates_AfterLinkSaveMessage)[0])));
        InitWindows(sWindowTemplates_AfterLinkSaveMessage);
        LoadStdWindowGfx(0, 0x008, 0xF0);
        break;
    case 3:
        ShowBg(0);
        BlendPalettes((0x0000FFFF | 0xFFFF0000), 16, ((0) | ((0) << 5) | ((0) << 10)));
        SetVBlankCallback(VBlankCB_WhileSavingAfterLinkBattle);
        EnableInterrupts((1 << 0));
        break;
    case 4:
        return 1;
    }
    (*state)++;
    return 0;
}

void CB2_SetUpSaveAfterLinkBattle(void)
{
    if (DoSetUpSaveAfterLinkBattle(&gMain.state))
    {
        CreateTask(task50_after_link_battle_save, 80);
        SetMainCallback2(CB2_WhileSavingAfterLinkBattle);
    }
}

static void CB2_WhileSavingAfterLinkBattle(void)
{
    RunTasks();
    UpdatePaletteFade();
}

static void task50_after_link_battle_save(u8 taskId)
{
    s16 *data = gTasks[taskId].data;
    if (!gPaletteFade.active)
    {
        switch (data[0])
        {
        case 0:
            FillWindowPixelBuffer(0, ((1) | ((1) << 4)));
            AddTextPrinterParameterized2(0, FONT_2, gText_SavingDontTurnOffThePower2, 0xFF, ((void *)0), 0x2, 0x1, 0x3);
            DrawTextBorderOuter(0, 0x008, 0x0F);
            PutWindowTilemap(0);
            CopyWindowToVram(0, COPYWIN_FULL);
            BeginNormalPaletteFade((0x0000FFFF | 0xFFFF0000), 0, 16, 0, ((0) | ((0) << 5) | ((0) << 10)));
            if (gWirelessCommType != 0 && InUnionRoom())
                data[0] = 5;
            else
                data[0] = 1;
            break;
        case 1:
            SetContinueGameWarpStatusToDynamicWarp();
            WriteSaveBlock2();
            data[0] = 2;
            break;
        case 2:
            if (WriteSaveBlock1Sector())
            {
                ClearContinueGameWarpStatus2();
                data[0] = 3;
            }
            break;
        case 3:
            BeginNormalPaletteFade((0x0000FFFF | 0xFFFF0000), 0, 0, 16, ((0) | ((0) << 5) | ((0) << 10)));
            data[0] = 4;
            break;
        case 4:
            FreeAllWindowBuffers();
            SetMainCallback2(gMain.savedCallback);
            DestroyTask(taskId);
            break;
        case 5:
            CreateTask(Task_LinkFullSave, 5);
            data[0] = 6;
            break;
        case 6:
            if (!FuncIsActiveTask(Task_LinkFullSave))
                data[0] = 3;
            break;
        }
    }
}

static void PrintSaveStats(void)
{
    u8 y;
    u8 x;
    sSaveStatsWindowId = AddWindow(&sSaveStatsWindowTemplate);
    LoadStdWindowGfx(sSaveStatsWindowId, 0x21D, 0xD0);
    DrawStdFrameWithCustomTileAndPalette(sSaveStatsWindowId, 0, 0x21D, 0x0D);
    SaveStatToString(SAVE_STAT_LOCATION, gStringVar4, 8);
    x = (u32)(112 - GetStringWidth(FONT_2, gStringVar4, -1)) / 2;
    AddTextPrinterParameterized3(sSaveStatsWindowId, FONT_2, x, 0, sTextColor_LocationHeader, -1, gStringVar4);
    x = (u32)(112 - GetStringWidth(FONT_2, gStringVar4, -1)) / 2;
    AddTextPrinterParameterized3(sSaveStatsWindowId, FONT_0, 2, 14, sTextColor_StatName, -1, gSaveStatName_Player);
    SaveStatToString(SAVE_STAT_NAME, gStringVar4, 2);
    Menu_PrintFormatIntlPlayerName(sSaveStatsWindowId, gStringVar4, 60, 14);
    AddTextPrinterParameterized3(sSaveStatsWindowId, FONT_0, 2, 28, sTextColor_StatName, -1, gSaveStatName_Badges);
    SaveStatToString(SAVE_STAT_BADGES, gStringVar4, 2);
    AddTextPrinterParameterized3(sSaveStatsWindowId, FONT_0, 60, 28, sTextColor_StatValue, -1, gStringVar4);
    y = 42;
    if (FlagGet(((((0x4FF + 1) + 768 - 1) + 1) + 0x29)) == 1)
    {
        AddTextPrinterParameterized3(sSaveStatsWindowId, FONT_0, 2, 42, sTextColor_StatName, -1, gSaveStatName_Pokedex);
        SaveStatToString(SAVE_STAT_POKEDEX, gStringVar4, 2);
        AddTextPrinterParameterized3(sSaveStatsWindowId, FONT_0, 60, 42, sTextColor_StatValue, -1, gStringVar4);
        y = 56;
    }
    AddTextPrinterParameterized3(sSaveStatsWindowId, FONT_0, 2, y, sTextColor_StatName, -1, gSaveStatName_Time);
    SaveStatToString(SAVE_STAT_TIME, gStringVar4, 2);
    AddTextPrinterParameterized3(sSaveStatsWindowId, FONT_0, 60, y, sTextColor_StatValue, -1, gStringVar4);
    CopyWindowToVram(sSaveStatsWindowId, COPYWIN_GFX);
}

static void CloseSaveStatsWindow(void)
{
    ClearStdWindowAndFrame(sSaveStatsWindowId, 0);
    RemoveWindow(sSaveStatsWindowId);
}

static void CloseStartMenu(void)
{
    PlaySE(5);
    ClearStdWindowAndFrame(GetStartMenuWindowId(), 1);
    RemoveStartMenuWindow();
    ClearPlayerHeldMovementAndUnfreezeObjectEvents();
    UnlockPlayerFieldControls();
}

void AppendToList(u8 *list, u8 *cursor, u8 newEntry)
{
    list[*cursor] = newEntry;
    (*cursor)++;
}
