# 1 "src/union_room.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/union_room.c"
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
# 2 "src/union_room.c" 2
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
# 3 "src/union_room.c" 2
# 1 "include/battle.h" 1



# 1 "tools/agbcc/include/limits.h" 1
# 5 "include/battle.h" 2

# 1 "include/constants/battle.h" 1
# 7 "include/battle.h" 2
# 1 "include/constants/battle_script_commands.h" 1
# 8 "include/battle.h" 2
# 1 "include/battle_util.h" 1
# 61 "include/battle_util.h"
u8 GetBattlerForBattleScript(u8 caseId);
void PressurePPLose(u8 target, u8 attacker, u16 move);
void PressurePPLoseOnUsingImprison(u8 attacker);
void PressurePPLoseOnUsingPerishSong(u8 attacker);
void MarkBattlerForControllerExec(u8 battlerId);
void MarkBattlerReceivedLinkData(u8 battlerId);
void CancelMultiTurnMoves(u8 battler);
bool8 WasUnableToUseMove(u8 battler);
void PrepareStringBattle(u16 stringId, u8 battler);
void ResetSentPokesToOpponentValue(void);
void OpponentSwitchInResetSentPokesToOpponentValue(u8 battler);
void UpdateSentPokesToOpponentValue(u8 battler);
void BattleScriptPush(const u8 *bsPtr);
void BattleScriptPushCursor(void);
void BattleScriptPop(void);
u8 TrySetCantSelectMoveBattleScript(void);
u8 CheckMoveLimitations(u8 battlerId, u8 unusableMoves, u8 check);
bool8 AreAllMovesUnusable(void);
u8 GetImprisonedMovesCount(u8 battlerId, u16 move);
u8 DoFieldEndTurnEffects(void);
u8 DoBattlerEndTurnEffects(void);
bool8 HandleWishPerishSongOnTurnEnd(void);
bool8 HandleFaintedMonActions(void);
void TryClearRageStatuses(void);
u8 AtkCanceller_UnableToUseMove(void);
bool8 HasNoMonsToSwitch(u8 battler, u8 partyIdBattlerOn1, u8 partyIdBattlerOn2);
u8 CastformDataTypeChange(u8 battler);
u8 AbilityBattleEffects(u8 caseID, u8 battler, u8 ability, u8 special, u16 moveArg);
void BattleScriptExecute(const u8 *BS_ptr);
void BattleScriptPushCursorAndCallback(const u8 *BS_ptr);
u8 ItemBattleEffects(u8 caseID, u8 battlerId, bool8 moveTurn);
void ClearFuryCutterDestinyBondGrudge(u8 battlerId);
void HandleAction_RunBattleScript(void);
u8 GetMoveTarget(u16 move, u8 setTarget);
u8 IsMonDisobedient(void);
# 9 "include/battle.h" 2
# 1 "include/battle_script_commands.h" 1
# 10 "include/battle_script_commands.h"
void AI_CalcDmg(u8 attacker, u8 defender);
u8 TypeCalc(u16 move, u8 attacker, u8 defender);
u8 AI_TypeCalc(u16 move, u16 targetSpecies, u8 targetAbility);
u8 GetBattlerTurnOrderNum(u8 battlerId);
void SetMoveEffect(bool8 primary, u8 certain);
bool32 IsMonGettingExpSentOut(void);
void BattleDestroyYesNoCursorAt(void);
void BattleCreateYesNoCursorAt(void);
void BufferMoveToLearnIntoBattleTextBuff2(void);
void HandleBattleWindow(u8 xStart, u8 yStart, u8 xEnd, u8 yEnd, u8 flags);
bool8 UproarWakeUpCheck(u8 battlerId);

extern void (* const gBattleScriptingCommandsTable[])(void);
# 10 "include/battle.h" 2
# 1 "include/battle_main.h" 1



# 1 "include/constants/abilities.h" 1
# 5 "include/battle_main.h" 2

struct TrainerMoney
{
    u8 classId;
    u8 value;
};

struct MultiBattlePokemonTx
{
             u16 species;
             u16 heldItem;
             u8 nickname[10 + 1];
             u8 level;
             u16 hp;
             u16 maxhp;
             u32 status;
             u32 personality;
             u8 gender;
             u8 language;
};
# 48 "include/battle_main.h"
extern const struct SpriteTemplate gUnknownDebugSprite;
extern const struct OamData gOamData_BattlerOpponent;
extern const struct OamData gOamData_BattlerPlayer;
extern const u8 gTypeNames[][6 + 1];
extern const u8 gStatusConditionString_PoisonJpn[8];
extern const u8 gStatusConditionString_SleepJpn[8];
extern const u8 gStatusConditionString_ParalysisJpn[8];
extern const u8 gStatusConditionString_BurnJpn[8];
extern const u8 gStatusConditionString_IceJpn[8];
extern const u8 gStatusConditionString_ConfusionJpn[8];
extern const u8 gStatusConditionString_LoveJpn[8];
extern const u8 *const gStatusConditionStringsTable[7][2];
extern const u8 gTypeEffectiveness[336];
extern const struct TrainerMoney gTrainerMoneyTable[];
extern const u8 *const gAbilityDescriptionPointers[78];
extern const u8 gAbilityNames[78][12 + 1];

void CB2_InitBattle(void);
void BattleMainCB2(void);
void FreeRestoreBattleData(void);
void VBlankCB_Battle(void);
void SpriteCB_VsLetterDummy(struct Sprite *sprite);
void SpriteCB_VsLetterInit(struct Sprite *sprite);
void CB2_InitEndLinkBattle(void);
u32 GetBattleBgTemplateData(u8 arrayId, u8 caseId);
void SpriteCB_EnemyMon(struct Sprite *sprite);
void SpriteCallbackDummy_2(struct Sprite *sprite);
void SpriteCB_FaintOpponentMon(struct Sprite *sprite);
void SpriteCB_ShowAsMoveTarget(struct Sprite *sprite);
void SpriteCB_HideAsMoveTarget(struct Sprite *sprite);
void SpriteCB_AllyMon(struct Sprite *sprite);
void SetIdleSpriteCallback(struct Sprite *sprite);
void SpriteCB_FaintSlideAnim(struct Sprite *sprite);
void DoBounceEffect(u8 battler, u8 which, s8 delta, s8 amplitude);
void EndBounceEffect(u8 battler, u8 which);
void SpriteCB_PlayerThrowInit(struct Sprite *sprite);
void UpdatePlayerPosInThrowAnim(struct Sprite *sprite);
void BeginBattleIntroDummy(void);
void BeginBattleIntro(void);
void SwitchInClearSetData(void);
void FaintClearSetData(void);
void BattleTurnPassed(void);
u8 IsRunningFromBattleImpossible(void);
void UpdatePartyOwnerOnSwitch_NonMulti(u8 battler);
void SwapTurnOrder(u8 id1, u8 id2);
u8 GetWhoStrikesFirst(u8 battler1, u8 battler2, bool8 ignoreChosenMoves);
void RunBattleScriptCommands_PopCallbacksStack(void);
void RunBattleScriptCommands(void);
bool8 TryRunFromBattle(u8 battler);
# 11 "include/battle.h" 2
# 1 "include/battle_ai_switch_items.h" 1





enum {
    AI_ITEM_FULL_RESTORE = 1,
    AI_ITEM_HEAL_HP,
    AI_ITEM_CURE_CONDITION,
    AI_ITEM_X_STAT,
    AI_ITEM_GUARD_SPECS,
    AI_ITEM_NOT_RECOGNIZABLE
};

enum {
    AI_HEAL_CONFUSION,
    AI_HEAL_PARALYSIS,
    AI_HEAL_FREEZE,
    AI_HEAL_BURN,
    AI_HEAL_POISON,
    AI_HEAL_SLEEP,
};

void AI_TrySwitchOrUseItem(void);
u8 GetMostSuitableMonToSwitchInto(void);
# 12 "include/battle.h" 2
# 1 "include/battle_gfx_sfx_util.h" 1



void AllocateBattleSpritesData(void);
void FreeBattleSpritesData(void);
void SpriteCB_WaitForBattlerBallReleaseAnim(struct Sprite *sprite);
void SpriteCB_TrainerSlideIn(struct Sprite *sprite);
void InitAndLaunchChosenStatusAnimation(bool8 isStatus2, u32 status);
bool8 TryHandleLaunchBattleTableAnimation(u8 activeBattler, u8 atkBattler, u8 defBattler, u8 tableId, u16 argument);
void InitAndLaunchSpecialAnimation(u8 activeBattler, u8 atkBattler, u8 defBattler, u8 tableId);
bool8 IsMoveWithoutAnimation(u16 moveId, u8 animationTurn);
bool8 IsBattleSEPlaying(u8 battlerId);
void BattleLoadOpponentMonSpriteGfx(struct Pokemon *mon, u8 battlerId);
void BattleLoadPlayerMonSpriteGfx(struct Pokemon *mon, u8 battlerId);
void DecompressGhostFrontPic(struct Pokemon *unused, u8 battlerId);
void DecompressTrainerFrontPic(u16 frontPicId, u8 battlerId);
void DecompressTrainerBackPalette(u16 a1, u8 a2);
void BattleGfxSfxDummy3(u8 gender);
void FreeTrainerFrontPicPaletteAndTile(u16 frontPicId);
bool8 BattleLoadAllHealthBoxesGfx(u8 state);
void LoadBattleBarGfx(u8 arg0);
bool8 BattleInitAllSprites(u8 *state, u8 *battlerId);
void ClearSpritesHealthboxAnimData(void);
void CopyAllBattleSpritesInvisibilities(void);
void CopyBattleSpriteInvisibility(u8 battlerId);
void HandleSpeciesGfxDataChange(u8 battlerAtk, u8 battlerDef, u8 transformType);
void BattleLoadSubstituteOrMonSpriteGfx(u8 battlerId, bool8 loadMonSprite);
void LoadBattleMonGfxAndAnimate(u8 battlerId, bool8 loadMonSprite, u8 spriteId);
void TrySetBehindSubstituteSpriteBit(u8 battlerId, u16 move);
void ClearBehindSubstituteBit(u8 battlerId);
void HandleLowHpMusicChange(struct Pokemon *mon, u8 battlerId);
void BattleStopLowHpSound(void);
void HandleBattleLowHpMusicChange(void);
void SetBattlerSpriteAffineMode(u8 affineMode);
void LoadAndCreateEnemyShadowSprites(void);
void SpriteCB_SetInvisible(struct Sprite *sprite);
void SetBattlerShadowSpriteCallback(u8 battlerId, u16 species);
void HideBattlerShadowSprite(u8 battlerId);
void BattleInterfaceSetWindowPals(void);
void ClearTemporarySpeciesSpriteData(u8 battlerId, bool8 dontClearSubstitute);
void AllocateMonSpritesGfx(void);
void FreeMonSpritesGfx(void);
bool32 ShouldPlayNormalMonCry(struct Pokemon *mon);
# 13 "include/battle.h" 2
# 1 "include/battle_util2.h" 1





void AllocateBattleResources(void);
void FreeBattleResources(void);
void AdjustFriendshipOnBattleFaint(u8 bank);
# 14 "include/battle.h" 2
# 1 "include/battle_bg.h" 1





extern const struct BgTemplate gBattleBgTemplates[];

void InitBattleBgsVideo(void);
void DrawBattleEntryBackground(void);
void InitLinkBattleVsScreen(u8 taskId);
void LoadBattleMenuWindowGfx(void);
void LoadBattleTextboxAndBackground(void);
void BattleInitBgsAndWindows(void);
void DrawMainBattleBackground(void);
# 15 "include/battle.h" 2
# 53 "include/battle.h"
enum {
    BATTLER_AFFINE_NORMAL,
    BATTLER_AFFINE_EMERGE,
    BATTLER_AFFINE_RETURN,
};
# 71 "include/battle.h"
struct TrainerMonNoItemDefaultMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
};

struct TrainerMonItemDefaultMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
    u16 heldItem;
};

struct TrainerMonNoItemCustomMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
    u16 moves[4];
};

struct TrainerMonItemCustomMoves
{
    u16 iv;
    u8 lvl;
    u16 species;
    u16 heldItem;
    u16 moves[4];
};






union TrainerMonPtr
{
    const struct TrainerMonNoItemDefaultMoves *NoItemDefaultMoves;
    const struct TrainerMonNoItemCustomMoves *NoItemCustomMoves;
    const struct TrainerMonItemDefaultMoves *ItemDefaultMoves;
    const struct TrainerMonItemCustomMoves *ItemCustomMoves;
};

struct Trainer
{
             u8 partyFlags;
             u8 trainerClass;
             u8 encounterMusic_gender;
             u8 trainerPic;
             u8 trainerName[12];
             u16 items[4];
             bool8 doubleBattle;
             u32 aiFlags;
             u8 partySize;
             const union TrainerMonPtr party;
};

extern const struct Trainer gTrainers[];

struct ResourceFlags
{
    u32 flags[4];
};



struct DisableStruct
{
             u32 transformedMonPersonality;
             u16 disabledMove;
             u16 encoredMove;
             u8 protectUses;
             u8 stockpileCounter;
             u8 substituteHP;
             u8 disableTimer : 4;
             u8 disableTimerStartValue : 4;
             u8 encoredMovePos;
             u8 unkD;
             u8 encoreTimer : 4;
             u8 encoreTimerStartValue : 4;
             u8 perishSongTimer : 4;
             u8 perishSongTimerStartValue : 4;
             u8 furyCutterCounter;
             u8 rolloutTimer : 4;
             u8 rolloutTimerStartValue : 4;
             u8 chargeTimer : 4;
             u8 chargeTimerStartValue : 4;
             u8 tauntTimer:4;
             u8 tauntTimer2:4;
             u8 battlerPreventingEscape;
             u8 battlerWithSureHit;
             u8 isFirstTurn;
             u8 unk17;
             u8 truantCounter : 1;
             u8 truantSwitchInHack : 1;
             u8 unk18_a_2 : 2;
             u8 mimickedMoves : 4;
             u8 rechargeTimer;
             u8 unk1A[2];
};

extern struct DisableStruct gDisableStructs[4];

struct ProtectStruct
{

    u32 protected:1;
    u32 endured:1;
    u32 noValidMoves:1;
    u32 helpingHand:1;
    u32 bounceMove:1;
    u32 stealMove:1;
    u32 flag0Unknown:1;
    u32 prlzImmobility:1;

    u32 confusionSelfDmg:1;
    u32 targetNotAffected:1;
    u32 chargingTurn:1;
    u32 fleeType:2;
    u32 usedImprisonedMove:1;
    u32 loveImmobility:1;
    u32 usedDisabledMove:1;

    u32 usedTauntedMove:1;
    u32 flag2Unknown:1;
    u32 flinchImmobility:1;
    u32 notFirstStrike:1;
    u32 flag_x10 : 1;
    u32 flag_x20 : 1;
    u32 flag_x40 : 1;
    u32 flag_x80 : 1;
    u32 field3 : 8;

    u32 physicalDmg;
    u32 specialDmg;
    u8 physicalBattlerId;
    u8 specialBattlerId;
    u16 fieldE;
};

extern struct ProtectStruct gProtectStructs[4];

struct SpecialStatus
{
    u8 statLowered:1;
    u8 lightningRodRedirected:1;
    u8 restoredBattlerSprite:1;
    u8 intimidatedMon:1;
    u8 traced:1;
    u8 ppNotAffectedByPressure:1;
    u8 faintedHasReplacement:1;
    u8 focusBanded:1;
    u8 field1[3];
    s32 dmg;
    s32 physicalDmg;
    s32 specialDmg;
    u8 physicalBattlerId;
    u8 specialBattlerId;
    u8 field12;
    u8 field13;
};

extern struct SpecialStatus gSpecialStatuses[4];

struct SideTimer
{
             u8 reflectTimer;
             u8 reflectBattlerId;
             u8 lightscreenTimer;
             u8 lightscreenBattlerId;
             u8 mistTimer;
             u8 mistBattlerId;
             u8 safeguardTimer;
             u8 safeguardBattlerId;
             u8 followmeTimer;
             u8 followmeTarget;
             u8 spikesAmount;
             u8 fieldB;
};

extern struct SideTimer gSideTimers[];

struct WishFutureKnock
{
    u8 futureSightCounter[4];
    u8 futureSightAttacker[4];
    s32 futureSightDmg[4];
    u16 futureSightMove[4];
    u8 wishCounter[4];
    u8 wishMonId[4];
    u8 weatherDuration;
    u8 knockedOffMons[2];
};

extern struct WishFutureKnock gWishFutureKnock;

struct AI_ThinkingStruct
{
    u8 aiState;
    u8 movesetIndex;
    u16 moveConsidered;
    s8 score[4];
    u32 funcResult;
    u32 aiFlags;
    u8 aiAction;
    u8 aiLogicId;
    u8 filler12[6];
    u8 simulatedRNG[4];
};

extern u8 gActiveBattler;
extern u8 gBattlerTarget;
extern u8 gAbsentBattlerFlags;

extern struct BattlePokemon gBattleMons[4];

struct UsedMoves
{
    u16 moves[4];
    u16 unknown[4];
};

struct BattleHistory
{
             u16 usedMoves[2][8];
             u8 abilities[4 / 2];
             u8 itemEffects[4 / 2];
             u16 trainerItems[4];
             u8 itemsNo;
};

struct BattleScriptsStack
{
    const u8 *ptr[8];
    u8 size;
};

struct BattleCallbacksStack
{
    void (*function[8])(void);
    u8 size;
};

struct StatsArray
{
    u16 stats[6];
};

struct BattleResources
{
    struct SecretBaseRecord *secretBase;
    struct ResourceFlags *flags;
    struct BattleScriptsStack *battleScriptsStack;
    struct BattleCallbacksStack *battleCallbackStack;
    struct StatsArray *beforeLvlUp;
    struct AI_ThinkingStruct *ai;
    struct BattleHistory *battleHistory;
    struct BattleScriptsStack *AI_ScriptsStack;
};

extern struct BattleResources *gBattleResources;

struct BattleResults
{
    u8 playerFaintCounter;
    u8 opponentFaintCounter;
    u8 playerSwitchesCounter;
    u8 numHealingItemsUsed;
    u8 numRevivesUsed;
    u8 playerMonWasDamaged:1;
    u8 usedMasterBall:1;
    u8 caughtMonBall:4;
    u8 shinyWildMon:1;
    u8 unk5_7:1;
    u16 playerMon1Species;
    u8 playerMon1Name[11];
    u8 battleTurnCounter;
    u8 playerMon2Name[11];
    u8 pokeblockThrows;
    u16 lastOpponentSpecies;
    u16 lastUsedMovePlayer;
    u16 lastUsedMoveOpponent;
    u16 playerMon2Species;
    u16 caughtMonSpecies;
    u8 caughtMonNick[10];
    u8 filler34[2];
    u8 catchAttempts[11];
};

extern struct BattleResults gBattleResults;

struct LinkBattlerHeader
{
    u8 versionSignatureLo;
    u8 versionSignatureHi;
    u8 vsScreenHealthFlagsLo;
    u8 vsScreenHealthFlagsHi;
    struct BattleEnigmaBerry battleEnigmaBerry;
};

struct BattleStruct
{
    u8 turnEffectsTracker;
    u8 turnEffectsBattlerId;
    u8 filler2;
    u8 turnCountersTracker;
    u8 wrappedMove[4 * 2];
    u8 moveTarget[4];
    u8 expGetterMonId;
    u8 field_11;
    u8 wildVictorySong;
    u8 dynamicMoveType;
    u8 wrappedBy[4];
    u16 assistPossibleMoves[6 * 4];
    u8 focusPunchBattlerId;
    u8 battlerPreventingSwitchout;
    u8 moneyMultiplier;
    u8 savedTurnActionNumber;
    u8 switchInAbilitiesCounter;
    u8 faintedActionsState;
    u8 faintedActionsBattlerId;

    u16 expValue;
    u8 scriptPartyIdx;
    u8 sentInPokes;
    bool8 selectionScriptFinished[4];
    u8 battlerPartyIndexes[4];
    u8 monToSwitchIntoId[4];
    u8 battlerPartyOrders[4][3];
    u8 runTries;
    u8 caughtMonNick[10 + 1];
    u8 field_78;
    u8 safariRockThrowCounter;
    u8 safariBaitThrowCounter;
    u8 safariEscapeFactor;
    u8 safariCatchFactor;
    u8 linkBattleVsSpriteId_V;
    u8 linkBattleVsSpriteId_S;
    u8 formToChangeInto;
    u8 chosenMovePositions[4];
    u8 stateIdAfterSelScript[4];
    u8 field_88;
    u8 field_89;
    u8 field_8A;
    u8 playerPartyIdx;
    u8 field_8C;
    u8 field_8D;
    u8 stringMoveType;
    u8 expGetterBattlerId;
    u8 field_90;
    u8 absentBattlerFlags;
    u8 AI_monToSwitchIntoId[2];
    u8 simulatedInputState[4];
    u8 lastTakenMove[4 * 2 * 2];
    u16 hpOnSwitchout[2];
    u8 abilityPreventingSwitchout;
    u8 hpScale;
    u16 savedBattleTypeFlags;
    void (*savedCallback)(void);
    u8 synchronizeMoveEffect;
    u8 multiplayerId;
    u8 overworldWeatherDone;
    u8 atkCancellerTracker;
    u16 usedHeldItems[4];
    u8 chosenItem[4];
    u8 AI_itemType[2];
    u8 AI_itemFlags[2];
    u16 choicedMove[4];
    u16 changedItems[4];
    u8 intimidateBattler;
    u8 switchInItemsCounter;
    u8 field_DA;
    u8 turnSideTracker;
    u8 fillerDC[0xDF-0xDC];
    u8 givenExpMons;
    u8 lastTakenMoveFrom[4 * 4 * 2];
    u16 castformPalette[4][16];
    u8 wishPerishSongState;
    u8 wishPerishSongBattlerId;
    u8 field_182;

    union {
        struct LinkBattlerHeader linkBattlerHeader;
        struct MultiBattlePokemonTx multiBattleMons[3];
    } multiBuffer;
    u8 padding_1E4[0x1C];
};

extern struct BattleStruct *gBattleStruct;
# 496 "include/battle.h"
struct BattleScripting
{
    s32 painSplitHp;
    s32 bideDmg;
    u8 multihitString[6];
    u8 dmgMultiplier;
    u8 twoTurnsMoveStringId;
    u8 animArg1;
    u8 animArg2;
    u16 tripleKickPower;
    u8 moveendState;
    u8 battlerWithAbility;
    u8 multihitMoveEffect;
    u8 battler;
    u8 animTurn;
    u8 animTargetsHit;
    u8 statChanger;
    bool8 statAnimPlayed;
    u8 getexpState;
    u8 battleStyle;
    u8 drawlvlupboxState;
    u8 learnMoveState;
    u8 pursuitDoublesAttacker;
    u8 reshowMainState;
    u8 reshowHelperState;
    u8 field_23;
};

struct BattleSpriteInfo
{
            u16 invisible : 1;
            u16 lowHpSong : 1;
            u16 behindSubstitute : 1;
            u16 flag_x8 : 1;
            u16 hpNumbersNoBars : 1;
            u16 transformSpecies;
};

struct BattleAnimationInfo
{
    u16 animArg;
    u8 field_2;
    u8 field_3;
    u8 field_4;
    u8 field_5;
    u8 field_6;
    u8 field_7;
    u8 ballThrowCaseId;
    u8 introAnimActive:1;
    u8 wildMonInvisible:1;
    u8 field_9_x1C:3;
    u8 field_9_x20:1;
    u8 field_9_x40:1;
    u8 field_9_x80:1;
    u8 numBallParticles;
    u8 field_B;
    s16 ballSubpx;
    u8 field_E;
    u8 field_F;
};

struct BattleHealthboxInfo
{
    u8 partyStatusSummaryShown : 1;
    u8 healthboxIsBouncing : 1;
    u8 battlerIsBouncing : 1;
    u8 ballAnimActive : 1;
    u8 statusAnimActive : 1;
    u8 animFromTableActive : 1;
    u8 specialAnimActive : 1;
    u8 triedShinyMonAnim : 1;
    u8 finishedShinyMonAnim : 1;
    u8 opponentDrawPartyStatusSummaryDelay : 5;
    u8 healthboxBounceSpriteId;
    u8 battlerBounceSpriteId;
    u8 animationState;
    u8 partyStatusDelayTimer;
    u8 matrixNum;
    u8 shadowSpriteId;
    u8 soundTimer;
    u8 introEndDelay;
};

struct BattleBarInfo
{
    u8 healthboxSpriteId;
    s32 maxValue;
    s32 oldValue;
    s32 receivedValue;
    s32 currValue;
};

struct BattleSpriteData
{
    struct BattleSpriteInfo *battlerData;
    struct BattleHealthboxInfo *healthBoxesData;
    struct BattleAnimationInfo *animationData;
    struct BattleBarInfo *battleBars;
};

extern struct BattleSpriteData *gBattleSpritesDataPtr;



extern u8 *gLinkBattleSendBuffer;
extern u8 *gLinkBattleRecvBuffer;





struct MonSpritesGfx
{
    void *firstDecompressed;
    void *sprites[4];
    struct SpriteTemplate templates[4];
    struct SpriteFrameImage images[4][4];
    u8 field_F4[0x80];
    u8 *barFontGfx;
    void *field_178;
    u16 *multiUseBuffer;
};

struct PokedudeBattlerState
{
    u8 action_idx;
    u8 move_idx;
    u8 timer;
    u8 msg_idx;
    u8 saved_bg0y;
};

extern u16 gBattle_BG0_X;
extern u16 gBattle_BG0_Y;
extern u16 gBattle_BG1_X;
extern u16 gBattle_BG1_Y;
extern u16 gBattle_BG2_X;
extern u16 gBattle_BG2_Y;
extern u16 gBattle_BG3_X;
extern u16 gBattle_BG3_Y;
extern u16 gBattle_WIN0H;
extern u16 gBattle_WIN0V;
extern u16 gBattle_WIN1H;
extern u16 gBattle_WIN1V;
extern struct BattleSpritesGfx *gMonSpritesGfx;
extern u8 gBattleOutcome;
extern u16 gLastUsedItem;
extern u32 gBattleTypeFlags;
extern struct MonSpritesGfx *gMonSpritesGfxPtr;
extern u16 gTrainerBattleOpponent_A;
extern u16 gMoveToLearn;
extern u16 gBattleMovePower;
extern struct BattleEnigmaBerry gEnigmaBerries[4];
extern u16 gCurrentMove;
extern u16 gChosenMove;
extern u16 gCalledMove;
extern u8 gCritMultiplier;
extern u16 gBattleWeather;
extern u8 gLastUsedAbility;
extern u8 gBattlerInMenuId;
extern u8 gPotentialItemEffectBattler;
extern u8 gBattlersCount;
extern u16 gBattlerPartyIndexes[4];
extern s32 gBattleMoveDamage;
extern u16 gIntroSlideFlags;
extern u32 gTransformedPersonalities[4];
extern u8 gBattlerPositions[4];
extern u8 gHealthboxSpriteIds[4];
extern u8 gBattleOutcome;
extern u8 gBattleMonForms[4];
extern void (*gBattlerControllerFuncs[4])(void);
extern u32 gBattleControllerExecFlags;
extern u8 gBattleBufferA[4][0x200];
extern u8 gBattleBufferB[4][0x200];
extern u8 gActionSelectionCursor[4];
extern void (*gPreBattleCallback1)(void);
extern bool8 gDoingBattleAnim;
extern struct PokedudeBattlerState *gPokedudeBattlerStates[4];
extern u8 *gBattleAnimBgTileBuffer;
extern u8 *gBattleAnimBgTilemapBuffer;
extern void (*gBattleMainFunc)(void);
extern u8 gMoveSelectionCursor[4];
extern u32 gUnusedFirstBattleVar1;
extern u8 gUnusedFirstBattleVar2;
extern u8 gBattlerAttacker;
extern u8 gEffectBattler;
extern u8 gMultiHitCounter;
extern struct BattleScripting gBattleScripting;
extern u8 gBattlerFainted;
extern u32 gStatuses3[4];
extern u8 gSentPokesToOpponent[2];
extern const u8 *gBattlescriptCurrInstr;
extern const u8 *gSelectionBattleScripts[4];
extern u16 gLastMoves[4];
extern u8 gBattlerByTurnOrder[4];
extern u8 gBattleCommunication[8];
extern u16 gSideStatuses[2];
extern u32 gHitMarker;
extern u16 gChosenMoveByBattler[4];
extern u8 gMoveResultFlags;
extern s32 gTakenDmg[4];
extern u8 gTakenDmgByBattler[4];
extern u8 gCurrentActionFuncId;
extern u8 gCurrMovePos;
extern u8 gChosenMovePos;
extern u8 gBattleControllerData[4];
extern u8 gBattlerStatusSummaryTaskId[4];
extern u16 gDynamicBasePower;
extern u16 gLastLandedMoves[4];
extern u8 gLastHitBy[4];
extern u8 gMultiUsePlayerCursor;
extern u8 gNumberOfMovesToChoose;
extern u16 gLastHitByType[4];
extern s32 gHpDealt;
extern u16 gPauseCounterBattle;
extern u16 gPaydayMoney;
extern u16 gLockedMoves[4];
extern u8 gCurrentTurnActionNumber;
extern u16 gExpShareExp;
extern u8 gLeveledUpInBattle;
extern u16 gLastResultingMoves[4];
extern u16 gLastPrintedMoves[4];
extern u8 gActionsByTurnOrder[4];
extern u8 gChosenActionByBattler[4];
extern u8 gBattleTerrain;
extern struct MultiBattlePokemonTx gMultiPartnerParty[3];
extern u16 gRandomTurnNumber;
# 4 "src/union_room.c" 2
# 1 "include/berry_crush.h" 1





