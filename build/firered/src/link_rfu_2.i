# 1 "src/link_rfu_2.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/link_rfu_2.c"
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
# 2 "src/link_rfu_2.c" 2
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
# 3 "src/link_rfu_2.c" 2
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
# 4 "src/link_rfu_2.c" 2
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
# 5 "src/link_rfu_2.c" 2
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
# 6 "src/link_rfu_2.c" 2
# 1 "include/link_rfu.h" 1




# 1 "include/librfu.h" 1
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
# 7 "src/link_rfu_2.c" 2
# 1 "include/mystery_gift_menu.h" 1



extern bool8 gGiftIsFromEReader;

void MainCB_FreeAllBuffersAndReturnToInitTitleScreen(void);
void PrintMysteryGiftOrEReaderTopMenu(bool8, bool32);
void c2_mystery_gift(void);
void c2_mystery_gift_e_reader_run(void);
s8 mevent_message_print_and_prompt_yes_no(u8 * textState, u16 * windowId, bool8 yesNoBoxPlacement, const u8 * str);
void MG_DrawTextBorder(u8 windowId);
u16 GetMysteryGiftBaseBlock(void);
# 8 "src/link_rfu_2.c" 2
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
# 9 "src/link_rfu_2.c" 2
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
# 10 "src/link_rfu_2.c" 2
# 1 "include/random.h" 1





extern u32 gRngValue;
extern u32 gRng2Value;


u16 Random(void);
u16 Random2(void);
# 23 "include/random.h"
void SeedRng(u16 seed);
void SeedRng2(u16 seed);
# 11 "src/link_rfu_2.c" 2
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
# 12 "src/link_rfu_2.c" 2
# 1 "include/constants/union_room.h" 1
# 13 "src/link_rfu_2.c" 2

struct SioInfo
{
    char magic[15];
    u8 playerCount;
    u8 linkPlayerIdx[4];
    struct LinkPlayer linkPlayers[5];
    u8 fill_a0[0x5c];
};

struct RfuDebug
{
    u8 fill_00[6];
    u16 unk_06;
    u8 fill_08[6];
    vu8 unk_0e;
    u8 unk_0f;
    u8 fill_10[0x54];
    u16 unk_64;
    u8 fill_66[0x1d];
    u8 unk_83;
    u8 fill_84[0x58];
};

static __attribute__((section("ewram_data"))) INIT_PARAM sRfuReqConfig = {};
static __attribute__((section("ewram_data"))) struct RfuDebug sRfuDebug = {};

static u32 gf_rfu_REQ_api[0x0e64 / 4];
static u8 sResendBlock8[14];
static u16 sResendBlock16[7];

struct GFtgtGname gHostRFUtgtGnameBuffer;
GF_RFU_MANAGER Rfu;
u8 gHostRFUtgtUnameBuffer[7 + 1];

static void sub_80F8AA4(void);
static void sub_80F8AEC(void);
static void MscCallback_Child(u16 a0);
static void MSCCallback_SetUnkCDB(u16 a0);
static void UpdateBackupQueue(void);
static void RfuHandleReceiveCommand(u8 unused);
static void ResetSendDataManager(struct RfuBlockSend *data);
static void RfuPrepareSendBuffer(u16 command);
static void HandleBlockSend(void);
static void SendNextBlock(void);
static void SendLastBlock(void);
static void CallRfuFunc(void);
static void UpdateChildStatuses(void);
static s32 GetRfuRecvStatus(void);
static void sub_80FA834(u8 taskId);
static void ClearSelectedLinkPlayerIds(u16 disconnectMask);
static void ValidateAndReceivePokemonSioInfo(void *a0);
static void Task_ExchangeLinkPlayers(u8 taskId);
static void sub_80FACF0(u8 taskId);
static void GetLinkmanErrorParams(u32 msg);
static void sub_80FB564(s32 bmConnectedFlag);
static void sub_80FBB74(void);
static u8 GetPartnerIndexByNameAndTrainerID(const u8 *trainerName, u16 trainerId);
static void RfuReqDisconnectSlot(u32 bmDisconnectSlot);
static void sub_80FBE20(u32 a0, u32 a1);
static void sub_80FC028(u8 taskId);
static void Debug_PrintEmpty(void);
static void Task_idle(u8 taskId);

static const INIT_PARAM sRfuReqConfigTemplate = {
    .maxMFrame = 4,
    .MC_TimerCount = 32,
    .availSlot_flag = 0,
    .mboot_flag = 0,
    .serialNo = 0x0002,
    .gameName = (void *)&gHostRFUtgtGnameBuffer,
    .userName = gHostRFUtgtUnameBuffer,
    .fastSearchParent_flag = 1,
    .linkRecovery_enable = 0,
    .linkRecovery_period = 600,
    .NI_failCounter_limit = 300
};

static const u8 sAvailSlots[] = {
    [1] = 0x0003,
    [2] = 0x0002,
    [3] = 0x0001,
    [4] = 0x0000
};

static const u32 sAllBlocksReceived[] = {
    0x000000,
    0x000001,
    0x000003,
    0x000007,
    0x00000f,
    0x00001f,
    0x00003f,
    0x00007f,
    0x0000ff,
    0x0001ff,
    0x0003ff,
    0x0007ff,
    0x000fff,
    0x001fff,
    0x003fff,
    0x007fff,
    0x00ffff,
    0x01ffff,
    0x03ffff,
    0x07ffff,
    0x0fffff,
    0x1fffff,
    0x3fffff,
    0x7fffff,
    0xffffff
};

static const u8 gUnknown_843EC38[] = {
    0, 0, 1,
    1, 2, 2,
    2, 2, 3
};

static const u8 sNumSetBits[] = {
    [0x0] = 0,
    [0x1] = 1,
    [0x2] = 1,
    [0x3] = 2,
    [0x4] = 1,
    [0x5] = 2,
    [0x6] = 2,
    [0x7] = 3,
    [0x8] = 1,
    [0x9] = 2,
    [0xA] = 2,
    [0xB] = 3,
    [0xC] = 2,
    [0xD] = 3,
    [0xE] = 3,
    [0xF] = 4
};

static const u8 sNumTrailingZeroes[] = {
    [0x0] = 0,
    [0x1] = 0,
    [0x2] = 1,
    [0x3] = 0,
    [0x4] = 2,
    [0x5] = 0,
    [0x6] = 1,
    [0x7] = 0,
    [0x8] = 3,
    [0x9] = 0,
    [0xA] = 1,
    [0xB] = 0,
    [0xC] = 2,
    [0xD] = 0,
    [0xE] = 1,
    [0xF] = 0
};

static const struct BlockRequest sBlockRequests[] = {
    [BLOCK_REQ_SIZE_NONE] = { gBlockSendBuffer, 200 },
    [BLOCK_REQ_SIZE_200] = { gBlockSendBuffer, 200 },
    [BLOCK_REQ_SIZE_100] = { gBlockSendBuffer, 100 },
    [BLOCK_REQ_SIZE_220] = { gBlockSendBuffer, 220 },
    [BLOCK_REQ_SIZE_40] = { gBlockSendBuffer, 40 }
};

static const u16 sAcceptedSerialNos[] = {
    0x0002,
    0x7F7D,
    0xFFFF
};

static const char sUnref_843EC92[][15] = {
    "RFU WAIT",
    "RFU BOOT",
    "RFU ERROR",
    "RFU RESET",
    "RFU CONFIG",
    "RFU START",
    "RFU SC POLL",
    "RFU SP POLL",
    "RFU START",
    "RFU SEND ERR",
    "RFU CP POLL"
};

static const char sUnref_843ED37[][16] = {
    "              ",
    "RECOVER START ",
    "DISSCONECT    ",
    "RECOVER SUUSES",
    "RECOVER FAILED"
};

static const TaskFunc gUnknown_843ED88[] = {
    sub_80FA834,
    Task_ExchangeLinkPlayers,
    sub_80FACF0
};

static void Debug_PrintString(const void *string, u8 x, u8 y)
{

}

static void Debug_PrintNum(u16 num, u8 x, u8 y, u8 ndigits)
{

}

void ResetLinkRfuGFLayer(void)
{
    s32 i;
    u8 errorState_bak = Rfu.errorState;
    { vu16 tmp = (vu16)(0); CpuSet((void *)&tmp, &Rfu, 0x00000000 | 0x01000000 | ((sizeof Rfu)/(16/8) & 0x1FFFFF)); };
    Rfu.parent_child = 0xff;
    Rfu.errorState = errorState_bak;
    if (Rfu.errorState != 4)
    {
        Rfu.errorState = 0;
    }
    for (i = 0; i < 5; i++)
    {
        ResetSendDataManager(&Rfu.recvBlock[i]);
    }
    ResetSendDataManager(&Rfu.sendBlock);
    RfuRecvQueue_Reset(&Rfu.recvQueue);
    RfuSendQueue_Reset(&Rfu.sendQueue);
    { vu16 tmp = (vu16)(0); CpuSet((void *)&tmp, gSendCmd, 0x00000000 | 0x01000000 | ((sizeof gSendCmd)/(16/8) & 0x1FFFFF)); };
    { vu16 tmp = (vu16)(0); CpuSet((void *)&tmp, gRecvCmds, 0x00000000 | 0x01000000 | ((sizeof gRecvCmds)/(16/8) & 0x1FFFFF)); };
    { vu16 tmp = (vu16)(0); CpuSet((void *)&tmp, gLinkPlayers, 0x00000000 | 0x01000000 | ((sizeof gLinkPlayers)/(16/8) & 0x1FFFFF)); };
}

void InitRFU(void)
{
    IntrFunc serialIntr = gIntrTable[1];
    IntrFunc timerIntr = gIntrTable[2];
    InitRFUAPI();
    rfu_REQ_stopMode();
    rfu_waitREQComplete();
    (*(vu16 *)(0x4000000 + 0x208)) = 0;
    gIntrTable[1] = serialIntr;
    gIntrTable[2] = timerIntr;
    (*(vu16 *)(0x4000000 + 0x208)) = (1 << 0);
}

void InitRFUAPI(void)
{
    if (!rfu_initializeAPI(gf_rfu_REQ_api, 0x0e64, gIntrTable + 1, 1))
    {
        gLinkType = 0;

        sub_80FB128(0);
        ResetLinkRfuGFLayer();
        rfu_setTimerInterrupt(3, gIntrTable + 2);
    }
}

static void Task_LinkLeaderSearchForChildren(u8 taskId)
{
    UpdateChildStatuses();
    switch (Rfu.state)
    {
    case 0:
        rfu_LMAN_initializeRFU(&sRfuReqConfig);
        Rfu.state = 1;
        gTasks[taskId].data[1] = 1;
        break;
    case 1:
        break;
    case 2:
        rfu_LMAN_establishConnection(Rfu.parent_child, 0, 240, (u16 *)sAcceptedSerialNos);
        Rfu.state = 3;
        gTasks[taskId].data[1] = 6;
        break;
    case 3:
        break;
    case 4:
        rfu_LMAN_stopManager(0);
        Rfu.state = 5;
        break;
    case 5:
        break;
    case 18:
        Rfu.unk_cdb = 0;
        rfu_LMAN_setMSCCallback(MSCCallback_SetUnkCDB);
        sub_80F8AA4();
        sub_80F8AEC();
        Rfu.state = 20;
        gTasks[taskId].data[1] = 8;
        CreateTask(sub_80FA834, 5);
        DestroyTask(taskId);
        break;
    }
}

static u8 CountTrailingZeroes(u8 acceptSlot)
{
    return sNumTrailingZeroes[acceptSlot];
}

static void ReassignPartnerIds(s32 before, s32 after)
{
    u8 i;
    u8 r4 = 1;
    s32 beforeBak = before;
    s32 r6 = 0;
    if (after == -1)
    {


        for (i = 0; i < 4; before >>= 1, i++)
        {
            if (before & 1)
            {
                Rfu.linkPlayerIdx[i] = r4;
                r4++;
            }
        }
    }
    else
    {

        for (i = 0; i < 4; beforeBak >>= 1, i++)
        {
            if (!(beforeBak & 1))
            {
                Rfu.linkPlayerIdx[i] = 0;
            }
        }

        for (r4 = 4; r4 != 0; r4--)
        {
            for (i = 0; i < 4 && Rfu.linkPlayerIdx[i] != r4; i++);
            if (i == 4)
            {
                r6 = r4;
            }
        }

        for (after &= ~before, i = 0; i < 4; after >>= 1, i++)
        {
            if (after & 1)
            {
                Rfu.linkPlayerIdx[i] = r6++;
            }
        }
    }
}

static void Task_JoinGroupSearchForParent(u8 taskId)
{
    switch (Rfu.state)
    {
    case 0:
        rfu_LMAN_initializeRFU((INIT_PARAM*)&sRfuReqConfigTemplate);
        Rfu.state = 1;
        gTasks[taskId].data[1] = 1;
        break;
    case 1:
        break;
    case 6:
        rfu_LMAN_establishConnection(Rfu.parent_child, 0, 240, (u16 *)sAcceptedSerialNos);
        Rfu.state = 7;
        gTasks[taskId].data[1] = 7;
        break;
    case 7:
        break;
    case 9:
        gTasks[taskId].data[1] = 10;
        break;
    case 11:
        switch (GetRfuRecvStatus())
        {
        case 5:
            Rfu.state = 12;
            break;
        case 6:
        case 9:
            rfu_LMAN_requestChangeAgbClockMaster();
            Rfu.unk_ce4 = 2;
            DestroyTask(taskId);
            break;
        }
        break;
    case 12:
    {
        u8 bmChildSlot = 1 << Rfu.child_slot;
        rfu_clearSlot(0x04 | 0x08, Rfu.child_slot);
        rfu_setRecvBuffer(0x10, Rfu.child_slot, Rfu.unk_c3f, sizeof(Rfu.unk_c3f));
        rfu_UNI_setSendData(bmChildSlot, Rfu.lastCmdBeforeCommInterrupt, sizeof(Rfu.lastCmdBeforeCommInterrupt));
        gTasks[taskId].data[1] = 8;
        DestroyTask(taskId);
        if (sRfuDebug.unk_0f == 0)
        {
            Debug_PrintEmpty();
            sRfuDebug.unk_0f++;
        }
        CreateTask(sub_80FA834, 5);
        break;
    }
    }
}

static void sub_80F8AA4(void)
{
    u8 i;
    u8 acceptSlot = lman.acceptSlot_flag;
    for (i = 0; i < 4; i++)
    {
        if (acceptSlot & 1)
        {
            rfu_setRecvBuffer(0x10, i, Rfu.main_UNI_recvBuffer[i], sizeof(Rfu.main_UNI_recvBuffer[i]));
            rfu_clearSlot(0x01 | 0x02, i);
        }
        acceptSlot >>= 1;
    }
}

static void sub_80F8AEC(void)
{
    u8 acceptSlot = lman.acceptSlot_flag;
    rfu_UNI_setSendData(acceptSlot, Rfu.recvCmds, sizeof(Rfu.recvCmds));
    Rfu.unk_cda = CountTrailingZeroes(acceptSlot);
    Rfu.bm_PartnerFlags = acceptSlot;
    ReassignPartnerIds(acceptSlot, -1);
    Rfu.parent_child = 0x01;
}

static void Task_LinkRfu_UnionRoomListen(u8 taskId)
{
    if (GetHostRFUtgtGname()->activity == (20 | 0x40) && RfuGetStatus() == 4)
    {
        rfu_REQ_disconnect(lman.acceptSlot_flag);
        rfu_waitREQComplete();
        RfuSetStatus(0, 0);
    }
    switch (Rfu.state)
    {
    case 0:
        rfu_LMAN_initializeRFU(&sRfuReqConfig);
        Rfu.state = 1;
        gTasks[taskId].data[1] = 1;
        break;
    case 1:
        break;
    case 17:
        rfu_LMAN_establishConnection(2, 0, 240, (u16 *)sAcceptedSerialNos);
        rfu_LMAN_setMSCCallback(MscCallback_Child);
        Rfu.state = 18;
        break;
    case 18:
        break;
    case 13:
        if (rfu_UNI_setSendData(1 << Rfu.child_slot, Rfu.lastCmdBeforeCommInterrupt, sizeof(Rfu.lastCmdBeforeCommInterrupt)) == 0)
        {
            Rfu.parent_child = 0x00;
            DestroyTask(taskId);
            if (gTasks[taskId].data[7])
            {
                CreateTask(sub_80FACF0, 1);
            }
            else
            {
                CreateTask(sub_80FA834, 5);
            }
        }
        break;
    case 14:
        rfu_LMAN_stopManager(0);
        Rfu.state = 15;
        break;
    case 15:
        break;
    case 16:
        Rfu.unk_cdb = 0;
        rfu_LMAN_setMSCCallback(MSCCallback_SetUnkCDB);
        UpdateGameData_GroupLockedIn(1);
        sub_80F8AA4();
        sub_80F8AEC();
        Rfu.state = 20;
        gTasks[taskId].data[1] = 8;
        Rfu.parent_child = 0x01;
        CreateTask(sub_80FA834, 5);
        Rfu.foundNewLeaderMaybe = 1;
        DestroyTask(taskId);
        break;
    }
}

void LinkRfu_CreateConnectionAsParent(void)
{
    rfu_LMAN_establishConnection(0x01, 0, 240, (u16 *)sAcceptedSerialNos);
}

void LinkRfu_StopManagerBeforeEnteringChat(void)
{
    rfu_LMAN_stopManager(0);
}

static void MscCallback_Child(u16 unused)
{
    s32 i;

    for (i = 0; i < 14; i++)
    {
        Rfu.lastCmdBeforeCommInterrupt[i] = 0;
    }
    rfu_REQ_recvData();
    rfu_waitREQComplete();
    if (gRfuSlotStatusUNI[Rfu.child_slot]->recv.newDataFlag)
    {
        Rfu.sem_UNI_SendRecv++;
        RfuRecvQueue_Enqueue(&Rfu.recvQueue, Rfu.unk_c3f);
        sRfuDebug.unk_06++;
        UpdateBackupQueue();
        rfu_UNI_readySendData(Rfu.child_slot);
        rfu_UNI_clearRecvNewDataFlag(Rfu.child_slot);
    }
    rfu_LMAN_REQ_sendData(1);
}

static void MSCCallback_SetUnkCDB(u16 unused)
{
    Rfu.unk_cdb = 1;
}

void LinkRfu_Shutdown(void)
{
    u8 i;

    if ((gQuestLogState == 2 || gQuestLogState == 3))
        return;

    rfu_LMAN_powerDownRFU();
    if (Rfu.parent_child == 0x01)
    {
        if (FuncIsActiveTask(Task_LinkLeaderSearchForChildren) == 1)
        {
            DestroyTask(Rfu.searchTaskId);
            ResetLinkRfuGFLayer();
        }
    }
    else if (Rfu.parent_child == 0x00)
    {
        if (FuncIsActiveTask(Task_JoinGroupSearchForParent) == 1)
        {
            DestroyTask(Rfu.searchTaskId);
            ResetLinkRfuGFLayer();
        }
    }
    else if (Rfu.parent_child == 2)
    {
        if (FuncIsActiveTask(Task_LinkRfu_UnionRoomListen) == 1)
        {
            DestroyTask(Rfu.searchTaskId);
            ResetLinkRfuGFLayer();
        }
    }
    for (i = 0; i < (sizeof(gUnknown_843ED88) / sizeof((gUnknown_843ED88)[0])); i++)
    {
        if (FuncIsActiveTask(gUnknown_843ED88[i]) == 1)
        {
            DestroyTask(FindTaskIdByFunc(gUnknown_843ED88[i]));
        }
    }
}

static void CreateTask_LinkLeaderSearchForChildren(void)
{
    if ((gQuestLogState == 2 || gQuestLogState == 3))
        return;
    Rfu.searchTaskId = CreateTask(Task_LinkLeaderSearchForChildren, 1);
}

static bool8 ContactedByParentAttemptingToReconnect(void)
{
    if (Rfu.state == 7 && Rfu.parentId)
    {
        return 1;
    }
    return 0;
}

static bool32 IsParentSuccessfullyReconnected(void)
{
    if (Rfu.state == 7 && !rfu_LMAN_CHILD_connectParent(gRfuLinkStatus->partner[Rfu.reconnectedParentIdx].id, 240))
    {
        Rfu.state = 9;
        return 1;
    }
    return 0;
}

static void CreateTask_JoinGroupSearchForParent(void)
{
    if ((gQuestLogState == 2 || gQuestLogState == 3))
        return;
    Rfu.searchTaskId = CreateTask(Task_JoinGroupSearchForParent, 1);
}

bool8 LmanAcceptSlotFlagIsNotZero(void)
{
    if (lman.acceptSlot_flag)
    {
        return 1;
    }
    return 0;
}

void LinkRfu_StopManagerAndFinalizeSlots(void)
{
    Rfu.state = 4;
    Rfu.acceptSlot_flag = lman.acceptSlot_flag;
}

bool32 WaitRfuState(bool32 force)
{
    if (Rfu.state == 17 || force)
    {
        Rfu.state = 18;
        return 1;
    }
    return 0;
}

void sub_80F8FA0(void)
{
    Rfu.state = 14;
}


static void sub_80F8FAC(u8 a0)
{
    u8 i;

    for (i = 0; i < 4; i++)
    {
        if (a0 & 1)
        {
            rfu_UNI_readySendData(i);
            break;
        }
        a0 >>= 1;
    }
}

static void MoveRecvCmdsToRfuBuffer(void)
{
    s32 i, j;

    for (i = 0; i < 5; i++)
    {
        GF_RFU_MANAGER *ptr = &Rfu;
        for (j = 0; j < 8 - 1; j++)
        {
            ptr->recvCmds[i][j][1] = gRecvCmds[i][j] >> 8;
            ptr->recvCmds[i][j][0] = gRecvCmds[i][j];
        }
    }
    { vu16 tmp = (vu16)(0); CpuSet((void *)&tmp, gRecvCmds, 0x00000000 | 0x01000000 | ((sizeof gRecvCmds)/(16/8) & 0x1FFFFF)); };
}

static void MoveSendCmdToFirstRecvCmd(void)
{
    s32 i;
    for (i = 0; i < 8 - 1; i++)
    {
        gRecvCmds[0][i] = gSendCmd[i];
    }
    for (i = 0; i < 8 - 1; i++)
    {
        gSendCmd[i] = 0;
    }
}

static void UpdateBackupQueue(void)
{
    if (Rfu.linkRecovered)
    {
        bool8 backupEmpty = RfuBackupQueue_Dequeue(&Rfu.backupQueue, Rfu.lastCmdBeforeCommInterrupt);
        if (Rfu.backupQueue.count == 0)
        {
            Rfu.linkRecovered = 0;
        }
        if (backupEmpty)
        {
            return;
        }
    }
    if (!Rfu.linkRecovered)
    {
        RfuSendQueue_Dequeue(&Rfu.sendQueue, Rfu.lastCmdBeforeCommInterrupt);
        RfuBackupQueue_Enqueue(&Rfu.backupQueue, Rfu.lastCmdBeforeCommInterrupt);
    }
}

bool32 IsRfuRecvQueueEmpty(void)
{
    s32 i;
    s32 j;

    if (gRfuLinkStatus->sendSlotUNIFlag == 0)
    {
        return 0;
    }
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 8 - 1; j++)
        {
            if (gRecvCmds[i][j] != 0)
            {
                return 0;
            }
        }
    }
    return 1;
}