void StartBerryCrush(MainCallback callback);
void ShowBerryCrushRankings(void);
# 5 "src/union_room.c" 2
# 1 "include/cable_club.h" 1



void Task_WaitForLinkPlayerConnection(u8 taskId);
u8 CreateTask_ReestablishCableClubLink(void);
void CB2_ReturnFromCableClubBattle(void);
bool32 GetSeeingLinkPlayerCardMsg(u8 who);
# 6 "src/union_room.c" 2
# 1 "include/data.h" 1
# 9 "include/data.h"
struct MonCoords
{


    u8 size;
    u8 y_offset;
};





extern const u8 gSpeciesNames[][10 + 1];
extern const u8 gMoveNames[][13];

extern const u8 gTrainerClassNames[][13];

extern const struct MonCoords gMonFrontPicCoords[];
extern const struct CompressedSpriteSheet gMonFrontPicTable[];
extern const struct MonCoords gMonBackPicCoords[];
extern const struct CompressedSpriteSheet gMonBackPicTable[];
extern const struct CompressedSpritePalette gMonPaletteTable[];
extern const struct CompressedSpritePalette gMonShinyPaletteTable[];
extern const union AnimCmd *const *const gTrainerFrontAnimsPtrTable[];
extern const struct MonCoords gTrainerFrontPicCoords[];
extern const struct CompressedSpriteSheet gTrainerFrontPicTable[];
extern const struct CompressedSpriteSheet gTrainerBackPicTable[];
extern const struct CompressedSpritePalette gTrainerFrontPicPaletteTable[];
extern const union AnimCmd *const *const gTrainerBackAnimsPtrTable[];
extern const struct MonCoords gTrainerBackPicCoords[];
extern const struct CompressedSpritePalette gTrainerBackPicPaletteTable[];

extern const struct CompressedSpriteSheet gSpriteSheet_EnemyShadow;
extern const struct SpriteTemplate gSpriteTemplate_EnemyShadow;

extern const u8 gEnemyMonElevation[412];

extern const u8 *const gBattleAnims_General[];
extern const u8 *const gBattleAnims_Special[];