static bool32 sub_80F911C(void)
{
    if (Rfu.state < 20)
    {
        rfu_REQ_recvData();
        rfu_waitREQComplete();
        rfu_LMAN_REQ_sendData(0);
    }
    else
    {
        Rfu.unk_cdb = 0;
        if ((Rfu.bm_PartnerFlags & gRfuLinkStatus->connSlotFlag) == Rfu.bm_PartnerFlags && (Rfu.bm_PartnerFlags & gRfuLinkStatus->connSlotFlag))
        {
            if (!Rfu.unk_cdc)
            {
                if (Rfu.bm_DisconnectSlot)
                {
                    RfuReqDisconnectSlot(Rfu.bm_DisconnectSlot);
                    Rfu.bm_DisconnectSlot = 0;
                    if (Rfu.unk_ce4 == 1)
                    {
                        RfuSetStatus(2, 0x8000);
                        GetLinkmanErrorParams(0x8000);
                        return 0;
                    }
                    if (!lman.acceptSlot_flag)
                    {
                        LinkRfu_Shutdown();
                        gReceivedRemoteLinkPlayers = 0;
                        return 0;
                    }
                }
                MoveRecvCmdsToRfuBuffer();
                rfu_UNI_readySendData(Rfu.unk_cda);
                rfu_LMAN_REQ_sendData(1);
            }
            else
            {
                rfu_REQ_PARENT_resumeRetransmitAndChange();
            }
            Rfu.unk_0e = 1;
        }
    }
    return 0;
}

static bool32 sub_80F9204(void)
{
    u16 i;
    u16 flags;
    u8 r0;
    u16 j;
    u8 retval;

    if (Rfu.state >= 20 && Rfu.unk_0e == 1)
    {
        rfu_waitREQComplete();
        while (!Rfu.unk_cdb)
        {
            if (Rfu.errorState != 0)
            {
                return 0;
            }
        }
        rfu_REQ_recvData();
        rfu_waitREQComplete();
        if ((lman.parentAck_flag & Rfu.bm_PartnerFlags) == Rfu.bm_PartnerFlags)
        {
            Rfu.unk_cdc = 0;
            sRfuDebug.unk_06++;
            flags = lman.acceptSlot_flag;
            for (i = 0; i < 4; i++)
            {
                if (flags & 1)
                {
                    if (Rfu.main_UNI_recvBuffer[i][1])
                    {
                        if (Rfu.unk_cee[i] != 0xFF && (Rfu.main_UNI_recvBuffer[i][0] >> 5) != ((Rfu.unk_cee[i] + 1) & 7))
                        {
                            if (++Rfu.unk_cea[i] > 4)
                                GetLinkmanErrorParams(0x8100);
                        }
                        else
                        {
                            Rfu.unk_cee[i] = Rfu.main_UNI_recvBuffer[i][0] / 32;
                            Rfu.unk_cea[i] = 0;
                            Rfu.main_UNI_recvBuffer[i][0] &= 0x1f;
                            r0 = Rfu.linkPlayerIdx[i];
                            for (j = 0; j < 7; j++)
                            {
                                gRecvCmds[r0][j] = (Rfu.main_UNI_recvBuffer[i][(j << 1) + 1] << 8) | Rfu.main_UNI_recvBuffer[i][(j << 1) + 0];
                                Rfu.main_UNI_recvBuffer[i][(j << 1) + 1] = 0;
                                Rfu.main_UNI_recvBuffer[i][(j << 1) + 0] = 0;
                            }
                        }
                    }
                    rfu_UNI_clearRecvNewDataFlag(i);
                }
                flags >>= 1;
            }
            MoveSendCmdToFirstRecvCmd();
            RfuHandleReceiveCommand(0);
            CallRfuFunc();
            if (Rfu.bmChatLeaderMaybe && !Rfu.linkClosing)
            {
                sRfuDebug.unk_0e = 0;
                rfu_clearSlot(0x01 | 0x02, Rfu.unk_cda);
                for (i = 0; i < 4; i++)
                {
                    if ((Rfu.bmChatLeaderMaybe >> i) & 1)
                    {
                        rfu_setRecvBuffer(0x10, i, Rfu.main_UNI_recvBuffer[i], sizeof(Rfu.main_UNI_recvBuffer[i]));
                    }
                }
                ReassignPartnerIds(Rfu.bm_PartnerFlags, Rfu.bm_PartnerFlags | Rfu.bmChatLeaderMaybe);
                Rfu.unk_ce9 = Rfu.bmChatLeaderMaybe;
                Rfu.bm_PartnerFlags |= Rfu.bmChatLeaderMaybe;
                Rfu.bmChatLeaderMaybe = 0;
                rfu_UNI_setSendData(Rfu.bm_PartnerFlags, Rfu.recvCmds, sizeof(Rfu.recvCmds));
                Rfu.unk_cda = CountTrailingZeroes(Rfu.bm_PartnerFlags);
                CreateTask(Task_ExchangeLinkPlayers, 0);
            }
        }
        else
        {
            Rfu.unk_cdc = 1;
            Rfu.unk_0e = 0;
        }
        Rfu.unk_0e = 0;
    }
    retval = Rfu.unk_cdc;
    return gRfuLinkStatus->sendSlotUNIFlag ? retval & 1 : 0;
}

static void RfuBufferSendCmd(u16 *sendCmd, u8 *rfuSendBuf)
{
    s32 i;

    if (sendCmd[0])
    {
        sendCmd[0] |= (Rfu.unk_102 << 5);
        Rfu.unk_102 = (Rfu.unk_102 + 1) & 7;
        for (i = 0; i < 7; i++)
        {
            rfuSendBuf[2 * i + 1] = sendCmd[i] >> 8;
            rfuSendBuf[2 * i + 0] = sendCmd[i];
        }
    }
    else
    {
        for (i = 0; i < 14; i++)
            rfuSendBuf[i] = 0;
    }
}

static bool32 RfuProcessEnqueuedRecvBlock(void)
{
    u8 i;
    u8 j;
    u8 recvBuf[5 * (2 * (8 - 1))];
    u8 sendBuf[2 * (8 - 1)];
    u8 status;

    RfuRecvQueue_Dequeue(&Rfu.recvQueue, recvBuf);
    for (i = 0; i < 5; i++)
    {
        for (j = 0; j < 8 - 1; j++)
        {
            gRecvCmds[i][j] = (recvBuf[i * 14 + (j << 1) + 1] << 8) | recvBuf[i * 14 + (j << 1) + 0];
        }
    }
    RfuHandleReceiveCommand(0);
    if (lman.childClockSlave_flag == 0 && Rfu.unk_ce4)
    {
        rfu_REQ_disconnect(gRfuLinkStatus->connSlotFlag | gRfuLinkStatus->linkLossSlotFlag);
        rfu_waitREQComplete();
        status = RfuGetStatus();
        if (status != 1
         && status != 6
         && status != 9)
            RfuSetStatus(2, 0x9000);
        rfu_clearAllSlot();
        gReceivedRemoteLinkPlayers = 0;
        Rfu.RfuFunc = ((void *)0);
        if (Rfu.unk_ce4 == 1)
        {
            RfuSetStatus(2, 0x9000);
            GetLinkmanErrorParams(0x9000);
        }
        lman.state = lman.next_state = 0;
        Rfu.unk_ce4 = 0;
    }
    if (Rfu.sem_UNI_SendRecv)
    {
        Rfu.sem_UNI_SendRecv--;
        CallRfuFunc();
        RfuBufferSendCmd(gSendCmd, sendBuf);
        RfuSendQueue_Enqueue(&Rfu.sendQueue, sendBuf);
        for (i = 0; i < 8 - 1; i++)
            gSendCmd[i] = 0;
    }
    return IsRfuRecvQueueEmpty();
}

static void HandleSendFailure(u8 unused, u32 flags)
{
    s32 i, j, temp;

    const u8 *payload = Rfu.sendBlock.payload;
    for (i = 0; i < Rfu.sendBlock.count; i++)
    {
        if (!(flags & 1))
        {
            sResendBlock16[0] = 0x8900 | i;
            for (j = 0; j < 7; j++)
            {
                temp = j << 1;
                sResendBlock16[j + 1] = (payload[12 * i + temp + 1] << 8) | payload[12 * i + temp + 0];
            }
            for (j = 0; j < 7; j++)
            {
                temp = j << 1;
                sResendBlock8[temp + 1] = sResendBlock16[j] >> 8;
                sResendBlock8[temp + 0] = sResendBlock16[j];
            }
            RfuSendQueue_Enqueue(&Rfu.sendQueue, sResendBlock8);
            Rfu.sendBlock.failedFlags |= (1 << i);
        }
        flags >>= 1;
    }
}

void Rfu_SetBlockReceivedFlag(u8 linkPlayerId)
{
    if (Rfu.parent_child == 0x01 && linkPlayerId != 0)
        Rfu.numBlocksReceived[linkPlayerId] = 1;
    else
        Rfu.blockReceived[linkPlayerId] = 1;
}

void Rfu_ResetBlockReceivedFlag(u8 linkPlayerId)
{
    Rfu.blockReceived[linkPlayerId] = 0;
    Rfu.recvBlock[linkPlayerId].receiving = 0;
}

static u8 RfuChildSetReceivedPlayerOrder(const u8 *template)
{
    u8 i;

    if (Rfu.parent_child == 0x01)
        return 0;
    for (i = 0; i < 4; i++)
    {
        Rfu.linkPlayerIdx[i] = template[i];
    }
    return template[Rfu.child_slot];
}

static void RfuFunc_SendKeysToRfu(void)
{
    static u8 heldKeyCount;
    if (gReceivedRemoteLinkPlayers
        && gHeldKeyCodeToSend != 0x00
        && gLinkTransferringData != 1)
    {
        heldKeyCount++;
        gHeldKeyCodeToSend |= (heldKeyCount << 8);
        RfuPrepareSendBuffer(0xbe00);
    }
}

struct GFtgtGname *GetHostRFUtgtGname(void)
{
    return &gHostRFUtgtGnameBuffer;
}

bool32 IsSendingKeysToRfu(void)
{
    return Rfu.RfuFunc == RfuFunc_SendKeysToRfu;
}

void StartSendingKeysToRfu(void)
{
    (Rfu.RfuFunc == ((void *)0)) ? ((void *)0) : AGBAssert(("C:/WORK/POKeFRLG/src/pm_lgfr_ose/source/" "rfu.c"), 1473, "Rfu.RfuFunc == NULL", 1);;
    Rfu.RfuFunc = RfuFunc_SendKeysToRfu;
}

void ClearLinkRfuCallback(void)
{
    Rfu.RfuFunc = ((void *)0);
}

static void RfuHandleReceiveCommand(u8 unused)
{
    u16 i;
    u16 j;

    for (i = 0; i < 5; i++)
    {
        switch (gRecvCmds[i][0] & 0xff00)
        {
        case 0x7800:
            if (Rfu.parent_child == 0x00 && gReceivedRemoteLinkPlayers)
                return;

        case 0x7700:
            if (gRfuLinkStatus->parentChild == 0x00)
            {
                Rfu.playerCount = gRecvCmds[i][1];
                Rfu.multiplayerId = RfuChildSetReceivedPlayerOrder((u8 *)(gRecvCmds[i] + 2));
            }
            break;
        case 0x8800:
            if (Rfu.recvBlock[i].receiving == 0)
            {
                Rfu.recvBlock[i].next = 0;
                Rfu.recvBlock[i].count = gRecvCmds[i][1];
                Rfu.recvBlock[i].owner = gRecvCmds[i][2];
                Rfu.recvBlock[i].receivedFlags = 0;
                Rfu.recvBlock[i].receiving = 1;
                Rfu.blockReceived[i] = 0;
            }
            break;
        case 0x8900:
            if (Rfu.recvBlock[i].receiving == 1)
            {
                Rfu.recvBlock[i].next = gRecvCmds[i][0] & 0xff;
                Rfu.recvBlock[i].receivedFlags |= (1 << Rfu.recvBlock[i].next);
                for (j = 0; j < 6; j++)
                    gBlockRecvBuffer[i][Rfu.recvBlock[i].next * 6 + j] = gRecvCmds[i][j + 1];
                if (Rfu.recvBlock[i].receivedFlags == sAllBlocksReceived[Rfu.recvBlock[i].count])
                {
                    Rfu.recvBlock[i].receiving = 2;
                    Rfu_SetBlockReceivedFlag(i);
                    if (GetHostRFUtgtGname()->activity == (5 | 0x40) && gReceivedRemoteLinkPlayers && Rfu.parent_child == 0x00)
                        ValidateAndReceivePokemonSioInfo(gBlockRecvBuffer);
                }
            }
            break;
        case 0xa100:
            Rfu_InitBlockSend(sBlockRequests[gRecvCmds[i][1]].address, (u16)sBlockRequests[gRecvCmds[i][1]].size);
            break;
        case 0x5f00:
            Rfu.readyCloseLink[i] = 1;
            break;
        case 0x6600:
            if (Rfu.resendExitStandbyCount == gRecvCmds[i][1])
                Rfu.readyExitStandby[i] = 1;
            break;
        case 0xed00:
            if (Rfu.parent_child == 0x00)
            {
                if (gReceivedRemoteLinkPlayers)
                {
                    if (gRecvCmds[i][1] & gRfuLinkStatus->connSlotFlag)
                    {
                        gReceivedRemoteLinkPlayers = 0;
                        rfu_LMAN_requestChangeAgbClockMaster();
                        Rfu.unk_ce4 = gRecvCmds[i][2];
                    }
                    Rfu.playerCount = gRecvCmds[i][3];
                    ClearSelectedLinkPlayerIds(gRecvCmds[i][1]);
                }
            }
            else
            {
                RfuPrepareSendBuffer(0xee00);
                gSendCmd[1] = gRecvCmds[i][1];
                gSendCmd[2] = gRecvCmds[i][2];
                gSendCmd[3] = gRecvCmds[i][3];
            }
            break;
        case 0xee00:
            if (Rfu.parent_child == 0x01)
            {
                Rfu.bm_DisconnectSlot |= gRecvCmds[i][1];
                Rfu.unk_ce4 = gRecvCmds[i][2];
                ClearSelectedLinkPlayerIds(gRecvCmds[i][1]);
            }
            break;
        case 0xbe00:
            gLinkPartnersHeldKeys[i] = gRecvCmds[i][1];
            break;
        }
        if (Rfu.parent_child == 0x01 && Rfu.numBlocksReceived[i])
        {
            if (Rfu.numBlocksReceived[i] == 4)
            {
                Rfu.blockReceived[i] = 1;
                Rfu.numBlocksReceived[i] = 0;
            }
            else
                Rfu.numBlocksReceived[i]++;
        }
    }
}

static bool8 AreNoPlayersReceiving(void)
{
    s32 i;

    for (i = 0; i < 5; i++)
    {
        if (Rfu.recvBlock[i].receiving != 0)
            return 0;
    }
    return 1;
}

static bool8 AreAllPlayersFinishedReceiving(void)
{
    s32 i;

    for (i = 0; i < Rfu.playerCount; i++)
    {
        if (Rfu.recvBlock[i].receiving != 2 || Rfu.blockReceived[i] != 1)
            return 0;
    }
    return 1;
}

static void ResetSendDataManager(struct RfuBlockSend *data)
{
    data->next = 0;
    data->count = 0;
    data->payload = ((void *)0);
    data->receivedFlags = 0;
    data->sending = 0;
    data->owner = 0;
    data->receiving = 0;
}

u8 Rfu_GetBlockReceivedStatus(void)
{
    u8 flags = 0;
    s32 i;

    for (i = 0; i < 5; i++)
    {
        if (Rfu.recvBlock[i].receiving == 2 && Rfu.blockReceived[i] == 1)
        {
            flags |= (1 << i);
        }
    }
    return flags;
}

static void RfuPrepareSendBuffer(u16 command)
{
    u8 i;
    u8 *buff;
    u8 tmp;

    gSendCmd[0] = command;
    switch (command)
    {
    case 0x8800:
        gSendCmd[1] = Rfu.sendBlock.count;
        gSendCmd[2] = Rfu.sendBlock.owner + 0x80;
        break;
    case 0xa100:
        if (AreNoPlayersReceiving())
            gSendCmd[1] = Rfu.cmdA100_blockRequestType;
        break;
    case 0x7700:
    case 0x7800:
        tmp = Rfu.bm_PartnerFlags ^ Rfu.bm_DisconnectSlot;
        Rfu.playerCount = sNumSetBits[tmp] + 1;
        gSendCmd[1] = Rfu.playerCount;
        buff = (u8 *)(gSendCmd + 2);
        for (i = 0; i < 4; i++)
            buff[i] = Rfu.linkPlayerIdx[i];
        break;
    case 0x6600:
    case 0x5f00:
        gSendCmd[1] = Rfu.resendExitStandbyCount;
        break;
    case 0x2F00:
        for (i = 0; i < 6; i++)
            gSendCmd[1 + i] = Rfu.packet[i];
        break;
    case 0xbe00:
        gSendCmd[1] = gHeldKeyCodeToSend;
        break;
    case 0xee00:
        break;
    case 0xed00:
        break;
    }
}

void Rfu_SendPacket(void *data)
{
    if ((gSendCmd[0] == 0) && !RfuHasErrored())
    {
        memcpy(Rfu.packet, data, sizeof(Rfu.packet));
        RfuPrepareSendBuffer(0x2F00);
    }
}

bool32 Rfu_InitBlockSend(const u8 *src, size_t size)
{
    bool8 sizeHasModulo;
    (size<=252) ? ((void *)0) : AGBAssert(("C:/WORK/POKeFRLG/src/pm_lgfr_ose/source/" "rfu.c"), 1793, "size<=252", 1);;
    if (Rfu.RfuFunc != ((void *)0))
        return 0;
    if (gSendCmd[0] != 0)
        return 0;
    if (Rfu.sendBlock.sending != 0)
    {
        sRfuDebug.unk_83++;
        return 0;
    }
    sizeHasModulo = (size % 12) != 0;
    Rfu.sendBlock.owner = GetMultiplayerId();
    Rfu.sendBlock.sending = 1;
    Rfu.sendBlock.count = (size / 12) + sizeHasModulo;
    Rfu.sendBlock.next = 0;
    if (size > 0x100)
        Rfu.sendBlock.payload = src;
    else
    {
        if (src != gBlockSendBuffer)
            memcpy(gBlockSendBuffer, src, size);
        Rfu.sendBlock.payload = gBlockSendBuffer;
    }
    RfuPrepareSendBuffer(0x8800);
    Rfu.RfuFunc = HandleBlockSend;
    Rfu.sendBlockInitDelay = 0;
    return 1;
}

static void HandleBlockSend(void)
{
    if ((gSendCmd[0] == 0))
    {
        RfuPrepareSendBuffer(0x8800);
        if (Rfu.parent_child == 0x01)
        {
            if (++Rfu.sendBlockInitDelay > 2)
                Rfu.RfuFunc = SendNextBlock;
        }
        else
        {
            if ((gRecvCmds[GetMultiplayerId()][0] & 0xff00) == 0x8800)
                Rfu.RfuFunc = SendNextBlock;
        }
    }
}
static void SendNextBlock(void)
{
    s32 i;
    const u8 *src = Rfu.sendBlock.payload;
    gSendCmd[0] = 0x8900 | Rfu.sendBlock.next;
    for (i = 0; i < 7; i++)
        gSendCmd[i + 1] = (src[(i << 1) + Rfu.sendBlock.next * 12 + 1] << 8) | src[(i << 1) + Rfu.sendBlock.next * 12 + 0];
    Rfu.sendBlock.next++;
    if (Rfu.sendBlock.count <= Rfu.sendBlock.next)
    {
        Rfu.sendBlock.sending = 0;
        Rfu.RfuFunc = SendLastBlock;
    }
}

static void SendLastBlock(void)
{
    const u8 *src = Rfu.sendBlock.payload;
    u8 mpId = GetMultiplayerId();
    s32 i;
    if (Rfu.parent_child == 0x00)
    {
        gSendCmd[0] = 0x8900 | (Rfu.sendBlock.count - 1);
        for (i = 0; i < 7; i++)
            gSendCmd[i + 1] = (src[(i << 1) + (Rfu.sendBlock.count - 1) * 12 + 1] << 8) | src[(i << 1) + (Rfu.sendBlock.count - 1) * 12 + 0];
        if ((u8)gRecvCmds[mpId][0] == Rfu.sendBlock.count - 1)
        {
            if (Rfu.recvBlock[mpId].receivedFlags != sAllBlocksReceived[Rfu.recvBlock[mpId].count])
            {
                HandleSendFailure(mpId, Rfu.recvBlock[mpId].receivedFlags);
                sRfuDebug.unk_64++;
            }
            else
                Rfu.RfuFunc = ((void *)0);
        }
    }
    else
        Rfu.RfuFunc = ((void *)0);
}

bool8 Rfu_SendBlockRequest(u8 blockRequestType)
{
    Rfu.cmdA100_blockRequestType = blockRequestType;
    RfuPrepareSendBuffer(0xa100);
    return 1;
}

static void OnDisconnect_PowerDownRfu(void)
{
    rfu_clearAllSlot();
    rfu_LMAN_powerDownRFU();
    gReceivedRemoteLinkPlayers = 0;
    Rfu.isShuttingDown = 1;
    Rfu.RfuFunc = ((void *)0);
}

static void DisconnectRfu(void)
{
    rfu_REQ_disconnect(gRfuLinkStatus->connSlotFlag | gRfuLinkStatus->linkLossSlotFlag);
    rfu_waitREQComplete();
    OnDisconnect_PowerDownRfu();
}

static void TryDisconnectRfu(void)
{
    if (Rfu.parent_child == 0x00)
    {
        rfu_LMAN_requestChangeAgbClockMaster();
        Rfu.unk_ce4 = 2;
    }
    else
        Rfu.RfuFunc = DisconnectRfu;
}

void LinkRfu_FatalError(void)
{
    rfu_LMAN_requestChangeAgbClockMaster();
    Rfu.unk_ce4 = 1;
    Rfu.bm_DisconnectSlot = gRfuLinkStatus->connSlotFlag | gRfuLinkStatus->linkLossSlotFlag;
}


static void WaitAllReadyToCloseLink(void)
{
    s32 i;
    u8 playerCount = Rfu.playerCount;
    s32 count = 0;

    for (i = 0; i < 5; i++)
    {
        if (Rfu.readyCloseLink[i])
            count++;
    }
    if (count == playerCount)
    {
        gBattleTypeFlags &= ~((1 << 5) | 0xFFFF0000);
        if (Rfu.parent_child == 0x00)
        {
            Rfu.errorState = 3;
            TryDisconnectRfu();
        }
        else
            Rfu.RfuFunc = TryDisconnectRfu;
    }
}

static void SendReadyCloseLink(void)
{
    if ((gSendCmd[0] == 0) && !Rfu.foundNewLeaderMaybe)
    {
        RfuPrepareSendBuffer(0x5f00);
        Rfu.RfuFunc = WaitAllReadyToCloseLink;
    }
}

static void Task_TryReadyCloseLink(u8 taskId)
{
    if (Rfu.RfuFunc == ((void *)0))
    {
        Rfu.linkClosing = 1;
        Rfu.RfuFunc = SendReadyCloseLink;
        DestroyTask(taskId);
    }
}