extern const union AnimCmd *const gAnims_MonPic[];
extern const union AffineAnimCmd *const gAffineAnims_BattleSpritePlayerSide[];
extern const union AffineAnimCmd *const gAffineAnims_BattleSpriteOpponentSide[];
extern const struct SpriteFrameImage gBattlerPicTable_PlayerLeft[];
extern const struct SpriteFrameImage gBattlerPicTable_OpponentLeft[];
extern const struct SpriteFrameImage gBattlerPicTable_PlayerRight[];
extern const struct SpriteFrameImage gBattlerPicTable_OpponentRight[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Red[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Leaf[];
extern const struct SpriteFrameImage gTrainerBackPicTable_Pokedude[];
extern const struct SpriteFrameImage gTrainerBackPicTable_OldMan[];
extern const struct SpriteFrameImage gTrainerBackPicTable_RSBrendan[];
extern const struct SpriteFrameImage gTrainerBackPicTable_RSMay[];
# 7 "src/union_room.c" 2
# 1 "include/decompress.h" 1







extern u8 gDecompressionBuffer[0x4000];

void LZDecompressWram(const void *src, void *dest);
void LZDecompressVram(const void *src, void *dest);

u16 LoadCompressedSpriteSheet(const struct CompressedSpriteSheet *src);
void LoadCompressedSpriteSheetOverrideBuffer(const struct CompressedSpriteSheet *src, void *buffer);
bool8 LoadCompressedSpriteSheetUsingHeap(const struct CompressedSpriteSheet* src);

void LoadCompressedSpritePalette(const struct CompressedSpritePalette *src);
void LoadCompressedSpritePaletteOverrideBuffer(const struct CompressedSpritePalette *a, void *buffer);
bool8 LoadCompressedSpritePaletteUsingHeap(const struct CompressedSpritePalette *src);

void DecompressPicFromTable(const struct CompressedSpriteSheet *src, void *buffer, s32 species);
void DecompressPicFromTable_2(const struct CompressedSpriteSheet *src, void *buffer, s32 species);
void DecompressPicFromTable_DontHandleDeoxys(const struct CompressedSpriteSheet *src, void *buffer, s32 species);

void HandleLoadSpecialPokePic(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality);
void HandleLoadSpecialPokePic_DontHandleDeoxys(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality);

void LoadSpecialPokePic(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality, bool8 isFrontPic);
void LoadSpecialPokePic_2(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality, bool8 isFrontPic);
void LoadSpecialPokePic_DontHandleDeoxys(const struct CompressedSpriteSheet *src, void *dest, s32 species, u32 personality, bool8 isFrontPic);

u32 GetDecompressedDataSize(const u8 *ptr);
# 8 "src/union_room.c" 2
# 1 "include/dodrio_berry_picking.h" 1
# 10 "include/dodrio_berry_picking.h"
struct DodrioGame_Berries
{
    u8 ids[11];
    u8 fallDist[11];
};

struct DodrioGame_PlayerCommData
{
    u8 pickState;
    bool8 __attribute__((aligned(4))) ateBerry;
    bool8 __attribute__((aligned(4))) missedBerry;
};

struct DodrioGame_Player
{
    u8 name[16];
    bool32 receivedGameStatePacket;
    struct DodrioGame_Berries berries;
    struct DodrioGame_PlayerCommData comm;
    u32 unused;
};


void StartDodrioBerryPicking(u16 partyId, MainCallback exitCallback);
void ShowDodrioBerryPickingRecords(void);
void IsDodrioInParty(void);


void SendPacket_ReadyToStart(bool32 ready);
bool8 RecvPacket_ReadyToStart(s32 playerId);
void SendPacket_GameState(struct DodrioGame_Player *player,
                          struct DodrioGame_PlayerCommData *player1,
                          struct DodrioGame_PlayerCommData *player2,
                          struct DodrioGame_PlayerCommData *player3,
                          struct DodrioGame_PlayerCommData *player4,
                          struct DodrioGame_PlayerCommData *player5,
                          u8 numGraySquares,
                          bool32 berriesFalling,
                          bool32 allReadyToEnd);
bool32 RecvPacket_GameState(u32 playerId,
                            struct DodrioGame_Player *player,
                            struct DodrioGame_PlayerCommData *player1,
                            struct DodrioGame_PlayerCommData *player2,
                            struct DodrioGame_PlayerCommData *player3,
                            struct DodrioGame_PlayerCommData *player4,
                            struct DodrioGame_PlayerCommData *player5,
                            u8 *numGraySquares,
                            bool32 *berriesFalling,
                            bool32 *allReadyToEnd);
void SendPacket_PickState(u8 pickState);
bool32 RecvPacket_PickState(u32 playerId, u8 *pickState);
void SendPacket_ReadyToEnd(bool32 readyToEnd);
bool32 RecvPacket_ReadyToEnd(u32 playerId);
# 9 "src/union_room.c" 2
# 1 "include/dynamic_placeholder_text_util.h" 1





void DynamicPlaceholderTextUtil_Reset(void);
void DynamicPlaceholderTextUtil_SetPlaceholderPtr(u8 idx, const u8 *ptr);
u8 *DynamicPlaceholderTextUtil_ExpandPlaceholders(u8 *dest, const u8 *src);
const u8 *DynamicPlaceholderTextUtil_GetPlaceholderPtr(u8 idx);
u8 GetColorFromTextColorTable(u16 graphicId);
# 10 "src/union_room.c" 2
# 1 "include/easy_chat.h" 1
# 10 "include/easy_chat.h"
struct EasyChatWordInfo
{
    const u8 *text;
    int alphabeticalOrder;
    int enabled;
};

typedef union
{
    const u16 *valueList;
    const struct EasyChatWordInfo *words;
} EasyChatGroupWordData;

struct EasyChatGroup
{
    EasyChatGroupWordData wordData;
    u16 numWords;
    u16 numEnabledWords;
};

struct EasyChatWordsByLetter
{
    const u16 *words;
    int numWords;
};

u8 *CopyEasyChatWord(u8 *dest, u16 word);
u8 *ConvertEasyChatWordsToString(u8 *dest, const u16 *src, u16 columns, u16 rows);
bool8 EC_DoesEasyChatStringFitOnLine(const u16 *easyChatWords, u8 columns, u8 rows, u16 maxLength);
void EC_ResetMEventProfileMaybe(void);
void InitEasyChatPhrases(void);
void EnableRareWord(u8);
bool8 InitEasyChatSelection(void);
void DestroyEasyChatSelectionData(void);
u8 GetSelectedGroupByIndex(u8);
void GetUnlockedECWords(bool32 isAlphabetical, u16 groupId);
u16 GetDisplayedWordByIndex(u16 index);
u16 GetNumDisplayedWords(void);
const u8 *GetEasyChatWordGroupName(u8);
u8 *CopyEasyChatWordPadded(u8 *, u16, u16);
void DoEasyChatScreen(u8 type, u16 *words, MainCallback callback);
u8 GetNumDisplayableGroups(void);
bool8 InitEasyChatGraphicsWork(void);
bool8 LoadEasyChatGraphics(void);
void DestroyEasyChatGraphicsResources(void);
void EasyChatInterfaceCommand_Setup(u16 id);
bool8 EasyChatInterfaceCommand_Run(void);
u8 GetEasyChatScreenFrameId(void);
const u8 *GetTitleText(void);
u16 *GetEasyChatWordBuffer(void);
u8 GetNumRows(void);
u8 GetNumColumns(void);
u8 GetMainCursorColumn(void);
u8 GetMainCursorRow(void);
void GetEasyChatInstructionsText(const u8 **str1, const u8 **str2);
void GetEasyChatConfirmText(const u8 **str1, const u8 **str2);
void GetEasyChatConfirmCancelText(const u8 **str1, const u8 **str2);
void GetEasyChatConfirmDeletionText(const u8 **str1, const u8 **str2);
void GetECSelectGroupCursorCoords(u8 *Xp, u8 *Yp);
bool8 IsEasyChatAlphaMode(void);
u8 GetECSelectGroupRowsAbove(void);
void GetECSelectWordCursorCoords(s8 *arg0, s8 *arg1);
u8 GetECSelectWordRowsAbove(void);
u8 GetECSelectWordNumRows(void);
u8 unref_sub_80FFE60(void);
bool32 ShouldDrawECUpArrow(void);
bool32 ShouldDrawECDownArrow(void);
# 11 "src/union_room.c" 2
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
# 12 "src/union_room.c" 2
# 1 "include/event_object_lock.h" 1





bool8 IsFreezePlayerFinished(void);
void FreezeObjects_WaitForPlayer(void);
bool8 IsFreezeSelectedObjectAndPlayerFinished(void);
void FreezeObjects_WaitForPlayerAndSelected(void);
void ClearPlayerHeldMovementAndUnfreezeObjectEvents(void);
bool8 walkrun_is_standing_still(void);
void UnionRoom_UnlockPlayerAndChatPartner(void);
# 13 "src/union_room.c" 2
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
# 14 "src/union_room.c" 2
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
# 15 "src/union_room.c" 2
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
# 16 "src/union_room.c" 2
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
# 17 "src/union_room.c" 2
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
# 18 "src/union_room.c" 2
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
# 19 "src/union_room.c" 2
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
# 20 "src/union_room.c" 2
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
# 21 "src/union_room.c" 2
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
# 22 "src/union_room.c" 2
# 1 "include/mevent.h" 1
# 12 "include/mevent.h"
enum {
    NEWS_INPUT_A,
    NEWS_INPUT_B,
    NEWS_INPUT_SCROLL_UP,
    NEWS_INPUT_SCROLL_DOWN,
    NEWS_INPUT_NONE = 0xFF
};

struct MEventClientHeaderStruct
{
    u32 unk_00;
    u16 unk_04;
    u32 unk_08;
    u16 unk_0C;
    u32 unk_10;
    u16 id;
    u16 unk_16[4];
    struct WonderCardMetadata unk_20;
    u8 maxDistributionMons;
    u8 playerName[7];
    u8 playerTrainerId[4];
    u16 easyChatProfile[6];
    u8 gameCode[4];
    u8 version;
};

struct MEvent_Str_1
{
    u16 status;
    size_t size;
    const void *data;
};

struct MEvent_Str_2
{
    u8 fill_00[0x40];
};

struct WonderGraphics
{
    u8 titleTextPal:4;
    u8 bodyTextPal:4;
    u8 footerTextPal:4;
    u8 stampShadowPal:4;
    const u8 * tiles;
    const u8 * map;
    const u16 * pal;
};

extern const u16 gCard1Pal[];
extern const u16 gCard2Pal[];
extern const u16 gCard3Pal[];
extern const u16 gCard4Pal[];
extern const u16 gCard5Pal[];

struct WonderNews * GetSavedWonderNews(void);
struct WonderCard * GetSavedWonderCard(void);
struct WonderCardMetadata * sav1_get_mevent_buffer_2(void);
struct WonderNewsMetadata * GetMENewsJisanStructPtr(void);
bool32 OverwriteSavedWonderNewsWithReceivedNews(const struct WonderNews * src);
bool32 ValidateReceivedWonderNews(void);
bool32 ValidateReceivedWonderCard(void);
bool32 MEvent_HaveAlreadyReceivedWonderNews(const u8 * src);
bool32 OverwriteSavedWonderCardWithReceivedCard(const struct WonderCard * data);
void MEvent_WonderCardResetUnk08_6(struct WonderCard * buffer);
bool32 MEvent_ReceiveDistributionMon(const u16 * data);
void BuildMEventClientHeader(struct MEventClientHeaderStruct * data);
bool32 ValidateMEventClientHeader(const struct MEventClientHeaderStruct * data);
u32 sub_8144418(const u16 * a0, const struct MEventClientHeaderStruct * a1, void *unused);
u32 MEvent_CanPlayerReceiveDistributionMon(const u16 * a0, const struct MEventClientHeaderStruct * a1, void *unused);
bool32 sub_8144474(const struct MEventClientHeaderStruct * a0, const u16 * a1);
u16 sub_81444B0(const struct MEventClientHeaderStruct * a0, u32 command);
bool32 WonderCard_Init(struct WonderCard * card, struct WonderCardMetadata * metadata);
bool32 WonderNews_Init(const struct WonderNews * news);
s32 WonderCard_Enter(void);
s32 WonderNews_Enter(void);
void DestroyWonderCard(void);
void DestroyWonderNews(void);
void WonderCard_Destroy(void);
void WonderNews_Destroy(void);
s32 WonderCard_Exit(bool32 flag);
s32 WonderNews_Exit(bool32 flag);
bool32 CheckReceivedGiftFromWonderCard(void);
void WonderNews_AddScrollIndicatorArrowPair(void);
void WonderNews_RemoveScrollIndicatorArrowPair(void);
bool32 WonderNews_Test_Unk_02(void);
bool32 WonderCard_Test_Unk_08_6(void);
u32 WonderNews_GetInput(u16 input);
void InitMEventData(void);
u16 MEvent_GetBattleCardCount(u32 command);
void MysteryGift_TryIncrementStat(u32 eventId, u32 trainerId);
u16 *GetMEventProfileECWordsMaybe(void);
void ResetReceivedWonderCardFlag(void);
bool32 MEventHandleReceivedWonderCard(u16 flagId);
u16 GetWonderCardFlagId(void);
# 23 "src/union_room.c" 2
# 1 "include/mystery_gift_menu.h" 1



extern bool8 gGiftIsFromEReader;

void MainCB_FreeAllBuffersAndReturnToInitTitleScreen(void);
void PrintMysteryGiftOrEReaderTopMenu(bool8, bool32);
void c2_mystery_gift(void);
void c2_mystery_gift_e_reader_run(void);
s8 mevent_message_print_and_prompt_yes_no(u8 * textState, u16 * windowId, bool8 yesNoBoxPlacement, const u8 * str);
void MG_DrawTextBorder(u8 windowId);
u16 GetMysteryGiftBaseBlock(void);
# 24 "src/union_room.c" 2
# 1 "include/new_menu_helpers.h" 1





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
# 7 "include/new_menu_helpers.h" 2

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
# 25 "src/union_room.c" 2
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
# 26 "src/union_room.c" 2
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
# 27 "src/union_room.c" 2
# 1 "include/pokemon_jump.h" 1





void ResetPokemonJumpRecords(void);
bool32 IsSpeciesAllowedInPokemonJump(u16 species);
void StartPokemonJump(u16 species, MainCallback callback);
# 28 "src/union_room.c" 2
# 1 "include/quest_log.h" 1




# 1 "include/quest_log_battle.h" 1





void TrySetQuestLogBattleEvent(void);
void TrySetQuestLogLinkBattleEvent(void);
# 6 "include/quest_log.h" 2
# 1 "include/constants/quest_log.h" 1
# 7 "include/quest_log.h" 2
# 1 "include/field_control_avatar.h" 1
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
# 29 "src/union_room.c" 2
# 1 "include/random.h" 1





extern u32 gRngValue;
extern u32 gRng2Value;


u16 Random(void);
u16 Random2(void);
# 23 "include/random.h"
void SeedRng(u16 seed);
void SeedRng2(u16 seed);
# 30 "src/union_room.c" 2
# 1 "include/save_location.h" 1
# 11 "include/save_location.h"
void TrySetMapSaveWarpStatus(void);
bool32 IsCurMapPokeCenter(void);
void SetUnlockedPokedexFlags(void);
void SetPostgameFlags(void);
# 31 "src/union_room.c" 2
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
# 32 "src/union_room.c" 2
# 1 "include/script_pokemon_util.h" 1



bool8 ScriptGiveMon(u16 species, u8 level, u16 item, u32 unk1, u32 unk2, u8 unk3);
bool8 ScriptGiveEgg(u16 species);
void ScriptSetMonMoveSlot(u8 partyIdx, u16 move, u8 slot);
void HealPlayerParty(void);
void ReducePlayerPartyToThree(void);
void CreateScriptedWildMon(u16 species, u8 level, u16 item);
# 33 "src/union_room.c" 2
# 1 "include/start_menu.h" 1





void AppendToList(u8 *list, u8 *pos, u8 newEntry);
void Task_StartMenuHandleInput(u8 taskId);
void SetUpReturnToStartMenu(void);
void ShowStartMenu(void);
void Field_AskSaveTheGame(void);
void CB2_SetUpSaveAfterLinkBattle(void);
# 34 "src/union_room.c" 2
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
# 35 "src/union_room.c" 2
# 1 "include/task.h" 1
# 36 "src/union_room.c" 2
# 1 "include/trade.h" 1




# 1 "include/link_rfu.h" 1
# 6 "include/trade.h" 2
# 1 "include/constants/trade.h" 1
# 7 "include/trade.h" 2

extern struct Mail gLinkPartnerMail[6];
extern u8 gSelectedTradeMonPositions[2];

extern const u8 gText_MaleSymbol4[];
extern const u8 gText_FemaleSymbol4[];
extern const u8 gText_GenderlessSymbol[];

extern const u16 gTradeOrHatchMonShadowTilemap[];
void CB2_ReturnFromLinkTrade(void);
s32 Trade_CalcLinkPlayerCompatibilityParam(void);
s32 CanRegisterMonForTradingBoard(struct GFtgtGnameSub rfuPlayer, u16 species2, u16 species, u8 isEventLegal);
s32 GetUnionRoomTradeMessageId(struct GFtgtGnameSub rfuPlayer, struct GFtgtGnameSub rfuPartner, u16 playerSpecies2, u16 partnerSpecies, u8 requestedType, u16 playerSpecies, u8 isEventLegal);
void CB2_ReturnToTradeMenuFromSummary(void);
# 37 "src/union_room.c" 2
# 1 "include/trade_scene.h" 1



void CB2_InitTradeAnim_LinkTrade(void);
void CreateInGameTradePokemon(void);
void DoInGameTradeScene(void);
void DrawTextOnTradeWindow(u8 windowId, const u8 *str, s8 speed);
u16 GetInGameTradeSpeciesInfo(void);
u16 GetTradeSpecies(void);
void InitTradeSequenceBgGpuRegs(void);
void LinkTradeDrawWindow(void);
void LoadTradeAnimGfx(void);

extern const u16 gTradeOrHatchMonShadowTilemap[];
extern const struct WindowTemplate gTradeEvolutionSceneYesNoWindowTemplate;
# 38 "src/union_room.c" 2
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
# 39 "src/union_room.c" 2
# 1 "include/union_room.h" 1
# 15 "include/union_room.h"
struct UnionGnameUnamePair
{
    struct GFtgtGname gname;
    u8 __attribute__((aligned(4))) uname[7 + 1];
};

struct UnkStruct_x1C
{
    struct UnionGnameUnamePair gname_uname;
    u8 active:1;
};

struct UnkStruct_x20
{
    struct UnionGnameUnamePair gname_uname;
    u16 field_18;
    u8 groupScheduledAnim:2;
    bool8 field_1A_1:1;
    u8 field_1B;
    u32 field_1C;
};







struct UnkStruct_Main0
{
    struct UnkStruct_x20 arr[0];
};

struct UnkStruct_Main4
{
    struct UnkStruct_x1C arr[0];
};

struct UnkStruct_Leader
{
    struct UnkStruct_Main0 * field_0;
    struct UnkStruct_Main4 * field_4;
    struct UnkStruct_Main0 * field_8;
    u8 state;
    u8 textState;
    u8 delayTimerAfterOk;
    u8 listWindowId;
    u8 bButtonCancelWindowId;
    u8 nPlayerModeWindowId;
    u8 listTaskId;
    u8 playerCount;
    u8 messageWindowId;
    u8 field_15;
    u8 field_16;
    u8 listenTaskId;
    u8 activity;
    u8 field_19;
    u16 field_1A;
};

struct UnkStruct_Group
{
    struct UnkStruct_Main0 * field_0;
    struct UnkStruct_Main4 * field_4;
    u8 state;
    u8 textState;
    u8 field_A;
    u8 listWindowId;
    u8 bButtonCancelWindowId;
    u8 playerNameAndIdWindowId;
    u8 listTaskId;
    u8 leaderId;
    u8 field_10;
    u8 listenTaskId;
    u8 cardOrNews;
    u8 field_13;
    u8 refreshTimer;
    u8 delayBeforePrint;
};

struct UnionObj
{
    u8 state;
    u8 gfxId;
    s8 animState;
    u8 schedAnim;
};

struct UnkStruct_URoom
{
                struct UnkStruct_Main0 * field_0;
                struct UnkStruct_Main4 * field_4;
                struct UnkStruct_Main0 * field_8;
                struct UnkStruct_Main4 * field_C;
                u16 field_10;
                u16 field_12;
                u8 state;
                u8 stateAfterPrint;
                u8 textState;
                u8 field_17;
                u8 field_18;
                u8 field_19;
                u8 field_1A;
                u8 topListMenuWindowId;
                u8 topListMenuListMenuId;
                u8 tradeBoardSelectWindowId;
                u8 tradeBoardDetailsWindowId;
                u8 field_1F;
                u8 field_20;
                u8 spriteIds[40];
                u8 field_49;
                u8 tradeBoardListMenuId;


                u16 playerSendBuffer[6];
                u8 activityRequestStrbufs[4][11];
                u16 partnerYesNoResponse;
                u16 recvActivityRequest[3];
                struct UnionObj unionObjs[8];
                u8 trainerCardStrbufs[12][15];
                u8 field_174[48];
                u8 field_1A4[200];
};

union UnkUnion_Main
{
    struct UnkStruct_Leader * leader;
    struct UnkStruct_Group * group;
    struct UnkStruct_URoom * uRoom;
};

struct UnionRoomTrade
{
    u16 field_0;
    u16 type;
    u32 playerPersonality;
    u8 field_8;
    u8 field_9;
    u16 playerSpecies;
    u16 playerLevel;
    u16 species;
    u16 level;
    u16 field_12;
    u32 personality;
};

extern struct GFtgtGnameSub gPartnerTgtGnameSub;
extern u16 gUnionRoomOfferedSpecies;
extern u8 gUnionRoomRequestedMonType;

void StartUnionRoomBattle(u16 battleFlags);
u8 UnionRoom_CreateTask_CallCB2ReturnFromLinkTrade(void);
# 40 "src/union_room.c" 2
# 1 "include/union_room_battle.h" 1



void CB2_UnionRoomBattle(void);
# 41 "src/union_room.c" 2
# 1 "include/union_room_chat.h" 1



enum
{
    UNION_ROOM_KB_PAGE_UPPER,
    UNION_ROOM_KB_PAGE_LOWER,
    UNION_ROOM_KB_PAGE_EMOJI,
    UNION_ROOM_KB_PAGE_COUNT
};

extern const u8 *const gUnionRoomKeyboardText[UNION_ROOM_KB_PAGE_COUNT][10];

void EnterUnionRoomChat(void);
u8 *UnionRoomChat_GetWorkRegisteredText(int arg0);
void UnionRoomChat_GetCursorColAndRow(u8 *colp, u8 *rowp);
u8 *UnionRoomChat_GetMessageEntryBuffer(void);
int UnionRoomChat_LenMessageEntryBuffer(void);
void UnionRoomChat_GetBufferSelectionRegion(u32 *startp, u32 *diffp);
u8 *UnionRoomChat_GetEndOfMessageEntryBuffer(void);
u16 UnionRoomChat_GetNumCharsInMessageEntryBuffer(void);
u8 *UnionRoomChat_GetLastReceivedMessage(void);
u16 UnionRoomChat_GetReceivedPlayerIndex(void);
int UnionRoomChat_GetMessageEntryCursorPosition(void);
int UnionRoomChat_GetWhetherShouldShowCaseToggleIcon(void);
u8 *UnionRoomChat_GetNameOfPlayerWhoDisbandedChat(void);
void UnionRoomChat_InitializeRegisteredTexts(void);
u8 GetCurrentKeyboardPage(void);
# 42 "src/union_room.c" 2
# 1 "include/rfu_union_tool.h" 1



# 1 "include/union_room.h" 1
# 5 "include/rfu_union_tool.h" 2

u8 ZeroUnionObjWork(struct UnionObj * ptr);
void DeleteUnionObjWorkAndStopTask(void);
void CreateGroupMemberObjectsInvisible(u8 *spriteIds, s32 group);
void DestroyGroupMemberObjects(u8 *spriteIds);
void MakeGroupAssemblyAreasPassable(void);
void ScheduleUnionRoomPlayerRefresh(struct UnkStruct_URoom *uroom_p);
void HandleUnionRoomPlayerRefresh(struct UnkStruct_URoom *uroom_p);
bool32 RfuUnionTool_GetGroupAndMemberInFrontOfPlayer(struct UnkStruct_Main0 *main0_p, s16 *member_p, s16 *group_p, u8 *spriteIds);
void UpdateUnionGroupMemberFacing(u32 member, u32 group, struct UnkStruct_Main0 *main0_p);
# 43 "src/union_room.c" 2
# 1 "include/union_room_message.h" 1





extern const u8 gText_UR_EmptyString[];
extern const u8 gText_UR_Colon[];
extern const u8 gText_UR_ID[];
extern const u8 gText_UR_PleaseStartOver[];
extern const u8 gText_UR_WirelessSearchCanceled[];
extern const u8 gText_UR_AwaitingCommunication[];
extern const u8 gText_UR_AwaitingLinkPressStart[];
extern const u8 *const gTexts_UR_PlayersNeededOrMode[][5];
extern const u8 gText_UR_BButtonCancel[];
extern const u8 gText_UR_PlayerContactedYouForXAccept[];
extern const u8 gText_UR_PlayerContactedYouShareX[];
extern const u8 gText_UR_PlayerContactedYouAddToMembers[];
extern const u8 gText_UR_AreTheseMembersOK[];
extern const u8 gText_UR_CancelModeWithTheseMembers[];
extern const u8 gText_UR_AnOKWasSentToPlayer[];
extern const u8 *const gTexts_UR_CantTransmitToTrainer[];
extern const u8 gText_UR_ModeWithTheseMembersWillBeCanceled[];
extern const u8 *const gTexts_UR_PlayerUnavailable[];
extern const u8 gText_UR_PlayerSentBackOK[];
extern const u8 gText_UR_PlayerOKdRegistration[];
extern const u8 gText_UR_AwaitingOtherMembers[];
extern const u8 gText_UR_QuitBeingMember[];
extern const u8 *const gTexts_UR_PlayerDisconnected[];
extern const u8 gText_UR_WirelessLinkEstablished[];
extern const u8 gText_UR_WirelessLinkDropped[];
extern const u8 gText_UR_LinkWithFriendDropped[];
extern const u8 *const gTexts_UR_LinkDropped[];
extern const u8 gText_UR_AwaitingPlayersResponseAboutTrade[];
extern const u8 *const gTexts_UR_CommunicatingWait[];
extern const u8 *const gTexts_UR_HiDoSomething[][2];
extern const u8 *const gTexts_UR_PlayerContactedYou[];
extern const u8 *const gTexts_UR_AwaitingResponse[];
extern const u8 gText_UR_ShowTrainerCard[];
extern const u8 gText_UR_BattleChallenge[];
extern const u8 gText_UR_ChatInvitation[];
extern const u8 gText_UR_OfferToTradeMon[];
extern const u8 gText_UR_OfferToTradeEgg[];
extern const u8 gText_UR_ChatDropped[];
extern const u8 gText_UR_OfferDeclined1[];
extern const u8 gText_UR_OfferDeclined2[];
extern const u8 gText_UR_ChatEnded[];
extern const u8 *const gTexts_UR_JoinChat[][2];
extern const u8 gText_UR_TrainerAppearsBusy[];
extern const u8 *const gTexts_UR_WaitOrShowCard[2][4];
extern const u8 *const gTexts_UR_StartActivity[][2][3];
extern const u8 *const gTexts_UR_BattleDeclined[2];
extern const u8 *const gTexts_UR_ShowTrainerCardDeclined[2];
extern const u8 *const gTexts_UR_IfYouWantToDoSomething[2];
extern const u8 gText_UR_TrainerBattleBusy[];
extern const u8 gText_UR_NeedTwoMonsOfLevel30OrLower1[];
extern const u8 gText_UR_NeedTwoMonsOfLevel30OrLower2[];
extern const u8 *const gTexts_UR_DeclineChat[2];
extern const u8 *const gTexts_UR_ChatDeclined[2];
extern const u8 *const gTexts_UR_BattleReaction[2][4];
extern const u8 *const gTexts_UR_ChatReaction[2][4];
extern const u8 *const gTexts_UR_TrainerCardReaction[2][2];
extern const u8 *const gTexts_UR_TradeReaction[2][4];
extern const u8 gText_UR_XCheckedTradingBoard[];
extern const u8 gText_UR_RegisterMonAtTradingBoard[];
extern const u8 gText_UR_TradingBoardInfo[];
extern const u8 gText_UR_ChooseRequestedMonType[];
extern const u8 gText_UR_WhichMonWillYouOffer[];
extern const u8 gText_UR_RegistrationCanceled[];
extern const u8 gText_UR_RegistraionCompleted[];
extern const u8 gText_UR_TradeCanceled[];
extern const u8 gText_UR_CancelRegistrationOfMon[];
extern const u8 gText_UR_CancelRegistrationOfEgg[];
extern const u8 gText_UR_RegistrationCanceled2[];
extern const u8 gText_UR_AskTrainerToMakeTrade[];
extern const u8 gText_UR_DontHaveTypeTrainerWants[];
extern const u8 gText_UR_DontHaveEggTrainerWants[];
extern const u8 gText_UR_TradeOfferRejected[];
extern const u8 gText_UR_EggTrade[];
extern const u8 gText_UR_ChooseJoinCancel[];
extern const u8 gText_UR_ChooseTrainer[];
extern const u8 gText_UR_SearchingForWirelessSystemWait[];
extern const u8 *const gTexts_UR_ChooseTrainer[];
extern const u8 gText_UR_AwaitingPlayersResponse[];
extern const u8 gText_UR_PlayerHasBeenAskedToRegisterYouPleaseWait[];
extern const u8 gText_UR_AwaitingResponseFromWirelessSystem[];
extern const u8 *const gTexts_UR_NoWonderShared[];
extern const u8 gText_UR_Battle[];
extern const u8 gText_UR_Chat2[];
extern const u8 gText_UR_Greetings[];
extern const u8 gText_UR_Exit[];
extern const u8 gText_UR_Exit2[];
extern const u8 gText_UR_Info[];
extern const u8 gText_UR_NameWantedOfferLv[];
extern const u8 gText_UR_SingleBattle[];
extern const u8 gText_UR_DoubleBattle[];
extern const u8 gText_UR_MultiBattle[];
extern const u8 gText_UR_PokemonTrades[];
extern const u8 gText_UR_Chat[];
extern const u8 gText_UR_WonderCards[];
extern const u8 gText_UR_WonderNews[];
extern const u8 gText_UR_Cards[];
extern const u8 gText_UR_PokemonJump[];
extern const u8 gText_UR_BerryCrush[];
extern const u8 gText_UR_BerryPicking[];
extern const u8 gText_UR_Search[];
extern const u8 gText_UR_SpinTrade[];
extern const u8 gText_UR_ItemTrade[];
extern const u8 *const gTexts_UR_CardColor[];
extern const u8 gText_UR_TrainerCardInfoPage1[];
extern const u8 gText_UR_TrainerCardInfoPage2[];
extern const u8 *const gTexts_UR_GladToMeetYou[2];
extern const u8 gText_UR_FinishedCheckingPlayersTrainerCard[];
# 44 "src/union_room.c" 2
# 1 "include/constants/songs.h" 1
# 45 "src/union_room.c" 2
# 1 "include/constants/maps.h" 1



# 1 "include/constants/map_groups.h" 1
# 5 "include/constants/maps.h" 2
# 1 "include/constants/map_types.h" 1
# 6 "include/constants/maps.h" 2
# 46 "src/union_room.c" 2
# 1 "include/constants/cable_club.h" 1
# 47 "src/union_room.c" 2
# 1 "include/constants/field_weather.h" 1
# 48 "src/union_room.c" 2
# 1 "include/constants/trainer_card.h" 1
# 49 "src/union_room.c" 2
# 1 "include/constants/union_room.h" 1
# 50 "src/union_room.c" 2

static __attribute__((section("ewram_data"))) u8 sUnionRoomPlayerName[12] = {};
static __attribute__((section("ewram_data"))) u8 sPlayerCurrActivity = 0;
static __attribute__((section("ewram_data"))) u8 sPlayerActivityGroupSize = 0;
static __attribute__((section("ewram_data"))) union UnkUnion_Main sUnionRoomMain = {};
static __attribute__((section("ewram_data"))) u32 sUnref_203B060 = 0;
__attribute__((section("ewram_data"))) struct GFtgtGnameSub gPartnerTgtGnameSub = {};
__attribute__((section("ewram_data"))) u16 gUnionRoomOfferedSpecies = 0;
__attribute__((section("ewram_data"))) u8 gUnionRoomRequestedMonType = 0;
static __attribute__((section("ewram_data"))) struct UnionRoomTrade sUnionRoomTrade = {};

static struct UnkStruct_Leader * sLeader;
static struct UnkStruct_Group * sGroup;
static struct UnkStruct_URoom * sURoom;

static void Task_TryBecomeLinkLeader(u8 taskId);
static void Leader_DestroyResources(struct UnkStruct_Leader * leader);
static bool8 Leader_SetStateIfMemberListChanged(struct UnkStruct_Leader * leader, u32 state1, u32 state2);
static void ItemPrintFunc_PossibleGroupMembers(u8 windowId, u32 itemId, u8 y);
static u8 LeaderUpdateGroupMembership(struct UnkStruct_Main0 * main0);
static u8 UnionRoomLeaderField0CompactionAndCount(struct UnkStruct_Main0 * main0);
static void Task_TryJoinLinkGroup(u8 taskId);
static u32 IsTryingToTradeWithHoennTooSoon(struct UnkStruct_Group * group, s32 id);
static void AskToJoinRfuGroup(struct UnkStruct_Group * group, s32 id);
static void Task_ListenToWireless(u8 taskId);
static void ListMenuItemPrintFunc_UnionRoomGroups(u8 windowId, u32 itemId, u8 y);
static u8 GetNewLeaderCandidate(void);
static void CreateTask_RunScriptAndFadeToActivity(void);
static void CreateTask_StartActivity(void);
static void Task_MEvent_Leader(u8 taskId);
static void Task_CardOrNewsWithFriend(u8 taskId);
static void Task_CardOrNewsOverWireless(u8 taskId);
static void Task_RunUnionRoom(u8 taskId);
static u16 ReadAsU16(const u8 *data);
static void ReceiveUnionRoomActivityPacket(struct UnkStruct_URoom * uRoom);
static bool32 UnionRoom_HandleContactFromOtherPlayer(struct UnkStruct_URoom * uRoom);
static void Task_InitUnionRoom(u8 taskId);
static u8 HandlePlayerListUpdate(void);
static u8 CreateTask_SearchForChildOrParent(struct UnkStruct_Main4 * main4, struct UnkStruct_Main4 * arg1, u32 arg2);
static bool32 GetGnameWonderFlagByLinkGroup(struct GFtgtGname * gname, s16 linkGroup);
static u8 CreateTask_ListenForPartnersWithCompatibleSerialNos(struct UnkStruct_Main4 * main4, u32 linkGroup);
static u8 CreateTask_ListenForPartnersWithSerial7F7D(struct UnkStruct_Main4 * main4, u32 linkGroup);
static bool32 UR_PrintFieldMessage(const u8 * str);
static bool32 UR_RunTextPrinters_CheckPrinter0Active(void);
static bool8 PrintOnTextbox(u8 *textState, const u8 *str);
static s8 UnionRoomHandleYesNo(u8 *state_p, bool32 no_draw);
static s32 ListMenuHandler_AllItemsAvailable(u8 *state_p, u8 *win_id_p, u8 *list_menu_id_p, const struct WindowTemplate * winTemplate, const struct ListMenuTemplate * menuTemplate);
static s32 TradeBoardMenuHandler(u8 *state_p, u8 *win_id_p, u8 *list_menu_id_p, u8 *trade_board_win_id_p, const struct WindowTemplate * winTemplate, const struct ListMenuTemplate * menuTemplate, struct UnkStruct_Main0 * traders);
static void UR_BlankBg0(void);
static void JoinGroup_BlankBg0AndEnableScriptContexts(void);
static void UR_AddTextPrinterParameterized(u8 windowId, u8 fontId, const u8 *str, u8 x, u8 y, u8 colorIdx);
static void BlankUnkStruct_x20Array(struct UnkStruct_x20 * x20, u8 count);
static void BlankUnkStruct_x1CArray(struct UnkStruct_x1C * x1C, u8 count);
static bool8 AreGnameUnameDifferent(struct UnionGnameUnamePair * arg0, const struct UnionGnameUnamePair * arg1);
static bool32 AreUnionRoomPlayerGnamesDifferent(struct UnionGnameUnamePair * arg0, struct UnionGnameUnamePair * arg1);
static u32 Findx20Inx1CArray(struct UnkStruct_x20 * x20, struct UnkStruct_x1C * x1Carr);
static u8 Appendx1Ctox20(struct UnkStruct_x20 * x20arr, struct UnkStruct_x1C * x1C, u8 count);
static void PrintUnionRoomGroupOnWindow(u8 windowId, u8 x, u8 y, struct UnkStruct_x20 * group, u8 colorIdx, u8 id);
static void PrintGroupMemberCandidateOnWindowWithColor(u8 windowId, u8 x, u8 y, struct UnkStruct_x20 * group, u8 colorIdx, u8 id);
static bool32 PlayerIsTalkingToUnionRoomAide(void);
static u32 GetResponseIdx_InviteToURoomActivity(s32 activity);
static u32 ConvPartnerUnameAndGetWhetherMetAlready(struct UnkStruct_x20 * unkX20);
static s32 UnionRoomGetPlayerInteractionResponse(struct UnkStruct_Main0 * main0, u8 overrideGender, u8 playerIdx, u32 playerGender);
static void nullsub_92(u8 windowId, u32 itemId, u8 y);
static void TradeBoardListMenuItemPrintFunc(u8 windowId, u32 itemId, u8 y);
static s32 GetIndexOfNthTradeBoardOffer(struct UnkStruct_x20 * x20, s32 n);
static s32 GetUnionRoomPlayerGender(s32 playerIdx, struct UnkStruct_Main0 * main0);
static s32 IsRequestedTypeAndSpeciesInPlayerParty(u32 type, u32 species);
static void GetURoomActivityRejectMsg(u8 *dst, s32 activity, u32 playerGender);
static void GetURoomActivityStartMsg(u8 *dst, u8 activity);
static s32 GetChatLeaderActionRequestMessage(u8 *dst, u32 gender, u16 *activity_p, struct UnkStruct_URoom * uroom);
static bool32 PollPartnerYesNoResponse(struct UnkStruct_URoom * uroom);
static bool32 HasAtLeastTwoMonsOfLevel30OrLower(void);
static void ResetUnionRoomTrade(struct UnionRoomTrade * trade);
static bool32 RegisterTradeMonAndGetIsEgg(u32 monId, struct UnionRoomTrade * trade);
static void RegisterTradeMon(u32 monId, struct UnionRoomTrade * trade);
static u32 GetPartyPositionOfRegisteredMon(struct UnionRoomTrade * trade, u8 mpId);
static void HandleCancelTrade(bool32 unlockObjs);
static void UR_EnableScriptContext2AndFreezeObjectEvents(void);
static u8 GetSinglePartnerSpriteGenderParam(s32 linkPlayer);
static u8 GetActivePartnerSpriteGenderParam(struct UnkStruct_URoom * uroom);
static void ViewURoomPartnerTrainerCard(u8 *dest, struct UnkStruct_URoom * uRoom, bool8 parent_child);



static const u8 *const sUnionRoomActivityStringPtrs[] = {
    gText_UR_EmptyString,
    gText_UR_SingleBattle,
    gText_UR_DoubleBattle,
    gText_UR_MultiBattle,
    gText_UR_PokemonTrades,
    gText_UR_Chat,
    gText_UR_WonderCards,
    gText_UR_WonderNews,
    gText_UR_Cards,
    gText_UR_PokemonJump,
    gText_UR_BerryCrush,
    gText_UR_BerryPicking,
    gText_UR_Search,
    gText_UR_SpinTrade,
    gText_UR_ItemTrade,
    gText_UR_EmptyString,
    gText_UR_EmptyString,
    gText_UR_EmptyString,
    gText_UR_EmptyString,
    gText_UR_EmptyString,
    gText_UR_EmptyString,
    gText_UR_WonderCards,
    gText_UR_WonderNews
};

static const struct WindowTemplate sWindowTemplate_BButtonCancel = {
    .bg = 0,
    .tilemapLeft = 0,
    .tilemapTop = 0,
    .width = 30,
    .height = 2,
    .paletteNum = 0xF,
    .baseBlock = 0x008
};

static const u32 sLinkGroupToActivityAndCapacity[] = {
    [0] = ((1) | ((2) << 8)),
    [1] = ((2) | ((2) << 8)),
    [2] = ((3) | ((4) << 8)),
    [3] = ((4) | ((2) << 8)),
    [4] = ((9) | ((5 | 0x20) << 8)),
    [5] = ((10) | ((5 | 0x20) << 8)),
    [6] = ((11) | ((5 | 0x30) << 8)),
    [7] = ((13) | ((5 | 0x30) << 8)),
    [8] = ((14) | ((5 | 0x30) << 8))
};

static const struct WindowTemplate sWindowTemplate_List_PossibleGroupMembers = {
    .bg = 0,
    .tilemapLeft = 1,
    .tilemapTop = 3,
    .width = 13,
    .height = 10,
    .paletteNum = 15,
    .baseBlock = 0x044
};

static const struct WindowTemplate sWindowTemplate_NumPlayerMode = {
    .bg = 0,
    .tilemapLeft = 16,
    .tilemapTop = 3,
    .width = 7,
    .height = 4,
    .paletteNum = 15,
    .baseBlock = 0x0C6
};

const struct ListMenuItem sListMenuItems_PossibleGroupMembers[] = {
    {gText_UR_EmptyString, 0},
    {gText_UR_EmptyString, 1},
    {gText_UR_EmptyString, 2},
    {gText_UR_EmptyString, 3},
    {gText_UR_EmptyString, 4}
};

static const struct ListMenuTemplate sListMenuTemplate_PossibleGroupMembers = {
    .items = sListMenuItems_PossibleGroupMembers,
    .moveCursorFunc = ((void *)0),
    .itemPrintFunc = ItemPrintFunc_PossibleGroupMembers,
    .totalItems = 5,
    .maxShowed = 5,
    .windowId = 0,
    .header_X = 0,
    .item_X = 1,
    .cursor_X = 0,
    .upText_Y = 0,
    .cursorPal = 2,
    .fillValue = 1,
    .cursorShadowPal = 3,
    .lettersSpacing = 0,
    .itemVerticalPadding = 2,
    .scrollMultiple = 0,
    .fontId = FONT_2,
    .cursorKind = 1
};

static const struct WindowTemplate sWindowTemplate_MysteryGiftList = {
    .bg = 0,
    .tilemapLeft = 1,
    .tilemapTop = 3,
    .width = 17,
    .height = 10,
    .paletteNum = 15,
    .baseBlock = 0x044
};

static const struct WindowTemplate sWindowTemplate_MysteryGiftPlayerNameAndId = {
    .bg = 0,
    .tilemapLeft = 20,
    .tilemapTop = 3,
    .width = 7,
    .height = 4,
    .paletteNum = 15,
    .baseBlock = 0x0EE
};

static const struct ListMenuItem sListMenuItems_UnionRoomGroups[] = {
    {gText_UR_EmptyString, 0},
    {gText_UR_EmptyString, 1},
    {gText_UR_EmptyString, 2},
    {gText_UR_EmptyString, 3},
    {gText_UR_EmptyString, 4},
    {gText_UR_EmptyString, 5},
    {gText_UR_EmptyString, 6},
    {gText_UR_EmptyString, 7},
    {gText_UR_EmptyString, 8},
    {gText_UR_EmptyString, 9},
    {gText_UR_EmptyString, 10},
    {gText_UR_EmptyString, 11},
    {gText_UR_EmptyString, 12},
    {gText_UR_EmptyString, 13},
    {gText_UR_EmptyString, 14},
    {gText_UR_EmptyString, 15}
};

static const struct ListMenuTemplate sListMenuTemplate_UnionRoomGroups = {
    .items = sListMenuItems_UnionRoomGroups,
    .moveCursorFunc = ListMenuDefaultCursorMoveFunc,
    .itemPrintFunc = ListMenuItemPrintFunc_UnionRoomGroups,
    .totalItems = 16,
    .maxShowed = 5,
    .windowId = 0,
    .header_X = 0,
    .item_X = 8,
    .cursor_X = 0,
    .upText_Y = 0,
    .cursorPal = 2,
    .fillValue = 1,
    .cursorShadowPal = 3,
    .lettersSpacing = 0,
    .itemVerticalPadding = 2,
    .scrollMultiple = 1,
    .fontId = FONT_2,
    .cursorKind = 0
};

static const struct WindowTemplate sWindowTemplate_InviteToActivity = {
    .bg = 0,
    .tilemapLeft = 20,
    .tilemapTop = 6,
    .width = 8,
    .height = 7,
    .paletteNum = 15,
    .baseBlock = 0x001
};

static const struct ListMenuItem sListMenuItems_InviteToActivity[] = {
    {gText_UR_Greetings, ((8) | ((2) << 8))},
    {gText_UR_Battle, ((1 | 0x40) | ((2) << 8))},
    {gText_UR_Chat2, ((5 | 0x40) | ((2) << 8))},
    {gText_UR_Exit, ((0 | 0x40) | ((0) << 8))}
};

static const struct ListMenuTemplate sListMenuTemplate_InviteToActivity = {
    .items = sListMenuItems_InviteToActivity,
    .moveCursorFunc = ListMenuDefaultCursorMoveFunc,
    .itemPrintFunc = ((void *)0),
    .totalItems = 4,
    .maxShowed = 4,
    .windowId = 0,
    .header_X = 0,
    .item_X = 8,
    .cursor_X = 0,
    .upText_Y = 0,
    .cursorPal = 2,
    .fillValue = 1,
    .cursorShadowPal = 3,
    .lettersSpacing = 1,
    .itemVerticalPadding = 0,
    .scrollMultiple = 0,
    .fontId = FONT_2,
    .cursorKind = 0
};

static const struct WindowTemplate sWindowTemplate_TradeBoardRegisterInfoExit = {
    .bg = 0,
    .tilemapLeft = 18,
    .tilemapTop = 8,
    .width = 11,
    .height = 5,
    .paletteNum = 15,
    .baseBlock = 0x001
};

static const struct ListMenuItem gUnknown_8456E3C[] = {
    {gText_Register, 1},
    {gText_UR_Info, 2},
    {gText_UR_Exit, 3}
};

static const struct ListMenuTemplate sListMenuTemplate_TradeBoardRegisterInfoExit = {
    .items = gUnknown_8456E3C,
    .moveCursorFunc = ListMenuDefaultCursorMoveFunc,
    .itemPrintFunc = ((void *)0),
    .totalItems = 3,
    .maxShowed = 3,
    .windowId = 0,
    .header_X = 0,
    .item_X = 8,
    .cursor_X = 0,
    .upText_Y = 0,
    .cursorPal = 2,
    .fillValue = 1,
    .cursorShadowPal = 3,
    .lettersSpacing = 1,
    .itemVerticalPadding = 0,
    .scrollMultiple = 0,
    .fontId = FONT_2,
    .cursorKind = 0
};

static const struct WindowTemplate sWindowTemplate_TypeNames = {
    .bg = 0,
    .tilemapLeft = 20,
    .tilemapTop = 2,
    .width = 9,
    .height = 11,
    .paletteNum = 15,
    .baseBlock = 0x001
};

static const struct ListMenuItem sListMenuItems_TypeNames[] = {
    {gTypeNames[0], 0},
    {gTypeNames[10], 10},
    {gTypeNames[11], 11},
    {gTypeNames[13], 13},
    {gTypeNames[12], 12},
    {gTypeNames[15], 15},
    {gTypeNames[4], 4},
    {gTypeNames[5], 5},
    {gTypeNames[2], 2},
    {gTypeNames[14], 14},
    {gTypeNames[1], 1},
    {gTypeNames[3], 3},
    {gTypeNames[6], 6},
    {gTypeNames[7], 7},
    {gTypeNames[16], 16},
    {gTypeNames[8], 8},
    {gTypeNames[17], 17},
    {gText_UR_Exit, 18}
};

static const struct ListMenuTemplate sListMenuTemplate_TypeNames = {
    .items = sListMenuItems_TypeNames,
    .moveCursorFunc = ListMenuDefaultCursorMoveFunc,
    .itemPrintFunc = ((void *)0),
    .totalItems = 18,
    .maxShowed = 6,
    .windowId = 0,
    .header_X = 0,
    .item_X = 8,
    .cursor_X = 0,
    .upText_Y = 2,
    .cursorPal = 2,
    .fillValue = 1,
    .cursorShadowPal = 3,
    .lettersSpacing = 1,
    .itemVerticalPadding = 0,
    .scrollMultiple = 0,
    .fontId = FONT_2,
    .cursorKind = 0
};

static const struct WindowTemplate sTradeBoardWindowTemplate = {
    .bg = 0,
    .tilemapLeft = 1,
    .tilemapTop = 1,
    .width = 28,
    .height = 2,
    .paletteNum = 13,
    .baseBlock = 0x001
};

static const struct WindowTemplate gUnknown_8456F24 = {
    .bg = 0,
    .tilemapLeft = 1,
    .tilemapTop = 5,
    .width = 28,
    .height = 10,
    .paletteNum = 13,
    .baseBlock = 0x039
};

static const struct ListMenuItem sTradeBoardListMenuItems[] = {
    {gText_UR_EmptyString, -3},
    {gText_UR_EmptyString, 0},
    {gText_UR_EmptyString, 1},
    {gText_UR_EmptyString, 2},
    {gText_UR_EmptyString, 3},
    {gText_UR_EmptyString, 4},
    {gText_UR_EmptyString, 5},
    {gText_UR_EmptyString, 6},
    {gText_UR_EmptyString, 7},
    {gText_UR_Exit2, 8}
};

static const struct ListMenuTemplate sTradeBoardListMenuTemplate = {
    .items = sTradeBoardListMenuItems,
    .moveCursorFunc = ListMenuDefaultCursorMoveFunc,
    .itemPrintFunc = TradeBoardListMenuItemPrintFunc,
    .totalItems = 10,
    .maxShowed = 5,
    .windowId = 0,
    .header_X = 0,
    .item_X = 12,
    .cursor_X = 0,
    .upText_Y = 2,
    .cursorPal = 14,
    .fillValue = 15,
    .cursorShadowPal = 13,
    .lettersSpacing = 1,
    .itemVerticalPadding = 1,
    .scrollMultiple = 0,
    .fontId = FONT_2,
    .cursorKind = 0
};

static const struct WindowTemplate gUnknown_8456F94 = {
    .bg = 0,
    .tilemapLeft = 1,
    .tilemapTop = 5,
    .width = 28,
    .height = 10,
    .paletteNum = 13,
    .baseBlock = 0x039
};

static const struct ListMenuItem gUnknown_8456F9C[] = {
    {gText_UR_EmptyString, 0},
    {gText_UR_EmptyString, 1},
    {gText_UR_EmptyString, 2},
    {gText_UR_EmptyString, 3},
    {gText_UR_EmptyString, 4},
    {gText_UR_EmptyString, 5},
    {gText_UR_EmptyString, 6},
    {gText_UR_EmptyString, 7},
    {gText_UR_EmptyString, 8},
    {gText_UR_EmptyString, 9},
    {gText_UR_EmptyString, 10},
    {gText_UR_EmptyString, 11},
    {gText_UR_EmptyString, 12},
    {gText_UR_EmptyString, 13},
    {gText_UR_EmptyString, 14},
    {gText_UR_EmptyString, 15}
};

static const struct ListMenuTemplate gUnknown_845701C = {
    .items = gUnknown_8456F9C,
    .moveCursorFunc = ListMenuDefaultCursorMoveFunc,
    .itemPrintFunc = nullsub_92,
    .totalItems = 16,
    .maxShowed = 4,
    .windowId = 0,
    .header_X = 0,
    .item_X = 8,
    .cursor_X = 1,
    .upText_Y = 0,
    .cursorPal = 2,
    .fillValue = 1,
    .cursorShadowPal = 3,
    .lettersSpacing = 1,
    .itemVerticalPadding = 0,
    .scrollMultiple = 1,
    .fontId = FONT_2,
    .cursorKind = 0
};

static const struct UnionGnameUnamePair sUnionGnameUnamePair_Dummy = {};



__attribute__((aligned(4))) static const u8 gUnknown_845704C[] = {
    1,
    0xFF
};

__attribute__((aligned(4))) static const u8 gUnknown_8457050[] = {
    2,
    0xFF
};

__attribute__((aligned(4))) static const u8 gUnknown_8457054[] = {
    3,
    0xFF
};

__attribute__((aligned(4))) static const u8 gUnknown_8457058[] = {
    4,
    0xFF
};

__attribute__((aligned(4))) static const u8 gUnknown_845705C[] = {
    9,
    0xFF
};

__attribute__((aligned(4))) static const u8 gUnknown_8457060[] = {
    10,
    0xFF
};

__attribute__((aligned(4))) static const u8 gUnknown_8457064[] = {
    11,
    0xFF
};

__attribute__((aligned(4))) static const u8 gUnknown_8457068[] = {
    21,
    0xFF
};

__attribute__((aligned(4))) static const u8 gUnknown_845706C[] = {
    22,
    0xFF
};

__attribute__((aligned(4))) static const u8 gUnknown_8457070[] = {
    0 | 0x40,
    1 | 0x40,
    4 | 0x40,
    5 | 0x40,
    8 | 0x40,
    17 | 0x40,
    18 | 0x40,
    19 | 0x40,
    20 | 0x40,
    0xFF
};

__attribute__((aligned(4))) static const u8 gUnknown_845707C[] = {
    12,
    0xFF
};

__attribute__((aligned(4))) static const u8 gUnknown_8457080[] = {
    1,
    2,
    3,
    4,
    9,
    10,
    11,
    21,
    22,
    13,
    0xFF
};

__attribute__((aligned(4))) static const u8 gUnknown_845708C[] = {
    1,
    2,
    3,
    4,
    10,
    0xFF
};

static const u8 *const sAcceptedActivityIds[] = {
    [0] = gUnknown_845704C,
    [1] = gUnknown_8457050,
    [2] = gUnknown_8457054,
    [3] = gUnknown_8457058,
    [4] = gUnknown_845705C,
    [5] = gUnknown_8457060,
    [6] = gUnknown_8457064,
    [7] = gUnknown_8457068,
    [8] = gUnknown_845706C,
    [9] = gUnknown_8457070,
    [10] = gUnknown_845707C,
    [11] = gUnknown_8457080,
    [12] = gUnknown_845708C
};

static const u8 sLinkGroupToURoomActivity[] = {
    [0] = 1,
    [1] = 2,
    [2] = 3,
    [3] = 4,
    [4] = 9,
    [5] = 10,
    [6] = 11,
    [7] = 21,
    [8] = 22
};

static const u8 sUnref_84570D1[] = _("{DYNAMIC 00}·{DYNAMIC 01}");
# 670 "src/union_room.c"
static void PrintNumPlayersWaitingForMsg(u8 windowId, u8 capacityCode, u8 count)
{
    FillWindowPixelBuffer(windowId, ((1) | ((1) << 4)));
    switch (capacityCode << 8)
    {
    case 0x200:
        UR_AddTextPrinterParameterized(windowId, 2, gTexts_UR_PlayersNeededOrMode[0][count - 1], 0, 2, 0);
        break;
    case 0x400:
        UR_AddTextPrinterParameterized(windowId, 2, gTexts_UR_PlayersNeededOrMode[1][count - 1], 0, 2, 0);
        break;
    case 0x2500:
        UR_AddTextPrinterParameterized(windowId, 2, gTexts_UR_PlayersNeededOrMode[2][count - 1], 0, 2, 0);
        break;
    case 0x3500:
        UR_AddTextPrinterParameterized(windowId, 2, gTexts_UR_PlayersNeededOrMode[3][count - 1], 0, 2, 0);
        break;
    }

    CopyWindowToVram(windowId, COPYWIN_GFX);
}

static void PrintPlayerNameAndIdOnWindow(u8 windowId)
{
    u8 text[12];
    u8 text2[12];

    UR_AddTextPrinterParameterized(windowId, 2, gSaveBlock2Ptr->playerName, 0, 2, 0);
    StringCopy(text2, gText_UR_ID);
    ConvertIntToDecimalStringN(text, ReadAsU16(gSaveBlock2Ptr->playerTrainerId), STR_CONV_MODE_LEADING_ZEROS, 5);
    StringAppend(text2, text);
    UR_AddTextPrinterParameterized(windowId, 0, text2, 0, 0x10, 0);
}

static void StringExpandPlaceholders_AwaitingCommFromAnother(u8 *dst, u8 caseId)
{
    switch (caseId)
    {
    case 1:
    case 2:
    case 3:
    case 4:
    case 9:
    case 10:
    case 11:
    case 21:
    case 22:

        StringExpandPlaceholders(gStringVar4, gText_UR_AwaitingCommunication);
        break;
    }
}

void TryBecomeLinkLeader(void)
{
    u8 taskId;
    struct UnkStruct_Leader * dataPtr;

    taskId = CreateTask(Task_TryBecomeLinkLeader, 0);
    sUnionRoomMain.leader = dataPtr = (void *)(gTasks[taskId].data);
    sLeader = dataPtr;

    dataPtr->state = 0;
    dataPtr->textState = 0;
    gSpecialVar_Result = 0;
}

static void Task_TryBecomeLinkLeader(u8 taskId)
{
    u32 id, val;
    struct UnkStruct_Leader * data = sUnionRoomMain.leader;

    switch (data->state)
    {
    case 0:
        sPlayerCurrActivity = sLinkGroupToActivityAndCapacity[gSpecialVar_0x8004];
        sPlayerActivityGroupSize = sLinkGroupToActivityAndCapacity[gSpecialVar_0x8004] >> 8;
        SetHostRFUtgtGname(sPlayerCurrActivity, 0, 0);
        SetWirelessCommType1();
        OpenLink();
        InitializeRfuLinkManager_LinkLeader(sPlayerActivityGroupSize & 0xF);
        data->state = 3;
        break;
    case 3:
        data->field_4 = AllocZeroed(4 * sizeof(struct UnkStruct_x1C));
        data->field_0 = AllocZeroed(5 * sizeof(struct UnkStruct_x20));
        data->field_8 = AllocZeroed(5 * sizeof(struct UnkStruct_x20));
        BlankUnkStruct_x1CArray(data->field_4->arr, 4);
        BlankUnkStruct_x20Array(data->field_0->arr, 5);
        LinkRfu3_SetGnameUnameFromStaticBuffers(&data->field_0->arr[0].gname_uname.gname, data->field_0->arr[0].gname_uname.uname);
        data->field_0->arr[0].field_18 = 0;
        data->field_0->arr[0].groupScheduledAnim = 1;
        data->field_0->arr[0].field_1A_1 = 0;
        data->field_0->arr[0].field_1B = 0;
        data->listenTaskId = CreateTask_ListenForPartnersWithCompatibleSerialNos(data->field_4, 0xFF);
        data->bButtonCancelWindowId = AddWindow(&sWindowTemplate_BButtonCancel);
        data->listWindowId = AddWindow(&sWindowTemplate_List_PossibleGroupMembers);
        data->nPlayerModeWindowId = AddWindow(&sWindowTemplate_NumPlayerMode);

        FillWindowPixelBuffer(data->bButtonCancelWindowId, ((2) | ((2) << 4)));
        UR_AddTextPrinterParameterized(data->bButtonCancelWindowId, 0, gText_UR_BButtonCancel, 8, 2, 4);
        PutWindowTilemap(data->bButtonCancelWindowId);
        CopyWindowToVram(data->bButtonCancelWindowId, COPYWIN_GFX);

        DrawStdWindowFrame(data->listWindowId, 0);
        gMultiuseListMenuTemplate = sListMenuTemplate_PossibleGroupMembers;
        gMultiuseListMenuTemplate.windowId = data->listWindowId;
        data->listTaskId = ListMenuInit(&gMultiuseListMenuTemplate, 0, 0);

        DrawStdWindowFrame(data->nPlayerModeWindowId, 0);
        PutWindowTilemap(data->nPlayerModeWindowId);
        CopyWindowToVram(data->nPlayerModeWindowId, COPYWIN_GFX);

        CopyBgTilemapBufferToVram(0);
        data->playerCount = 1;
        data->state = 4;
        break;
    case 4:
        StringCopy(gStringVar1, sUnionRoomActivityStringPtrs[sPlayerCurrActivity]);
        if ((sPlayerActivityGroupSize >> 4) != 0)
        {
            if (data->playerCount > (sPlayerActivityGroupSize >> 4) - 1 && (sPlayerActivityGroupSize & 0xF) != 0)
                StringExpandPlaceholders(gStringVar4, gText_UR_AwaitingLinkPressStart);
            else
                StringExpandPlaceholders(gStringVar4, gText_UR_AwaitingCommunication);
        }
        else
        {
            StringExpandPlaceholders_AwaitingCommFromAnother(gStringVar4, sPlayerCurrActivity);
        }

        PrintNumPlayersWaitingForMsg(data->nPlayerModeWindowId, sPlayerActivityGroupSize, data->playerCount);
        data->state = 5;
        break;
    case 5:
        if (PrintOnTextbox(&data->textState, gStringVar4))
            data->state = 6;
        break;
    case 6:
        Leader_SetStateIfMemberListChanged(data, 7, 10);
        if (({(gMain.newKeys) & (0x0002);}))
        {
            if (data->playerCount == 1)
                data->state = 23;
            else if ((sPlayerActivityGroupSize & 0xF0) != 0)
                data->state = 30;
            else
                data->state = 19;
        }
        if ((sPlayerActivityGroupSize >> 4) != 0
            && data->playerCount > (sPlayerActivityGroupSize >> 4) - 1
            && (sPlayerActivityGroupSize & 0xF) != 0
            && sub_80FC1CC()
            && ({(gMain.newKeys) & (0x0008);}))
        {
            data->state = 15;
            LinkRfu_StopManagerAndFinalizeSlots();
        }
        if (data->state == 6 && sub_80FA5D4())
        {
            data->state = 9;
        }
        break;
    case 9:
        if (!sub_80FA5D4())
        {
            data->state = 6;
            data->playerCount = UnionRoomLeaderField0CompactionAndCount(data->field_0);
        }
        break;
    case 10:
        id = ((sPlayerCurrActivity & 0xF) == 2) ? 1 : 0;
        if (PrintOnTextbox(&data->textState, gTexts_UR_PlayerUnavailable[id]))
        {
            data->playerCount = UnionRoomLeaderField0CompactionAndCount(data->field_0);
            RedrawListMenu(data->listTaskId);
            data->state = 4;
        }
        break;
    case 29:

        id = ((sPlayerActivityGroupSize & 0xF) == 2) ? 0 : 1;
        if (PrintOnTextbox(&data->textState, gTexts_UR_PlayerUnavailable[id]))
        {
            data->state = 21;
        }
        break;
    case 7:
        if (PrintOnTextbox(&data->textState, gStringVar4))
        {
            data->state = 11;
        }
        break;
    case 11:
        switch (UnionRoomHandleYesNo(&data->textState, CheckTrainerHasLeftByIdAndName(
            ReadAsU16(data->field_0->arr[data->playerCount].gname_uname.gname.unk_00.playerTrainerId),
            data->field_0->arr[data->playerCount].gname_uname.uname)))
        {
        case 0:
            LoadWirelessStatusIndicatorSpriteGfx();
            CreateWirelessStatusIndicatorSprite(0, 0);
            data->field_19 = 5;
            SendByteToPartnerByIdAndName(5, ReadAsU16(data->field_0->arr[data->playerCount].gname_uname.gname.unk_00.playerTrainerId), data->field_0->arr[data->playerCount].gname_uname.uname);
            data->state = 12;
            break;
        case 1:
        case -1:
            data->field_19 = 6;
            SendByteToPartnerByIdAndName(6, ReadAsU16(data->field_0->arr[data->playerCount].gname_uname.gname.unk_00.playerTrainerId), data->field_0->arr[data->playerCount].gname_uname.uname);
            data->state = 12;
            break;
        case -3:
            data->state = 9;
            break;
        }
        break;
    case 12:
        val = WaitSendByteToPartnerByIdAndName(ReadAsU16(data->field_0->arr[data->playerCount].gname_uname.gname.unk_00.playerTrainerId), data->field_0->arr[data->playerCount].gname_uname.uname);
        if (val == 1)
        {

            if (data->field_19 == 5)
            {

                data->field_0->arr[data->playerCount].field_1B = 0;
                RedrawListMenu(data->listTaskId);
                data->playerCount++;
                if (data->playerCount == (sPlayerActivityGroupSize & 0xF))
                {
                    if ((sPlayerActivityGroupSize & 0xF0) != 0 || data->playerCount == 4)
                    {
                        data->state = 15;
                    }
                    else
                    {
                        ({ StringCopy_PlayerName(gStringVar1, (data->field_0->arr[data->playerCount - 1]).gname_uname.uname); ConvertInternationalString(gStringVar1, (data->field_0->arr[data->playerCount - 1]).gname_uname.gname.unk_00.language); });
                        StringExpandPlaceholders(gStringVar4, gText_UR_AnOKWasSentToPlayer);
                        data->state = 13;
                    }

                    LinkRfu_StopManagerAndFinalizeSlots();
                    PrintNumPlayersWaitingForMsg(data->nPlayerModeWindowId, sPlayerActivityGroupSize, data->playerCount);
                }
                else
                {
                    data->state = 4;
                }
            }
            else
            {

                RequestDisconnectSlotByTrainerNameAndId(data->field_0->arr[data->playerCount].gname_uname.uname, ReadAsU16(data->field_0->arr[data->playerCount].gname_uname.gname.unk_00.playerTrainerId));
                data->field_0->arr[data->playerCount].groupScheduledAnim = 0;
                UnionRoomLeaderField0CompactionAndCount(data->field_0);
                RedrawListMenu(data->listTaskId);
                data->state = 4;
            }

            data->field_19 = 0;
        }
        else if (val == 2)
        {

            RfuSetStatus(0, 0);
            data->state = 4;
        }
        break;
    case 13:
        if (PrintOnTextbox(&data->textState, gStringVar4))
            data->state = 14;
        break;
    case 14:
        if (++data->delayTimerAfterOk > 120)
            data->state = 17;
        break;
    case 15:
        if (PrintOnTextbox(&data->textState, gText_UR_AreTheseMembersOK))
            data->state = 16;
        break;
    case 16:
        switch (UnionRoomHandleYesNo(&data->textState, 0))
        {
        case 0:

            data->state = 17;
            break;
        case 1:
        case -1:

            if ((sPlayerActivityGroupSize & 0xF0) != 0)
                data->state = 30;
            else
                data->state = 19;
            break;
        }
        break;
    case 19:
        if (PrintOnTextbox(&data->textState, gText_UR_CancelModeWithTheseMembers))
            data->state = 20;
        break;
    case 20:
        switch (UnionRoomHandleYesNo(&data->textState, 0))
        {
        case 0:
            data->state = 23;
            break;
        case 1:
        case -1:
            if ((sPlayerActivityGroupSize & 0xF0) != 0)
                data->state = 15;
            else if (data->playerCount == (sPlayerActivityGroupSize & 0xF))
                data->state = 15;
            else
                data->state = 4;
            break;
        }
        break;
    case 17:


        if (!Leader_SetStateIfMemberListChanged(data, 7, 23))
            data->state = 18;
        break;
    case 18:
        if (LmanAcceptSlotFlagIsNotZero())
        {
            if (WaitRfuState(0))
            {
                data->state = 26;
            }
        }
        else
        {
            data->state = 29;
            data->textState = 0;
        }
        break;
    case 30:
        if (PrintOnTextbox(&data->textState, gText_UR_ModeWithTheseMembersWillBeCanceled))
            data->state = 23;
        break;
    case 21:
    case 23:

        DestroyWirelessStatusIndicatorSprite();
        LinkRfu_Shutdown();
        Leader_DestroyResources(data);
        data->state++;
        break;
    case 24:
        ScriptContext_Enable();
        DestroyTask(taskId);
        gSpecialVar_Result = 5;
        break;
    case 22:
        ScriptContext_Enable();
        DestroyTask(taskId);
        gSpecialVar_Result = 8;
        break;
    case 26:
        if (RfuHasErrored())
        {
            data->state = 29;
        }
        else
        {
            if (gReceivedRemoteLinkPlayers)
            {
                UpdateGameData_GroupLockedIn(1);
                CreateTask_RunScriptAndFadeToActivity();
                Leader_DestroyResources(data);
                DestroyTask(taskId);
            }
        }
        break;
    }
}

static void Leader_DestroyResources(struct UnkStruct_Leader * data)
{
    ClearWindowTilemap(data->nPlayerModeWindowId);
    ClearStdWindowAndFrame(data->nPlayerModeWindowId, 0);
    DestroyListMenuTask(data->listTaskId, 0, 0);
    ClearWindowTilemap(data->bButtonCancelWindowId);
    ClearStdWindowAndFrame(data->listWindowId, 0);
    CopyBgTilemapBufferToVram(0);
    RemoveWindow(data->nPlayerModeWindowId);
    RemoveWindow(data->listWindowId);
    RemoveWindow(data->bButtonCancelWindowId);
    DestroyTask(data->listenTaskId);

    Free(data->field_8);
    Free(data->field_0);
    Free(data->field_4);
}

static void Leader_GetAcceptNewMemberPrompt(u8 *dst, u8 activity)
{
    switch (activity)
    {
    case 1:
    case 2:
    case 4:
        StringExpandPlaceholders(dst, gText_UR_PlayerContactedYouForXAccept);
        break;
    case 21:
    case 22:
        StringExpandPlaceholders(dst, gText_UR_PlayerContactedYouShareX);
        break;
    case 3:
    case 9:
    case 10:
    case 11:
        StringExpandPlaceholders(dst, gText_UR_PlayerContactedYouAddToMembers);
        break;
    }
}

static void GetYouDeclinedTheOfferMessage(u8 *dst, u8 activity)
{
    switch (activity)
    {
    case 1 | 0x40:
    case 4 | 0x40:
        StringExpandPlaceholders(dst, gText_UR_OfferDeclined1);
        break;
    case 5 | 0x40:
    case 8 | 0x40:
        StringExpandPlaceholders(dst, gText_UR_OfferDeclined2);
        break;
    }
}

static void GetYouAskedToJoinGroupPleaseWaitMessage(u8 *dst, u8 activity)
{
    switch (activity)
    {
    case 1:
    case 2:
    case 4:
    case 21:
    case 22:
        StringExpandPlaceholders(dst, gText_UR_AwaitingPlayersResponse);
        break;
    case 3:
    case 9:
    case 10:
    case 11:
        StringExpandPlaceholders(dst, gText_UR_PlayerHasBeenAskedToRegisterYouPleaseWait);
        break;
    }
}

static void GetGroupLeaderSentAnOKMessage(u8 *dst, u8 caseId)
{
    switch (caseId)
    {
    case 1:
    case 2:
    case 4:
    case 21:
    case 22:
        StringExpandPlaceholders(dst, gText_UR_PlayerSentBackOK);
        break;
    case 3:
    case 9:
    case 10:
    case 11:
        StringExpandPlaceholders(dst, gText_UR_PlayerOKdRegistration);
        break;
    }
}

static bool8 Leader_SetStateIfMemberListChanged(struct UnkStruct_Leader * data, u32 state1, u32 state2)
{
    switch (LeaderUpdateGroupMembership(data->field_0))
    {
    case 1:
        PlaySE(2);
        RedrawListMenu(data->listTaskId);
        ({ StringCopy_PlayerName(gStringVar2, (data->field_0->arr[data->playerCount]).gname_uname.uname); ConvertInternationalString(gStringVar2, (data->field_0->arr[data->playerCount]).gname_uname.gname.unk_00.language); });
        Leader_GetAcceptNewMemberPrompt(gStringVar4, sPlayerCurrActivity);
        data->state = state1;
        break;
    case 2:
        RfuSetStatus(0, 0);
        RedrawListMenu(data->listTaskId);
        data->state = state2;
        return 1;
    }

    return 0;
}

static void ItemPrintFunc_PossibleGroupMembers(u8 windowId, u32 itemId, u8 y)
{
    struct UnkStruct_Leader * data = sUnionRoomMain.leader;
    u8 var = 0;

    switch (data->field_0->arr[itemId].groupScheduledAnim)
    {
    case 1:
        if (data->field_0->arr[itemId].field_1B != 0)
            var = 2;
        break;
    case 2:
        var = 1;
        break;
    }

    PrintGroupMemberCandidateOnWindowWithColor(windowId, 0, y, &data->field_0->arr[itemId], var, itemId);
}

static u8 LeaderUpdateGroupMembership(struct UnkStruct_Main0 * arg0)
{
    struct UnkStruct_Leader * data = sUnionRoomMain.leader;
    u8 ret = 0;
    u8 i;
    s32 id;

    for (i = 1; i < 5; i++)
    {
        u16 var = data->field_0->arr[i].groupScheduledAnim;
        if (var == 1)
        {
            id = Findx20Inx1CArray(&data->field_0->arr[i], data->field_4->arr);
            if (id != 0xFF)
            {
                data->field_0->arr[i].gname_uname = data->field_4->arr[id].gname_uname;
                data->field_0->arr[i].field_18 = 1;
            }
            else
            {
                data->field_0->arr[i].groupScheduledAnim = 2;
                ret = 2;
            }
        }
    }

    for (id = 0; id < 4; id++)
        Appendx1Ctox20(data->field_0->arr, &data->field_4->arr[id], 5);

    if (ret != 2)
    {
        for (id = 0; id < 5; id++)
        {
            if (data->field_0->arr[id].field_1B != 0)
                ret = 1;
        }
    }

    return ret;
}

static u8 UnionRoomLeaderField0CompactionAndCount(struct UnkStruct_Main0 * arg0)
{
    struct UnkStruct_Leader * data = sUnionRoomMain.leader;
    u8 copiedCount;
    s32 i;
    u8 ret;

    for (i = 0; i < 5; i++)
        data->field_8->arr[i] = data->field_0->arr[i];

    copiedCount = 0;
    for (i = 0; i < 5; i++)
    {
        if (data->field_8->arr[i].groupScheduledAnim == 1)
        {
            data->field_0->arr[copiedCount] = data->field_8->arr[i];
            copiedCount++;
        }
    }

    ret = copiedCount;
    for (; copiedCount < 5; copiedCount++)
    {
        data->field_0->arr[copiedCount].gname_uname = sUnionGnameUnamePair_Dummy;
        data->field_0->arr[copiedCount].field_18 = 0;
        data->field_0->arr[copiedCount].groupScheduledAnim = 0;
        data->field_0->arr[copiedCount].field_1A_1 = 0;
        data->field_0->arr[copiedCount].field_1B = 0;
    }

    for (i = 0; i < 5; i++)
    {
        if (data->field_0->arr[i].groupScheduledAnim != 1)
            continue;
        if (data->field_0->arr[i].field_1B != 0x40)
            continue;

        ret = i;
        break;
    }

    return ret;
}

void TryJoinLinkGroup(void)
{
    u8 taskId;
    struct UnkStruct_Group * dataPtr;

    taskId = CreateTask(Task_TryJoinLinkGroup, 0);
    sUnionRoomMain.group = dataPtr = (void *)(gTasks[taskId].data);
    sGroup = dataPtr;

    dataPtr->state = 0;
    dataPtr->textState = 0;
    gSpecialVar_Result = 0;
}

static void Task_TryJoinLinkGroup(u8 taskId)
{
    s32 id;
    struct UnkStruct_Group * data = sUnionRoomMain.group;

    switch (data->state)
    {
    case 0:
        SetHostRFUtgtGname(sLinkGroupToURoomActivity[gSpecialVar_0x8004], 0, 0);
        sPlayerCurrActivity = sLinkGroupToURoomActivity[gSpecialVar_0x8004];
        SetWirelessCommType1();
        OpenLink();
        InitializeRfuLinkManager_JoinGroup();
        data->field_4 = AllocZeroed(4 * sizeof(struct UnkStruct_x1C));
        data->field_0 = AllocZeroed(16 * sizeof(struct UnkStruct_x20));
        data->state = 1;
        break;
    case 1:
        if (PrintOnTextbox(&data->textState, gTexts_UR_ChooseTrainer[gSpecialVar_0x8004]))
            data->state = 2;
        break;
    case 2:
        BlankUnkStruct_x1CArray(data->field_4->arr, 4);
        BlankUnkStruct_x20Array(data->field_0->arr, 16);
        data->listenTaskId = CreateTask_ListenForPartnersWithCompatibleSerialNos(data->field_4, gSpecialVar_0x8004);
        data->bButtonCancelWindowId = AddWindow(&sWindowTemplate_BButtonCancel);
        data->listWindowId = AddWindow(&sWindowTemplate_MysteryGiftList);
        data->playerNameAndIdWindowId = AddWindow(&sWindowTemplate_MysteryGiftPlayerNameAndId);

        FillWindowPixelBuffer(data->bButtonCancelWindowId, ((2) | ((2) << 4)));
        UR_AddTextPrinterParameterized(data->bButtonCancelWindowId, 0, gText_UR_ChooseJoinCancel, 8, 2, 4);
        PutWindowTilemap(data->bButtonCancelWindowId);
        CopyWindowToVram(data->bButtonCancelWindowId, COPYWIN_GFX);

        DrawStdWindowFrame(data->listWindowId, 0);
        gMultiuseListMenuTemplate = sListMenuTemplate_UnionRoomGroups;
        gMultiuseListMenuTemplate.windowId = data->listWindowId;
        data->listTaskId = ListMenuInit(&gMultiuseListMenuTemplate, 0, 0);

        DrawStdWindowFrame(data->playerNameAndIdWindowId, 0);
        PutWindowTilemap(data->playerNameAndIdWindowId);
        PrintPlayerNameAndIdOnWindow(data->playerNameAndIdWindowId);
        CopyWindowToVram(data->playerNameAndIdWindowId, COPYWIN_GFX);

        CopyBgTilemapBufferToVram(0);
        data->leaderId = 0;
        data->state = 3;
        break;
    case 3:
        id = GetNewLeaderCandidate();
        switch (id)
        {
        case 1:
            PlaySE(2);
            RedrawListMenu(data->listTaskId);
            break;
        case 0:
            id = ListMenu_ProcessInput(data->listTaskId);
            if (({(gMain.newKeys) & (0x0001);}) && id != -1)
            {

                u32 unusedVar;
                unusedVar = data->field_0->arr[id].gname_uname.gname.activity;

                if (data->field_0->arr[id].groupScheduledAnim == 1 && !data->field_0->arr[id].gname_uname.gname.started)
                {
                    u32 var = IsTryingToTradeWithHoennTooSoon(data, id);
                    if (var == 0)
                    {
                        AskToJoinRfuGroup(data, id);
                        data->state = 5;
                        PlaySE(103);
                    }
                    else
                    {

                        StringCopy(gStringVar4, gTexts_UR_CantTransmitToTrainer[var - 1]);
                        data->state = 18;
                        PlaySE(103);
                    }
                }
                else
                {
                    PlaySE(7);
                }
            }
            else if (({(gMain.newKeys) & (0x0002);}))
            {
                data->state = 10;
            }
            break;
        default:
            RedrawListMenu(data->listTaskId);
            break;
        }
        break;
    case 5:
        GetYouAskedToJoinGroupPleaseWaitMessage(gStringVar4, sPlayerCurrActivity);
        if (PrintOnTextbox(&data->textState, gStringVar4))
        {
            ({ StringCopy_PlayerName(gStringVar1, (data->field_0->arr[data->leaderId]).gname_uname.uname); ConvertInternationalString(gStringVar1, (data->field_0->arr[data->leaderId]).gname_uname.gname.unk_00.language); });
            data->state = 6;
        }
        break;
    case 6:
        if (gReceivedRemoteLinkPlayers)
        {
            sPlayerCurrActivity = data->field_0->arr[data->leaderId].gname_uname.gname.activity;
            RfuSetStatus(0, 0);
            switch (sPlayerCurrActivity)
            {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
            case 21:
            case 22:
                data->state = 20;
                break;
            }
        }

        switch (RfuGetStatus())
        {
        case 1:
            data->state = 12;
            break;
        case 2:
        case 6:
        case 9:
            data->state = 14;
            break;
        case 5:
            GetGroupLeaderSentAnOKMessage(gStringVar4, sPlayerCurrActivity);
            if (PrintOnTextbox(&data->textState, gStringVar4))
            {
                RfuSetStatus(7, 0);
                StringCopy(gStringVar1, sUnionRoomActivityStringPtrs[sPlayerCurrActivity]);
                StringExpandPlaceholders(gStringVar4, gText_UR_AwaitingOtherMembers);
            }
            break;
        case 7:

            if (data->delayBeforePrint > 240)
            {
                if (PrintOnTextbox(&data->textState, gStringVar4))
                {
                    RfuSetStatus(12, 0);
                    data->delayBeforePrint = 0;
                }
            }
            else
            {
                data->delayBeforePrint++;
            }
            break;
        }

        if (!RfuGetStatus() && ({(gMain.newKeys) & (0x0002);}))
            data->state = 7;
        break;
    case 7:
        if (PrintOnTextbox(&data->textState, gText_UR_QuitBeingMember))
            data->state = 8;
        break;
    case 8:
        switch (UnionRoomHandleYesNo(&data->textState, RfuGetStatus()))
        {
        case 0:
            SendLeaveGroupNotice();
            data->state = 9;
            RedrawListMenu(data->listTaskId);
            break;
        case 1:
        case -1:
            data->state = 5;
            RedrawListMenu(data->listTaskId);
            break;
        case -3:
            data->state = 6;
            RedrawListMenu(data->listTaskId);
            break;
        }
        break;
    case 9:
        if (RfuGetStatus())
            data->state = 6;
        break;
    case 10:
    case 12:
    case 14:
    case 18:
    case 20:
        ClearWindowTilemap(data->playerNameAndIdWindowId);
        ClearStdWindowAndFrame(data->playerNameAndIdWindowId, 0);
        DestroyListMenuTask(data->listTaskId, 0, 0);
        ClearWindowTilemap(data->bButtonCancelWindowId);
        ClearStdWindowAndFrame(data->listWindowId, 0);
        CopyBgTilemapBufferToVram(0);
        RemoveWindow(data->playerNameAndIdWindowId);
        RemoveWindow(data->listWindowId);
        RemoveWindow(data->bButtonCancelWindowId);
        DestroyTask(data->listenTaskId);
        Free(data->field_0);
        Free(data->field_4);
        data->state++;
        break;
    case 13:
        DestroyWirelessStatusIndicatorSprite();
        if (PrintOnTextbox(&data->textState, gTexts_UR_PlayerDisconnected[RfuGetStatus()]))
        {
            gSpecialVar_Result = 6;
            data->state = 23;
        }
        break;
    case 11:
        DestroyWirelessStatusIndicatorSprite();
        gSpecialVar_Result = 5;
        data->state = 23;
        break;
    case 15:
        DestroyWirelessStatusIndicatorSprite();
        if (PrintOnTextbox(&data->textState, gTexts_UR_PlayerDisconnected[RfuGetStatus()]))
        {
            gSpecialVar_Result = 8;
            data->state = 23;
        }
        break;
    case 19:
        if (PrintOnTextbox(&data->textState, gStringVar4))
        {
            gSpecialVar_Result = 8;
            data->state = 23;
        }
        break;
    case 23:
        DestroyTask(taskId);
        JoinGroup_BlankBg0AndEnableScriptContexts();
        LinkRfu_Shutdown();
        break;
    case 21:
        CreateTask_RunScriptAndFadeToActivity();
        DestroyTask(taskId);
        break;
    }
}

static u32 IsTryingToTradeWithHoennTooSoon(struct UnkStruct_Group * arg0, s32 id)
{
    struct UnkStruct_x20 * structPtr = &arg0->field_0->arr[id];

    if (sPlayerCurrActivity == 4 && structPtr->gname_uname.gname.unk_00.version != 4 && structPtr->gname_uname.gname.unk_00.version != 5)
    {
        if (!(gSaveBlock2Ptr->specialSaveWarpFlags & (1 << 7)))
            return 1;
        else if (structPtr->gname_uname.gname.unk_00.isChampion)
            return 0;
    }
    else
    {
        return 0;
    }

    return 2;
}

static void AskToJoinRfuGroup(struct UnkStruct_Group * data, s32 id)
{
    data->leaderId = id;
    LoadWirelessStatusIndicatorSpriteGfx();
    CreateWirelessStatusIndicatorSprite(0, 0);
    RedrawListMenu(data->listTaskId);
    ({ StringCopy_PlayerName(gStringVar1, (data->field_0->arr[data->leaderId]).gname_uname.uname); ConvertInternationalString(gStringVar1, (data->field_0->arr[data->leaderId]).gname_uname.gname.unk_00.language); });
    UpdateGameDataWithActivitySpriteGendersFlag(sLinkGroupToURoomActivity[gSpecialVar_0x8004], 0, 1);
    CreateTask_RfuReconnectWithParent(data->field_0->arr[data->leaderId].gname_uname.uname, ReadAsU16(data->field_0->arr[data->leaderId].gname_uname.gname.unk_00.playerTrainerId));
}

u8 CreateTask_ListenToWireless(void)
{
    u8 taskId;
    struct UnkStruct_Group * dataPtr;

    taskId = CreateTask(Task_ListenToWireless, 0);
    sUnionRoomMain.group = dataPtr = (void *)(gTasks[taskId].data);

    dataPtr->state = 0;
    dataPtr->textState = 0;

    sGroup = dataPtr;

    return taskId;
}

static void Task_ListenToWireless(u8 taskId)
{
    struct UnkStruct_Group * data = sUnionRoomMain.group;

    switch (data->state)
    {
    case 0:
        SetHostRFUtgtGname(0, 0, 0);
        SetWirelessCommType1();
        OpenLink();
        InitializeRfuLinkManager_JoinGroup();
        sub_80FB128(1);
        data->field_4 = AllocZeroed(4 * sizeof(struct UnkStruct_x1C));
        data->field_0 = AllocZeroed(16 * sizeof(struct UnkStruct_x20));
        data->state = 2;
        break;
    case 2:
        BlankUnkStruct_x1CArray(data->field_4->arr, 4);
        BlankUnkStruct_x20Array(data->field_0->arr, 16);
        data->listenTaskId = CreateTask_ListenForPartnersWithCompatibleSerialNos(data->field_4, 0xFF);
        data->leaderId = 0;
        data->state = 3;
        break;
    case 3:
        if (GetNewLeaderCandidate() == 1)
            PlaySE(2);
        if (gTasks[taskId].data[15] == 0xFF)
            data->state = 10;
        break;
    case 10:
        DestroyTask(data->listenTaskId);
        Free(data->field_0);
        Free(data->field_4);
        LinkRfu_Shutdown();
        data->state++;
        break;
    case 11:
        LinkRfu_Shutdown();
        DestroyTask(taskId);
        break;
    }
}

static bool32 IsPartnerActivityAcceptable(u32 activity, u32 group)
{
    if (group == 0xFF)
        return 1;


    if (group <= (sizeof(sAcceptedActivityIds) / sizeof((sAcceptedActivityIds)[0])))



    {
        const u8 *bytes = sAcceptedActivityIds[group];

        while ((*(bytes) != 0xFF))
        {
            if ((*bytes) == activity)
                return 1;
            bytes++;
        }
    }

    return 0;
}

static u8 URoomGroupListGetTextColor(struct UnkStruct_Group * data, u32 id)
{
    if (data->field_0->arr[id].groupScheduledAnim == 1)
    {
        if (data->field_0->arr[id].gname_uname.gname.started)
            return 3;
        else if (data->field_0->arr[id].field_1A_1)
            return 1;
        else if (data->field_0->arr[id].field_1B != 0)
            return 2;
    }

    return 0;
}

static void ListMenuItemPrintFunc_UnionRoomGroups(u8 windowId, u32 itemId, u8 y)
{
    struct UnkStruct_Group * data = sUnionRoomMain.group;
    u8 color_idx = URoomGroupListGetTextColor(data, itemId);

    PrintUnionRoomGroupOnWindow(windowId, 8, y, &data->field_0->arr[itemId], color_idx, itemId);
}

static u8 GetNewLeaderCandidate(void)
{
    struct UnkStruct_Group * data = sUnionRoomMain.group;
    u8 ret = 0;
    u8 i;
    s32 id;

    for (i = 0; i < 16; i++)
    {
        if (data->field_0->arr[i].groupScheduledAnim != 0)
        {
            id = Findx20Inx1CArray(&data->field_0->arr[i], data->field_4->arr);
            if (id != 0xFF)
            {
                if (data->field_0->arr[i].groupScheduledAnim == 1)
                {
                    if (AreUnionRoomPlayerGnamesDifferent(&data->field_0->arr[i].gname_uname, &data->field_4->arr[id].gname_uname))
                    {
                        data->field_0->arr[i].gname_uname = data->field_4->arr[id].gname_uname;
                        data->field_0->arr[i].field_1B = 64;
                        ret = 1;
                    }
                    else
                    {
                        if (data->field_0->arr[i].field_1B != 0)
                        {
                            data->field_0->arr[i].field_1B--;
                            if (data->field_0->arr[i].field_1B == 0)
                                ret = 2;
                        }
                    }
                }
                else
                {
                    data->field_0->arr[i].groupScheduledAnim = 1;
                    data->field_0->arr[i].field_1B = 64;
                    ret = 1;
                }

                data->field_0->arr[i].field_18 = 0;
            }
            else
            {
                if (data->field_0->arr[i].groupScheduledAnim != 2)
                {
                    data->field_0->arr[i].field_18++;
                    if (data->field_0->arr[i].field_18 >= 300)
                    {
                        data->field_0->arr[i].groupScheduledAnim = 2;
                        ret = 2;
                    }
                }
            }
        }
    }

    for (id = 0; id < 4; id++)
    {
        if (Appendx1Ctox20(data->field_0->arr, &data->field_4->arr[id], 16) != 0xFF)
            ret = 1;
    }

    return ret;
}

static void Task_CallCB2ReturnFromLinkTrade(u8 taskId)
{
    CB2_ReturnFromLinkTrade();
    DestroyTask(taskId);
}

u8 UnionRoom_CreateTask_CallCB2ReturnFromLinkTrade(void)
{
    u8 taskId = CreateTask(Task_CallCB2ReturnFromLinkTrade, 0);

    return taskId;
}

static void Task_StartUnionRoomTrade(u8 taskId)
{
    u32 monId = GetPartyPositionOfRegisteredMon(&sUnionRoomTrade, GetMultiplayerId());

    switch (gTasks[taskId].data[0])
    {
    case 0:
        gTasks[taskId].data[0]++;
        SendBlock(0, &gPlayerParty[monId], sizeof(struct Pokemon));
        break;
    case 1:
        if (GetBlockReceivedStatus() == 3)
        {
            gEnemyParty[0] = *(struct Pokemon *)(gBlockRecvBuffer[GetMultiplayerId() ^ 1]);
            IncrementGameStat(50);
            ResetBlockReceivedFlags();
            gTasks[taskId].data[0]++;
        }
        break;
    case 2:
        memcpy(gBlockSendBuffer, gSaveBlock1Ptr->mail, sizeof(struct Mail) * 6 + 4);
        if (SendBlock(0, gBlockSendBuffer, sizeof(struct Mail) * 6 + 4))
            gTasks[taskId].data[0]++;
        break;
    case 3:
        if (GetBlockReceivedStatus() == 3)
        {
            memcpy(gLinkPartnerMail, gBlockRecvBuffer[GetMultiplayerId() ^ 1], sizeof(struct Mail) * 6);
            ResetBlockReceivedFlags();
            gSelectedTradeMonPositions[0] = monId;
            gSelectedTradeMonPositions[1] = 6;
            gMain.savedCallback = CB2_ReturnToField;
            SetMainCallback2(CB2_InitTradeAnim_LinkTrade);
            ResetUnionRoomTrade(&sUnionRoomTrade);
            DestroyTask(taskId);
        }
        break;
    }
}

static void Task_ExchangeCards(u8 taskId)
{
    switch (gTasks[taskId].data[0])
    {
    case 0:
        if (GetMultiplayerId() == 0)
            SendBlockRequest(BLOCK_REQ_SIZE_100);
        gTasks[taskId].data[0]++;
        break;
    case 1:
        if (GetBlockReceivedStatus() == GetLinkPlayerCountAsBitFlags())
        {
            s32 i;
            u16 *recvBuff;

            for (i = 0; i < GetLinkPlayerCount(); i++)
            {
                recvBuff = gBlockRecvBuffer[i];
                ({ (gTrainerCards[i]) = *((struct TrainerCard * )(recvBuff)); (gTrainerCards[i]).version = gLinkPlayers[i].version; });
            }

            if (GetLinkPlayerCount() == 2)
            {
                recvBuff = gBlockRecvBuffer[GetMultiplayerId() ^ 1];
                MEventHandleReceivedWonderCard(recvBuff[sizeof(struct TrainerCard) / 2]);
            }
            else
            {
                ResetReceivedWonderCardFlag();
            }

            ResetBlockReceivedFlags();
            DestroyTask(taskId);
        }
        break;
    }
}

static void CB2_ShowCard(void)
{
    switch (gMain.state)
    {
    case 0:
        CreateTask(Task_ExchangeCards, 5);
        gMain.state++;
        break;
    case 1:
        if (!FuncIsActiveTask(Task_ExchangeCards))
            ShowTrainerCardInLink(GetMultiplayerId() ^ 1, CB2_ReturnToField);
        break;
    }

    RunTasks();
    RunTextPrinters();
    AnimateSprites();
    BuildOamBuffer();
}

void StartUnionRoomBattle(u16 battleFlags)
{
    HealPlayerParty();
    SavePlayerParty();
    LoadPlayerBag();
    gLinkPlayers[0].linkType = 0x2211;
    gLinkPlayers[GetMultiplayerId()].id = GetMultiplayerId();
    gLinkPlayers[GetMultiplayerId() ^ 1].id = GetMultiplayerId() ^ 1;
    gMain.savedCallback = CB2_ReturnFromCableClubBattle;
    gBattleTypeFlags = battleFlags;
    PlayBattleBGM();
}

static void SetCableClubStateAndWarpCurrentMap(u16 linkService, u16 x, u16 y)
{
    VarSet(0x406F, linkService);
    SetWarpDestination(gSaveBlock1Ptr->location.mapGroup, gSaveBlock1Ptr->location.mapNum, -1, x, y);
    SetDynamicWarpWithCoords(0, gSaveBlock1Ptr->location.mapGroup, gSaveBlock1Ptr->location.mapNum, -1, x, y);
    WarpIntoMap();
}

static void SetCableClubStateAndWarpToNewMap(s8 mapGroup, s8 mapNum, s32 x, s32 y, u16 linkService)
{
    gSpecialVar_0x8004 = linkService;
    VarSet(0x406F, linkService);
    gFieldLinkPlayerCount = GetLinkPlayerCount();
    gLocalLinkPlayerId = GetMultiplayerId();
    SetCableClubWarp();
    SetWarpDestination(mapGroup, mapNum, -1, x, y);
    WarpIntoMap();
}

static void CB2_TransitionToCableClub(void)
{
    switch (gMain.state)
    {
    case 0:
        CreateTask(Task_ExchangeCards, 5);
        gMain.state++;
        break;
    case 1:
        if (!FuncIsActiveTask(Task_ExchangeCards))
            SetMainCallback2(CB2_ReturnToFieldCableClub);
        break;
    }

    RunTasks();
    RunTextPrinters();
    AnimateSprites();
    BuildOamBuffer();
}

static void CreateTrainerCardInBuffer(void *dest, bool32 setWonderCard)
{
    TrainerCard_GenerateCardForLinkPlayer((struct TrainerCard * )dest);
    if (setWonderCard)
        *((u16 *)(dest + sizeof(struct TrainerCard))) = GetWonderCardFlagId();
    else
        *((u16 *)(dest + sizeof(struct TrainerCard))) = 0;
}

static void Task_StartActivity(u8 taskId)
{
    ResetReceivedWonderCardFlag();
    switch (sPlayerCurrActivity)
    {
    case 1:
    case 2:
    case 3:
    case 4:
    case 9:
    case 10:
    case 11:
    case 13:
    case 14:
        RecordMixTrainerNames();
        break;
    }

    switch (sPlayerCurrActivity)
    {
    case 1 | 0x40:
    case 17 | 0x40:
        CleanupOverworldWindowsAndTilemaps();
        gMain.savedCallback = CB2_UnionRoomBattle;
        InitChooseMonsForBattle(CHOOSE_MONS_FOR_UNION_ROOM_BATTLE);
        break;
    case 1:
        CleanupOverworldWindowsAndTilemaps();
        CreateTrainerCardInBuffer(gBlockSendBuffer, 1);
        HealPlayerParty();
        SavePlayerParty();
        LoadPlayerBag();
        SetCableClubStateAndWarpToNewMap(((0 | (0 << 8)) >> 8), ((0 | (0 << 8)) & 0xFF), 6, 8, 1);
        SetMainCallback2(CB2_TransitionToCableClub);
        break;
    case 2:
        CleanupOverworldWindowsAndTilemaps();
        HealPlayerParty();
        SavePlayerParty();
        LoadPlayerBag();
        CreateTrainerCardInBuffer(gBlockSendBuffer, 1);
        SetCableClubStateAndWarpToNewMap(((0 | (0 << 8)) >> 8), ((0 | (0 << 8)) & 0xFF), 6, 8, 2);
        SetMainCallback2(CB2_TransitionToCableClub);
        break;
    case 3:
        CleanupOverworldWindowsAndTilemaps();
        HealPlayerParty();
        SavePlayerParty();
        LoadPlayerBag();
        CreateTrainerCardInBuffer(gBlockSendBuffer, 1);
        SetCableClubStateAndWarpToNewMap(((3 | (0 << 8)) >> 8), ((3 | (0 << 8)) & 0xFF), 5, 8, 5);
        SetMainCallback2(CB2_TransitionToCableClub);
        break;
    case 4:
        CreateTrainerCardInBuffer(gBlockSendBuffer, 1);
        CleanupOverworldWindowsAndTilemaps();
        SetCableClubStateAndWarpToNewMap(((1 | (0 << 8)) >> 8), ((1 | (0 << 8)) & 0xFF), 5, 8, 3);
        SetMainCallback2(CB2_TransitionToCableClub);
        break;
    case 4 | 0x40:
        CreateTask(Task_StartUnionRoomTrade, 0);
        break;
    case 5:
    case 5 | 0x40:
        if (GetMultiplayerId() == 0)
        {
            LinkRfu_CreateConnectionAsParent();
        }
        else
        {
            LinkRfu_StopManagerBeforeEnteringChat();
            SetHostRFUtgtGname(5 | 0x40, 0, 1);
        }
        EnterUnionRoomChat();
        break;
    case 8:
    case 8 | 0x40:
        CreateTrainerCardInBuffer(gBlockSendBuffer, 0);
        SetMainCallback2(CB2_ShowCard);
        break;
    case 9:
        SetCableClubStateAndWarpCurrentMap(8, 5, 1);
        StartPokemonJump(GetCursorSelectionMonId(), CB2_LoadMap);
        break;
    case 10:
        SetCableClubStateAndWarpCurrentMap(7, 9, 1);
        StartBerryCrush(CB2_LoadMap);
        break;
    case 11:
        SetCableClubStateAndWarpCurrentMap(8, 5, 1);
        StartDodrioBerryPicking(GetCursorSelectionMonId(), CB2_LoadMap);
        break;
    }

    DestroyTask(taskId);
    gSpecialVar_Result = 1;
    UnlockPlayerFieldControls();
}

static void Task_RunScriptAndFadeToActivity(u8 taskId)
{
    s16 *data = gTasks[taskId].data;
    u16 *sendBuff = (u16 *)(gBlockSendBuffer);

    switch (data[0])
    {
    case 0:
        gSpecialVar_Result = 1;
        ScriptContext_Enable();
        data[0]++;
        break;
    case 1:
        if (!ScriptContext_IsEnabled())
        {
            FadeScreen(1, 0);
            data[0]++;
        }
        break;
    case 2:
        if (!gPaletteFade.active)
        {
            SetLinkStandbyCallback();
            data[0]++;
        }
        break;
    case 3:
        if (IsLinkTaskFinished())
        {
            DestroyTask(taskId);
            CreateTask_StartActivity();
        }
        break;
    }
}

static void CreateTask_RunScriptAndFadeToActivity(void)
{
    CreateTask(Task_RunScriptAndFadeToActivity, 0);
}

static void CreateTask_StartActivity(void)
{
    u8 taskId = CreateTask(Task_StartActivity, 0);
    gTasks[taskId].data[0] = 0;
}

void MEvent_CreateTask_Leader(u32 activity)
{
    u8 taskId;
    struct UnkStruct_Leader * dataPtr;

    taskId = CreateTask(Task_MEvent_Leader, 0);
    sUnionRoomMain.leader = dataPtr = (void *)(gTasks[taskId].data);

    dataPtr->state = 0;
    dataPtr->textState = 0;
    dataPtr->activity = activity;
    gSpecialVar_Result = 0;
}

static void Task_MEvent_Leader(u8 taskId)
{
    struct UnkStruct_Leader * data = sUnionRoomMain.leader;
    struct WindowTemplate winTemplate;
    s32 val;

    switch (data->state)
    {
    case 0:
        sPlayerCurrActivity = data->activity;
        sPlayerActivityGroupSize = 2;
        SetHostRFUtgtGname(data->activity, 0, 0);
        SetGnameBufferWonderFlags(0, 0);
        SetWirelessCommType1();
        OpenLink();
        InitializeRfuLinkManager_LinkLeader(2);
        data->state = 1;
        break;
    case 1:
        data->field_4 = AllocZeroed(4 * sizeof(struct UnkStruct_x1C));
        data->field_0 = AllocZeroed(5 * sizeof(struct UnkStruct_x20));
        data->field_8 = AllocZeroed(5 * sizeof(struct UnkStruct_x20));
        BlankUnkStruct_x1CArray(data->field_4->arr, 4);
        BlankUnkStruct_x20Array(data->field_0->arr, 5);
        LinkRfu3_SetGnameUnameFromStaticBuffers(&data->field_0->arr[0].gname_uname.gname, data->field_0->arr[0].gname_uname.uname);
        data->field_0->arr[0].field_18 = 0;
        data->field_0->arr[0].groupScheduledAnim = 1;
        data->field_0->arr[0].field_1A_1 = 0;
        data->field_0->arr[0].field_1B = 0;
        data->listenTaskId = CreateTask_ListenForPartnersWithCompatibleSerialNos(data->field_4, 0xFF);

        winTemplate = sWindowTemplate_List_PossibleGroupMembers;
        winTemplate.baseBlock = GetMysteryGiftBaseBlock();
        data->listWindowId = AddWindow(&winTemplate);
        MG_DrawTextBorder(data->listWindowId);
        gMultiuseListMenuTemplate = sListMenuTemplate_PossibleGroupMembers;
        gMultiuseListMenuTemplate.windowId = data->listWindowId;
        data->listTaskId = ListMenuInit(&gMultiuseListMenuTemplate, 0, 0);

        CopyBgTilemapBufferToVram(0);
        data->playerCount = 1;
        data->state = 2;
        break;
    case 2:
        StringCopy(gStringVar1, sUnionRoomActivityStringPtrs[sPlayerCurrActivity]);
        StringExpandPlaceholders_AwaitingCommFromAnother(gStringVar4, sPlayerCurrActivity);
        data->state = 3;
        break;
    case 3:
        AddTextPrinterToWindow1(gStringVar4);
        data->state = 4;
        break;
    case 4:
        Leader_SetStateIfMemberListChanged(data, 5, 6);
        if (({(gMain.newKeys) & (0x0002);}))
        {
            data->state = 13;
            DestroyWirelessStatusIndicatorSprite();
        }
        break;
    case 6:
        if (MG_PrintTextOnWindow1AndWaitButton(&data->textState, gText_UR_LinkWithFriendDropped))
        {
            data->playerCount = UnionRoomLeaderField0CompactionAndCount(data->field_0);
            RedrawListMenu(data->listTaskId);
            data->state = 2;
        }
        break;
    case 5:
        data->state = 7;
        break;
    case 7:
        switch (mevent_message_print_and_prompt_yes_no(&data->textState, (u16 *)&data->messageWindowId, 0, gStringVar4))
        {
        case 0:
            LoadWirelessStatusIndicatorSpriteGfx();
            CreateWirelessStatusIndicatorSprite(0, 0);
            data->field_0->arr[data->playerCount].field_1B = 0;
            RedrawListMenu(data->listTaskId);
            data->field_19 = 5;
            SendByteToPartnerByIdAndName(5, ReadAsU16(data->field_0->arr[data->playerCount].gname_uname.gname.unk_00.playerTrainerId), data->field_0->arr[data->playerCount].gname_uname.uname);
            data->state = 8;
            break;
        case 1:
        case -1:
            data->field_19 = 6;
            SendByteToPartnerByIdAndName(6, ReadAsU16(data->field_0->arr[data->playerCount].gname_uname.gname.unk_00.playerTrainerId), data->field_0->arr[data->playerCount].gname_uname.uname);
            data->state = 8;
            break;
        }
        break;
    case 8:
        val = WaitSendByteToPartnerByIdAndName(ReadAsU16(data->field_0->arr[data->playerCount].gname_uname.gname.unk_00.playerTrainerId), data->field_0->arr[data->playerCount].gname_uname.uname);
        if (val == 1)
        {
            if (data->field_19 == 5)
            {
                data->field_0->arr[data->playerCount].field_1B = 0;
                RedrawListMenu(data->listTaskId);
                data->playerCount++;
                ({ StringCopy_PlayerName(gStringVar1, (data->field_0->arr[data->playerCount - 1]).gname_uname.uname); ConvertInternationalString(gStringVar1, (data->field_0->arr[data->playerCount - 1]).gname_uname.gname.unk_00.language); });
                StringExpandPlaceholders(gStringVar4, gText_UR_AnOKWasSentToPlayer);
                data->state = 9;
                LinkRfu_StopManagerAndFinalizeSlots();
            }
            else
            {
                RequestDisconnectSlotByTrainerNameAndId(data->field_0->arr[data->playerCount].gname_uname.uname, ReadAsU16(data->field_0->arr[data->playerCount].gname_uname.gname.unk_00.playerTrainerId));
                data->field_0->arr[data->playerCount].groupScheduledAnim = 0;
                UnionRoomLeaderField0CompactionAndCount(data->field_0);
                RedrawListMenu(data->listTaskId);
                data->state = 2;
            }

            data->field_19 = 0;
        }
        else if (val == 2)
        {
            RfuSetStatus(0, 0);
            data->state = 2;
        }
        break;
    case 9:
        AddTextPrinterToWindow1(gStringVar4);
        data->state = 10;
        break;
    case 10:
        if (++data->delayTimerAfterOk > 120)
            data->state = 11;
        break;
    case 11:
        if (!Leader_SetStateIfMemberListChanged(data, 5, 6))
            data->state = 12;
        break;
    case 12:
        if (LmanAcceptSlotFlagIsNotZero())
        {
            WaitRfuState(0);
            data->state = 15;
        }
        else
        {
            data->state = 6;
        }
        break;
    case 13:
        DestroyWirelessStatusIndicatorSprite();
        LinkRfu_Shutdown();
        DestroyListMenuTask(data->listTaskId, 0, 0);
        CopyBgTilemapBufferToVram(0);
        RemoveWindow(data->listWindowId);
        DestroyTask(data->listenTaskId);
        Free(data->field_8);
        Free(data->field_0);
        Free(data->field_4);
        data->state++;
        break;
    case 14:

        if (MG_PrintTextOnWindow1AndWaitButton(&data->textState, gText_UR_PleaseStartOver))
        {
            DestroyTask(taskId);
            gSpecialVar_Result = 5;
        }
        break;
    case 15:
        if (RfuGetStatus() == 1 || RfuGetStatus() == 2)
        {
            data->state = 13;
        }
        else if (gReceivedRemoteLinkPlayers)
        {
            UpdateGameData_GroupLockedIn(1);
            data->state++;
        }
        break;
    case 16:
        DestroyListMenuTask(data->listTaskId, 0, 0);
        CopyBgTilemapBufferToVram(0);
        RemoveWindow(data->listWindowId);
        DestroyTask(data->listenTaskId);
        Free(data->field_8);
        Free(data->field_0);
        Free(data->field_4);
        SetLinkStandbyCallback();
        data->state++;
        break;
    case 17:
        if (IsLinkTaskFinished())
            DestroyTask(taskId);
        break;
    }
}

void MEvent_CreateTask_CardOrNewsWithFriend(u32 activity)
{
    u8 taskId;
    struct UnkStruct_Group * dataPtr;

    taskId = CreateTask(Task_CardOrNewsWithFriend, 0);
    sUnionRoomMain.group = dataPtr = (void *)(gTasks[taskId].data);
    sGroup = dataPtr;

    dataPtr->state = 0;
    dataPtr->textState = 0;
    dataPtr->cardOrNews = activity - 21;
    gSpecialVar_Result = 0;
}

static void Task_CardOrNewsWithFriend(u8 taskId)
{
    s32 id;
    struct WindowTemplate winTemplate1, winTemplate2;
    struct UnkStruct_Group * data = sUnionRoomMain.group;

    switch (data->state)
    {
    case 0:
        SetHostRFUtgtGname(data->cardOrNews + 21, 0, 0);
        SetWirelessCommType1();
        OpenLink();
        InitializeRfuLinkManager_JoinGroup();
        data->field_4 = AllocZeroed(4 * sizeof(struct UnkStruct_x1C));
        data->field_0 = AllocZeroed(16 * sizeof(struct UnkStruct_x20));
        data->state = 1;
        break;
    case 1:
        AddTextPrinterToWindow1(gText_UR_ChooseTrainer);
        data->state = 2;
        break;
    case 2:
        BlankUnkStruct_x1CArray(data->field_4->arr, 4);
        BlankUnkStruct_x20Array(data->field_0->arr, 16);
        data->listenTaskId = CreateTask_ListenForPartnersWithCompatibleSerialNos(data->field_4, data->cardOrNews + 7);

        winTemplate1 = sWindowTemplate_MysteryGiftList;
        winTemplate1.baseBlock = GetMysteryGiftBaseBlock();
        data->listWindowId = AddWindow(&winTemplate1);

        data->playerNameAndIdWindowId = AddWindow(&sWindowTemplate_MysteryGiftPlayerNameAndId);

        MG_DrawTextBorder(data->listWindowId);
        gMultiuseListMenuTemplate = sListMenuTemplate_UnionRoomGroups;
        gMultiuseListMenuTemplate.windowId = data->listWindowId;
        data->listTaskId = ListMenuInit(&gMultiuseListMenuTemplate, 0, 0);

        MG_DrawTextBorder(data->playerNameAndIdWindowId);
        FillWindowPixelBuffer(data->playerNameAndIdWindowId, ((1) | ((1) << 4)));
        PutWindowTilemap(data->playerNameAndIdWindowId);
        PrintPlayerNameAndIdOnWindow(data->playerNameAndIdWindowId);
        CopyWindowToVram(data->playerNameAndIdWindowId, COPYWIN_GFX);

        CopyBgTilemapBufferToVram(0);
        data->leaderId = 0;
        data->state = 3;
        break;
    case 3:
        id = GetNewLeaderCandidate();
        switch (id)
        {
        case 1:
            PlaySE(2);
        default:
            RedrawListMenu(data->listTaskId);
            break;
        case 0:
            id = ListMenu_ProcessInput(data->listTaskId);
            if (({(gMain.newKeys) & (0x0001);}) && id != -1)
            {

                u32 unusedVar;
                unusedVar = data->field_0->arr[id].gname_uname.gname.activity;

                if (data->field_0->arr[id].groupScheduledAnim == 1 && !data->field_0->arr[id].gname_uname.gname.started)
                {
                    data->leaderId = id;
                    LoadWirelessStatusIndicatorSpriteGfx();
                    CreateWirelessStatusIndicatorSprite(0, 0);
                    RedrawListMenu(data->listTaskId);
                    ({ StringCopy(gStringVar1, (data->field_0->arr[data->leaderId]).gname_uname.uname); ConvertInternationalString(gStringVar1, (data->field_0->arr[data->leaderId]).gname_uname.gname.unk_00.language); });
                    CreateTask_RfuReconnectWithParent(data->field_0->arr[data->leaderId].gname_uname.uname, ReadAsU16(data->field_0->arr[data->leaderId].gname_uname.gname.unk_00.playerTrainerId));
                    PlaySE(103);
                    data->state = 4;
                }
                else
                {
                    PlaySE(7);
                }
            }
            else if (({(gMain.newKeys) & (0x0002);}))
            {
                data->state = 6;
            }
            break;
        }
        break;
    case 4:
        AddTextPrinterToWindow1(gText_UR_AwaitingPlayersResponse);
        ({ StringCopy(gStringVar1, (data->field_0->arr[data->leaderId]).gname_uname.uname); ConvertInternationalString(gStringVar1, (data->field_0->arr[data->leaderId]).gname_uname.gname.unk_00.language); });
        data->state = 5;
        break;
    case 5:
        if (gReceivedRemoteLinkPlayers)
        {
            sPlayerCurrActivity = data->field_0->arr[data->leaderId].gname_uname.gname.activity;
            data->state = 10;
        }

        switch (RfuGetStatus())
        {
        case 1:
        case 2:
        case 6:
            data->state = 8;
            break;
        case 5:
            AddTextPrinterToWindow1(gText_UR_PlayerSentBackOK);
            RfuSetStatus(0, 0);
            break;
        }
        break;
    case 6:
    case 8:
    case 10:
        DestroyListMenuTask(data->listTaskId, 0, 0);
        CopyBgTilemapBufferToVram(0);
        RemoveWindow(data->playerNameAndIdWindowId);
        RemoveWindow(data->listWindowId);
        DestroyTask(data->listenTaskId);
        Free(data->field_0);
        Free(data->field_4);
        data->state++;
        break;
    case 9:
        if (MG_PrintTextOnWindow1AndWaitButton(&data->textState, gTexts_UR_LinkDropped[RfuGetStatus()]))
        {
            DestroyWirelessStatusIndicatorSprite();
            DestroyTask(taskId);
            LinkRfu_Shutdown();
            gSpecialVar_Result = 5;
        }
        break;
    case 7:
        DestroyWirelessStatusIndicatorSprite();
        AddTextPrinterToWindow1(gText_UR_PleaseStartOver);
        DestroyTask(taskId);
        LinkRfu_Shutdown();
        gSpecialVar_Result = 5;
        break;
    case 11:
        data->state++;
        SetLinkStandbyCallback();
        break;
    case 12:
        if (IsLinkTaskFinished())
            DestroyTask(taskId);
        break;
    }
}

void MEvent_CreateTask_CardOrNewsOverWireless(u32 activity)
{
    u8 taskId;
    struct UnkStruct_Group * dataPtr;

    taskId = CreateTask(Task_CardOrNewsOverWireless, 0);
    sUnionRoomMain.group = dataPtr = (void *)(gTasks[taskId].data);
    sGroup = dataPtr;

    dataPtr->state = 0;
    dataPtr->textState = 0;
    dataPtr->cardOrNews = activity - 21;
    gSpecialVar_Result = 0;
}

static void Task_CardOrNewsOverWireless(u8 taskId)
{
    s32 id;
    struct WindowTemplate winTemplate;
    struct UnkStruct_Group * data = sUnionRoomMain.group;

    switch (data->state)
    {
    case 0:
        SetHostRFUtgtGname(0, 0, 0);
        SetWirelessCommType1();
        OpenLink();
        InitializeRfuLinkManager_JoinGroup();
        data->field_4 = AllocZeroed(4 * sizeof(struct UnkStruct_x1C));
        data->field_0 = AllocZeroed(16 * sizeof(struct UnkStruct_x20));
        data->state = 1;
        break;
    case 1:
        AddTextPrinterToWindow1(gText_UR_SearchingForWirelessSystemWait);
        data->state = 2;
        break;
    case 2:
        BlankUnkStruct_x1CArray(data->field_4->arr, 4);
        BlankUnkStruct_x20Array(data->field_0->arr, 16);
        data->listenTaskId = CreateTask_ListenForPartnersWithSerial7F7D(data->field_4, data->cardOrNews + 7);

        if (data->field_13 != 0)
        {
            winTemplate = sWindowTemplate_MysteryGiftList;
            winTemplate.baseBlock = GetMysteryGiftBaseBlock();
            data->listWindowId = AddWindow(&winTemplate);

            MG_DrawTextBorder(data->listWindowId);
            gMultiuseListMenuTemplate = sListMenuTemplate_UnionRoomGroups;
            gMultiuseListMenuTemplate.windowId = data->listWindowId;
            data->listTaskId = ListMenuInit(&gMultiuseListMenuTemplate, 0, 0);

            CopyBgTilemapBufferToVram(0);
        }

        data->leaderId = 0;
        data->state = 3;
        break;
    case 3:
        id = GetNewLeaderCandidate();
        switch (id)
        {
        case 1:
            PlaySE(2);
        default:
            if (data->field_13 != 0)
                RedrawListMenu(data->listTaskId);
            break;
        case 0:
            if (data->field_13 != 0)
                id = ListMenu_ProcessInput(data->listTaskId);
            if (data->refreshTimer > 120)
            {
                if (data->field_0->arr[0].groupScheduledAnim == 1 && !data->field_0->arr[0].gname_uname.gname.started)
                {
                    if (GetGnameWonderFlagByLinkGroup(&data->field_0->arr[0].gname_uname.gname, data->cardOrNews + 7))
                    {
                        data->leaderId = 0;
                        data->refreshTimer = 0;
                        LoadWirelessStatusIndicatorSpriteGfx();
                        CreateWirelessStatusIndicatorSprite(0, 0);
                        CreateTask_RfuReconnectWithParent(data->field_0->arr[0].gname_uname.uname, ReadAsU16(data->field_0->arr[0].gname_uname.gname.unk_00.playerTrainerId));
                        PlaySE(103);
                        data->state = 4;
                    }
                    else
                    {
                        PlaySE(22);
                        data->state = 10;
                    }
                }
            }
            else if (({(gMain.newKeys) & (0x0002);}))
            {
                data->state = 6;
                data->refreshTimer = 0;
            }
            data->refreshTimer++;
            break;
        }
        break;
    case 4:
        AddTextPrinterToWindow1(gText_UR_AwaitingResponseFromWirelessSystem);
        ({ StringCopy(gStringVar1, (data->field_0->arr[data->leaderId]).gname_uname.uname); ConvertInternationalString(gStringVar1, (data->field_0->arr[data->leaderId]).gname_uname.gname.unk_00.language); });
        data->state = 5;
        break;
    case 5:
        if (gReceivedRemoteLinkPlayers)
        {
            sPlayerCurrActivity = data->field_0->arr[data->leaderId].gname_uname.gname.activity;
            data->state = 12;
        }

        switch (RfuGetStatus())
        {
        case 1:
        case 2:
        case 6:
            data->state = 8;
            break;
        case 5:
            AddTextPrinterToWindow1(gText_UR_WirelessLinkEstablished);
            RfuSetStatus(0, 0);
            break;
        }
        break;
    case 6:
    case 8:
    case 10:
    case 12:
        if (data->field_13 != 0)
        {
            DestroyListMenuTask(data->listTaskId, 0, 0);
            CopyBgTilemapBufferToVram(0);
            RemoveWindow(data->listWindowId);
        }
        DestroyTask(data->listenTaskId);
        Free(data->field_0);
        Free(data->field_4);
        data->state++;
        break;
    case 9:
        if (MG_PrintTextOnWindow1AndWaitButton(&data->textState, gText_UR_WirelessLinkDropped))
        {
            DestroyWirelessStatusIndicatorSprite();
            DestroyTask(taskId);
            LinkRfu_Shutdown();
            gSpecialVar_Result = 5;
        }
        break;
    case 7:
        if (MG_PrintTextOnWindow1AndWaitButton(&data->textState, gText_UR_WirelessSearchCanceled))
        {
            DestroyWirelessStatusIndicatorSprite();
            DestroyTask(taskId);
            LinkRfu_Shutdown();
            gSpecialVar_Result = 5;
        }
        break;
    case 11:
        if (MG_PrintTextOnWindow1AndWaitButton(&data->textState, gTexts_UR_NoWonderShared[data->cardOrNews]))
        {
            DestroyWirelessStatusIndicatorSprite();
            DestroyTask(taskId);
            LinkRfu_Shutdown();
            gSpecialVar_Result = 5;
        }
        break;
    case 13:
        data->state++;
        SetLinkStandbyCallback();
        break;
    case 14:
        if (IsLinkTaskFinished())
            DestroyTask(taskId);
        break;
    }
}

void UnionRoomSpecial(void)
{
    struct UnkStruct_URoom * dataPtr;

    ClearAndInitHostRFUtgtGname();
    CreateTask(Task_RunUnionRoom, 10);


    sUnionRoomMain.uRoom = sUnionRoomMain.uRoom;

    dataPtr = AllocZeroed(sizeof(*sUnionRoomMain.uRoom));
    sUnionRoomMain.uRoom = dataPtr;
    sURoom = dataPtr;

    dataPtr->state = 0;
    dataPtr->textState = 0;
    dataPtr->field_10 = 0;
    dataPtr->field_12 = 0;

    gSpecialVar_Result = 0;
    ListMenuLoadStdPalAt(0xD0, 1);
}

static u16 ReadAsU16(const u8 *ptr)
{
    return (ptr[1] << 8) | (ptr[0]);
}

static void UnionRoom_ScheduleFieldMessageWithFollowupState(u32 nextState, const u8 *src)
{
    struct UnkStruct_URoom * data = sUnionRoomMain.uRoom;

    data->state = 8;
    data->stateAfterPrint = nextState;
    if (src != gStringVar4)
        StringExpandPlaceholders(gStringVar4, src);
}

static void UnionRoom_ScheduleFieldMessageAndExit(const u8 *src)
{
    struct UnkStruct_URoom * data = sUnionRoomMain.uRoom;

    data->state = 26;
    if (src != gStringVar4)
        StringExpandPlaceholders(gStringVar4, src);
}

static void BackUpURoomField0ToDecompressionBuffer(struct UnkStruct_URoom * data)
{
    memcpy(&gDecompressionBuffer[0x3F00], data->field_0, 8 * sizeof(struct UnkStruct_x20));
}

static void RestoreURoomField0FromDecompressionBuffer(struct UnkStruct_URoom * data)
{
    memcpy(data->field_0, &gDecompressionBuffer[0x3F00], 8 * sizeof(struct UnkStruct_x20));
}

static void Task_RunUnionRoom(u8 taskId)
{
    u32 id = 0;
    s32 var5 = 0;
    s32 playerGender = 0;
    struct UnkStruct_URoom * data = sUnionRoomMain.uRoom;
    s16 *taskData = gTasks[taskId].data;

    switch (data->state)
    {
    case 0:
        data->field_4 = AllocZeroed(4 * sizeof(struct UnkStruct_x1C));
        data->field_C = AllocZeroed(4 * sizeof(struct UnkStruct_x1C));
        data->field_0 = AllocZeroed(8 * sizeof(struct UnkStruct_x20));
        data->field_8 = AllocZeroed(sizeof(struct UnkStruct_x20));
        BlankUnkStruct_x20Array(data->field_0->arr, 8);
        sPlayerCurrActivity = 0x40;
        data->field_20 = CreateTask_SearchForChildOrParent(data->field_C, data->field_4, 9);
        ZeroUnionObjWork(data->unionObjs);
        MakeGroupAssemblyAreasPassable();
        data->state = 1;
        break;
    case 1:
        CreateGroupMemberObjectsInvisible(data->spriteIds, taskData[0]);
        if (++taskData[0] == 8)
            data->state = 2;
        break;
    case 2:
        SetHostRFUtgtGname(0x40, 0, 0);
        RfuUpdatePlayerGnameStateAndSend(sUnionRoomTrade.type, sUnionRoomTrade.playerSpecies, sUnionRoomTrade.playerLevel);
        SetWirelessCommType1();
        OpenLink();
        InitializeRfuLinkManager_EnterUnionRoom();
        BlankUnkStruct_x20Array(&data->field_8->arr[0], 1);
        BlankUnkStruct_x1CArray(data->field_4->arr, 4);
        BlankUnkStruct_x1CArray(data->field_C->arr, 4);
        gSpecialVar_Result = 0;
        data->state = 3;
        break;
    case 3:
        if ((GetPartyMenuType() == 8
          || GetPartyMenuType() == 9)
            && sUnionRoomTrade.field_0 != 0)
        {
            id = GetCursorSelectionMonId();
            switch (sUnionRoomTrade.field_0)
            {
            case 1:
                UpdateGameDataWithActivitySpriteGendersFlag(20 | 0x40, 0, 1);
                if (id >= 6)
                {
                    ResetUnionRoomTrade(&sUnionRoomTrade);
                    RfuUpdatePlayerGnameStateAndSend(0, 0, 0);
                    UnionRoom_ScheduleFieldMessageAndExit(gText_UR_RegistrationCanceled);
                }
                else if (!RegisterTradeMonAndGetIsEgg(GetCursorSelectionMonId(), &sUnionRoomTrade))
                {
                    UnionRoom_ScheduleFieldMessageWithFollowupState(52, gText_UR_ChooseRequestedMonType);
                }
                else
                {
                    data->state = 55;
                }
                break;
            case 2:
                RestoreURoomField0FromDecompressionBuffer(data);
                taskData[1] = sUnionRoomTrade.field_8;
                if (id >= 6)
                {
                    UnionRoom_ScheduleFieldMessageAndExit(gText_UR_TradeCanceled);
                }
                else
                {
                    UpdateGameDataWithActivitySpriteGendersFlag(20 | 0x40, 0, 1);
                    sPlayerCurrActivity = 4 | 0x40;
                    RegisterTradeMon(GetCursorSelectionMonId(), &sUnionRoomTrade);
                    data->state = 51;
                }
                break;
            }
            sUnionRoomTrade.field_0 = 0;
        }
        else
        {
            data->state = 4;
        }
        break;
    case 4:
        if (gSpecialVar_Result != 0)
        {
            if (gSpecialVar_Result == 9)
            {
                UpdateGameDataWithActivitySpriteGendersFlag(20 | 0x40, 0, 1);
                PlaySE(2);
                StringCopy(gStringVar1, gSaveBlock2Ptr->playerName);
                data->state = 42;
                gSpecialVar_Result = 0;
            }
            else if (gSpecialVar_Result == 11)
            {
                UpdateGameDataWithActivitySpriteGendersFlag(20 | 0x40, 0, 1);
                data->state = 23;
                gSpecialVar_Result = 0;
            }
            else
            {
                taskData[0] = 0;
                taskData[1] = gSpecialVar_Result - 1;
                data->state = 24;
                gSpecialVar_Result = 0;
            }
        }
        else if (ArePlayerFieldControlsLocked() != 1)
        {
            if (({(gMain.newKeys) & (0x0001);}))
            {
                if (RfuUnionTool_GetGroupAndMemberInFrontOfPlayer(data->field_0, &taskData[0], &taskData[1], data->spriteIds))
                {
                    PlaySE(5);
                    UR_EnableScriptContext2AndFreezeObjectEvents();
                    data->state = 24;
                    break;
                }
                else if (PlayerIsTalkingToUnionRoomAide())
                {
                    UpdateGameDataWithActivitySpriteGendersFlag(20 | 0x40, 0, 1);
                    PlaySE(2);
                    UR_EnableScriptContext2AndFreezeObjectEvents();
                    StringCopy(gStringVar1, gSaveBlock2Ptr->playerName);
                    data->state = 45;
                    break;
                }
            }

            switch (HandlePlayerListUpdate())
            {
            case 1:
                PlaySE(55);
            case 2:
                ScheduleUnionRoomPlayerRefresh(data);
                break;
            case 4:
                data->state = 11;
                UR_EnableScriptContext2AndFreezeObjectEvents();
                RfuUpdatePlayerGnameStateAndSend(0, 0, 0);
                UpdateGameDataWithActivitySpriteGendersFlag(19 | 0x40, GetActivePartnerSpriteGenderParam(data), 0);
                break;
            }
            HandleUnionRoomPlayerRefresh(data);
        }
        break;
    case 23:
        if (!FuncIsActiveTask(Task_StartMenuHandleInput))
        {
            UpdateGameDataWithActivitySpriteGendersFlag(0x40, 0, 0);
            data->state = 4;
        }
        break;
    case 24:
        UR_RunTextPrinters_CheckPrinter0Active();
        playerGender = GetUnionRoomPlayerGender(taskData[1], data->field_0);
        UpdateGameDataWithActivitySpriteGendersFlag(20 | 0x40, 0, 1);
        switch (UnionRoomGetPlayerInteractionResponse(data->field_0, taskData[0], taskData[1], playerGender))
        {
        case 0:
            data->state = 26;
            break;
        case 1:
            sub_80FC114(data->field_0->arr[taskData[1]].gname_uname.uname, &data->field_0->arr[taskData[1]].gname_uname.gname, sPlayerCurrActivity);
            data->field_12 = id;
            data->state = 25;
            break;
        case 2:
            UnionRoom_ScheduleFieldMessageWithFollowupState(19, gStringVar4);
            break;
        }
        break;
    case 25:
        UR_RunTextPrinters_CheckPrinter0Active();
        switch (RfuGetStatus())
        {
        case 4:
            HandleCancelTrade(1);
            data->state = 4;
            break;
        case 1:
        case 2:
            if (IsUnionRoomListenTaskActive() == 1)
                UnionRoom_ScheduleFieldMessageAndExit(gText_UR_TrainerAppearsBusy);
            else
                UnionRoom_ScheduleFieldMessageWithFollowupState(30, gText_UR_TrainerAppearsBusy);

            sPlayerCurrActivity = 0x40;
            break;
        }

        if (gReceivedRemoteLinkPlayers)
        {
            CreateTrainerCardInBuffer(gBlockSendBuffer, 1);
            CreateTask(Task_ExchangeCards, 5);
            data->state = 38;
        }
        break;
    case 38:
        if (!FuncIsActiveTask(Task_ExchangeCards))
        {
            if (sPlayerCurrActivity == (4 | 0x40))
                UnionRoom_ScheduleFieldMessageWithFollowupState(31, gText_UR_AwaitingPlayersResponseAboutTrade);
            else
                data->state = 5;
        }
        break;
    case 30:
        if (!gReceivedRemoteLinkPlayers)
        {
            HandleCancelTrade(0);
            UpdateUnionGroupMemberFacing(taskData[0], taskData[1], data->field_0);
            data->state = 2;
        }
        break;
    case 5:
        id = ConvPartnerUnameAndGetWhetherMetAlready(&data->field_0->arr[taskData[1]]);
        playerGender = GetUnionRoomPlayerGender(taskData[1], data->field_0);
        UnionRoom_ScheduleFieldMessageWithFollowupState(6, gTexts_UR_HiDoSomething[id][playerGender]);
        break;
    case 6:
        var5 = ListMenuHandler_AllItemsAvailable(&data->textState, &data->topListMenuWindowId, &data->topListMenuListMenuId, &sWindowTemplate_InviteToActivity, &sListMenuTemplate_InviteToActivity);
        if (var5 != -1)
        {
            if (!gReceivedRemoteLinkPlayers)
            {
                data->state = 28;
            }
            else
            {
                data->partnerYesNoResponse = 0;
                playerGender = GetUnionRoomPlayerGender(taskData[1], data->field_0);
                if (var5 == -2 || var5 == 0x40)
                {
                    data->playerSendBuffer[0] = 0x40;
                    Rfu_SendPacket(data->playerSendBuffer);
                    StringCopy(gStringVar4, gTexts_UR_IfYouWantToDoSomething[gLinkPlayers[0].gender]);
                    data->state = 32;
                }
                else
                {
                    sPlayerCurrActivity = var5;
                    sPlayerActivityGroupSize = (u32)(var5) >> 8;
                    if (sPlayerCurrActivity == (1 | 0x40) && !HasAtLeastTwoMonsOfLevel30OrLower())
                    {
                        UnionRoom_ScheduleFieldMessageWithFollowupState(5, gText_UR_NeedTwoMonsOfLevel30OrLower1);
                    }
                    else
                    {
                        data->playerSendBuffer[0] = sPlayerCurrActivity | 0x40;
                        Rfu_SendPacket(data->playerSendBuffer);
                        data->state = 27;
                    }
                }
            }
        }
        break;
    case 28:
        StringCopy(gStringVar4, gText_UR_TrainerBattleBusy);
        data->state = 36;
        break;
    case 27:
        PollPartnerYesNoResponse(data);
        playerGender = GetUnionRoomPlayerGender(taskData[1], data->field_0);
        id = GetResponseIdx_InviteToURoomActivity(data->playerSendBuffer[0] & 0x3F);
        if (PrintOnTextbox(&data->textState, gTexts_UR_WaitOrShowCard[playerGender][id]))
        {
            taskData[3] = 0;
            data->state = 29;
        }
        break;
    case 32:
        SetCloseLinkCallback();
        data->state = 36;
        break;
    case 31:
        data->playerSendBuffer[0] = 4 | 0x40;
        data->playerSendBuffer[1] = sUnionRoomTrade.species;
        data->playerSendBuffer[2] = sUnionRoomTrade.level;
        Rfu_SendPacket(data->playerSendBuffer);
        data->state = 29;
        break;
    case 29:
        if (!gReceivedRemoteLinkPlayers)
        {
            StringCopy(gStringVar4, gText_UR_TrainerBattleBusy);
            data->state = 28;
        }
        else
        {
            PollPartnerYesNoResponse(data);
            if (data->partnerYesNoResponse == (17 | 0x40))
            {
                if (sPlayerCurrActivity == 8)
                {
                    ViewURoomPartnerTrainerCard(gStringVar4, data, 0x00);
                    data->state = 40;
                }
                else
                {
                    data->state = 13;
                }
            }
            else if (data->partnerYesNoResponse == (18 | 0x40))
            {
                data->state = 32;
                GetURoomActivityRejectMsg(gStringVar4, sPlayerCurrActivity | 0x40, gLinkPlayers[0].gender);
                sPlayerCurrActivity = 0;
            }
        }
        break;

    case 7:
        id = ConvPartnerUnameAndGetWhetherMetAlready(&data->field_0->arr[taskData[1]]);
        playerGender = GetUnionRoomPlayerGender(taskData[1], data->field_0);
        UnionRoom_ScheduleFieldMessageWithFollowupState(6, gTexts_UR_HiDoSomething[id][playerGender]);
        break;
    case 40:
        if (PrintOnTextbox(&data->textState, gStringVar4))
        {
            data->state = 41;
            SetLinkStandbyCallback();
            data->partnerYesNoResponse = 0;
            data->recvActivityRequest[0] = 0;
        }
        break;
    case 41:
        if (IsLinkTaskFinished())
        {
            if (GetMultiplayerId() == 0)
            {
                StringCopy(gStringVar1, gLinkPlayers[GetMultiplayerId() ^ 1].name);
                id = PlayerHasMetTrainerBefore(gLinkPlayers[1].trainerId, gLinkPlayers[1].name);
                StringExpandPlaceholders(gStringVar4, gTexts_UR_AwaitingResponse[id]);
                data->state = 33;
            }
            else
            {
                data->state = 7;
            }
        }
        break;
    case 19:
        switch (UnionRoomHandleYesNo(&data->textState, 0))
        {
        case 0:
            CopyBgTilemapBufferToVram(0);
            sPlayerCurrActivity = 5 | 0x40;
            UpdateGameDataWithActivitySpriteGendersFlag(5 | 0x40, 0, 1);
            sub_80FC114(data->field_0->arr[taskData[1]].gname_uname.uname, &data->field_0->arr[taskData[1]].gname_uname.gname, sPlayerCurrActivity);
            data->field_12 = taskData[1];
            data->state = 20;
            taskData[3] = 0;
            break;
        case 1:
        case -1:
            playerGender = GetUnionRoomPlayerGender(taskData[1], data->field_0);
            UnionRoom_ScheduleFieldMessageAndExit(gTexts_UR_DeclineChat[playerGender]);
            break;
        }
        break;
    case 20:
        if (++taskData[2] > 60)
        {
            data->state = 21;
            taskData[2] = 0;
        }
        break;
    case 21:
        switch (RfuGetStatus())
        {
        case 4:
            HandleCancelTrade(1);
            data->state = 4;
            break;
        case 1:
        case 2:
            playerGender = GetUnionRoomPlayerGender(taskData[1], data->field_0);
            UpdateGameDataWithActivitySpriteGendersFlag(20 | 0x40, 0, 1);
            if (IsUnionRoomListenTaskActive() == 1)
                UnionRoom_ScheduleFieldMessageAndExit(gTexts_UR_ChatDeclined[playerGender]);
            else
                UnionRoom_ScheduleFieldMessageWithFollowupState(30, gTexts_UR_ChatDeclined[playerGender]);
            break;
        case 3:
            data->state = 22;
            break;
        }
        taskData[3]++;
        break;
    case 22:
        if (RfuHasErrored())
        {
            playerGender = GetUnionRoomPlayerGender(taskData[1], data->field_0);
            UpdateGameDataWithActivitySpriteGendersFlag(20 | 0x40, 0, 1);
            if (IsUnionRoomListenTaskActive() == 1)
                UnionRoom_ScheduleFieldMessageAndExit(gTexts_UR_ChatDeclined[playerGender]);
            else
                UnionRoom_ScheduleFieldMessageWithFollowupState(30, gTexts_UR_ChatDeclined[playerGender]);
        }
        if (gReceivedRemoteLinkPlayers)
            data->state = 16;
        break;
    case 11:
        PlaySE(66);
        sub_80F8FA0();
        data->state = 12;
        data->recvActivityRequest[0] = 0;
        break;
    case 12:
        if (RfuHasErrored())
        {
            HandleCancelTrade(0);
            data->state = 2;
        }
        else if (gReceivedRemoteLinkPlayers)
        {
            CreateTrainerCardInBuffer(gBlockSendBuffer, 1);
            CreateTask(Task_ExchangeCards, 5);
            data->state = 39;
        }
        break;
    case 39:
        ReceiveUnionRoomActivityPacket(data);
        if (!FuncIsActiveTask(Task_ExchangeCards))
        {
            data->state = 33;
            StringCopy(gStringVar1, gLinkPlayers[1].name);
            id = PlayerHasMetTrainerBefore(gLinkPlayers[1].trainerId, gLinkPlayers[1].name);
            StringExpandPlaceholders(gStringVar4, gTexts_UR_PlayerContactedYou[id]);
        }
        break;
    case 33:
        ReceiveUnionRoomActivityPacket(data);
        if (PrintOnTextbox(&data->textState, gStringVar4))
            data->state = 34;
        break;
    case 34:
        ReceiveUnionRoomActivityPacket(data);
        if (UnionRoom_HandleContactFromOtherPlayer(data) && ({(gMain.newKeys) & (0x0002);}))
        {
            sub_80FBD6C(1);
            StringCopy(gStringVar4, gText_UR_ChatEnded);
            data->state = 36;
        }
        break;
    case 35:

        UnionRoom_ScheduleFieldMessageWithFollowupState(9, gStringVar4);
        break;
    case 9:
        switch (UnionRoomHandleYesNo(&data->textState, 0))
        {
        case 0:
            data->playerSendBuffer[0] = 17 | 0x40;
            if (sPlayerCurrActivity == (5 | 0x40))
                UpdateGameDataWithActivitySpriteGendersFlag(sPlayerCurrActivity | 0x40, GetSinglePartnerSpriteGenderParam(1), 0);
            else
                UpdateGameDataWithActivitySpriteGendersFlag(sPlayerCurrActivity | 0x40, GetSinglePartnerSpriteGenderParam(1), 1);

            data->field_8->arr[0].field_1B = 0;
            taskData[3] = 0;
            if (sPlayerCurrActivity == (1 | 0x40))
            {
                if (!HasAtLeastTwoMonsOfLevel30OrLower())
                {
                    data->playerSendBuffer[0] = 18 | 0x40;
                    Rfu_SendPacket(data->playerSendBuffer);
                    data->state = 10;
                    StringCopy(gStringVar4, gText_UR_NeedTwoMonsOfLevel30OrLower2);
                }
                else
                {
                    Rfu_SendPacket(data->playerSendBuffer);
                    data->state = 13;
                }
            }
            else if (sPlayerCurrActivity == (8 | 0x40))
            {
                Rfu_SendPacket(data->playerSendBuffer);
                ViewURoomPartnerTrainerCard(gStringVar4, data, 0x01);
                data->state = 40;
            }
            else
            {
                Rfu_SendPacket(data->playerSendBuffer);
                data->state = 13;
            }
            break;
        case 1:
        case -1:
            data->playerSendBuffer[0] = 18 | 0x40;
            Rfu_SendPacket(data->playerSendBuffer);
            data->state = 10;
            GetYouDeclinedTheOfferMessage(gStringVar4, sPlayerCurrActivity);
            break;
        }
        break;
    case 10:
        SetCloseLinkCallback();
        data->state = 36;
        break;
    case 36:

        if (!gReceivedRemoteLinkPlayers)
        {
            sPlayerCurrActivity = 0x40;
            UnionRoom_ScheduleFieldMessageWithFollowupState(37, gStringVar4);
            memset(data->playerSendBuffer, 0, sizeof(data->playerSendBuffer));
            data->recvActivityRequest[0] = 0;
            data->partnerYesNoResponse = 0;
        }
        break;
    case 37:
        data->state = 2;
        HandleCancelTrade(0);
        break;
    case 13:
        GetURoomActivityStartMsg(gStringVar4, sPlayerCurrActivity | 0x40);
        UnionRoom_ScheduleFieldMessageWithFollowupState(14, gStringVar4);
        break;
    case 14:
        SetLinkStandbyCallback();
        data->state = 15;
        break;
    case 15:
        if (IsLinkTaskFinished())
            data->state = 16;
        break;
    case 16:
        Free(data->field_8);
        Free(data->field_0);
        Free(data->field_C);
        Free(data->field_4);
        DestroyTask(data->field_20);
        DestroyGroupMemberObjects(data->spriteIds);
        data->state = 17;
        break;
    case 17:
        BeginNormalPaletteFade(-1, 0, 0, 0x10, ((0) | ((0) << 5) | ((0) << 10)));
        data->state = 18;
        break;
    case 18:
        if (!UpdatePaletteFade())
        {
            DeleteUnionObjWorkAndStopTask();
            DestroyTask(taskId);
            Free(sUnionRoomMain.uRoom);
            CreateTask_StartActivity();
        }
        break;
    case 42:
        if (GetHostRFUtgtGname()->species == 0)
        {
            data->state = 43;
        }
        else
        {
            if (GetHostRFUtgtGname()->species == 412)
            {
                StringCopy(gStringVar4, gText_UR_CancelRegistrationOfEgg);
            }
            else
            {
                StringCopy(gStringVar1, gSpeciesNames[GetHostRFUtgtGname()->species]);
                ConvertIntToDecimalStringN(gStringVar2, GetHostRFUtgtGname()->level, STR_CONV_MODE_LEFT_ALIGN, 3);
                StringExpandPlaceholders(gStringVar4, gText_UR_CancelRegistrationOfMon);
            }
            UnionRoom_ScheduleFieldMessageWithFollowupState(44, gStringVar4);
        }
        break;
    case 43:
        if (PrintOnTextbox(&data->textState, gText_UR_RegisterMonAtTradingBoard))
            data->state = 47;
        break;
    case 47:
        var5 = ListMenuHandler_AllItemsAvailable(&data->textState, &data->tradeBoardSelectWindowId, &data->tradeBoardDetailsWindowId, &sWindowTemplate_TradeBoardRegisterInfoExit, &sListMenuTemplate_TradeBoardRegisterInfoExit);
        if (var5 != -1)
        {
            if (var5 == -2 || var5 == 3)
            {
                data->state = 4;
                HandleCancelTrade(1);
            }
            else
            {
                switch (var5)
                {
                case 1:
                    UnionRoom_ScheduleFieldMessageWithFollowupState(53, gText_UR_WhichMonWillYouOffer);
                    break;
                case 2:
                    UnionRoom_ScheduleFieldMessageWithFollowupState(47, gText_UR_TradingBoardInfo);
                    break;
                }
            }
            DestroyHelpMessageWindow_();
        }
        break;
    case 53:
        BeginNormalPaletteFade(-1, 0, 0, 0x10, ((0) | ((0) << 5) | ((0) << 10)));
        data->state = 54;
        break;
    case 54:
        if (!gPaletteFade.active)
        {
            sUnionRoomTrade.field_0 = 1;
            gFieldCallback = FieldCB_ContinueScriptUnionRoom;
            ChooseMonForTradingBoard(8, CB2_ReturnToField);
        }
        break;
    case 52:
        var5 = ListMenuHandler_AllItemsAvailable(&data->textState, &data->tradeBoardSelectWindowId, &data->tradeBoardDetailsWindowId, &sWindowTemplate_TypeNames, &sListMenuTemplate_TypeNames);
        if (var5 != -1)
        {
            switch (var5)
            {
            case -2:
            case 18:
                ResetUnionRoomTrade(&sUnionRoomTrade);
                RfuUpdatePlayerGnameStateAndSend(0, 0, 0);
                UnionRoom_ScheduleFieldMessageAndExit(gText_UR_RegistrationCanceled);
                break;
            default:
                sUnionRoomTrade.type = var5;
                data->state = 55;
                break;
            }
        }
        break;
    case 55:
        RfuUpdatePlayerGnameStateAndSend(sUnionRoomTrade.type, sUnionRoomTrade.playerSpecies, sUnionRoomTrade.playerLevel);
        UnionRoom_ScheduleFieldMessageAndExit(gText_UR_RegistraionCompleted);
        break;
    case 44:
        switch (UnionRoomHandleYesNo(&data->textState, 0))
        {
        case 0:
            data->state = 56;
            break;
        case 1:
        case -1:
            HandleCancelTrade(1);
            data->state = 4;
            break;
        }
        break;
    case 56:
        if (PrintOnTextbox(&data->textState, gText_UR_RegistrationCanceled2))
        {
            RfuUpdatePlayerGnameStateAndSend(0, 0, 0);
            ResetUnionRoomTrade(&sUnionRoomTrade);
            HandleCancelTrade(1);
            data->state = 4;
        }
        break;
    case 45:
        if (PrintOnTextbox(&data->textState, gText_UR_XCheckedTradingBoard))
            data->state = 46;
        break;
    case 46:
        UR_BlankBg0();
        data->state = 48;
        break;
    case 48:
        var5 = TradeBoardMenuHandler(&data->textState, &data->tradeBoardSelectWindowId, &data->tradeBoardListMenuId, &data->tradeBoardDetailsWindowId, &gUnknown_8456F24, &sTradeBoardListMenuTemplate, data->field_0);
        if (var5 != -1)
        {
            switch (var5)
            {
            case -2:
            case 8:
                HandleCancelTrade(1);
                DestroyHelpMessageWindow_();
                data->state = 4;
                break;
            default:
                switch (IsRequestedTypeAndSpeciesInPlayerParty(data->field_0->arr[var5].gname_uname.gname.type, data->field_0->arr[var5].gname_uname.gname.species))
                {
                case 0:
                    ({ StringCopy(gStringVar1, (data->field_0->arr[var5]).gname_uname.uname); ConvertInternationalString(gStringVar1, (data->field_0->arr[var5]).gname_uname.gname.unk_00.language); });
                    UnionRoom_ScheduleFieldMessageWithFollowupState(49, gText_UR_AskTrainerToMakeTrade);
                    taskData[1] = var5;
                    break;
                case 1:
                    ({ StringCopy(gStringVar1, (data->field_0->arr[var5]).gname_uname.uname); ConvertInternationalString(gStringVar1, (data->field_0->arr[var5]).gname_uname.gname.unk_00.language); });
                    StringCopy(gStringVar2, gTypeNames[data->field_0->arr[var5].gname_uname.gname.type]);
                    UnionRoom_ScheduleFieldMessageWithFollowupState(46, gText_UR_DontHaveTypeTrainerWants);
                    break;
                case 2:
                    ({ StringCopy(gStringVar1, (data->field_0->arr[var5]).gname_uname.uname); ConvertInternationalString(gStringVar1, (data->field_0->arr[var5]).gname_uname.gname.unk_00.language); });
                    StringCopy(gStringVar2, gTypeNames[data->field_0->arr[var5].gname_uname.gname.type]);
                    UnionRoom_ScheduleFieldMessageWithFollowupState(46, gText_UR_DontHaveEggTrainerWants);
                    break;
                }
                break;
            }
        }
        break;
    case 49:
        switch (UnionRoomHandleYesNo(&data->textState, 0))
        {
        case 0:
            data->state = 50;
            break;
        case -1:
        case 1:
            HandleCancelTrade(1);
            data->state = 4;
            break;
        }
        break;
    case 50:
        if (PrintOnTextbox(&data->textState, gText_UR_WhichMonWillYouOffer))
        {
            sUnionRoomTrade.field_0 = 2;
            memcpy(&gPartnerTgtGnameSub, &data->field_0->arr[taskData[1]].gname_uname.gname.unk_00, sizeof(gPartnerTgtGnameSub));
            gUnionRoomRequestedMonType = data->field_0->arr[taskData[1]].gname_uname.gname.type;
            gUnionRoomOfferedSpecies = data->field_0->arr[taskData[1]].gname_uname.gname.species;
            gFieldCallback = FieldCB_ContinueScriptUnionRoom;
            ChooseMonForTradingBoard(9, CB2_ReturnToField);
            BackUpURoomField0ToDecompressionBuffer(data);
            sUnionRoomTrade.field_8 = taskData[1];
        }
        break;
    case 51:
        sPlayerCurrActivity = 4 | 0x40;
        sub_80FC114(data->field_0->arr[taskData[1]].gname_uname.uname, &data->field_0->arr[taskData[1]].gname_uname.gname, 4 | 0x40);
        ({ StringCopy(gStringVar1, (data->field_0->arr[taskData[1]]).gname_uname.uname); ConvertInternationalString(gStringVar1, (data->field_0->arr[taskData[1]]).gname_uname.gname.unk_00.language); });
        UR_PrintFieldMessage(gTexts_UR_CommunicatingWait[2]);
        data->state = 25;
        break;
    case 26:
        if (PrintOnTextbox(&data->textState, gStringVar4))
        {
            HandleCancelTrade(1);
            UpdateUnionGroupMemberFacing(taskData[0], taskData[1], data->field_0);
            data->state = 4;
        }
        break;
    case 8:
        if (PrintOnTextbox(&data->textState, gStringVar4))
            data->state = data->stateAfterPrint;
        break;
    }
}

void var_800D_set_xB(void)
{
    if (InUnionRoom() == 1)
        gSpecialVar_Result = 11;
}

static void ReceiveUnionRoomActivityPacket(struct UnkStruct_URoom * uroom)
{
    if (gRecvCmds[1][1] != 0 && (gRecvCmds[1][0] & 0xFF00) == 0x2F00)
    {
        uroom->recvActivityRequest[0] = gRecvCmds[1][1];
        if (gRecvCmds[1][1] == (4 | 0x40))
        {
            uroom->recvActivityRequest[1] = gRecvCmds[1][2];
            uroom->recvActivityRequest[2] = gRecvCmds[1][3];
        }
    }
}

static bool32 UnionRoom_HandleContactFromOtherPlayer(struct UnkStruct_URoom * uroom)
{
    if (uroom->recvActivityRequest[0] != 0)
    {
        s32 var = GetChatLeaderActionRequestMessage(gStringVar4, gLinkPlayers[1].gender, &uroom->recvActivityRequest[0], uroom);
        if (var == 0)
        {
            return 1;
        }
        else if (var == 1)
        {
            uroom->state = 35;
            sPlayerCurrActivity = uroom->recvActivityRequest[0];
            return 0;
        }
        else if (var == 2)
        {
            uroom->state = 36;
            SetCloseLinkCallback();
            return 0;
        }
    }

    return 1;
}

void InitUnionRoom(void)
{
    struct UnkStruct_URoom * ptr;

    sUnionRoomPlayerName[0] = 0xFF;
    if ((gQuestLogState == 2 || gQuestLogState == 3))
        return;
    CreateTask(Task_InitUnionRoom, 0);
    sUnionRoomMain.uRoom = sUnionRoomMain.uRoom;
    sUnionRoomMain.uRoom = ptr = AllocZeroed(sizeof(struct UnkStruct_URoom));
    sURoom = sUnionRoomMain.uRoom;
    ptr->state = 0;
    ptr->textState = 0;
    ptr->field_10 = 0;
    ptr->field_12 = 0;
    sUnionRoomPlayerName[0] = 0xFF;
}

static void Task_InitUnionRoom(u8 taskId)
{
    s32 i;
    u8 text[32];
    struct UnkStruct_URoom * structPtr = sUnionRoomMain.uRoom;

    switch (structPtr->state)
    {
    case 0:
        structPtr->state = 1;
        break;
    case 1:
        SetHostRFUtgtGname(12, 0, 0);
        SetWirelessCommType1();
        OpenLink();
        InitializeRfuLinkManager_EnterUnionRoom();
        sub_80FB128(1);
        structPtr->state = 2;
        break;
    case 2:
        structPtr->field_4 = AllocZeroed(4 * sizeof(struct UnkStruct_x1C));
        BlankUnkStruct_x1CArray(structPtr->field_4->arr, 4);
        structPtr->field_C = AllocZeroed(4 * sizeof(struct UnkStruct_x1C));
        BlankUnkStruct_x1CArray(structPtr->field_C->arr, 4);
        structPtr->field_0 = AllocZeroed(8 * sizeof(struct UnkStruct_x20));
        BlankUnkStruct_x20Array(structPtr->field_0->arr, 8);
        structPtr->field_8 = AllocZeroed(sizeof(struct UnkStruct_x20));
        BlankUnkStruct_x20Array(&structPtr->field_8->arr[0], 1);
        structPtr->field_20 = CreateTask_SearchForChildOrParent(structPtr->field_C, structPtr->field_4, 10);
        structPtr->state = 3;
        break;
    case 3:
        switch (HandlePlayerListUpdate())
        {
        case 1:
        case 2:
            if (sUnionRoomPlayerName[0] == 0xFF)
            {
                for (i = 0; i < 7 + 1; i++)
                {
                    if (structPtr->field_0->arr[i].groupScheduledAnim == 1)
                    {
                        ({ StringCopy(text, (structPtr->field_0->arr[i]).gname_uname.uname); ConvertInternationalString(text, (structPtr->field_0->arr[i]).gname_uname.gname.unk_00.language); });
                        if (PlayerHasMetTrainerBefore(ReadAsU16(structPtr->field_0->arr[i].gname_uname.gname.unk_00.playerTrainerId), text))
                        {
                            StringCopy(sUnionRoomPlayerName, text);
                            break;
                        }
                    }
                }
            }
            break;
        case 3:
            break;
        }
        break;
    case 4:
        Free(structPtr->field_8);
        Free(structPtr->field_0);
        Free(structPtr->field_C);
        Free(structPtr->field_4);
        DestroyTask(structPtr->field_20);
        Free(sUnionRoomMain.uRoom);
        LinkRfu_Shutdown();
        DestroyTask(taskId);
        break;
    }
}

bool16 BufferUnionRoomPlayerName(void)
{
    if (sUnionRoomPlayerName[0] != 0xFF)
    {
        StringCopy(gStringVar1, sUnionRoomPlayerName);
        sUnionRoomPlayerName[0] = 0xFF;
        return 1;
    }
    else
    {
        return 0;
    }
}

static u8 HandlePlayerListUpdate(void)
{
    s32 i;
    u8 j;
    struct UnkStruct_URoom * structPtr = sUnionRoomMain.uRoom;
    s32 r7 = 0;


    for (i = 0; i < 4; i++)
    {
        if (AreGnameUnameDifferent(&structPtr->field_C->arr[i].gname_uname, &sUnionGnameUnamePair_Dummy) == 1)
        {
            structPtr->field_8->arr[0].gname_uname = structPtr->field_C->arr[i].gname_uname;
            structPtr->field_8->arr[0].field_18 = 0;
            structPtr->field_8->arr[0].groupScheduledAnim = 1;
            structPtr->field_8->arr[0].field_1B = 1;
            return 4;
        }
    }


    for (j = 0; j < 8; j++)
    {
        if (structPtr->field_0->arr[j].groupScheduledAnim != 0)
        {
            i = Findx20Inx1CArray(&structPtr->field_0->arr[j], &structPtr->field_4->arr[0]);
            if (i != 0xFF)
            {
                if (structPtr->field_0->arr[j].groupScheduledAnim == 1)
                {

                    if (AreUnionRoomPlayerGnamesDifferent(&structPtr->field_0->arr[j].gname_uname, &structPtr->field_4->arr[i].gname_uname))
                    {

                        structPtr->field_0->arr[j].gname_uname = structPtr->field_4->arr[i].gname_uname;
                        structPtr->field_0->arr[j].field_1B = 0x40;
                        r7 = 1;
                    }
                    else if (structPtr->field_0->arr[j].field_1B != 0)
                    {
                        structPtr->field_0->arr[j].field_1B--;
                        if (structPtr->field_0->arr[j].field_1B == 0)
                            r7 = 2;
                    }
                }
                else
                {

                    structPtr->field_0->arr[j].groupScheduledAnim = 1;
                    structPtr->field_0->arr[j].field_1B = 0;
                    r7 = 2;
                }
                structPtr->field_0->arr[j].field_18 = 0;
            }
            else if (structPtr->field_0->arr[j].groupScheduledAnim != 2)
            {

                structPtr->field_0->arr[j].field_18++;
                if (structPtr->field_0->arr[j].field_18 >= 600)
                {
                    structPtr->field_0->arr[j].groupScheduledAnim = 2;
                    r7 = 2;
                }
            }
            else if (structPtr->field_0->arr[j].groupScheduledAnim == 2)
            {

                structPtr->field_0->arr[j].field_18++;
                if (structPtr->field_0->arr[j].field_18 >= 900)
                {
                    BlankUnkStruct_x20Array(&structPtr->field_0->arr[j], 1);
                }
            }
        }
    }


    for (i = 0; i < 4; i++)
    {
        if (Appendx1Ctox20(&structPtr->field_0->arr[0], &structPtr->field_4->arr[i], 8) != 0xFF)
            r7 = 1;
    }

    return r7;
}

static void Task_SearchForChildOrParent(u8 taskId)
{
    s32 i, j;
    struct UnionGnameUnamePair gname_uname;
    struct UnkStruct_Main4 ** ptr = (void *) gTasks[taskId].data;
    bool8 parent_child;

    for (i = 0; i < 4; i++)
    {
        parent_child = LinkRfu_GetNameIfCompatible(&gname_uname.gname, gname_uname.uname, i);
        if (!IsPartnerActivityAcceptable(gname_uname.gname.activity, gTasks[taskId].data[4]))
        {
            gname_uname = sUnionGnameUnamePair_Dummy;
        }
        if (gname_uname.gname.unk_00.language == 1)
        {
            gname_uname = sUnionGnameUnamePair_Dummy;
        }
        if (parent_child == 0x00)
        {
            for (j = 0; j < i; j++)
            {
                if (!AreGnameUnameDifferent(&ptr[1]->arr[j].gname_uname, &gname_uname))
                {
                    gname_uname = sUnionGnameUnamePair_Dummy;
                }
            }
            ptr[1]->arr[i].gname_uname = gname_uname;
            ptr[1]->arr[i].active = AreGnameUnameDifferent(&ptr[1]->arr[i].gname_uname, &sUnionGnameUnamePair_Dummy);
        }
        else
        {
            ptr[0]->arr[i].gname_uname = gname_uname;
            ptr[0]->arr[i].active = AreGnameUnameDifferent(&ptr[0]->arr[i].gname_uname, &sUnionGnameUnamePair_Dummy);
        }
    }
}

static u8 CreateTask_SearchForChildOrParent(struct UnkStruct_Main4 * main4_parent, struct UnkStruct_Main4 * main4_child, u32 linkGroup)
{
    u8 taskId = CreateTask(Task_SearchForChildOrParent, 0);
    struct UnkStruct_Main4 ** data = (void *)gTasks[taskId].data;
    data[0] = main4_parent;
    data[1] = main4_child;
    gTasks[taskId].data[4] = linkGroup;
    return taskId;
}

static void Task_ListenForPartnersWithCompatibleSerialNos(u8 taskId)
{
    s32 i, j;
    struct UnkStruct_Main4 ** ptr = (void *) gTasks[taskId].data;

    for (i = 0; i < 4; i++)
    {
        LinkRfu_GetNameIfCompatible(&ptr[0]->arr[i].gname_uname.gname, ptr[0]->arr[i].gname_uname.uname, i);
        if (!IsPartnerActivityAcceptable(ptr[0]->arr[i].gname_uname.gname.activity, gTasks[taskId].data[2]))
        {
            ptr[0]->arr[i].gname_uname = sUnionGnameUnamePair_Dummy;
        }
        for (j = 0; j < i; j++)
        {
            if (!AreGnameUnameDifferent(&ptr[0]->arr[j].gname_uname, &ptr[0]->arr[i].gname_uname))
            {
                ptr[0]->arr[i].gname_uname = sUnionGnameUnamePair_Dummy;
            }
        }
        ptr[0]->arr[i].active = AreGnameUnameDifferent(&ptr[0]->arr[i].gname_uname, &sUnionGnameUnamePair_Dummy);
    }
}

static bool32 GetGnameWonderFlagByLinkGroup(struct GFtgtGname * gname, s16 linkGroup)
{
    if (linkGroup == 7)
    {
        if (!gname->unk_00.hasCard)
        {
            return 0;
        }
        else
        {
            return 1;
        }
    }
    else if (linkGroup == 8)
    {
        if (!gname->unk_00.hasNews)
        {
            return 0;
        }
        else
        {
            return 1;
        }
    }
    else
    {
        return 0;
    }
}

static void Task_ListenForPartnersWithSerial7F7D(u8 taskId)
{
    s32 i;
    struct UnkStruct_Main4 ** ptr = (void *) gTasks[taskId].data;

    for (i = 0; i < 4; i++)
    {
        if (LinkRfu_GetNameIfSerial7F7D(&ptr[0]->arr[i].gname_uname.gname, ptr[0]->arr[i].gname_uname.uname, i))
        {
            GetGnameWonderFlagByLinkGroup(&ptr[0]->arr[i].gname_uname.gname, gTasks[taskId].data[2]);
        }
        ptr[0]->arr[i].active = AreGnameUnameDifferent(&ptr[0]->arr[i].gname_uname, &sUnionGnameUnamePair_Dummy);
    }
}

static u8 CreateTask_ListenForPartnersWithCompatibleSerialNos(struct UnkStruct_Main4 * main4, u32 linkGroup)
{
    u8 taskId = CreateTask(Task_ListenForPartnersWithCompatibleSerialNos, 0);
    struct UnkStruct_Main4 ** ptr = (void *) gTasks[taskId].data;
    ptr[0] = main4;
    gTasks[taskId].data[2] = linkGroup;
    return taskId;
}

static u8 CreateTask_ListenForPartnersWithSerial7F7D(struct UnkStruct_Main4 * main4, u32 linkGroup)
{
    u8 taskId = CreateTask(Task_ListenForPartnersWithSerial7F7D, 0);
    struct UnkStruct_Main4 ** ptr = (void *) gTasks[taskId].data;
    ptr[0] = main4;
    gTasks[taskId].data[2] = linkGroup;
    return taskId;
}

static bool32 UR_PrintFieldMessage(const u8 *src)
{
    LoadStdWindowFrameGfx();
    DrawDialogueFrame(0, 1);
    StringExpandPlaceholders(gStringVar4, src);
    AddTextPrinterWithCustomSpeedForMessage(0, 1);
    return 0;
}

static bool32 UR_RunTextPrinters_CheckPrinter0Active(void)
{
    if (!RunTextPrinters_CheckPrinter0Active())
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

static bool8 PrintOnTextbox(u8 *textState, const u8 *str)
{
    switch (*textState)
    {
    case 0:
        LoadStdWindowFrameGfx();
        DrawDialogueFrame(0, 1);
        StringExpandPlaceholders(gStringVar4, str);
        AddTextPrinterForMessage(1);
        (*textState)++;
        break;
    case 1:
        if (!RunTextPrinters_CheckPrinter0Active())
        {
            *textState = 0;
            return 1;
        }
        break;
    }
    return 0;
}

static s8 UnionRoomHandleYesNo(u8 *state_p, bool32 no_draw)
{
    s8 r1;

    switch (*state_p)
    {
    case 0:
        if (no_draw)
        {
            return -3;
        }
        DisplayYesNoMenuDefaultYes();
        (*state_p)++;
        break;
    case 1:
        if (no_draw)
        {
            DestroyYesNoMenu();
            *state_p = 0;
            return -3;
        }
        r1 = Menu_ProcessInputNoWrapClearOnChoose();
        if (r1 == -1 || r1 == 0 || r1 == 1)
        {
            *state_p = 0;
            return r1;
        }
        break;
    }
    return -2;
}

static u8 CreateTradeBoardWindow(const struct WindowTemplate * template)
{
    u8 windowId = AddWindow(template);
    DrawStdWindowFrame(windowId, 0);
    FillWindowPixelBuffer(windowId, ((15) | ((15) << 4)));
    UR_AddTextPrinterParameterized(windowId, 0, gText_UR_NameWantedOfferLv, 8, 1, 6);
    PutWindowTilemap(windowId);
    CopyWindowToVram(windowId, COPYWIN_GFX);
    return windowId;
}

static void DeleteTradeBoardWindow(u8 windowId)
{
    ClearStdWindowAndFrame(windowId, 1);
    RemoveWindow(windowId);
}

static s32 ListMenuHandler_AllItemsAvailable(u8 *state_p, u8 *win_id_p, u8 *list_menu_id_p, const struct WindowTemplate * winTemplate, const struct ListMenuTemplate * menuTemplate)
{
    s32 input;

    switch (*state_p)
    {
    case 0:
        *win_id_p = AddWindow(winTemplate);
        DrawStdWindowFrame(*win_id_p, 0);
        gMultiuseListMenuTemplate = *menuTemplate;
        gMultiuseListMenuTemplate.windowId = *win_id_p;
        *list_menu_id_p = ListMenuInit(&gMultiuseListMenuTemplate, 0, 0);
        CopyWindowToVram(*win_id_p, 1);
        (*state_p)++;
        break;
    case 1:
        input = ListMenu_ProcessInput(*list_menu_id_p);
        if (({(gMain.newKeys) & (0x0001);}))
        {
            DestroyListMenuTask(*list_menu_id_p, ((void *)0), ((void *)0));
            ClearStdWindowAndFrame(*win_id_p, 1);
            RemoveWindow(*win_id_p);
            *state_p = 0;
            return input;
        }
        else if (({(gMain.newKeys) & (0x0002);}))
        {
            DestroyListMenuTask(*list_menu_id_p, ((void *)0), ((void *)0));
            ClearStdWindowAndFrame(*win_id_p, 1);
            RemoveWindow(*win_id_p);
            *state_p = 0;
            return -2;
        }
        break;
    }

    return -1;
}

static s32 TradeBoardMenuHandler(u8 *state_p, u8 *win_id_p, u8 *list_menu_id_p, u8 *trade_board_win_id_p, const struct WindowTemplate * winTemplate, const struct ListMenuTemplate * menuTemplate, struct UnkStruct_Main0 * traders)
{
    s32 input;
    s32 r4;

    switch (*state_p)
    {
    case 0:
        *trade_board_win_id_p = CreateTradeBoardWindow(&sTradeBoardWindowTemplate);
        *win_id_p = AddWindow(winTemplate);
        DrawStdWindowFrame(*win_id_p, 0);
        gMultiuseListMenuTemplate = *menuTemplate;
        gMultiuseListMenuTemplate.windowId = *win_id_p;
        *list_menu_id_p = ListMenuInit(&gMultiuseListMenuTemplate, 0, 1);
        CopyWindowToVram(*win_id_p, 1);
        (*state_p)++;
        break;
    case 1:
        input = ListMenu_ProcessInput(*list_menu_id_p);
        if (({(gMain.newKeys) & (0x0001 | 0x0002);}))
        {
            if (input == 8 || ({(gMain.newKeys) & (0x0002);}))
            {
                DestroyListMenuTask(*list_menu_id_p, ((void *)0), ((void *)0));
                ClearStdWindowAndFrame(*win_id_p, 1);
                RemoveWindow(*win_id_p);
                DeleteTradeBoardWindow(*trade_board_win_id_p);
                *state_p = 0;
                return -2;
            }
            else
            {
                r4 = GetIndexOfNthTradeBoardOffer(traders->arr, input);
                if (r4 >= 0)
                {
                    DestroyListMenuTask(*list_menu_id_p, ((void *)0), ((void *)0));
                    ClearStdWindowAndFrame(*win_id_p, 1);
                    RemoveWindow(*win_id_p);
                    DeleteTradeBoardWindow(*trade_board_win_id_p);
                    *state_p = 0;
                    return r4;
                }
                else
                {
                    PlaySE(7);
                }
            }
        }
        break;
    }

    return -1;
}

static void UR_BlankBg0(void)
{
    FillBgTilemapBufferRect(0, 0, 0, 0, 32, 32, 0);
    CopyBgTilemapBufferToVram(0);
}

static void JoinGroup_BlankBg0AndEnableScriptContexts(void)
{
    FillBgTilemapBufferRect(0, 0, 0, 0, 32, 32, 0);
    CopyBgTilemapBufferToVram(0);
    ScriptContext_Enable();
}

static void UR_AddTextPrinterParameterized(u8 windowId, u8 fontId, const u8 *str, u8 x, u8 y, u8 colorIdx)
{
    struct TextPrinterTemplate printerTemplate;

    printerTemplate.currentChar = str;
    printerTemplate.windowId = windowId;
    printerTemplate.fontId = fontId;
    printerTemplate.x = x;
    printerTemplate.y = y;
    printerTemplate.currentX = x;
    printerTemplate.currentY = y;
    printerTemplate.unk = 0;

    gTextFlags.useAlternateDownArrow = 0;
    switch (colorIdx)
    {
    case 0:
        printerTemplate.letterSpacing = 0;
        printerTemplate.lineSpacing = 0;
        printerTemplate.fgColor = 0x2;
        printerTemplate.bgColor = 0x1;
        printerTemplate.shadowColor = 0x3;
        break;
    case 1:
        printerTemplate.letterSpacing = 0;
        printerTemplate.lineSpacing = 0;
        printerTemplate.fgColor = 0x4;
        printerTemplate.bgColor = 0x1;
        printerTemplate.shadowColor = 0x5;
        break;
    case 2:
        printerTemplate.letterSpacing = 0;
        printerTemplate.lineSpacing = 0;
        printerTemplate.fgColor = 0x6;
        printerTemplate.bgColor = 0x1;
        printerTemplate.shadowColor = 0x7;
        break;
    case 3:
        printerTemplate.letterSpacing = 0;
        printerTemplate.lineSpacing = 0;
        printerTemplate.fgColor = 0x1;
        printerTemplate.bgColor = 0x1;
        printerTemplate.shadowColor = 0x3;
        break;
    case 4:
        printerTemplate.letterSpacing = 0;
        printerTemplate.lineSpacing = 0;
        printerTemplate.fgColor = 0x1;
        printerTemplate.bgColor = 0x2;
        printerTemplate.shadowColor = 0x3;
        break;
    case 5:
        printerTemplate.letterSpacing = 0;
        printerTemplate.lineSpacing = 0;
        printerTemplate.fgColor = 0x7;
        printerTemplate.bgColor = 0xF;
        printerTemplate.shadowColor = 0x9;
        break;
    case 6:
        printerTemplate.letterSpacing = 0;
        printerTemplate.lineSpacing = 0;
        printerTemplate.fgColor = 0xE;
        printerTemplate.bgColor = 0xF;
        printerTemplate.shadowColor = 0x9;
        break;
    }

    AddTextPrinter(&printerTemplate, 0xFF, ((void *)0));
}

static void BlankUnkStruct_x20Array(struct UnkStruct_x20 * x20arr, u8 count)
{
    s32 i;

    for (i = 0; i < count; i++)
    {
        x20arr[i].gname_uname = sUnionGnameUnamePair_Dummy;
        x20arr[i].field_18 = 0xFF;
        x20arr[i].groupScheduledAnim = 0;
        x20arr[i].field_1A_1 = 0;
        x20arr[i].field_1B = 0;
    }
}

static void BlankUnkStruct_x1CArray(struct UnkStruct_x1C * x1Carr, u8 count)
{
    s32 i;

    for (i = 0; i < 4; i++)
    {
        x1Carr[i].gname_uname = sUnionGnameUnamePair_Dummy;
        x1Carr[i].active = 0;
    }
}

static bool8 AreGnameUnameDifferent(struct UnionGnameUnamePair * left, const struct UnionGnameUnamePair * right)
{
    s32 i;

    for (i = 0; i < 2; i++)
    {
        if (left->gname.unk_00.playerTrainerId[i] != right->gname.unk_00.playerTrainerId[i])
        {
            return 1;
        }
    }

    for (i = 0; i < 8; i++)
    {
        if (left->uname[i] != right->uname[i])
        {
            return 1;
        }
    }

    return 0;
}

static bool32 AreUnionRoomPlayerGnamesDifferent(struct UnionGnameUnamePair * left, struct UnionGnameUnamePair * right)
{
    s32 i;

    if (left->gname.activity != right->gname.activity)
    {
        return 1;
    }

    if (left->gname.started != right->gname.started)
    {
        return 1;
    }

    for (i = 0; i < 4; i++)
    {
        if (left->gname.child_sprite_gender[i] != right->gname.child_sprite_gender[i])
        {
            return 1;
        }
    }

    if (left->gname.species != right->gname.species)
    {
        return 1;
    }

    if (left->gname.type != right->gname.type)
    {
        return 1;
    }

    return 0;
}

static u32 Findx20Inx1CArray(struct UnkStruct_x20 * x20, struct UnkStruct_x1C * x1Carr)
{
    u8 result = 0xFF;
    s32 i;

    for (i = 0; i < 4; i++)
    {
        if (x1Carr[i].active && !AreGnameUnameDifferent(&x20->gname_uname, &x1Carr[i].gname_uname))
        {
            result = i;
            x1Carr[i].active = 0;
        }
    }

    return result;
}

static u8 Appendx1Ctox20(struct UnkStruct_x20 * x20arr, struct UnkStruct_x1C * x1C, u8 count)
{
    s32 i;

    if (x1C->active)
    {
        for (i = 0; i < count; i++)
        {
            if (x20arr[i].groupScheduledAnim == 0)
            {
                x20arr[i].gname_uname = x1C->gname_uname;
                x20arr[i].field_18 = 0;
                x20arr[i].groupScheduledAnim = 1;
                x20arr[i].field_1B = 0x40;
                x1C->active = 0;
                return i;
            }
        }
    }

    return 0xFF;
}

static void PrintUnionRoomGroupOnWindow(u8 windowId, u8 x, u8 y, struct UnkStruct_x20 * group, u8 colorIdx, u8 id)
{
    u8 activity;
    u8 id_str[6];
    u8 uname[30];

    ConvertIntToDecimalStringN(gStringVar4, id + 1, STR_CONV_MODE_LEADING_ZEROS, 2);
    StringAppend(gStringVar4, gText_UR_Colon);
    UR_AddTextPrinterParameterized(windowId, 0, gStringVar4, x, y, 0);
    x += 18;
    activity = group->gname_uname.gname.activity;
    if (group->groupScheduledAnim == 1 && !(activity & 0x40))
    {
        ({ StringCopy(uname, (*group).gname_uname.uname); ConvertInternationalString(uname, (*group).gname_uname.gname.unk_00.language); });
        UR_AddTextPrinterParameterized(windowId, 2, uname, x, y, colorIdx);
        ConvertIntToDecimalStringN(id_str, group->gname_uname.gname.unk_00.playerTrainerId[0] | (group->gname_uname.gname.unk_00.playerTrainerId[1] << 8), STR_CONV_MODE_LEADING_ZEROS, 5);
        StringCopy(gStringVar4, gText_UR_ID);
        StringAppend(gStringVar4, id_str);
        x += 77;
        UR_AddTextPrinterParameterized(windowId, 0, gStringVar4, x, y, colorIdx);
    }
}

static void PrintGroupMemberCandidateOnWindowWithColor(u8 windowId, u8 x, u8 y, struct UnkStruct_x20 * group, u8 colorIdx, u8 id)
{
    u8 id_str[6];
    u8 uname[30];

    if (group->groupScheduledAnim == 1)
    {
        ({ StringCopy(uname, (*group).gname_uname.uname); ConvertInternationalString(uname, (*group).gname_uname.gname.unk_00.language); });
        UR_AddTextPrinterParameterized(windowId, 2, uname, x, y, colorIdx);
        ConvertIntToDecimalStringN(id_str, group->gname_uname.gname.unk_00.playerTrainerId[0] | (group->gname_uname.gname.unk_00.playerTrainerId[1] << 8), STR_CONV_MODE_LEADING_ZEROS, 5);
        StringCopy(gStringVar4, gText_UR_ID);
        StringAppend(gStringVar4, id_str);
        x += 71;
        UR_AddTextPrinterParameterized(windowId, 0, gStringVar4, x, y, colorIdx);
    }
}

static bool32 PlayerIsTalkingToUnionRoomAide(void)
{
    s16 x, y;
    GetXYCoordsOneStepInFrontOfPlayer(&x, &y);
    if (x != 9)
    {
        return 0;
    }
    if (y != 8)
    {
        return 0;
    }
    if (gPlayerAvatar.tileTransitionState == 2 || gPlayerAvatar.tileTransitionState == 0)
    {
        return 1;
    }

    return 0;
}

static u32 GetResponseIdx_InviteToURoomActivity(s32 activity)
{
    switch (activity)
    {
    case 5:
        return 1;
    case 4:
        return 2;
    case 8:
        return 3;
    case 3:
    default:
        return 0;
    }
}

static u32 ConvPartnerUnameAndGetWhetherMetAlready(struct UnkStruct_x20 * x20)
{
    u8 sp0[30];
    ({ StringCopy(sp0, (*x20).gname_uname.uname); ConvertInternationalString(sp0, (*x20).gname_uname.gname.unk_00.language); });
    return PlayerHasMetTrainerBefore(ReadAsU16(x20->gname_uname.gname.unk_00.playerTrainerId), sp0);
}

static s32 UnionRoomGetPlayerInteractionResponse(struct UnkStruct_Main0 * main0, u8 overrideGender, u8 playerIdx, u32 playerGender)
{
    bool32 metBefore;

    struct UnkStruct_x20 * x20 = &main0->arr[playerIdx];

    if (!x20->gname_uname.gname.started && overrideGender == 0)
    {
        ({ StringCopy(gStringVar1, (*x20).gname_uname.uname); ConvertInternationalString(gStringVar1, (*x20).gname_uname.gname.unk_00.language); });
        metBefore = PlayerHasMetTrainerBefore(ReadAsU16(x20->gname_uname.gname.unk_00.playerTrainerId), gStringVar1);
        if (x20->gname_uname.gname.activity == (5 | 0x40))
        {
            StringExpandPlaceholders(gStringVar4, gTexts_UR_JoinChat[metBefore][playerGender]);
            return 2;
        }
        else
        {
            UR_PrintFieldMessage(gTexts_UR_CommunicatingWait[metBefore]);
            return 1;
        }
    }
    else
    {
        ({ StringCopy(gStringVar1, (*x20).gname_uname.uname); ConvertInternationalString(gStringVar1, (*x20).gname_uname.gname.unk_00.language); });
        if (overrideGender != 0)
        {
            playerGender = (x20->gname_uname.gname.unk_00.playerTrainerId[overrideGender + 1] >> 3) & 1;
        }
        switch (x20->gname_uname.gname.activity & 0x3F)
        {
        case 1:
            StringExpandPlaceholders(gStringVar4, gTexts_UR_BattleReaction[playerGender][Random() % 4]);
            break;
        case 4:
            StringExpandPlaceholders(gStringVar4, gTexts_UR_TradeReaction[playerGender][Random() % 2]);
            break;
        case 5:
            StringExpandPlaceholders(gStringVar4, gTexts_UR_ChatReaction[playerGender][Random() % 4]);
            break;
        case 8:
            StringExpandPlaceholders(gStringVar4, gTexts_UR_TrainerCardReaction[playerGender][Random() % 2]);
            break;
        default:
            StringExpandPlaceholders(gStringVar4, gText_UR_TrainerAppearsBusy);
            break;
        }
        return 0;
    }
}

static void nullsub_92(u8 windowId, u32 itemId, u8 y)
{
}

static void TradeBoardPrintItemInfo(u8 windowId, u8 y, struct GFtgtGname * gname, const u8 * uname, u8 colorIdx)
{
    u8 level_t[4];
    u16 species = gname->species;
    u8 type = gname->type;
    u8 level = gname->level;

    UR_AddTextPrinterParameterized(windowId, 2, uname, 8, y, colorIdx);
    if (species == 412)
    {
        UR_AddTextPrinterParameterized(windowId, 2, gText_UR_EggTrade, 0x44, y, colorIdx);
    }
    else
    {
        BlitMoveInfoIcon(windowId, type + 1, 0x44, y);
        UR_AddTextPrinterParameterized(windowId, 2, gSpeciesNames[species], 0x76, y, colorIdx);
        ConvertIntToDecimalStringN(level_t, level, STR_CONV_MODE_LEFT_ALIGN, 3);
        UR_AddTextPrinterParameterized(windowId, 2, level_t, ({ u16 strWidth = GetStringWidth(2, level_t, 0); 218 - strWidth; }), y, colorIdx);
    }
}

static void TradeBoardListMenuItemPrintFunc(u8 windowId, u32 itemId, u8 y)
{
    struct UnkStruct_Leader * leader = sUnionRoomMain.leader;
    struct GFtgtGname * rfu;
    s32 i, j;
    u8 uname[8];

    if (itemId == -3 && y == sTradeBoardListMenuTemplate.upText_Y)
    {
        rfu = GetHostRFUtgtGname();
        if (rfu->species != 0)
        {
            TradeBoardPrintItemInfo(windowId, y, rfu, gSaveBlock2Ptr->playerName, 5);
        }
    }
    else
    {
        j = 0;
        for (i = 0; i < 8; i++)
        {
            if (leader->field_0->arr[i].groupScheduledAnim == 1 && leader->field_0->arr[i].gname_uname.gname.species != 0)
            {
                j++;
            }
            if (j == itemId + 1)
            {
                ({ StringCopy(uname, (leader->field_0->arr[i]).gname_uname.uname); ConvertInternationalString(uname, (leader->field_0->arr[i]).gname_uname.gname.unk_00.language); });
                TradeBoardPrintItemInfo(windowId, y, &leader->field_0->arr[i].gname_uname.gname, uname, 6);
                break;
            }
        }
    }
}

static s32 GetIndexOfNthTradeBoardOffer(struct UnkStruct_x20 * x20, s32 n)
{
    s32 i;
    s32 j = 0;

    for (i = 0; i < 8; i++)
    {
        if (x20[i].groupScheduledAnim == 1 && x20[i].gname_uname.gname.species != 0)
        {
            j++;
        }
        if (j == n + 1)
        {
            return i;
        }
    }

    return -1;
}

static s32 GetUnionRoomPlayerGender(s32 playerIdx, struct UnkStruct_Main0 * main0)
{
    return main0->arr[playerIdx].gname_uname.gname.playerGender;
}

static s32 IsRequestedTypeAndSpeciesInPlayerParty(u32 type, u32 species)
{
    s32 i;

    if (species == 412)
    {
        for (i = 0; i < gPlayerPartyCount; i++)
        {
            species = GetMonData(&gPlayerParty[i], 65);
            if (species == 412)
            {
                return 0;
            }
        }
        return 2;
    }
    else
    {
        for (i = 0; i < gPlayerPartyCount; i++)
        {
            species = GetMonData(&gPlayerParty[i], 65);
            if (gBaseStats[species].type1 == type || gBaseStats[species].type2 == type)
            {
                return 0;
            }
        }
        return 1;
    }
}

static void GetURoomActivityRejectMsg(u8 *dst, s32 activity, u32 playerGender)
{
    switch (activity)
    {
    case 1 | 0x40:
        StringExpandPlaceholders(dst, gTexts_UR_BattleDeclined[playerGender]);
        break;
    case 5 | 0x40:
        StringExpandPlaceholders(dst, gTexts_UR_ChatDeclined[playerGender]);
        break;
    case 4 | 0x40:
        StringExpandPlaceholders(dst, gText_UR_TradeOfferRejected);
        break;
    case 8 | 0x40:
        StringExpandPlaceholders(dst, gTexts_UR_ShowTrainerCardDeclined[playerGender]);
        break;
    }
}

static void GetURoomActivityStartMsg(u8 *dst, u8 activity)
{
    u8 mpId = GetMultiplayerId();
    u8 gender = gLinkPlayers[mpId ^ 1].gender;

    switch (activity)
    {
    case 1 | 0x40:
        StringCopy(dst, gTexts_UR_StartActivity[mpId][gender][0]);
        break;
    case 4 | 0x40:
        StringCopy(dst, gTexts_UR_StartActivity[mpId][gender][2]);
        break;
    case 5 | 0x40:
        StringCopy(dst, gTexts_UR_StartActivity[mpId][gender][1]);
        break;
    }
}

static s32 GetChatLeaderActionRequestMessage(u8 *dst, u32 gender, u16 *activity_p, struct UnkStruct_URoom * arg3)
{
    s32 result = 0;
    u16 species = 0;
    s32 i;

    switch (activity_p[0])
    {
    case 1 | 0x40:
        StringExpandPlaceholders(dst, gText_UR_BattleChallenge);
        result = 1;
        break;
    case 5 | 0x40:
        StringExpandPlaceholders(dst, gText_UR_ChatInvitation);
        result = 1;
        break;
    case 4 | 0x40:
        ConvertIntToDecimalStringN(arg3->activityRequestStrbufs[0], sUnionRoomTrade.playerLevel, STR_CONV_MODE_LEFT_ALIGN, 3);
        StringCopy(arg3->activityRequestStrbufs[1], gSpeciesNames[sUnionRoomTrade.playerSpecies]);
        for (i = 0; i < 4; i++)
        {
            if (gRfuLinkStatus->partner[i].serialNo == 0x0002)
            {
                ConvertIntToDecimalStringN(arg3->activityRequestStrbufs[2], activity_p[2], STR_CONV_MODE_LEFT_ALIGN, 3);
                StringCopy(arg3->activityRequestStrbufs[3], gSpeciesNames[activity_p[1]]);
                species = activity_p[1];
                break;
            }
        }
        if (species == 412)
        {
            StringCopy(dst, gText_UR_OfferToTradeEgg);
        }
        else
        {
            for (i = 0; i < 4; i++)
            {
                DynamicPlaceholderTextUtil_SetPlaceholderPtr(i, arg3->activityRequestStrbufs[i]);
            }
            DynamicPlaceholderTextUtil_ExpandPlaceholders(dst, gText_UR_OfferToTradeMon);
        }
        result = 1;
        break;
    case 8 | 0x40:
        StringExpandPlaceholders(dst, gText_UR_ShowTrainerCard);
        result = 1;
        break;
    case 0x40:

        StringExpandPlaceholders(dst, gText_UR_ChatDropped);
        result = 2;
        break;
    }

    return result;
}

static bool32 PollPartnerYesNoResponse(struct UnkStruct_URoom * uroom)
{
    if (gRecvCmds[0][1] != 0)
    {
        if (gRecvCmds[0][1] == (17 | 0x40))
        {
            uroom->partnerYesNoResponse = 17 | 0x40;
            return 1;
        }
        else if (gRecvCmds[0][1] == (18 | 0x40))
        {
            uroom->partnerYesNoResponse = 18 | 0x40;
            return 1;
        }
    }
    return 0;
}

bool32 InUnionRoom(void)
{
    return gSaveBlock1Ptr->location.mapGroup == ((4 | (0 << 8)) >> 8)
           && gSaveBlock1Ptr->location.mapNum == ((4 | (0 << 8)) & 0xFF)
           ? 1 : 0;
}

static bool32 HasAtLeastTwoMonsOfLevel30OrLower(void)
{
    s32 i;
    s32 count = 0;

    for (i = 0; i < gPlayerPartyCount; i++)
    {
        if (GetMonData(&gPlayerParty[i], 56) <= 30
            && GetMonData(&gPlayerParty[i], 65) != 412)
        {
            count++;
        }
    }

    if (count > 1)
        return 1;
    else
        return 0;
}

static void ResetUnionRoomTrade(struct UnionRoomTrade * uroomTrade)
{
    uroomTrade->field_0 = 0;
    uroomTrade->type = 0;
    uroomTrade->playerPersonality = 0;
    uroomTrade->playerSpecies = 0;
    uroomTrade->playerLevel = 0;
    uroomTrade->species = 0;
    uroomTrade->level = 0;
    uroomTrade->personality = 0;
}

void Script_ResetUnionRoomTrade(void)
{
    ResetUnionRoomTrade(&sUnionRoomTrade);
}

static bool32 RegisterTradeMonAndGetIsEgg(u32 monId, struct UnionRoomTrade * trade)
{
    trade->playerSpecies = GetMonData(&gPlayerParty[monId], 65);
    trade->playerLevel = GetMonData(&gPlayerParty[monId], 56);
    trade->playerPersonality = GetMonData(&gPlayerParty[monId], 0);
    if (trade->playerSpecies == 412)
        return 1;
    else
        return 0;
}

static void RegisterTradeMon(u32 monId, struct UnionRoomTrade * trade)
{
    trade->species = GetMonData(&gPlayerParty[monId], 65);
    trade->level = GetMonData(&gPlayerParty[monId], 56);
    trade->personality = GetMonData(&gPlayerParty[monId], 0);
}

static u32 GetPartyPositionOfRegisteredMon(struct UnionRoomTrade * trade, u8 multiplayerId)
{
    u16 response = 0;
    u16 species;
    u32 personality;
    u32 cur_personality;
    u16 cur_species;
    s32 i;


    if (multiplayerId == 0)
    {
        species = trade->playerSpecies;
        personality = trade->playerPersonality;
    }

    else
    {
        species = trade->species;
        personality = trade->personality;
    }

    for (i = 0; i < gPlayerPartyCount; i++)
    {
        cur_personality = GetMonData(&gPlayerParty[i], 0);
        if (cur_personality != personality)
        {
            continue;
        }
        cur_species = GetMonData(&gPlayerParty[i], 65);
        if (cur_species != species)
        {
            continue;
        }
        response = i;
        break;
    }

    return response;
}

static void HandleCancelTrade(bool32 unlockObjs)
{
    UR_BlankBg0();
    UnlockPlayerFieldControls();
    UnionRoom_UnlockPlayerAndChatPartner();
    sPlayerCurrActivity = 0;
    if (unlockObjs)
    {
        RfuUpdatePlayerGnameStateAndSend(sUnionRoomTrade.type, sUnionRoomTrade.playerSpecies, sUnionRoomTrade.playerLevel);
        UpdateGameDataWithActivitySpriteGendersFlag(0x40, 0, 0);
    }
}

static void UR_EnableScriptContext2AndFreezeObjectEvents(void)
{
    LockPlayerFieldControls();
    FreezeObjects_WaitForPlayer();
}

static u8 GetSinglePartnerSpriteGenderParam(s32 linkPlayer)
{
    u8 retval = 0x80;
    retval |= gLinkPlayers[linkPlayer].gender << 3;
    retval |= gLinkPlayers[linkPlayer].trainerId & 7;
    return retval;
}

static u8 GetActivePartnerSpriteGenderParam(struct UnkStruct_URoom * uroom)
{
    u8 retVal = 0x80;
    u8 i;

    for (i = 0; i < 4; i++)
    {
        if (uroom->field_C->arr[i].active)
        {
            retVal |= uroom->field_C->arr[i].gname_uname.gname.playerGender << 3;
            retVal |= uroom->field_C->arr[i].gname_uname.gname.unk_00.playerTrainerId[0] & 7;
            break;
        }
    }

    return retVal;
}

static void ViewURoomPartnerTrainerCard(u8 *unused, struct UnkStruct_URoom * uroom, bool8 parent_child)
{
    struct TrainerCard * trainerCard = &gTrainerCards[GetMultiplayerId() ^ 1];
    s32 i;
    s32 n;

    DynamicPlaceholderTextUtil_Reset();

    StringCopy(uroom->trainerCardStrbufs[0], gTrainerClassNames[GetUnionRoomTrainerClass()]);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, uroom->trainerCardStrbufs[0]);

    DynamicPlaceholderTextUtil_SetPlaceholderPtr(1, trainerCard->rse.playerName);

    StringCopy(uroom->field_174, gTexts_UR_CardColor[trainerCard->rse.stars]);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(2, uroom->field_174);

    ConvertIntToDecimalStringN(uroom->trainerCardStrbufs[2], trainerCard->rse.caughtMonsCount, STR_CONV_MODE_LEFT_ALIGN, 3);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(3, uroom->trainerCardStrbufs[2]);

    ConvertIntToDecimalStringN(uroom->trainerCardStrbufs[3], trainerCard->rse.playTimeHours, STR_CONV_MODE_LEFT_ALIGN, 3);
    ConvertIntToDecimalStringN(uroom->trainerCardStrbufs[4], trainerCard->rse.playTimeMinutes, STR_CONV_MODE_LEADING_ZEROS, 2);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(4, uroom->trainerCardStrbufs[3]);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(5, uroom->trainerCardStrbufs[4]);

    DynamicPlaceholderTextUtil_ExpandPlaceholders(uroom->field_1A4, gText_UR_TrainerCardInfoPage1);
    StringCopy(gStringVar4, uroom->field_1A4);

    n = trainerCard->rse.linkBattleWins;
    if (n > 9999)
    {
        n = 9999;
    }
    ConvertIntToDecimalStringN(uroom->trainerCardStrbufs[0], n, STR_CONV_MODE_LEFT_ALIGN, 4);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(0, uroom->trainerCardStrbufs[0]);

    n = trainerCard->rse.linkBattleLosses;
    if (n > 9999)
    {
        n = 9999;
    }
    ConvertIntToDecimalStringN(uroom->trainerCardStrbufs[1], n, STR_CONV_MODE_LEFT_ALIGN, 4);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(2, uroom->trainerCardStrbufs[1]);

    ConvertIntToDecimalStringN(uroom->trainerCardStrbufs[2], trainerCard->rse.pokemonTrades, STR_CONV_MODE_LEFT_ALIGN, 5);
    DynamicPlaceholderTextUtil_SetPlaceholderPtr(3, uroom->trainerCardStrbufs[2]);

    for (i = 0; i < 4; i++)
    {
        CopyEasyChatWord(uroom->trainerCardStrbufs[i + 3], trainerCard->rse.easyChatProfile[i]);
        DynamicPlaceholderTextUtil_SetPlaceholderPtr(i + 4, uroom->trainerCardStrbufs[i + 3]);
    }

    DynamicPlaceholderTextUtil_ExpandPlaceholders(uroom->field_1A4, gText_UR_TrainerCardInfoPage2);
    StringAppend(gStringVar4, uroom->field_1A4);

    if (parent_child == 0x01)
    {
        DynamicPlaceholderTextUtil_ExpandPlaceholders(uroom->field_1A4, gText_UR_FinishedCheckingPlayersTrainerCard);
        StringAppend(gStringVar4, uroom->field_1A4);
    }
    else if (parent_child == 0x00)
    {
        DynamicPlaceholderTextUtil_ExpandPlaceholders(uroom->field_1A4, gTexts_UR_GladToMeetYou[trainerCard->rse.gender]);
        StringAppend(gStringVar4, uroom->field_1A4);
    }
}