void Rfu_SetCloseLinkCallback(void)
{
    if (!FuncIsActiveTask(Task_TryReadyCloseLink))
        CreateTask(Task_TryReadyCloseLink, 5);
}

static void SendReadyExitStandbyUntilAllReady(void)
{
    u8 playerCount;
    u8 i;

    if (GetMultiplayerId() != 0)
    {
        if (Rfu.recvQueue.count == 0 && Rfu.resendExitStandbyTimer > 60)
        {
            RfuPrepareSendBuffer(0x6600);
            Rfu.resendExitStandbyTimer = 0;
        }
    }
    playerCount = GetLinkPlayerCount();
    for (i = 0; i < playerCount; i++)
    {
        if (Rfu.readyExitStandby[i] == 0)
            break;
    }
    if (i == playerCount)
    {
        for (i = 0; i < 5; i++)
            Rfu.readyExitStandby[i] = 0;
        Rfu.resendExitStandbyCount++;
        Rfu.RfuFunc = ((void *)0);
    }
    Rfu.resendExitStandbyTimer++;
}

static void LinkLeaderReadyToExitStandby(void)
{
    if (Rfu.recvQueue.count == 0 && (gSendCmd[0] == 0))
    {
        RfuPrepareSendBuffer(0x6600);
        Rfu.RfuFunc = SendReadyExitStandbyUntilAllReady;
    }
}


static void Rfu_LinkStandby(void)
{
    u8 i;
    u8 playerCount;

    if (GetMultiplayerId() != 0)
    {
        if (Rfu.recvQueue.count == 0 && (gSendCmd[0] == 0))
        {
            RfuPrepareSendBuffer(0x6600);
            Rfu.RfuFunc = SendReadyExitStandbyUntilAllReady;
        }
    }
    else
    {
        playerCount = GetLinkPlayerCount();
        for (i = 1; i < playerCount; i++)
        {
            if (Rfu.readyExitStandby[i] == 0)
                break;
        }
        if (i == playerCount)
        {
            if (Rfu.recvQueue.count == 0 && (gSendCmd[0] == 0))
            {
                RfuPrepareSendBuffer(0x6600);
                Rfu.RfuFunc = LinkLeaderReadyToExitStandby;
            }
        }
    }
}

void Rfu_SetLinkStandbyCallback(void)
{
    if (Rfu.RfuFunc == ((void *)0))
    {
        Rfu.RfuFunc = Rfu_LinkStandby;
        Rfu.resendExitStandbyTimer = 0;
    }
}

bool32 IsRfuSerialNumberValid(u32 serialNo)
{
    s32 i;
    for (i = 0; sAcceptedSerialNos[i] != serialNo; i++)
    {
        if (sAcceptedSerialNos[i] == 0xFFFF)
            return 0;
    }
    return 1;
}

u8 ToggleLMANlinkRecovery(bool32 enable)
{
    if (!enable)
        return rfu_LMAN_setLinkRecovery(0, 0);
    rfu_LMAN_setLinkRecovery(1, 600);
    return 0;
}

void Rfu_UnionRoomChat_StopLinkManager(void)
{
    Rfu.linkClosing = 1;
    rfu_LMAN_stopManager(0);
}

u8 LinkRfu_GetMultiplayerId(void)
{
    if (Rfu.parent_child == 0x01)
        return 0;
    return Rfu.multiplayerId;
}

u8 GetRfuPlayerCount(void)
{
    return Rfu.playerCount;
}

bool8 IsLinkRfuTaskFinished(void)
{
    return Rfu.RfuFunc != ((void *)0) ? 0 : 1;
}

static void CallRfuFunc(void)
{
    if (Rfu.RfuFunc != ((void *)0))
        Rfu.RfuFunc();
}

static bool8 CheckForLeavingGroupMembers(void)
{
    s32 i;
    bool8 retval = 0;
    for (i = 0; i < 4; i++)
    {
        if (Rfu.partnerSendStatuses[i] < 5
         || Rfu.partnerSendStatuses[i] > 6)
        {
            if (gRfuSlotStatusNI[i]->recv.state == ( 0x0040 | 0x006) || gRfuSlotStatusNI[i]->recv.state == (0x0040 | 0x008))
            {
                if (Rfu.partnerRecvStatuses[i] == 8)
                {
                    Rfu.partnerSendStatuses[i] = 9;
                    Rfu.partnerRecvStatuses[i] = 10;
                    rfu_clearSlot(0x08, i);
                    rfu_NI_setSendData(1 << i, 8, &Rfu.partnerSendStatuses[i], 1);
                    retval = 1;
                }

            }
            else if (gRfuSlotStatusNI[Rfu.child_slot]->recv.state == ( 0x0040 | 0x007))
            {
                rfu_clearSlot(0x08, i);
            }
        }
    }
    return retval;
}

bool32 sub_80FA5D4(void)
{
    u8 flags = 0;
    s32 i;
    for (i = 0; i < 4; i++)
    {
        if (Rfu.partnerRecvStatuses[i] == 11)
        {
            flags |= (1 << i);
            Rfu.partnerRecvStatuses[i] = 0;
        }
    }
    if (flags)
    {
        rfu_REQ_disconnect(flags);
        rfu_waitREQComplete();
    }
    for (i = 0; i < 4; i++)
    {
        if (Rfu.partnerRecvStatuses[i] == 10 || Rfu.partnerRecvStatuses[i] == 11)
            return 1;
    }
    return 0;
}

bool32 CheckTrainerHasLeftByIdAndName(u16 trainerId, const u8 *trainerName)
{
    u8 r1 = GetPartnerIndexByNameAndTrainerID(trainerName, trainerId);
    if (r1 == 0xFF)
        return 1;
    if (Rfu.partnerSendStatuses[r1] == 9)
        return 1;
    return 0;
}

void SendByteToPartnerByIdAndName(u8 value, u16 trainerId, const u8 *trainerName)
{
    u8 slotNo = GetPartnerIndexByNameAndTrainerID(trainerName, trainerId);
    Rfu.partnerSendStatuses[slotNo] = value;
    rfu_clearSlot(0x04, slotNo);
    rfu_NI_setSendData(1 << slotNo, 8, Rfu.partnerSendStatuses + slotNo, 1);
}

void SendLeaveGroupNotice(void)
{
    Rfu.sendStatus = 8;
    rfu_clearSlot(0x04, Rfu.child_slot);
    rfu_NI_setSendData(1 << Rfu.child_slot, 8, &Rfu.sendStatus, 1);
}

u32 WaitSendByteToPartnerByIdAndName(u16 trainerId, const u8 *trainerName)
{
    u8 r0 = GetPartnerIndexByNameAndTrainerID(trainerName, trainerId);
    if (r0 == 0xFF)
        return 2;
    if (gRfuSlotStatusNI[r0]->send.state == 0x0000)
        return 1;
    return 0;
}

static void UpdateChildStatuses(void)
{
    s32 i;

    CheckForLeavingGroupMembers();
    for (i = 0; i < 4; i++)
    {
        if (gRfuSlotStatusNI[i]->send.state == ( 0x0020 | 0x006) || gRfuSlotStatusNI[i]->send.state == ( 0x0020 | 0x007))
        {
            if (Rfu.partnerRecvStatuses[i] == 10)
                Rfu.partnerRecvStatuses[i] = 11;
            rfu_clearSlot(0x04, i);
        }
    }
}

static s32 GetRfuRecvStatus(void)
{
    s32 retval = 0;
    if (Rfu.sendStatus == 8)
    {
        if (gRfuSlotStatusNI[Rfu.child_slot]->send.state == ( 0x0020 | 0x006) || gRfuSlotStatusNI[Rfu.child_slot]->send.state == ( 0x0020 | 0x007))
            rfu_clearSlot(0x04, Rfu.child_slot);
    }
    if (gRfuSlotStatusNI[Rfu.child_slot]->recv.state == ( 0x0040 | 0x006) || gRfuSlotStatusNI[Rfu.child_slot]->recv.state == (0x0040 | 0x008))
    {
        rfu_clearSlot(0x08, Rfu.child_slot);
        RfuSetStatus(Rfu.recvStatus, 0);
        retval = Rfu.recvStatus;
    }
    else if (gRfuSlotStatusNI[Rfu.child_slot]->recv.state == ( 0x0040 | 0x007))
    {
        rfu_clearSlot(0x08, Rfu.child_slot);
        retval = 6;
    }
    return retval;
}

static void sub_80FA834(u8 taskId)
{
    s32 i;

    if (Rfu.status == 1 || Rfu.status == 2)
    {
        Rfu.foundNewLeaderMaybe = 0;
        DestroyTask(taskId);
    }
    switch (gTasks[taskId].data[0])
    {
    case 0:
        if (AreNoPlayersReceiving())
        {
            ResetBlockReceivedFlags();
            LocalLinkPlayerToBlock();
            gTasks[taskId].data[0]++;
        }
        break;
    case 1:
        if (Rfu.parent_child == 0x01)
        {
            if (gReceivedRemoteLinkPlayers)
                RfuPrepareSendBuffer(0x7800);
            else
                RfuPrepareSendBuffer(0x7700);
            gTasks[taskId].data[0] = 101;
        }
        else
            gTasks[taskId].data[0] = 2;
        break;
    case 101:
        if ((gSendCmd[0] == 0))
            gTasks[taskId].data[0] = 2;
        break;
    case 2:
        if (Rfu.playerCount)
            gTasks[taskId].data[0]++;
        break;
    case 3:
        if (Rfu.parent_child == 0x01)
        {
            if (AreNoPlayersReceiving())
            {
                Rfu.cmdA100_blockRequestType = BLOCK_REQ_SIZE_NONE;
                RfuPrepareSendBuffer(0xa100);
                gTasks[taskId].data[0]++;
            }
        }
        else
            gTasks[taskId].data[0]++;
        break;
    case 4:
        if (AreAllPlayersFinishedReceiving())
            gTasks[taskId].data[0]++;
        break;
    case 5:
        for (i = 0; i < Rfu.playerCount; i++)
        {
            LinkPlayerFromBlock(i);
            Rfu_ResetBlockReceivedFlag(i);
        }
        gTasks[taskId].data[0]++;
        break;
    case 6:
        DestroyTask(taskId);
        gReceivedRemoteLinkPlayers = 1;
        Rfu.foundNewLeaderMaybe = 0;
        rfu_LMAN_setLinkRecovery(1, 600);
        if (Rfu.unionRoomChatters)
        {
            for (i = 0; i < 4; i++)
            {
                if ((Rfu.unionRoomChatters >> i) & 1)
                {
                    Rfu.bmChatLeaderMaybe = 1 << i;
                    Rfu.unionRoomChatters ^= (1 << i);
                }
            }
        }
        break;
    }
}

static void ClearSelectedLinkPlayerIds(u16 disconnectMask)
{
    s32 i;

    for (i = 0; i < 4; i++)
    {
        if ((disconnectMask >> i) & 1)
            Rfu.linkPlayerIdx[i] = 0;
    }
}

static void ReceiveRfuLinkPlayers(const struct SioInfo *chunk)
{
    s32 i;
    Rfu.playerCount = chunk->playerCount;
    for (i = 0; i < 4; i++)
        Rfu.linkPlayerIdx[i] = chunk->linkPlayerIdx[i];
    for (i = 0; i < 5; i++)
    {
        gLinkPlayers[i] = chunk->linkPlayers[i];
        ConvertLinkPlayerName(gLinkPlayers + i);
    }
}

static void ValidateAndReceivePokemonSioInfo(void *recvBuffer)
{
    if (strcmp("PokemonSioInfo", recvBuffer) == 0)
    {
        ReceiveRfuLinkPlayers(recvBuffer);
        { vu16 tmp = (vu16)(0); CpuSet((void *)&tmp, recvBuffer, 0x00000000 | 0x01000000 | ((sizeof(struct SioInfo))/(16/8) & 0x1FFFFF)); };
        ResetBlockReceivedFlag(0);
    }
}

static void Task_ExchangeLinkPlayers(u8 taskId)
{
    s32 i;
    struct LinkPlayerBlock *r2;
    struct SioInfo *r5;
    u8 r4 = Rfu.linkPlayerIdx[gUnknown_843EC38[Rfu.unk_ce9]];
    if (Rfu.status == 1 || Rfu.status == 2)
    {
        Rfu.foundNewLeaderMaybe = 0;
        DestroyTask(taskId);
    }
    switch (gTasks[taskId].data[0])
    {
    case 0:
        if ((gSendCmd[0] == 0))
        {
            ResetBlockReceivedFlag(r4);
            RfuPrepareSendBuffer(0x7800);
            gTasks[taskId].data[0]++;
        }
        break;
    case 1:
        if ((gSendCmd[0] == 0))
            gTasks[taskId].data[0]++;
        break;
    case 2:
        if ((GetBlockReceivedStatus() >> r4) & 1)
        {
            ResetBlockReceivedFlag(r4);
            r2 = (struct LinkPlayerBlock *)gBlockRecvBuffer[r4];
            gLinkPlayers[r4] = r2->linkPlayer;
            ConvertLinkPlayerName(gLinkPlayers + r4);
            gTasks[taskId].data[0]++;
        }
        break;
    case 3:

        r5 = (struct SioInfo *)gBlockSendBuffer;
        memcpy(r5->magic, "PokemonSioInfo", sizeof("PokemonSioInfo"));
        r5->playerCount = Rfu.playerCount;
        for (i = 0; i < 4; i++)
            r5->linkPlayerIdx[i] = Rfu.linkPlayerIdx[i];
        memcpy(r5->linkPlayers, gLinkPlayers, sizeof gLinkPlayers);
        gTasks[taskId].data[0]++;

    case 4:
        r5 = (struct SioInfo *)gBlockSendBuffer;
        r5->playerCount = Rfu.playerCount;
        for (i = 0; i < 4; i++)
            r5->linkPlayerIdx[i] = Rfu.linkPlayerIdx[i];
        memcpy(r5->linkPlayers, gLinkPlayers, sizeof gLinkPlayers);
        if (SendBlock(0, gBlockSendBuffer, 0xa0))
            gTasks[taskId].data[0]++;
        break;
    case 5:
        if (IsLinkTaskFinished() && GetBlockReceivedStatus() & 1)
        {
            { vu16 tmp = (vu16)(0); CpuSet((void *)&tmp, gBlockRecvBuffer, 0x00000000 | 0x01000000 | ((sizeof(struct SioInfo))/(16/8) & 0x1FFFFF)); };
            ResetBlockReceivedFlag(0);
            Rfu.foundNewLeaderMaybe = 0;
            if (Rfu.unionRoomChatters)
            {
                for (i = 0; i < 4; i++)
                {
                    if ((Rfu.unionRoomChatters >> i) & 1)
                    {
                        Rfu.bmChatLeaderMaybe = 1 << i;
                        Rfu.unionRoomChatters ^= (1 << i);
                        Rfu.foundNewLeaderMaybe = 1;
                        break;
                    }
                }
            }
            DestroyTask(taskId);
        }
        break;
    }
}

static void sub_80FACF0(u8 taskId)
{
    if (Rfu.status == 1 || Rfu.status == 2)
        DestroyTask(taskId);
    switch (gTasks[taskId].data[0])
    {
    case 0:
        if (Rfu.playerCount != 0)
        {
            LocalLinkPlayerToBlock();
            SendBlock(0, gBlockSendBuffer, sizeof(struct LinkPlayerBlock));
            gTasks[taskId].data[0]++;
        }
        break;
    case 1:
        if (IsLinkTaskFinished())
            gTasks[taskId].data[0]++;
        break;
    case 2:
        if (GetBlockReceivedStatus() & 1)
        {
            ReceiveRfuLinkPlayers((const struct SioInfo *)gBlockRecvBuffer);
            ResetBlockReceivedFlag(0);
            gReceivedRemoteLinkPlayers = 1;
            DestroyTask(taskId);
        }
        break;
    }
}

static void RfuCheckErrorStatus(void)
{
    if (Rfu.errorState == 1 && lman.childClockSlave_flag == 0)
    {
        if (gMain.callback2 == c2_mystery_gift_e_reader_run)
            gWirelessCommType = 2;
        SetMainCallback2(CB2_LinkError);
        gMain.savedCallback = CB2_LinkError;
        SetLinkErrorFromRfu(
            (Rfu.linkman_msg << 16) | (Rfu.linkman_param[0] << 8) | Rfu.linkman_param[1],
            Rfu.recvQueue.count,
            Rfu.sendQueue.count,
            RfuGetStatus() == 2
        );
        Rfu.errorState = 2;
        CloseLink();
    }
    else if (Rfu.sendQueue.full == 1 || Rfu.recvQueue.full == 1)
    {
        if (lman.childClockSlave_flag)
            rfu_LMAN_requestChangeAgbClockMaster();
        RfuSetStatus(1, 0x7000);
        GetLinkmanErrorParams(0x7000);
    }
}

static void rfu_REQ_recvData_then_sendData(void)
{
    if (lman.parent_child == 0x01)
    {
        rfu_REQ_recvData();
        rfu_waitREQComplete();
        rfu_LMAN_REQ_sendData(0);
    }
}

bool32 LinkRfuMain1(void)
{
    bool32 retval = 0;
    Rfu.parentId = 0;
    rfu_LMAN_manager_entity(Random());
    if (!Rfu.isShuttingDown)
    {
        switch (Rfu.parent_child)
        {
        case 0x01:
            sub_80F911C();
            break;
        case 0x00:
            retval = RfuProcessEnqueuedRecvBlock();
            break;
        case 2:
            rfu_REQ_recvData_then_sendData();
            break;
        }
    }
    return retval;
}

bool32 LinkRfuMain2(void)
{
    bool32 retval = 0;
    if (!Rfu.isShuttingDown)
    {
        if (Rfu.parent_child == 0x01)
            retval = sub_80F9204();
        RfuCheckErrorStatus();
    }
    return retval;
}

static void CopyPlayerNameToUnameBuffer(void)
{
    StringCopy(gHostRFUtgtUnameBuffer, gSaveBlock2Ptr->playerName);
}

void ClearAndInitHostRFUtgtGname(void)
{
    memset(&gHostRFUtgtGnameBuffer, 0, 13);
    InitHostRFUtgtGname(&gHostRFUtgtGnameBuffer, 0, 0, 0);
}

void SetHostRFUtgtGname(u8 activity, u32 child_sprite_genders, u32 started)
{
    InitHostRFUtgtGname(&gHostRFUtgtGnameBuffer, activity, started, child_sprite_genders);
}

void SetGnameBufferWonderFlags(bool32 hasNews, bool32 hasCard)
{
    gHostRFUtgtGnameBuffer.unk_00.hasNews = hasNews;
    gHostRFUtgtGnameBuffer.unk_00.hasCard = hasCard;
}

void RfuUpdatePlayerGnameStateAndSend(u32 type, u32 species, u32 level)
{
    gHostRFUtgtGnameBuffer.type = type;
    gHostRFUtgtGnameBuffer.species = species;
    gHostRFUtgtGnameBuffer.level = level;
}

void UpdateGameData_GroupLockedIn(bool8 started)
{
    gHostRFUtgtGnameBuffer.started = started;
    rfu_REQ_configGameData(0, 0x0002, (void *)&gHostRFUtgtGnameBuffer, gHostRFUtgtUnameBuffer);
}

void UpdateGameDataWithActivitySpriteGendersFlag(u8 activity, u32 child_sprite_genders, u32 started)
{
    if (activity)
        SetHostRFUtgtGname(activity, child_sprite_genders, started);
    rfu_REQ_configGameData(0, 0x0002, (void *)&gHostRFUtgtGnameBuffer, gHostRFUtgtUnameBuffer);
}

void sub_80FB030(u32 linkPlayerCount)
{
    s32 i;
    u32 numConnectedChildren;
    u32 child_sprite_genders;
    s32 bm_child_slots;

    if (GetHostRFUtgtGname()->activity == (5 | 0x40))
    {
        numConnectedChildren = 0;
        child_sprite_genders = 0;
        bm_child_slots = Rfu.bm_PartnerFlags ^ Rfu.bm_DisconnectSlot;
        for (i = 0; i < 4; i++)
        {
            if ((bm_child_slots >> i) & 1)
            {

                child_sprite_genders |= ((
                    0x80 | ((gLinkPlayers[Rfu.linkPlayerIdx[i]].gender & 1) << 3) | (gLinkPlayers[Rfu.linkPlayerIdx[i]].trainerId & 7)
                ) << (numConnectedChildren << 3));
                numConnectedChildren++;
                if (numConnectedChildren == linkPlayerCount - 1)
                    break;
            }
        }
        UpdateGameDataWithActivitySpriteGendersFlag(5 | 0x40, child_sprite_genders, 0);
    }
}

static void GetLinkmanErrorParams(u32 msg)
{
    if (Rfu.errorState == 0)
    {
        Rfu.linkman_param[0] = lman.param[0];
        Rfu.linkman_param[1] = lman.param[1];
        Rfu.linkman_msg = msg;
        Rfu.errorState = 1;
    }
}

static void ResetErrorState(void)
{
    Rfu.errorState = 0;
}

void sub_80FB128(bool32 a0)
{
    if (!a0)
        Rfu.errorState = 0;
    else
        Rfu.errorState = 4;
}

static void sub_80FB154(void)
{
    sub_80FBE20(lman.acceptSlot_flag, 1);
    Rfu.RfuFunc = ((void *)0);
}

static void sub_80FB174(void)
{
    Rfu.RfuFunc = sub_80FB154;
}

static void LmanCallback_Parent2(u8 msg, u8 param_count)
{
    u8 i;
    u8 bmDisconnectFlag = 0;
    switch (msg)
    {
    case 0x00:
        Rfu.state = 2;
        break;
    case 0x10:
        break;
    case 0x11:
        sub_80FB564(lman.param[0]);
        for (i = 0; i < 4; i++)
        {
            if ((lman.param[0] >> i) & 1)
            {
                struct GFtgtGname *structPtr = (void *)&gRfuLinkStatus->partner[i].gname;
                if (structPtr->activity == GetHostRFUtgtGname()->activity)
                {
                    Rfu.partnerSendStatuses[i] = 0;
                    Rfu.partnerRecvStatuses[i] = 0;
                    rfu_setRecvBuffer(0x20, i, Rfu.partnerRecvStatuses + i, 1);
                }
                else
                {
                    bmDisconnectFlag |= (1 << i);
                }
            }
        }
        if (bmDisconnectFlag)
        {
            rfu_REQ_disconnect(bmDisconnectFlag);
            rfu_waitREQComplete();
        }
        break;
    case 0x12:
        break;
    case 0x13:
        break;
    case 0x14:
        if (Rfu.acceptSlot_flag != lman.acceptSlot_flag)
        {
            rfu_REQ_disconnect(Rfu.acceptSlot_flag ^ lman.acceptSlot_flag);
            rfu_waitREQComplete();
        }
        Rfu.state = 17;
        break;
    case 0x31:
        Rfu.linkLossRecoveryState = 1;
        break;
    case 0x32:
        Rfu.linkLossRecoveryState = 3;
        break;
    case 0x30:
    case 0x33:
        Rfu.linkLossRecoveryState = 4;
        Rfu.bm_PartnerFlags &= ~lman.param[0];
        if (gReceivedRemoteLinkPlayers == 1)
        {
            if (Rfu.bm_PartnerFlags == 0)
                GetLinkmanErrorParams(msg);
            else
                sub_80FB174();
        }
        RfuSetStatus(2, msg);
        break;
    case 0x34:
        break;
    case 0x42:
    case 0x43:
    case 0x44:
        break;
    case 0xf3:
        RfuSetStatus(1, msg);
        GetLinkmanErrorParams(msg);
        Rfu.isShuttingDown = 1;
        break;
    case 0xf0:
    case 0xf1:
    case 0xf2:
    case 0xff:
        GetLinkmanErrorParams(msg);
        RfuSetStatus(1, msg);
        Rfu.unk_cdb = 1;
        break;
    }
}

static const u8 unref_843EDF3[] = _("　あきと");

static void LmanCallback_Child(u8 msg, u8 param_count)
{
    switch (msg)
    {
    case 0x00:
        Rfu.state = 6;
        break;
    case 0x20:
        Rfu.parentId = lman.param[0];
        break;
    case 0x21:
        break;
    case 0x22:
        Rfu.child_slot = lman.param[0];
        break;
    case 0x23:
        RfuSetStatus(2, msg);
        break;
    case 0x24:
        Rfu.state = 11;
        Rfu.sendStatus = 0;
        Rfu.recvStatus = 0;
        rfu_setRecvBuffer(0x20, Rfu.child_slot, &Rfu.recvStatus, 1);
        rfu_setRecvBuffer(0x10, Rfu.child_slot, Rfu.unk_c3f, sizeof(Rfu.unk_c3f));
        break;
    case 0x25:
        RfuSetStatus(2, msg);
        break;
    case 0x30:
        Rfu.linkLossRecoveryState = 2;
        if (Rfu.recvStatus == 6)
            break;
    case 0x33:
        if (Rfu.linkLossRecoveryState != 2)
            Rfu.linkLossRecoveryState = 4;
        if (Rfu.recvStatus != 9)
            RfuSetStatus(2, msg);
        Debug_PrintString("LINK LOSS DISCONNECT!", 5, 5);
        if (gReceivedRemoteLinkPlayers == 1)
            GetLinkmanErrorParams(msg);
        break;
    case 0x31:
        Rfu.linkLossRecoveryState = 1;
        Debug_PrintString("LINK LOSS RECOVERY NOW", 5, 5);
        break;
    case 0x32:
        Rfu.linkLossRecoveryState = 3;
        Rfu.linkRecovered = 1;
        break;
    case 0x34:
        break;
    case 0x42:
    case 0x43:
    case 0x44:
        break;
    case 0xf3:
        RfuSetStatus(1, msg);
        GetLinkmanErrorParams(msg);
        Rfu.isShuttingDown = 1;
        break;
    case 0xf0:
    case 0xf1:
    case 0xf2:
    case 0xff:
        RfuSetStatus(1, msg);
        GetLinkmanErrorParams(msg);
        Rfu.unk_cdb = 1;
        break;
    }
}

static void sub_80FB564(s32 bmConnectedFlag)
{
    s32 i;

    for (i = 0; i < 4; i++)
    {
        if ((bmConnectedFlag >> i) & 1)
        {
            Rfu.unk_cea[i] = 0;
            Rfu.unk_cee[i] = 0xFF;
        }
    }
}

static u8 GetNewChildrenInUnionRoomChat(s32 bmNewChildSlot)
{
    u8 ret = 0;
    u8 i;

    for (i = 0; i < 4; i++)
    {
        if ((bmNewChildSlot >> i) & 1)
        {
            struct GFtgtGname *structPtr = (void *)&gRfuLinkStatus->partner[i].gname;
            if (structPtr->activity == (5 | 0x40))
                ret |= (1 << i);
        }
    }

    return ret;
}

static void LmanCallback_Parent(u8 msg, u8 param_count)
{
    u8 r1;

    switch (msg)
    {
    case 0x00:
        Rfu.state = 17;
        break;
    case 0x10:
        RfuSetStatus(4, 0);
        break;
    case 0x11:
        if (GetHostRFUtgtGname()->activity == (5 | 0x40) && !Rfu.linkClosing)
        {
            u8 bmAcceptSlot = GetNewChildrenInUnionRoomChat(lman.param[0]);
            if (bmAcceptSlot != 0)
            {
                r1 = 1 << CountTrailingZeroes(bmAcceptSlot);
                if (Rfu.unionRoomChatters == 0 && !Rfu.foundNewLeaderMaybe)
                {
                    Rfu.bmChatLeaderMaybe = r1;
                    Rfu.unionRoomChatters |= (r1 ^ bmAcceptSlot);
                    Rfu.foundNewLeaderMaybe = 1;
                }
                else
                {
                    Rfu.unionRoomChatters |= bmAcceptSlot;
                }
            }
            if (bmAcceptSlot != lman.param[0])
            {
                Rfu.bm_DisconnectSlot |= (bmAcceptSlot ^ lman.param[0]);
                Rfu.unk_ce4 = 2;
            }
        }
        else if (GetHostRFUtgtGname()->activity == (20 | 0x40))
        {
            rfu_REQ_disconnect(lman.acceptSlot_flag);
            rfu_waitREQComplete();
        }
        sub_80FB564(lman.param[0]);
        break;
    case 0x12:
        break;
    case 0x13:
        break;
    case 0x14:
        if (GetHostRFUtgtGname()->activity != (5 | 0x40) && lman.acceptCount > 1)
        {
            r1 = 1 << CountTrailingZeroes(lman.param[0]);
            rfu_REQ_disconnect(lman.acceptSlot_flag ^ r1);
            rfu_waitREQComplete();
        }
        if (Rfu.state == 15)
            Rfu.state = 16;
        break;
    case 0x20:
        Rfu.parentId = lman.param[0];
        break;
    case 0x21:
        break;
    case 0x22:
        Rfu.child_slot = lman.param[0];
        break;
    case 0x23:
        Rfu.state = 18;
        if (Rfu.unk_ccf < 2)
        {
            Rfu.unk_ccf++;
            CreateTask(sub_80FC028, 2);
        }
        else
        {
            RfuSetStatus(2, msg);
        }
        break;
    case 0x24:
        Rfu.state = 13;
        RfuSetStatus(3, 0);
        rfu_setRecvBuffer(0x10, Rfu.child_slot, Rfu.unk_c3f, sizeof(Rfu.unk_c3f));
        break;
    case 0x25:
        RfuSetStatus(2, msg);
        break;
    case 0x31:
        if (lman.acceptSlot_flag & lman.param[0])
            Rfu.linkLossRecoveryState = 1;
        break;
    case 0x32:
        Rfu.linkLossRecoveryState = 3;
        if (gRfuLinkStatus->parentChild == 0x00)
            Rfu.linkRecovered = 1;
        break;
    case 0x30:
        Rfu.linkLossRecoveryState = 2;

    case 0x33:
        if (Rfu.linkLossRecoveryState != 2)
            Rfu.linkLossRecoveryState = 4;
        if (Rfu.parent_child == 0x01)
        {
            if (gReceivedRemoteLinkPlayers == 1)
            {
                Rfu.bm_PartnerFlags &= ~(lman.param[0]);
                if (Rfu.bm_PartnerFlags == 0)
                    GetLinkmanErrorParams(msg);
                else
                    sub_80FB174();
            }
        }
        else if (Rfu.unk_ce4 != 2 && gReceivedRemoteLinkPlayers == 1)
        {
            GetLinkmanErrorParams(msg);
            rfu_LMAN_stopManager(0);
        }

        if (gRfuLinkStatus->parentChild == 0xff && lman.pcswitch_flag == 0 && FuncIsActiveTask(Task_LinkRfu_UnionRoomListen) == 1)
            Rfu.state = 17;

        RfuSetStatus(2, msg);
        break;
    case 0x40:
        Rfu.bm_DisconnectSlot = 0;
        break;
    case 0x42:
    case 0x43:
    case 0x44:
        break;
    case 0xf3:
        RfuSetStatus(1, msg);
        GetLinkmanErrorParams(msg);
        Rfu.isShuttingDown = 1;
        break;
    case 0xf0:
    case 0xf1:
    case 0xf2:
    case 0xff:
        GetLinkmanErrorParams(msg);
        RfuSetStatus(1, msg);
        Rfu.unk_cdb = 0;
        break;
    }
}

void sub_80FB9D0(void)
{
    Rfu.unk_ce4 = 2;
}

void RfuSetStatus(u8 status, u16 msg)
{
    Rfu.status = status;
    Rfu.linkman_msg = msg;
}

u8 RfuGetStatus(void)
{
    return Rfu.status;
}

bool32 RfuHasErrored(void)
{
    u32 status = RfuGetStatus();
    if (status == 1 || status == 2)
        return 1;
    else
        return 0;
}

bool32 RfuHasFoundNewLeader(void)
{
    return Rfu.foundNewLeaderMaybe;
}

bool8 Rfu_IsMaster(void)
{
    return Rfu.parent_child;
}

void RFUVSync(void)
{
    rfu_LMAN_syncVBlank();
}

void ClearRecvCommands(void)
{
    { vu32 tmp = (vu32)(0); CpuSet((void *)&tmp, gRecvCmds, 0x04000000 | 0x01000000 | ((sizeof(gRecvCmds))/(32/8) & 0x1FFFFF)); };
}

static void sub_80FBA64(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void sub_80FBA78(void)
{
    s32 i;

    ResetSpriteData();
    FreeAllSpritePalettes();
    ResetTasks();
    ResetPaletteFade();
    SetVBlankCallback(sub_80FBA64);
    if (IsWirelessAdapterConnected())
    {
        gLinkType = 0x1111;
        SetWirelessCommType1();
        OpenLink();
        SeedRng(gMain.vblankCounter2);
        for (i = 0; i < 4; i++)
            gSaveBlock2Ptr->playerTrainerId[i] = Random() % 256;

        SetGpuReg(0x0, 0x1000 | 0x0100 | 0x0400 | 0x0040);
        RunTasks();
        AnimateSprites();
        BuildOamBuffer();
        UpdatePaletteFade();
        LinkRfu_CreateIdleTask();
        SetMainCallback2(sub_80FBB74);
    }
}

bool32 IsUnionRoomListenTaskActive(void)
{
    return FuncIsActiveTask(Task_LinkRfu_UnionRoomListen);
}

void LinkRfu_CreateIdleTask(void)
{
    if (!FuncIsActiveTask(Task_idle))
        Rfu.idleTaskId = CreateTask(Task_idle, 0);
}

void LinkRfu_DestroyIdleTask(void)
{
    if (FuncIsActiveTask(Task_idle) == 1)
        DestroyTask(Rfu.idleTaskId);
}

static void sub_80FBB74(void)
{
    RunTasks();
    AnimateSprites();
    BuildOamBuffer();
    UpdatePaletteFade();
}

void InitializeRfuLinkManager_LinkLeader(u32 availSlots)
{
    Rfu.parent_child = 0x01;
    CopyPlayerNameToUnameBuffer();
    rfu_LMAN_initializeManager(LmanCallback_Parent2, ((void *)0));
    sRfuReqConfig = sRfuReqConfigTemplate;
    sRfuReqConfig.availSlot_flag = sAvailSlots[availSlots - 1];
    CreateTask_LinkLeaderSearchForChildren();
}

void InitializeRfuLinkManager_JoinGroup(void)
{
    Rfu.parent_child = 0x00;
    CopyPlayerNameToUnameBuffer();
    rfu_LMAN_initializeManager(LmanCallback_Child, MscCallback_Child);
    CreateTask_JoinGroupSearchForParent();
}

void InitializeRfuLinkManager_EnterUnionRoom(void)
{
    if ((gQuestLogState == 2 || gQuestLogState == 3))
        return;
    Rfu.parent_child = 2;
    CopyPlayerNameToUnameBuffer();
    rfu_LMAN_initializeManager(LmanCallback_Parent, ((void *)0));
    sRfuReqConfig = sRfuReqConfigTemplate;
    sRfuReqConfig.linkRecovery_enable = 0;
    sRfuReqConfig.linkRecovery_period = 600;
    Rfu.searchTaskId = CreateTask(Task_LinkRfu_UnionRoomListen, 1);
}

static u16 ReadU16(const void *ptr)
{
    const u8 *ptr_ = ptr;
    return (ptr_[1] << 8) | (ptr_[0]);
}
# 2560 "src/link_rfu_2.c"
static u8 GetPartnerIndexByNameAndTrainerID(const u8 *trainerName, u16 trainerId)
{
    u8 i;
    u8 ret = 0xFF;

    for (i = 0; i < 4; i++)
    {
        u16 partnerTrainerId = ReadU16(((struct GFtgtGname *)gRfuLinkStatus->partner[i].gname)->unk_00.playerTrainerId);
        if (IsRfuSerialNumberValid(gRfuLinkStatus->partner[i].serialNo)
            && !StringCompare(trainerName, gRfuLinkStatus->partner[i].uname)
            && trainerId == partnerTrainerId)
        {
            ret = i;
            if (gRfuLinkStatus->partner[i].slot != 0xFF)
                break;
        }
    }

    return ret;
}

static void RfuReqDisconnectSlot(u32 bmDisconnectSlot)
{
    rfu_REQ_disconnect(bmDisconnectSlot);
    rfu_waitREQComplete();
    Rfu.bm_PartnerFlags &= ~(bmDisconnectSlot);
    rfu_clearSlot(0x01, Rfu.unk_cda);
    rfu_UNI_setSendData(Rfu.bm_PartnerFlags, Rfu.recvCmds, 70);
    Rfu.unk_cda = CountTrailingZeroes(Rfu.bm_PartnerFlags);
}

void RequestDisconnectSlotByTrainerNameAndId(const u8 *trainerName, u16 trainerId)
{
    u8 var = GetPartnerIndexByNameAndTrainerID(trainerName, trainerId);
    if (var != 0xFF)
        RfuReqDisconnectSlot(1 << var);
}

void sub_80FBD6C(u32 a0)
{
    if (a0 != 0)
    {
        s32 i;
        u8 var = 0;

        for (i = 0; i < 4; i++)
        {
            if (Rfu.linkPlayerIdx[i] == a0 && (Rfu.bm_PartnerFlags >> i) & 1)
                var |= 1 << i;
        }
        if (var)
            sub_80FBE20(var, 2);
    }
}

static void sub_80FBDB8(u8 taskId)
{
    if ((gSendCmd[0] == 0) && !Rfu.foundNewLeaderMaybe)
    {
        RfuPrepareSendBuffer(0xed00);
        gSendCmd[1] = gTasks[taskId].data[0];
        gSendCmd[2] = gTasks[taskId].data[1];
        Rfu.playerCount -= sNumSetBits[gTasks[taskId].data[0]];
        gSendCmd[3] = Rfu.playerCount;
        DestroyTask(taskId);
    }
}

static void sub_80FBE20(u32 a0, u32 a1)
{
    u8 taskId = FindTaskIdByFunc(sub_80FBDB8);
    if (taskId == 0xFF)
    {
        taskId = CreateTask(sub_80FBDB8, 5);
        gTasks[taskId].data[0] = a0;
    }
    else
    {
        gTasks[taskId].data[0] |= a0;
    }

    gTasks[taskId].data[1] = a1;
}

static void Task_RfuReconnectWithParent(u8 taskId)
{
    s16 *data = gTasks[taskId].data;

    if (ContactedByParentAttemptingToReconnect())
    {
        u8 id = GetPartnerIndexByNameAndTrainerID((u8 *)data, ReadU16(&data[8]));
        if (id != 0xFF)
        {
            if (gRfuLinkStatus->partner[id].slot != 0xFF)
            {
                Rfu.reconnectedParentIdx = id;
                if (IsParentSuccessfullyReconnected())
                    DestroyTask(taskId);
            }
            else if (GetHostRFUtgtGname()->activity == 21 || GetHostRFUtgtGname()->activity == 22)
            {
                data[15]++;
            }
            else
            {
                RfuSetStatus(2, 0x7000);
                DestroyTask(taskId);
            }
        }
        else
        {
            data[15]++;
            Rfu.reconnectedParentIdx = id;
        }
    }
    else
    {
        data[15]++;
    }

    if (data[15] > 240)
    {
        RfuSetStatus(2, 0x7000);
        DestroyTask(taskId);
    }
}

void CreateTask_RfuReconnectWithParent(const u8 *trainerName, u16 trainerId)
{
    u8 taskId;
    s16 *data;

    Rfu.status = 0;
    taskId = CreateTask(Task_RfuReconnectWithParent, 3);
    data = gTasks[taskId].data;
    StringCopy((u8 *)(data), trainerName);
    data[8] = trainerId;
}

static bool32 ShouldRejectPartnerConnectionBasedOnActivity(s16 activity, struct GFtgtGname *partnerGname)
{
    if (GetHostRFUtgtGname()->activity == (5 | 0x40))
    {
        if (partnerGname->activity != (5 | 0x40))
            return 1;
    }
    else if (partnerGname->activity != 0x40)
    {
        return 1;
    }
    else if (activity == (4 | 0x40))
    {
        struct GFtgtGname *myTradeGname = (struct GFtgtGname *)&Rfu.tgtData.gname;
        if (myTradeGname->species == 412)
        {
            if (partnerGname->species == myTradeGname->species)
                return 0;
            else
                return 1;
        }
        else if (partnerGname->species != myTradeGname->species
                 || partnerGname->level != myTradeGname->level
                 || partnerGname->type != myTradeGname->type)
        {
            return 1;
        }
    }

    return 0;
}

static void sub_80FC028(u8 taskId)
{
    if (Rfu.status == 4)
        DestroyTask(taskId);

    if (++gTasks[taskId].data[0] > 300)
    {
        RfuSetStatus(2, 0x7000);
        DestroyTask(taskId);
    }

    if (Rfu.parentId != 0 && lman.parent_child == 0x00)
    {
        u16 trainerId = ReadU16(((struct GFtgtGname *)&Rfu.tgtData.gname)->unk_00.playerTrainerId);
        u8 id = GetPartnerIndexByNameAndTrainerID(Rfu.tgtData.uname, trainerId);
        if (id != 0xFF)
        {
            if (!ShouldRejectPartnerConnectionBasedOnActivity(gTasks[taskId].data[1], (struct GFtgtGname *)&gRfuLinkStatus->partner[id].gname))
            {
                if (gRfuLinkStatus->partner[id].slot != 0xFF && !rfu_LMAN_CHILD_connectParent(gRfuLinkStatus->partner[id].id, 90))
                {
                    Rfu.state = 10;
                    DestroyTask(taskId);
                }
            }
            else
            {
                RfuSetStatus(2, 0x7000);
                DestroyTask(taskId);
            }
        }
    }
}

void sub_80FC114(const u8 *name, struct GFtgtGname *structPtr, u8 activity)
{
    u8 taskId, taskId2;

    Rfu.unk_ccf = 0;
    Rfu.status = 0;
    StringCopy(Rfu.tgtData.uname, name);
    memcpy(Rfu.tgtData.gname, structPtr, 13);
    rfu_LMAN_forceChangeSP();
    taskId = CreateTask(sub_80FC028, 2);
    gTasks[taskId].data[1] = activity;
    taskId2 = FindTaskIdByFunc(Task_LinkRfu_UnionRoomListen);
    if (activity == (5 | 0x40))
    {
        if (taskId2 != 0xFF)
            gTasks[taskId2].data[7] = 1;
    }
    else
    {
        if (taskId2 != 0xFF)
            gTasks[taskId2].data[7] = 0;
    }
}

bool8 IsRfuRecoveringFromLinkLoss(void)
{
    if (Rfu.linkLossRecoveryState == 1)
        return 1;
    else
        return 0;
}

bool32 sub_80FC1CC(void)
{
    s32 i;

    for (i = 0; i < 4; i++)
    {
        if ((lman.acceptSlot_flag >> i) & 1 && Rfu.partnerSendStatuses[i] == 0)
            return 0;
    }

    return 1;
}

static void Debug_PrintEmpty(void)
{
    s32 i;

    for (i = 0; i < 20; i++)
        Debug_PrintString("                              ", 0, i);
}

static const char gUnknown_843EE47[16] = {
    ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
    '\0'
};

static const char gUnknown_843EE57[9] = {
    ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',
    '\0'
};

static const char gUnknown_843EE60[] = {' ', '\0'};
static const char gUnknown_843EE62[] = {'*', '\0'};

static void Debug_PrintStatus(void)
{
    s32 i, j;

    Debug_PrintNum(GetBlockReceivedStatus(), 0x1C, 0x13, 2);
    Debug_PrintNum(gRfuLinkStatus->connSlotFlag, 0x14, 1, 1);
    Debug_PrintNum(gRfuLinkStatus->linkLossSlotFlag, 0x17, 1, 1);
    if (Rfu.parent_child == 0x01)
    {
        for (i = 0; i < 4; i++)
        {
            if ((gRfuLinkStatus->getNameFlag >> i) & 1)
            {
                Debug_PrintNum(gRfuLinkStatus->partner[i].serialNo, 1, i + 3, 4);
                Debug_PrintString((void *) &gRfuLinkStatus->partner[i].gname, 6, i + 3);
                Debug_PrintString(gRfuLinkStatus->partner[i].uname, 0x16, i + 3);
            }
        }
        for (i = 0; i < 4; i++)
        {
            for (j = 0; j < 14; j++)
            {
                Debug_PrintNum(Rfu.main_UNI_recvBuffer[i][j], j * 2, i + 11, 2);
            }
        }
        Debug_PrintString("NOWSLOT", 1, 0xF);
    }
    else if (gRfuLinkStatus->connSlotFlag != 0 && gRfuLinkStatus->getNameFlag != 0)
    {
        for (i = 0; i < 4; i++)
        {
            Debug_PrintNum(0, 1, i + 3, 4);
            Debug_PrintString(gUnknown_843EE47, 6, i + 3);
            Debug_PrintString(gUnknown_843EE57, 0x16, i + 3);
        }
        Debug_PrintNum(gRfuLinkStatus->partner[Rfu.child_slot].serialNo, 1, 3, 4);
        Debug_PrintString(gRfuLinkStatus->partner[Rfu.child_slot].gname, 6, 3);
        Debug_PrintString(gRfuLinkStatus->partner[Rfu.child_slot].uname, 0x16, 3);
    }
    else
    {
        for (i = 0; i < gRfuLinkStatus->findParentCount; i++)
        {
            if (gRfuLinkStatus->partner[i].slot != 0xFF)
            {
                Debug_PrintNum(gRfuLinkStatus->partner[i].serialNo, 1, i + 3, 4);
                Debug_PrintNum(gRfuLinkStatus->partner[i].id, 6, i + 3, 4);
                Debug_PrintString(gRfuLinkStatus->partner[i].uname, 0x16, i + 3);
            }
        }
        for (; i < 4; i++)
        {
            Debug_PrintNum(0, 1, i + 3, 4);
            Debug_PrintString(gUnknown_843EE47, 6, i + 3);
            Debug_PrintString(gUnknown_843EE57, 0x16, i + 3);
        }
    }
}

static const char gUnknown_843EE6C[][12] = {
    "           ",
    "CLOCK DRIFT",
    "BUSY SEND  ",
    "CMD REJECT ",
    "CLOCK SLAVE"
};

static const char gUnknown_843EEA8[][8] = {
    "CHILD ",
    "PARENT",
    "SEARCH"
};

static u32 GetRfuSendQueueLength(void)
{
    return Rfu.sendQueue.count;
}

u32 GetRfuRecvQueueLength(void)
{
    return Rfu.recvQueue.count;
}

static void Task_idle(u8 taskId)
{

}
