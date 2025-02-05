# 1 "src/battle_tower.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "src/battle_tower.c"
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
# 2 "src/battle_tower.c" 2
# 1 "include/battle_tower.h" 1




# 1 "include/constants/battle_tower.h" 1
# 6 "include/battle_tower.h" 2




struct BattleTowerTrainer
{
    u8 trainerClass;
    u8 name[3];
    u8 teamFlags;
    u16 greeting[6];
};

struct BattleTowerPokemonTemplate
{
    u16 species;
    u8 heldItem;
    u8 teamFlags;
    u16 moves[4];
    u8 evSpread;
    u8 nature;
};

extern const u16 gBattleTowerBannedSpecies[];

void ClearEReaderTrainer(struct BattleTowerEReaderTrainer *);
void ValidateEReaderTrainer(void);
u8 GetBattleTowerTrainerFrontSpriteId(void);
u8 GetEreaderTrainerFrontSpriteId(void);
void CopyEReaderTrainerName5(u8 *dest);
void GetBattleTowerTrainerName(u8 *text);
u8 GetEreaderTrainerClassId(void);
u8 GetBattleTowerTrainerClassNameId(void);
# 3 "src/battle_tower.c" 2
# 1 "include/random.h" 1





extern u32 gRngValue;
extern u32 gRng2Value;


u16 Random(void);
u16 Random2(void);
# 23 "include/random.h"
void SeedRng(u16 seed);
void SeedRng2(u16 seed);
# 4 "src/battle_tower.c" 2
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
# 5 "src/battle_tower.c" 2
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
# 6 "src/battle_tower.c" 2
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
# 7 "src/battle_tower.c" 2
# 1 "include/battle_message.h" 1




# 1 "include/constants/battle_string_ids.h" 1
# 6 "include/battle_message.h" 2
# 196 "include/battle_message.h"
struct BattleMsgData
{
    u16 currentMove;
    u16 originallyUsedMove;
    u16 lastItem;
    u8 lastAbility;
    u8 scrActive;
    u8 bakScriptPartyIdx;
    u8 hpScale;
    u8 itemEffectBattler;
    u8 moveType;
    u8 abilities[4];
    u8 textBuffs[3][0x10];
};

void BufferStringBattle(u16 stringID);
u32 BattleStringExpandPlaceholdersToDisplayedString(const u8 *src);
u32 BattleStringExpandPlaceholders(const u8 *src, u8 *dst);
void BattleHandleAddTextPrinter(const u8 *text, u8 arg1);
void SetPpNumbersPaletteInMoveSelection(void);
u8 GetCurrentPpToMaxPpState(u8 currentPp, u8 maxPp);
void BattlePutTextOnWindow(const u8 *text, u8 windowId_flags);
bool8 BattleStringShouldBeColored(u16);

extern struct BattleMsgData *gBattleMsgDataPtr;



extern u8 gDisplayedStringBattle[300];
extern u8 gBattleTextBuff1[16];
extern u8 gBattleTextBuff2[16];
extern u8 gBattleTextBuff3[16];

extern const u8 *const gBattleStringsTable[];
extern const u8 *const gStatNamesTable[];
extern const u8 *const gPokeblockWasTooXStringTable[];
extern const u8 *const gRefereeStringsTable[];
extern const u8 *const gStatNamesTable2[];

extern const u16 gMissStringIds[];
extern const u16 gTrappingMoves[];

extern const u8 gText_Sleep[];
extern const u8 gText_Poison[];
extern const u8 gText_Burn[];
extern const u8 gText_Paralysis[];
extern const u8 gText_Ice[];
extern const u8 gText_Confusion[];
extern const u8 gText_Love[];

extern const u8 gText_BattleTowerBan_Space[];
extern const u8 gText_BattleTowerBan_Newline1[];
extern const u8 gText_BattleTowerBan_Newline2[];
extern const u8 gText_BattleTowerBan_Is1[];
extern const u8 gText_BattleTowerBan_Is2[];

extern const u8 gText_SafariBalls[];
extern const u8 gText_HighlightRed_Left[];

extern const u8 gText_Win[];
extern const u8 gText_Loss[];
extern const u8 gText_Draw[];
# 8 "src/battle_tower.c" 2
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
# 9 "src/battle_tower.c" 2
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
# 10 "src/battle_tower.c" 2
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
# 11 "src/battle_tower.c" 2
# 1 "include/battle_transition.h" 1





enum
{
    MUGSHOT_LORELEI,
    MUGSHOT_BRUNO,
    MUGSHOT_AGATHA,
    MUGSHOT_LANCE,
    MUGSHOT_BLUE,
    MUGSHOTS_COUNT
};
# 35 "include/battle_transition.h"
extern const struct SpritePalette sSpritePalette_SlidingPokeball;

bool8 BT_IsDone(void);
void BT_StartOnField(u8 transitionId);
bool8 FldEff_Pokeball(void);
# 12 "src/battle_tower.c" 2
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
# 13 "src/battle_tower.c" 2
# 1 "include/battle_setup.h" 1





void StartWildBattle(void);
void StartRoamerBattle(void);
void StartOldManTutorialBattle(void);
void StartScriptedWildBattle(void);
void StartMarowakBattle(void);
void StartSouthernIslandBattle(void);
void StartLegendaryBattle(void);
void StartGroudonKyogreBattle(void);
void StartRegiBattle(void);
u8 BattleSetup_GetTerrainId(void);
u8 BattleSetup_GetBattleTowerBattleTransition(void);
const u8 *BattleSetup_ConfigureTrainerBattle(const u8 *data);
void ConfigureAndSetUpOneTrainerBattle(u8 trainerEventObjId, const u8 *trainerScript);
bool32 GetTrainerFlagFromScriptPointer(const u8 *data);
void SetUpTrainerMovement(void);
u8 GetTrainerBattleMode(void);
u16 GetRivalBattleFlags(void);
void SetBattledTrainerFlag(void);
bool8 HasTrainerBeenFought(u16 trainerId);
void SetTrainerFlag(u16 trainerId);
void ClearTrainerFlag(u16 trainerId);
void StartTrainerBattle(void);
void StartRematchBattle(void);
void ShowTrainerIntroSpeech(void);
const u8 *BattleSetup_GetScriptAddrAfterBattle(void);
const u8 *BattleSetup_GetTrainerPostBattleScript(void);
void ShowTrainerCantBattleSpeech(void);
void PlayTrainerEncounterMusic(void);
const u8 *GetTrainerALoseText(void);
const u8 *GetTrainerWonSpeech(void);
# 14 "src/battle_tower.c" 2
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
# 15 "src/battle_tower.c" 2
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
# 16 "src/battle_tower.c" 2
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
# 5 "include/battle_bg.h" 2

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
# 17 "src/battle_tower.c" 2
# 1 "include/party_menu.h" 1




# 1 "include/task.h" 1
# 6 "include/party_menu.h" 2
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
# 18 "src/battle_tower.c" 2
# 1 "include/new_game.h" 1





extern bool8 gDifferentSaveFile;

void SetTrainerId(u32 trainerId, u8 *dst);
void CopyTrainerId(u8 *dst, u8 *src);
void NewGameInitData(void);
void ResetMenuAndMonGlobals(void);
void Sav2_ClearSetDefault(void);
# 19 "src/battle_tower.c" 2
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
# 20 "src/battle_tower.c" 2
# 1 "include/item.h" 1





typedef void (*ItemUseFunc)(u8);

struct Item
{
    u8 name[14];
    u16 itemId;
    u16 price;
    u8 holdEffect;
    u8 holdEffectParam;
    const u8 *description;
    u8 importance;
    u8 exitsBagOnUse;
    u8 pocket;
    u8 type;
    ItemUseFunc fieldUseFunc;
    u8 battleUsage;
    ItemUseFunc battleUseFunc;
    u8 secondaryId;
};

struct BagPocket
{
    struct ItemSlot *itemSlots;
    u8 capacity;
};


enum {
    ITEM_TYPE_MAIL,
    ITEM_TYPE_PARTY_MENU,
    ITEM_TYPE_FIELD,
    ITEM_TYPE_UNUSED,
    ITEM_TYPE_BAG_MENU,
};

extern const struct Item gItems[];
extern struct BagPocket gBagPockets[];

void GetBerryCountString(u8 *dst, const u8 *berryName, u32 quantity);
void CopyItemName(u16 itemId, u8 *string);
void CopyItemNameHandlePlural(u16 itemId, u8 *string, u32 quantity);
bool8 IsBagPocketNonEmpty(u8 pocket);
bool8 CheckBagHasItem(u16 itemId, u16 count);
bool8 CheckBagHasSpace(u16 itemId, u16 count);
bool8 RemoveBagItem(u16 itemId, u16 count);
u8 GetPocketByItemId(u16 itemId);
void ClearItemSlots(struct ItemSlot *itemSlots, u8 b);
u8 CountUsedPCItemSlots(void);
bool8 CheckPCHasItem(u16 itemId, u16 count);
bool8 AddPCItem(u16 itemId, u16 count);
void SwapRegisteredBike(void);
const u8 *ItemId_GetName(u16 itemId);
u16 ItemId_GetId(u16 itemId);
u16 ItemId_GetPrice(u16 itemId);
u8 ItemId_GetHoldEffect(u16 itemId);
u8 ItemId_GetHoldEffectParam(u16 itemId);
const u8 *ItemId_GetDescription(u16 itemId);
bool32 ItemId_CopyDescription(u8 *a, u32 itemId, u32 c);
u8 ItemId_GetImportance(u16 itemId);
u8 ItemId_GetUnknownValue(u16 itemId);
u8 ItemId_GetPocket(u16 itemId);
u8 ItemId_GetType(u16 itemId);
ItemUseFunc ItemId_GetFieldFunc(u16 itemId);
u8 ItemId_GetBattleUsage(u16 itemId);
ItemUseFunc ItemId_GetBattleFunc(u16 itemId);
u8 ItemId_GetSecondaryId(u16 itemId);
u16 itemid_get_market_price(u16 itemId);
void ClearBag(void);
void ClearPCItemSlots(void);
void TrySetObtainedItemQuestLogEvent(u16 itemId);
bool8 AddBagItem(u16 itemId, u16 amount);

void SortPocketAndPlaceHMsFirst(struct BagPocket * pocket);
u16 BagGetItemIdByPocketPosition(u8 pocketId, u16 itemId);
u16 BagGetQuantityByPocketPosition(u8 pocketId, u16 itemId);
u16 BagGetQuantityByItemId(u16 item);
bool8 itemid_is_unique(u16 itemId);
void BagPocketCompaction(struct ItemSlot * slots, u8 capacity);
u16 GetPcItemQuantity(u16 *);
void SetBagPocketsPointers(void);

void ItemPcCompaction(void);
void RemovePCItem(u16 itemId, u16 quantity);
void SortAndCompactBagPocket(struct BagPocket * pocket);
u8 CountItemsInPC(void);
void ApplyNewEncryptionKeyToBagItems_(u32 newKey);
bool8 HasAtLeastOneBerry(void);
# 21 "src/battle_tower.c" 2
# 1 "include/script_pokemon_util.h" 1



bool8 ScriptGiveMon(u16 species, u8 level, u16 item, u32 unk1, u32 unk2, u8 unk3);
bool8 ScriptGiveEgg(u16 species);
void ScriptSetMonMoveSlot(u8 partyIdx, u16 move, u8 slot);
void HealPlayerParty(void);
void ReducePlayerPartyToThree(void);
void CreateScriptedWildMon(u16 species, u8 level, u16 item);
# 22 "src/battle_tower.c" 2
# 1 "include/constants/items.h" 1
# 23 "src/battle_tower.c" 2
# 1 "include/constants/moves.h" 1
# 24 "src/battle_tower.c" 2
# 1 "include/constants/pokemon.h" 1
# 25 "src/battle_tower.c" 2
# 1 "include/constants/event_objects.h" 1
# 26 "src/battle_tower.c" 2

static __attribute__((section("ewram_data"))) u16 sSpecialVar_0x8004_Copy = 0;




static void ResetBattleTowerStreak(u8 levelType);
static void SetBattleTowerTrainerGfxId(u8 trainerClass);
static void CheckMonBattleTowerBanlist(u16 species, u16 heldItem, u16 hp, u8 battleTowerLevelType, u8 monLevel, u16 *validPartySpecies, u16 *validPartyHeldItems, u8 *numValid);
static void SaveCurrentWinStreak(void);
static void ValidateBattleTowerRecordChecksums(void);
static void SetBattleTowerRecordChecksum(struct BattleTowerRecord * record);
static void ClearBattleTowerRecord(struct BattleTowerRecord * record);
static void PopulateBravoTrainerBattleTowerLostData(void);
static u16 GetCurrentBattleTowerWinStreak(u8 levelType);
static void SetEReaderTrainerChecksum(struct BattleTowerEReaderTrainer * eReaderTrainer);
static void PrintEReaderTrainerFarewellMessage(void);


static const u8 sUnused[] = {
    5, 4, 1, 16, 4, 2, 5, 6,
    3, 16, 6, 4, 0, 1, 2, 3,
    0, 2, 3
};

static const u8 sText_100[] = _("100");

static const struct BattleTowerTrainer sBattleTowerTrainers[] =
{

};

static const u16 sBattleTowerHeldItems[] = {
    0,
    187,
    142,
    139,
    134,
    204,
    196,
    140,
    205,
    44,
    181,
    188,
    133,
    206,
    207,
    191,
    186,
    208,
    217,
    180,
    193,
    192,
    209,
    210,
    183,
    200,
    136,
    202,
    211,
    212,
    137,
    213,
    179,
    138,
    198,
    214,
    199,
    185,
    215,
    135,
    203,
    141,
    201,
    216,
    147,
    144,
    220,
    219,
    170,
    173,
    172,
    174,
    168,
    225,
    221,
    146,
    143,
    224,
    145,
    223,
    171,
    222,
    169
};

# 1 "src/data/battle_tower/level_50_mons.h" 1
const struct BattleTowerPokemonTemplate gBattleTowerLevel50Mons[] =
{
 {
  .species = 25,
  .heldItem = 3,
  .teamFlags = 0x42,
  .moves = {
   98,
   86,
   84,
   45
  },
  .evSpread = 1 << 3 | 1 << 2,
  .nature = 0,
 },
 {
  .species = 292,
  .heldItem = 8,
  .teamFlags = 0x41,
  .moves = {
   71,
   78,
   16,
   219
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 3 | 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 2,
 },
 {
  .species = 305,
  .heldItem = 23,
  .teamFlags = 0x07,
  .moves = {
   64,
   17,
   332,
   97
  },
  .evSpread = 1 << 1,
  .nature = 21,
 },
 {
  .species = 343,
  .heldItem = 34,
  .teamFlags = 0x0B,
  .moves = {
   258,
   227,
   301,
   92
  },
  .evSpread = 1 << 4 | 1 << 2 | 1 << 0,
  .nature = 3,
 },
 {
  .species = 119,
  .heldItem = 22,
  .teamFlags = 0x07,
  .moves = {
   64,
   175,
   31,
   57
  },
  .evSpread = 1 << 3,
  .nature = 11,
 },
 {
  .species = 280,
  .heldItem = 1,
  .teamFlags = 0x42,
  .moves = {
   83,
   182,
   28,
   163
  },
  .evSpread = 1 << 5 | 1 << 4,
  .nature = 7,
 },
 {
  .species = 312,
  .heldItem = 19,
  .teamFlags = 0x41,
  .moves = {
   78,
   346,
   98,
   16
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 8,
 },
 {
  .species = 387,
  .heldItem = 0,
  .teamFlags = 0x41,
  .moves = {
   260,
   343,
   273,
   263
  },
  .evSpread = 1 << 3 | 1 << 2,
  .nature = 0,
 },
 {
  .species = 316,
  .heldItem = 18,
  .teamFlags = 0x42,
  .moves = {
   213,
   39,
   185,
   91
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 1,
 },
 {
  .species = 317,
  .heldItem = 7,
  .teamFlags = 0x0B,
  .moves = {
   39,
   163,
   122,
   103
  },
  .evSpread = 1 << 5 | 1 << 2,
  .nature = 2,
 },
 {
  .species = 287,
  .heldItem = 39,
  .teamFlags = 0x05,
  .moves = {
   44,
   36,
   46,
   336
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 6,
 },
 {
  .species = 366,
  .heldItem = 13,
  .teamFlags = 0x05,
  .moves = {
   185,
   68,
   10,
   269
  },
  .evSpread = 1 << 2 | 1 << 0,
  .nature = 9,
 },
 {
  .species = 67,
  .heldItem = 4,
  .teamFlags = 0x05,
  .moves = {
   43,
   91,
   67,
   264
  },
  .evSpread = 1 << 3,
  .nature = 10,
 },
 {
  .species = 112,
  .heldItem = 7,
  .teamFlags = 0x05,
  .moves = {
   70,
   317,
   23,
   249
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 24,
 },
 {
  .species = 345,
  .heldItem = 28,
  .teamFlags = 0x0B,
  .moves = {
   40,
   74,
   71,
   76
  },
  .evSpread = 1 << 4,
  .nature = 0,
 },
 {
  .species = 288,
  .heldItem = 1,
  .teamFlags = 0x0A,
  .moves = {
   175,
   28,
   156,
   57
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 22,
 },
 {
  .species = 85,
  .heldItem = 23,
  .teamFlags = 0x03,
  .moves = {
   228,
   161,
   45,
   97
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 3 | 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 12,
 },
 {
  .species = 324,
  .heldItem = 24,
  .teamFlags = 0x0B,
  .moves = {
   55,
   133,
   222,
   189
  },
  .evSpread = 1 << 2 | 1 << 1,
  .nature = 9,
 },
 {
  .species = 302,
  .heldItem = 11,
  .teamFlags = 0x41,
  .moves = {
   28,
   210,
   97,
   106
  },
  .evSpread = 1 << 5 | 1 << 3 | 1 << 2 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 362,
  .heldItem = 39,
  .teamFlags = 0x01,
  .moves = {
   182,
   101,
   310,
   261
  },
  .evSpread = 1 << 0,
  .nature = 0,
 },
 {
  .species = 340,
  .heldItem = 38,
  .teamFlags = 0x07,
  .moves = {
   91,
   52,
   45,
   249
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 5,
 },
 {
  .species = 308,
  .heldItem = 12,
  .teamFlags = 0x4A,
  .moves = {
   298,
   175,
   244,
   38
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 20,
 },
 {
  .species = 379,
  .heldItem = 28,
  .teamFlags = 0x09,
  .moves = {
   103,
   137,
   91,
   305
  },
  .evSpread = 1 << 3 | 1 << 2,
  .nature = 0,
 },
 {
  .species = 334,
  .heldItem = 24,
  .teamFlags = 0x49,
  .moves = {
   28,
   328,
   263,
   92
  },
  .evSpread = 1 << 2 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 184,
  .heldItem = 19,
  .teamFlags = 0x42,
  .moves = {
   61,
   39,
   240,
   205
  },
  .evSpread = 1 << 2 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 380,
  .heldItem = 37,
  .teamFlags = 0x07,
  .moves = {
   70,
   269,
   306,
   197
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 357,
  .heldItem = 34,
  .teamFlags = 0x07,
  .moves = {
   179,
   96,
   93,
   263
  },
  .evSpread = 1 << 3 | 1 << 2,
  .nature = 11,
 },
 {
  .species = 363,
  .heldItem = 8,
  .teamFlags = 0x0A,
  .moves = {
   74,
   72,
   92,
   15
  },
  .evSpread = 1 << 5 | 1 << 4,
  .nature = 4,
 },
 {
  .species = 368,
  .heldItem = 41,
  .teamFlags = 0x0B,
  .moves = {
   254,
   255,
   124,
   139
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 3 | 1 << 2 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 82,
  .heldItem = 17,
  .teamFlags = 0x0B,
  .moves = {
   48,
   86,
   103,
   161
  },
  .evSpread = 1 << 3,
  .nature = 0,
 },
 {
  .species = 394,
  .heldItem = 35,
  .teamFlags = 0x09,
  .moves = {
   93,
   92,
   259,
   182
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 5,
 },
 {
  .species = 381,
  .heldItem = 22,
  .teamFlags = 0x01,
  .moves = {
   57,
   246,
   317,
   106
  },
  .evSpread = 1 << 4 | 1 << 2,
  .nature = 10,
 },
 {
  .species = 38,
  .heldItem = 26,
  .teamFlags = 0x03,
  .moves = {
   109,
   83,
   98,
   53
  },
  .evSpread = 1 << 3 | 1 << 2 | 1 << 1,
  .nature = 11,
 },
 {
  .species = 331,
  .heldItem = 13,
  .teamFlags = 0x05,
  .moves = {
   44,
   130,
   240,
   57
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 1,
  .nature = 7,
 },
 {
  .species = 203,
  .heldItem = 1,
  .teamFlags = 0x03,
  .moves = {
   70,
   60,
   97,
   89
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 8,
 },
 {
  .species = 310,
  .heldItem = 2,
  .teamFlags = 0x0B,
  .moves = {
   54,
   254,
   256,
   255
  },
  .evSpread = 1 << 2,
  .nature = 24,
 },
 {
  .species = 322,
  .heldItem = 12,
  .teamFlags = 0x09,
  .moves = {
   247,
   101,
   289,
   252
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 348,
  .heldItem = 5,
  .teamFlags = 0x0B,
  .moves = {
   322,
   201,
   94,
   88
  },
  .evSpread = 1 << 3 | 1 << 2,
  .nature = 21,
 },
 {
  .species = 297,
  .heldItem = 0,
  .teamFlags = 0x0B,
  .moves = {
   168,
   252,
   57,
   240
  },
  .evSpread = 1 << 5 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 352,
  .heldItem = 48,
  .teamFlags = 0x0B,
  .moves = {
   316,
   109,
   277,
   94
  },
  .evSpread = 1 << 3 | 1 << 2,
  .nature = 0,
 },
 {
  .species = 307,
  .heldItem = 24,
  .teamFlags = 0x0B,
  .moves = {
   15,
   73,
   72,
   78
  },
  .evSpread = 1 << 3 | 1 << 2,
  .nature = 22,
 },
 {
  .species = 314,
  .heldItem = 22,
  .teamFlags = 0x03,
  .moves = {
   323,
   205,
   54,
   240
  },
  .evSpread = 1 << 5 | 1 << 2,
  .nature = 21,
 },
 {
  .species = 110,
  .heldItem = 28,
  .teamFlags = 0x05,
  .moves = {
   123,
   120,
   92,
   188
  },
  .evSpread = 1 << 3 | 1 << 2,
  .nature = 18,
 },
 {
  .species = 64,
  .heldItem = 33,
  .teamFlags = 0x0B,
  .moves = {
   248,
   264,
   285,
   289
  },
  .evSpread = 1 << 4 | 1 << 2,
  .nature = 23,
 },
 {
  .species = 338,
  .heldItem = 17,
  .teamFlags = 0x07,
  .moves = {
   86,
   44,
   209,
   98
  },
  .evSpread = 1 << 4,
  .nature = 19,
 },
 {
  .species = 26,
  .heldItem = 30,
  .teamFlags = 0x03,
  .moves = {
   98,
   97,
   113,
   85
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 178,
  .heldItem = 35,
  .teamFlags = 0x03,
  .moves = {
   101,
   64,
   109,
   248
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 3 | 1 << 2,
  .nature = 0,
 },
 {
  .species = 371,
  .heldItem = 2,
  .teamFlags = 0x05,
  .moves = {
   253,
   23,
   103,
   89
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 15,
 },
 {
  .species = 349,
  .heldItem = 25,
  .teamFlags = 0x03,
  .moves = {
   88,
   241,
   76,
   201
  },
  .evSpread = 1 << 3 | 1 << 2,
  .nature = 16,
 },
 {
  .species = 319,
  .heldItem = 32,
  .teamFlags = 0x03,
  .moves = {
   201,
   115,
   317,
   70
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 12,
 },
 {
  .species = 327,
  .heldItem = 34,
  .teamFlags = 0x03,
  .moves = {
   352,
   282,
   106,
   15
  },
  .evSpread = 1 << 0,
  .nature = 13,
 },
 {
  .species = 42,
  .heldItem = 19,
  .teamFlags = 0x09,
  .moves = {
   109,
   17,
   212,
   44
  },
  .evSpread = 1 << 5 | 1 << 3,
  .nature = 2,
 },
 {
  .species = 182,
  .heldItem = 8,
  .teamFlags = 0x0A,
  .moves = {
   76,
   80,
   230,
   331
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 3 | 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 14,
 },
 {
  .species = 232,
  .heldItem = 1,
  .teamFlags = 0x05,
  .moves = {
   249,
   229,
   175,
   30
  },
  .evSpread = 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 8,
 },
 {
  .species = 320,
  .heldItem = 7,
  .teamFlags = 0x0B,
  .moves = {
   201,
   157,
   335,
   86
  },
  .evSpread = 1 << 5 | 1 << 3 | 1 << 2,
  .nature = 13,
 },
 {
  .species = 127,
  .heldItem = 4,
  .teamFlags = 0x05,
  .moves = {
   14,
   106,
   15,
   69
  },
  .evSpread = 1 << 3 | 1 << 2,
  .nature = 6,
 },
 {
  .species = 55,
  .heldItem = 32,
  .teamFlags = 0x0B,
  .moves = {
   50,
   244,
   352,
   280
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 2,
  .nature = 0,
 },
 {
  .species = 300,
  .heldItem = 37,
  .teamFlags = 0x07,
  .moves = {
   259,
   326,
   76,
   332
  },
  .evSpread = 1 << 2,
  .nature = 14,
 },
 {
  .species = 294,
  .heldItem = 11,
  .teamFlags = 0x01,
  .moves = {
   93,
   318,
   60,
   18
  },
  .evSpread = 1 << 3,
  .nature = 12,
 },
 {
  .species = 377,
  .heldItem = 34,
  .teamFlags = 0x03,
  .moves = {
   261,
   101,
   185,
   174
  },
  .evSpread = 1 << 5 | 1 << 2,
  .nature = 0,
 },
 {
  .species = 119,
  .heldItem = 22,
  .teamFlags = 0x07,
  .moves = {
   240,
   57,
   30,
   32
  },
  .evSpread = 1 << 5,
  .nature = 1,
 },
 {
  .species = 227,
  .heldItem = 2,
  .teamFlags = 0x07,
  .moves = {
   211,
   28,
   129,
   97
  },
  .evSpread = 1 << 3 | 1 << 2,
  .nature = 7,
 },
 {
  .species = 321,
  .heldItem = 6,
  .teamFlags = 0x43,
  .moves = {
   53,
   334,
   34,
   182
  },
  .evSpread = 1 << 2 | 1 << 1,
  .nature = 4,
 },
 {
  .species = 76,
  .heldItem = 40,
  .teamFlags = 0x05,
  .moves = {
   222,
   153,
   70,
   201
  },
  .evSpread = 1 << 5 | 1 << 1,
  .nature = 6,
 },
 {
  .species = 394,
  .heldItem = 35,
  .teamFlags = 0x41,
  .moves = {
   115,
   94,
   286,
   92
  },
  .evSpread = 1 << 5 | 1 << 2,
  .nature = 11,
 },
 {
  .species = 28,
  .heldItem = 32,
  .teamFlags = 0x07,
  .moves = {
   201,
   163,
   89,
   129
  },
  .evSpread = 1 << 5 | 1 << 2,
  .nature = 3,
 },
 {
  .species = 202,
  .heldItem = 48,
  .teamFlags = 0x0B,
  .moves = {
   68,
   243,
   219,
   194
  },
  .evSpread = 1 << 2 | 1 << 0,
  .nature = 20,
 },
 {
  .species = 73,
  .heldItem = 12,
  .teamFlags = 0x05,
  .moves = {
   132,
   57,
   63,
   103
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 8,
 },
 {
  .species = 369,
  .heldItem = 25,
  .teamFlags = 0x05,
  .moves = {
   241,
   76,
   235,
   75
  },
  .evSpread = 1 << 4 | 1 << 2,
  .nature = 6,
 },
 {
  .species = 355,
  .heldItem = 36,
  .teamFlags = 0x43,
  .moves = {
   334,
   188,
   242,
   70
  },
  .evSpread = 1 << 1,
  .nature = 20,
 },
 {
  .species = 89,
  .heldItem = 26,
  .teamFlags = 0x09,
  .moves = {
   124,
   151,
   202,
   50
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 219,
  .heldItem = 38,
  .teamFlags = 0x0D,
  .moves = {
   53,
   88,
   106,
   133
  },
  .evSpread = 1 << 5 | 1 << 4,
  .nature = 4,
 },
 {
  .species = 289,
  .heldItem = 39,
  .teamFlags = 0x07,
  .moves = {
   29,
   39,
   57,
   91
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 1,
  .nature = 24,
 },
 {
  .species = 101,
  .heldItem = 30,
  .teamFlags = 0x05,
  .moves = {
   113,
   85,
   129,
   205
  },
  .evSpread = 1 << 3,
  .nature = 12,
 },
 {
  .species = 362,
  .heldItem = 31,
  .teamFlags = 0x09,
  .moves = {
   212,
   101,
   285,
   247
  },
  .evSpread = 1 << 5 | 1 << 3 | 1 << 0,
  .nature = 14,
 },
 {
  .species = 45,
  .heldItem = 8,
  .teamFlags = 0x0A,
  .moves = {
   92,
   236,
   202,
   78
  },
  .evSpread = 1 << 0,
  .nature = 6,
 },
 {
  .species = 169,
  .heldItem = 33,
  .teamFlags = 0x05,
  .moves = {
   44,
   114,
   17,
   211
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 10,
 },
 {
  .species = 222,
  .heldItem = 34,
  .teamFlags = 0x0A,
  .moves = {
   105,
   243,
   258,
   57
  },
  .evSpread = 1 << 3 | 1 << 2,
  .nature = 0,
 },
 {
  .species = 121,
  .heldItem = 22,
  .teamFlags = 0x0B,
  .moves = {
   229,
   352,
   115,
   285
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 3,
  .nature = 0,
 },
 {
  .species = 372,
  .heldItem = 25,
  .teamFlags = 0x41,
  .moves = {
   63,
   336,
   253,
   89
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 65,
  .heldItem = 35,
  .teamFlags = 0x0B,
  .moves = {
   60,
   289,
   115,
   63
  },
  .evSpread = 1 << 3 | 1 << 2 | 1 << 0,
  .nature = 7,
 },
 {
  .species = 214,
  .heldItem = 24,
  .teamFlags = 0x05,
  .moves = {
   30,
   68,
   179,
   43
  },
  .evSpread = 1 << 5 | 1 << 1 | 1 << 0,
  .nature = 5,
 },
 {
  .species = 385,
  .heldItem = 2,
  .teamFlags = 0x0B,
  .moves = {
   311,
   241,
   240,
   258
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 9,
 },
 {
  .species = 365,
  .heldItem = 6,
  .teamFlags = 0x05,
  .moves = {
   264,
   179,
   68,
   269
  },
  .evSpread = 1 << 3 | 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 361,
  .heldItem = 32,
  .teamFlags = 0x09,
  .moves = {
   92,
   109,
   247,
   261
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 171,
  .heldItem = 24,
  .teamFlags = 0x07,
  .moves = {
   175,
   57,
   209,
   36
  },
  .evSpread = 1 << 3,
  .nature = 22,
 },
 {
  .species = 336,
  .heldItem = 1,
  .teamFlags = 0x05,
  .moves = {
   70,
   252,
   263,
   28
  },
  .evSpread = 1 << 3,
  .nature = 0,
 },
 {
  .species = 230,
  .heldItem = 22,
  .teamFlags = 0x43,
  .moves = {
   97,
   291,
   58,
   182
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 130,
  .heldItem = 43,
  .teamFlags = 0x41,
  .moves = {
   240,
   57,
   352,
   63
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 3 | 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 8,
 },
 {
  .species = 384,
  .heldItem = 36,
  .teamFlags = 0x45,
  .moves = {
   89,
   280,
   232,
   46
  },
  .evSpread = 1 << 3 | 1 << 2,
  .nature = 7,
 },
 {
  .species = 376,
  .heldItem = 1,
  .teamFlags = 0xC7,
  .moves = {
   14,
   231,
   163,
   263
  },
  .evSpread = 1 << 1,
  .nature = 9,
 },
 {
  .species = 305,
  .heldItem = 23,
  .teamFlags = 0x0F,
  .moves = {
   104,
   19,
   92,
   211
  },
  .evSpread = 0,
  .nature = 11,
 },
 {
  .species = 68,
  .heldItem = 14,
  .teamFlags = 0x05,
  .moves = {
   70,
   238,
   89,
   53
  },
  .evSpread = 1 << 5 | 1 << 2,
  .nature = 11,
 },
 {
  .species = 285,
  .heldItem = 29,
  .teamFlags = 0x41,
  .moves = {
   182,
   58,
   63,
   57
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 3 | 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 6,
 },
 {
  .species = 279,
  .heldItem = 8,
  .teamFlags = 0x41,
  .moves = {
   348,
   337,
   97,
   182
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 3 | 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 6,
 },
 {
  .species = 282,
  .heldItem = 38,
  .teamFlags = 0x41,
  .moves = {
   299,
   119,
   89,
   182
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 3 | 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 6,
 },
 {
  .species = 359,
  .heldItem = 43,
  .teamFlags = 0x43,
  .moves = {
   337,
   349,
   92,
   104
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 6,
 },
 {
  .species = 297,
  .heldItem = 14,
  .teamFlags = 0x43,
  .moves = {
   280,
   352,
   240,
   264
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 11,
 },
 {
  .species = 322,
  .heldItem = 31,
  .teamFlags = 0x49,
  .moves = {
   247,
   289,
   91,
   109
  },
  .evSpread = 1 << 3 | 1 << 2,
  .nature = 0,
 },
 {
  .species = 380,
  .heldItem = 13,
  .teamFlags = 0x0F,
  .moves = {
   263,
   85,
   306,
   197
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 20,
 },
 {
  .species = 289,
  .heldItem = 4,
  .teamFlags = 0x0F,
  .moves = {
   231,
   29,
   213,
   58
  },
  .evSpread = 1 << 2 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 324,
  .heldItem = 40,
  .teamFlags = 0x07,
  .moves = {
   189,
   89,
   57,
   133
  },
  .evSpread = 1 << 5 | 1 << 3 | 1 << 0,
  .nature = 5,
 },
 {
  .species = 349,
  .heldItem = 5,
  .teamFlags = 0x43,
  .moves = {
   89,
   113,
   157,
   93
  },
  .evSpread = 1 << 5 | 1 << 1 | 1 << 0,
  .nature = 18,
 },
 {
  .species = 121,
  .heldItem = 32,
  .teamFlags = 0x03,
  .moves = {
   105,
   240,
   57,
   109
  },
  .evSpread = 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 14,
 },
 {
  .species = 345,
  .heldItem = 25,
  .teamFlags = 0x0F,
  .moves = {
   275,
   73,
   182,
   218
  },
  .evSpread = 0,
  .nature = 0,
 },
 {
  .species = 300,
  .heldItem = 6,
  .teamFlags = 0x05,
  .moves = {
   218,
   63,
   202,
   259
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 2,
  .nature = 3,
 },
 {
  .species = 338,
  .heldItem = 17,
  .teamFlags = 0x0F,
  .moves = {
   87,
   86,
   231,
   46
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 0,
  .nature = 3,
 },
 {
  .species = 317,
  .heldItem = 32,
  .teamFlags = 0xC3,
  .moves = {
   85,
   264,
   231,
   53
  },
  .evSpread = 1 << 4 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 127,
  .heldItem = 40,
  .teamFlags = 0x8D,
  .moves = {
   12,
   66,
   89,
   317
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 399,
  .heldItem = 36,
  .teamFlags = 0x05,
  .moves = {
   89,
   247,
   94,
   309
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 1,
  .nature = 8,
 },
 {
  .species = 319,
  .heldItem = 39,
  .teamFlags = 0x43,
  .moves = {
   89,
   120,
   201,
   182
  },
  .evSpread = 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 9,
 },
 {
  .species = 312,
  .heldItem = 7,
  .teamFlags = 0x0A,
  .moves = {
   92,
   318,
   213,
   58
  },
  .evSpread = 1 << 5 | 1 << 4,
  .nature = 17,
 },
 {
  .species = 381,
  .heldItem = 52,
  .teamFlags = 0xC5,
  .moves = {
   317,
   38,
   57,
   89
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 343,
  .heldItem = 48,
  .teamFlags = 0x0D,
  .moves = {
   57,
   227,
   59,
   63
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 314,
  .heldItem = 50,
  .teamFlags = 0x0B,
  .moves = {
   323,
   156,
   133,
   258
  },
  .evSpread = 1 << 5 | 1 << 2,
  .nature = 11,
 },
 {
  .species = 203,
  .heldItem = 62,
  .teamFlags = 0x4F,
  .moves = {
   104,
   242,
   94,
   89
  },
  .evSpread = 1 << 3 | 1 << 2 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 357,
  .heldItem = 50,
  .teamFlags = 0x4B,
  .moves = {
   347,
   179,
   317,
   94
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 3 | 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 7,
 },
 {
  .species = 369,
  .heldItem = 37,
  .teamFlags = 0xC7,
  .moves = {
   89,
   235,
   75,
   63
  },
  .evSpread = 1 << 5 | 1 << 3 | 1 << 1,
  .nature = 5,
 },
 {
  .species = 302,
  .heldItem = 34,
  .teamFlags = 0x05,
  .moves = {
   104,
   163,
   14,
   141
  },
  .evSpread = 1 << 5 | 1 << 1 | 1 << 0,
  .nature = 9,
 },
 {
  .species = 340,
  .heldItem = 38,
  .teamFlags = 0x0D,
  .moves = {
   89,
   315,
   241,
   157
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 0,
  .nature = 23,
 },
 {
  .species = 331,
  .heldItem = 1,
  .teamFlags = 0x05,
  .moves = {
   242,
   57,
   89,
   182
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 40,
  .heldItem = 48,
  .teamFlags = 0x0E,
  .moves = {
   182,
   92,
   104,
   91
  },
  .evSpread = 1 << 5 | 1 << 2,
  .nature = 9,
 },
 {
  .species = 379,
  .heldItem = 28,
  .teamFlags = 0x05,
  .moves = {
   188,
   114,
   242,
   53
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 14,
 },
 {
  .species = 389,
  .heldItem = 25,
  .teamFlags = 0xC1,
  .moves = {
   317,
   109,
   275,
   89
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 391,
  .heldItem = 26,
  .teamFlags = 0xC1,
  .moves = {
   89,
   201,
   182,
   163
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 82,
  .heldItem = 7,
  .teamFlags = 0x0D,
  .moves = {
   192,
   48,
   92,
   182
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 3,
 },
 {
  .species = 171,
  .heldItem = 24,
  .teamFlags = 0x06,
  .moves = {
   87,
   57,
   58,
   240
  },
  .evSpread = 1 << 4 | 1 << 2,
  .nature = 3,
 },
 {
  .species = 368,
  .heldItem = 12,
  .teamFlags = 0x8B,
  .moves = {
   188,
   289,
   227,
   34
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 227,
  .heldItem = 36,
  .teamFlags = 0x81,
  .moves = {
   211,
   97,
   259,
   263
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 9,
 },
 {
  .species = 232,
  .heldItem = 19,
  .teamFlags = 0x0D,
  .moves = {
   89,
   175,
   46,
   231
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 214,
  .heldItem = 6,
  .teamFlags = 0x41,
  .moves = {
   263,
   179,
   224,
   89
  },
  .evSpread = 1 << 2 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 378,
  .heldItem = 60,
  .teamFlags = 0x83,
  .moves = {
   247,
   63,
   85,
   285
  },
  .evSpread = 1 << 5 | 1 << 2,
  .nature = 23,
 },
 {
  .species = 28,
  .heldItem = 32,
  .teamFlags = 0x0F,
  .moves = {
   201,
   92,
   163,
   89
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 9,
 },
 {
  .species = 327,
  .heldItem = 34,
  .teamFlags = 0x05,
  .moves = {
   12,
   152,
   59,
   188
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 3 | 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 6,
 },
 {
  .species = 352,
  .heldItem = 35,
  .teamFlags = 0x8B,
  .moves = {
   277,
   94,
   115,
   109
  },
  .evSpread = 1 << 4 | 1 << 0,
  .nature = 1,
 },
 {
  .species = 112,
  .heldItem = 16,
  .teamFlags = 0x45,
  .moves = {
   231,
   89,
   57,
   126
  },
  .evSpread = 1 << 5 | 1 << 4,
  .nature = 19,
 },
 {
  .species = 65,
  .heldItem = 60,
  .teamFlags = 0x8B,
  .moves = {
   94,
   115,
   105,
   285
  },
  .evSpread = 1 << 3 | 1 << 2,
  .nature = 11,
 },
 {
  .species = 362,
  .heldItem = 2,
  .teamFlags = 0x41,
  .moves = {
   247,
   261,
   59,
   94
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 23,
 },
 {
  .species = 321,
  .heldItem = 25,
  .teamFlags = 0x09,
  .moves = {
   53,
   133,
   231,
   156
  },
  .evSpread = 1 << 5 | 1 << 4,
  .nature = 14,
 },
 {
  .species = 101,
  .heldItem = 41,
  .teamFlags = 0x09,
  .moves = {
   103,
   153,
   243,
   182
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 19,
 },
 {
  .species = 307,
  .heldItem = 52,
  .teamFlags = 0x0B,
  .moves = {
   231,
   264,
   104,
   73
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 9,
 },
 {
  .species = 89,
  .heldItem = 28,
  .teamFlags = 0x05,
  .moves = {
   188,
   85,
   53,
   264
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 14,
 },
 {
  .species = 110,
  .heldItem = 24,
  .teamFlags = 0x05,
  .moves = {
   153,
   188,
   247,
   53
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 14,
 },
 {
  .species = 26,
  .heldItem = 34,
  .teamFlags = 0x4E,
  .moves = {
   85,
   104,
   264,
   213
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 3 | 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 13,
 },
 {
  .species = 73,
  .heldItem = 22,
  .teamFlags = 0x09,
  .moves = {
   104,
   92,
   57,
   188
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 5,
 },
 {
  .species = 372,
  .heldItem = 16,
  .teamFlags = 0x05,
  .moves = {
   59,
   53,
   89,
   216
  },
  .evSpread = 1 << 4 | 1 << 1 | 1 << 0,
  .nature = 18,
 },
 {
  .species = 178,
  .heldItem = 19,
  .teamFlags = 0x43,
  .moves = {
   94,
   156,
   109,
   92
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 2,
 },
 {
  .species = 76,
  .heldItem = 48,
  .teamFlags = 0x05,
  .moves = {
   153,
   89,
   317,
   53
  },
  .evSpread = 1 << 5 | 1 << 1 | 1 << 0,
  .nature = 8,
 },
 {
  .species = 55,
  .heldItem = 39,
  .teamFlags = 0x83,
  .moves = {
   57,
   213,
   347,
   59
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 3 | 1 << 2 | 1 << 0,
  .nature = 11,
 },
 {
  .species = 38,
  .heldItem = 38,
  .teamFlags = 0x4A,
  .moves = {
   53,
   213,
   92,
   109
  },
  .evSpread = 1 << 5 | 1 << 2,
  .nature = 17,
 },
 {
  .species = 230,
  .heldItem = 4,
  .teamFlags = 0x13,
  .moves = {
   104,
   156,
   57,
   225
  },
  .evSpread = 1 << 5 | 1 << 2,
  .nature = 3,
 },
 {
  .species = 366,
  .heldItem = 25,
  .teamFlags = 0x03,
  .moves = {
   174,
   133,
   281,
   264
  },
  .evSpread = 1 << 5 | 1 << 2,
  .nature = 9,
 },
 {
  .species = 130,
  .heldItem = 12,
  .teamFlags = 0x03,
  .moves = {
   87,
   89,
   56,
   240
  },
  .evSpread = 1 << 5 | 1 << 4,
  .nature = 4,
 },
 {
  .species = 336,
  .heldItem = 48,
  .teamFlags = 0x21,
  .moves = {
   187,
   203,
   89,
   179
  },
  .evSpread = 1 << 5 | 1 << 3,
  .nature = 22,
 },
 {
  .species = 376,
  .heldItem = 1,
  .teamFlags = 0xC3,
  .moves = {
   185,
   38,
   247,
   53
  },
  .evSpread = 1 << 5 | 1 << 3 | 1 << 2,
  .nature = 7,
 },
 {
  .species = 359,
  .heldItem = 2,
  .teamFlags = 0x83,
  .moves = {
   349,
   119,
   337,
   89
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 19,
 },
 {
  .species = 68,
  .heldItem = 14,
  .teamFlags = 0x11,
  .moves = {
   238,
   264,
   317,
   227
  },
  .evSpread = 1 << 5 | 1 << 3,
  .nature = 22,
 },
 {
  .species = 334,
  .heldItem = 43,
  .teamFlags = 0x43,
  .moves = {
   242,
   337,
   89,
   53
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 2 | 1 << 0,
  .nature = 14,
 },
 {
  .species = 282,
  .heldItem = 60,
  .teamFlags = 0x33,
  .moves = {
   68,
   157,
   264,
   53
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 21,
 },
 {
  .species = 347,
  .heldItem = 29,
  .teamFlags = 0x81,
  .moves = {
   59,
   242,
   196,
   104
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 3 | 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 13,
 },
 {
  .species = 374,
  .heldItem = 22,
  .teamFlags = 0xA1,
  .moves = {
   240,
   56,
   242,
   59
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 329,
  .heldItem = 62,
  .teamFlags = 0xD3,
  .moves = {
   57,
   213,
   105,
   92
  },
  .evSpread = 1 << 2 | 1 << 0,
  .nature = 11,
 },
 {
  .species = 375,
  .heldItem = 39,
  .teamFlags = 0x83,
  .moves = {
   94,
   57,
   59,
   247
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 3,
 },
 {
  .species = 279,
  .heldItem = 34,
  .teamFlags = 0x53,
  .moves = {
   348,
   283,
   89,
   317
  },
  .evSpread = 1 << 5 | 1 << 3,
  .nature = 18,
 },
 {
  .species = 285,
  .heldItem = 25,
  .teamFlags = 0x53,
  .moves = {
   89,
   57,
   341,
   59
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 14,
 },
 {
  .species = 384,
  .heldItem = 37,
  .teamFlags = 0x41,
  .moves = {
   38,
   53,
   231,
   59
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 5,
 },
 {
  .species = 389,
  .heldItem = 32,
  .teamFlags = 0xE1,
  .moves = {
   254,
   255,
   256,
   104
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 9,
 },
 {
  .species = 391,
  .heldItem = 24,
  .teamFlags = 0xC1,
  .moves = {
   89,
   63,
   163,
   14
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 9,
 },
 {
  .species = 307,
  .heldItem = 47,
  .teamFlags = 0x82,
  .moves = {
   264,
   68,
   183,
   289
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 9,
 },
 {
  .species = 297,
  .heldItem = 60,
  .teamFlags = 0x83,
  .moves = {
   240,
   57,
   182,
   92
  },
  .evSpread = 1 << 2 | 1 << 0,
  .nature = 11,
 },
 {
  .species = 300,
  .heldItem = 34,
  .teamFlags = 0x03,
  .moves = {
   259,
   185,
   247,
   153
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 14,
 },
 {
  .species = 369,
  .heldItem = 50,
  .teamFlags = 0xC3,
  .moves = {
   241,
   235,
   76,
   73
  },
  .evSpread = 1 << 5 | 1 << 2,
  .nature = 17,
 },
 {
  .species = 352,
  .heldItem = 10,
  .teamFlags = 0x23,
  .moves = {
   271,
   285,
   94,
   156
  },
  .evSpread = 1 << 4 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 321,
  .heldItem = 41,
  .teamFlags = 0x81,
  .moves = {
   334,
   92,
   156,
   53
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 14,
 },
 {
  .species = 338,
  .heldItem = 0,
  .teamFlags = 0x03,
  .moves = {
   85,
   242,
   46,
   168
  },
  .evSpread = 1 << 2 | 1 << 0,
  .nature = 11,
 },
 {
  .species = 127,
  .heldItem = 33,
  .teamFlags = 0x61,
  .moves = {
   12,
   89,
   104,
   317
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 9,
 },
 {
  .species = 121,
  .heldItem = 4,
  .teamFlags = 0x93,
  .moves = {
   113,
   85,
   57,
   156
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 3,
 },
 {
  .species = 214,
  .heldItem = 48,
  .teamFlags = 0x51,
  .moves = {
   224,
   179,
   89,
   68
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 343,
  .heldItem = 29,
  .teamFlags = 0x83,
  .moves = {
   59,
   89,
   57,
   157
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 23,
 },
 {
  .species = 65,
  .heldItem = 2,
  .teamFlags = 0x13,
  .moves = {
   94,
   105,
   227,
   289
  },
  .evSpread = 1 << 2 | 1 << 0,
  .nature = 11,
 },
 {
  .species = 329,
  .heldItem = 50,
  .teamFlags = 0x93,
  .moves = {
   57,
   59,
   105,
   104
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 402,
  .heldItem = 4,
  .teamFlags = 0x11,
  .moves = {
   156,
   174,
   59,
   89
  },
  .evSpread = 1 << 2 | 1 << 0,
  .nature = 16,
 },
 {
  .species = 403,
  .heldItem = 41,
  .teamFlags = 0x11,
  .moves = {
   156,
   334,
   85,
   89
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 16,
 },
 {
  .species = 401,
  .heldItem = 24,
  .teamFlags = 0x91,
  .moves = {
   317,
   89,
   85,
   153
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 22,
 },
 {
  .species = 362,
  .heldItem = 31,
  .teamFlags = 0x20,
  .moves = {
   247,
   89,
   59,
   194
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 4,
 },
 {
  .species = 119,
  .heldItem = 33,
  .teamFlags = 0xB2,
  .moves = {
   32,
   97,
   214,
   156
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 2,
 },
 {
  .species = 340,
  .heldItem = 32,
  .teamFlags = 0x00,
  .moves = {
   89,
   284,
   157,
   53
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 14,
 },
 {
  .species = 171,
  .heldItem = 48,
  .teamFlags = 0x82,
  .moves = {
   85,
   57,
   86,
   59
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 0,
  .nature = 2,
 },
 {
  .species = 110,
  .heldItem = 48,
  .teamFlags = 0x20,
  .moves = {
   188,
   85,
   126,
   153
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 12,
 },
 {
  .species = 324,
  .heldItem = 60,
  .teamFlags = 0x41,
  .moves = {
   89,
   57,
   317,
   213
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 2 | 1 << 1,
  .nature = 7,
 },
 {
  .species = 384,
  .heldItem = 52,
  .teamFlags = 0x11,
  .moves = {
   38,
   89,
   57,
   337
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 345,
  .heldItem = 34,
  .teamFlags = 0x63,
  .moves = {
   223,
   68,
   185,
   202
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 7,
 },
 {
  .species = 331,
  .heldItem = 1,
  .teamFlags = 0x01,
  .moves = {
   242,
   38,
   57,
   207
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 22,
 },
 {
  .species = 376,
  .heldItem = 48,
  .teamFlags = 0x82,
  .moves = {
   38,
   263,
   14,
   98
  },
  .evSpread = 1 << 3 | 1 << 2 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 314,
  .heldItem = 33,
  .teamFlags = 0x23,
  .moves = {
   56,
   89,
   213,
   90
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 10,
 },
 {
  .species = 73,
  .heldItem = 2,
  .teamFlags = 0x21,
  .moves = {
   56,
   188,
   202,
   243
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 19,
 },
 {
  .species = 297,
  .heldItem = 25,
  .teamFlags = 0xA2,
  .moves = {
   240,
   57,
   92,
   104
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 202,
  .heldItem = 25,
  .teamFlags = 0x23,
  .moves = {
   227,
   68,
   243,
   194
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 12,
 },
 {
  .species = 112,
  .heldItem = 24,
  .teamFlags = 0x21,
  .moves = {
   89,
   224,
   32,
   157
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 347,
  .heldItem = 48,
  .teamFlags = 0x21,
  .moves = {
   242,
   59,
   258,
   89
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 12,
 },
 {
  .species = 279,
  .heldItem = 34,
  .teamFlags = 0x13,
  .moves = {
   348,
   89,
   337,
   242
  },
  .evSpread = 1 << 5 | 1 << 3,
  .nature = 2,
 },
 {
  .species = 282,
  .heldItem = 52,
  .teamFlags = 0x17,
  .moves = {
   299,
   317,
   203,
   179
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 19,
 },
 {
  .species = 285,
  .heldItem = 47,
  .teamFlags = 0x17,
  .moves = {
   57,
   89,
   341,
   59
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 12,
 },
 {
  .species = 394,
  .heldItem = 48,
  .teamFlags = 0x19,
  .moves = {
   94,
   85,
   194,
   261
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 2,
 },
 {
  .species = 307,
  .heldItem = 48,
  .teamFlags = 0xF6,
  .moves = {
   147,
   264,
   280,
   188
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 22,
 },
 {
  .species = 65,
  .heldItem = 62,
  .teamFlags = 0x1B,
  .moves = {
   94,
   9,
   115,
   105
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 11,
 },
 {
  .species = 300,
  .heldItem = 4,
  .teamFlags = 0x89,
  .moves = {
   185,
   247,
   104,
   156
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 12,
 },
 {
  .species = 336,
  .heldItem = 34,
  .teamFlags = 0x85,
  .moves = {
   238,
   89,
   263,
   252
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 169,
  .heldItem = 32,
  .teamFlags = 0x49,
  .moves = {
   213,
   109,
   44,
   104
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 22,
 },
 {
  .species = 68,
  .heldItem = 34,
  .teamFlags = 0x15,
  .moves = {
   238,
   53,
   89,
   157
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 338,
  .heldItem = 60,
  .teamFlags = 0x0B,
  .moves = {
   85,
   86,
   46,
   242
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 2,
 },
 {
  .species = 101,
  .heldItem = 41,
  .teamFlags = 0x27,
  .moves = {
   85,
   182,
   243,
   153
  },
  .evSpread = 1 << 2 | 1 << 0,
  .nature = 18,
 },
 {
  .species = 89,
  .heldItem = 24,
  .teamFlags = 0x05,
  .moves = {
   188,
   53,
   85,
   153
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 334,
  .heldItem = 60,
  .teamFlags = 0x4D,
  .moves = {
   337,
   89,
   53,
   242
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 12,
 },
 {
  .species = 121,
  .heldItem = 50,
  .teamFlags = 0x1B,
  .moves = {
   57,
   85,
   105,
   109
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 2,
 },
 {
  .species = 85,
  .heldItem = 52,
  .teamFlags = 0x2B,
  .moves = {
   65,
   161,
   97,
   263
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 26,
  .heldItem = 6,
  .teamFlags = 0x0A,
  .moves = {
   85,
   86,
   179,
   213
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 12,
 },
 {
  .species = 55,
  .heldItem = 52,
  .teamFlags = 0x0A,
  .moves = {
   57,
   238,
   58,
   63
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 12,
 },
 {
  .species = 214,
  .heldItem = 52,
  .teamFlags = 0x54,
  .moves = {
   224,
   317,
   203,
   179
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 22,
 },
 {
  .species = 343,
  .heldItem = 4,
  .teamFlags = 0x06,
  .moves = {
   57,
   58,
   89,
   156
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 14,
 },
 {
  .species = 230,
  .heldItem = 4,
  .teamFlags = 0x1D,
  .moves = {
   57,
   92,
   182,
   156
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 3,
 },
 {
  .species = 397,
  .heldItem = 41,
  .teamFlags = 0x9C,
  .moves = {
   337,
   89,
   242,
   156
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 3,
 },
 {
  .species = 400,
  .heldItem = 47,
  .teamFlags = 0x15,
  .moves = {
   309,
   94,
   89,
   113
  },
  .evSpread = 1 << 5 | 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 401,
  .heldItem = 32,
  .teamFlags = 0xB5,
  .moves = {
   89,
   246,
   264,
   153
  },
  .evSpread = 1 << 5 | 1 << 1,
  .nature = 21,
 },
 {
  .species = 402,
  .heldItem = 4,
  .teamFlags = 0x96,
  .moves = {
   58,
   85,
   104,
   156
  },
  .evSpread = 1 << 2 | 1 << 0,
  .nature = 11,
 },
 {
  .species = 403,
  .heldItem = 24,
  .teamFlags = 0x94,
  .moves = {
   232,
   89,
   85,
   153
  },
  .evSpread = 1 << 5 | 1 << 1,
  .nature = 21,
 },
 {
  .species = 407,
  .heldItem = 41,
  .teamFlags = 0x96,
  .moves = {
   296,
   85,
   156,
   337
  },
  .evSpread = 1 << 2 | 1 << 0,
  .nature = 16,
 },
 {
  .species = 408,
  .heldItem = 50,
  .teamFlags = 0x95,
  .moves = {
   295,
   115,
   105,
   337
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 2,
 },
 {
  .species = 329,
  .heldItem = 25,
  .teamFlags = 0x96,
  .moves = {
   57,
   92,
   105,
   243
  },
  .evSpread = 1 << 5 | 1 << 3 | 1 << 2,
  .nature = 2,
 },
 {
  .species = 366,
  .heldItem = 16,
  .teamFlags = 0x05,
  .moves = {
   63,
   89,
   0,
   0
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 12,
 },
 {
  .species = 279,
  .heldItem = 25,
  .teamFlags = 0x1F,
  .moves = {
   202,
   104,
   73,
   213
  },
  .evSpread = 1 << 4 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 282,
  .heldItem = 4,
  .teamFlags = 0x17,
  .moves = {
   299,
   89,
   157,
   156
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 2,
 },
 {
  .species = 285,
  .heldItem = 47,
  .teamFlags = 0x17,
  .moves = {
   330,
   341,
   243,
   58
  },
  .evSpread = 1 << 4 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 394,
  .heldItem = 48,
  .teamFlags = 0x7B,
  .moves = {
   94,
   247,
   194,
   289
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 2,
  .nature = 7,
 },
 {
  .species = 307,
  .heldItem = 48,
  .teamFlags = 0x56,
  .moves = {
   147,
   68,
   231,
   202
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 22,
 },
 {
  .species = 65,
  .heldItem = 32,
  .teamFlags = 0x0A,
  .moves = {
   94,
   9,
   7,
   105
  },
  .evSpread = 1 << 2 | 1 << 0,
  .nature = 11,
 },
 {
  .species = 336,
  .heldItem = 6,
  .teamFlags = 0x05,
  .moves = {
   238,
   317,
   203,
   179
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 22,
 },
 {
  .species = 130,
  .heldItem = 47,
  .teamFlags = 0x0C,
  .moves = {
   63,
   85,
   89,
   58
  },
  .evSpread = 1 << 5 | 1 << 1,
  .nature = 5,
 },
 {
  .species = 169,
  .heldItem = 32,
  .teamFlags = 0x49,
  .moves = {
   92,
   109,
   213,
   182
  },
  .evSpread = 1 << 5 | 1 << 3,
  .nature = 0,
 },
 {
  .species = 68,
  .heldItem = 34,
  .teamFlags = 0x15,
  .moves = {
   238,
   68,
   89,
   263
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 12,
 },
 {
  .species = 338,
  .heldItem = 4,
  .teamFlags = 0x63,
  .moves = {
   87,
   86,
   156,
   242
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 2,
 },
 {
  .species = 101,
  .heldItem = 48,
  .teamFlags = 0x07,
  .moves = {
   85,
   103,
   243,
   153
  },
  .evSpread = 1 << 2 | 1 << 0,
  .nature = 15,
 },
 {
  .species = 89,
  .heldItem = 52,
  .teamFlags = 0x45,
  .moves = {
   188,
   202,
   317,
   153
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 19,
 },
 {
  .species = 334,
  .heldItem = 41,
  .teamFlags = 0x4D,
  .moves = {
   337,
   89,
   231,
   317
  },
  .evSpread = 1 << 5 | 1 << 1,
  .nature = 8,
 },
 {
  .species = 121,
  .heldItem = 4,
  .teamFlags = 0x1B,
  .moves = {
   113,
   85,
   57,
   156
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 17,
 },
 {
  .species = 38,
  .heldItem = 2,
  .teamFlags = 0x0A,
  .moves = {
   109,
   315,
   53,
   231
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 17,
 },
 {
  .species = 76,
  .heldItem = 48,
  .teamFlags = 0x25,
  .moves = {
   89,
   46,
   126,
   153
  },
  .evSpread = 1 << 5 | 1 << 3,
  .nature = 12,
 },
 {
  .species = 55,
  .heldItem = 60,
  .teamFlags = 0x27,
  .moves = {
   56,
   238,
   59,
   244
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 214,
  .heldItem = 48,
  .teamFlags = 0x55,
  .moves = {
   224,
   89,
   68,
   179
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 343,
  .heldItem = 48,
  .teamFlags = 0x36,
  .moves = {
   57,
   59,
   157,
   329
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 12,
 },
 {
  .species = 230,
  .heldItem = 25,
  .teamFlags = 0x5C,
  .moves = {
   56,
   182,
   225,
   104
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 3,
 },
 {
  .species = 397,
  .heldItem = 1,
  .teamFlags = 0x9D,
  .moves = {
   337,
   89,
   53,
   317
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 12,
 },
 {
  .species = 400,
  .heldItem = 24,
  .teamFlags = 0x15,
  .moves = {
   309,
   94,
   89,
   63
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 401,
  .heldItem = 24,
  .teamFlags = 0x95,
  .moves = {
   89,
   317,
   263,
   153
  },
  .evSpread = 1 << 5 | 1 << 1,
  .nature = 21,
 },
 {
  .species = 402,
  .heldItem = 47,
  .teamFlags = 0x96,
  .moves = {
   59,
   85,
   258,
   153
  },
  .evSpread = 1 << 4 | 1 << 2,
  .nature = 23,
 },
 {
  .species = 403,
  .heldItem = 24,
  .teamFlags = 0x94,
  .moves = {
   232,
   89,
   246,
   153
  },
  .evSpread = 1 << 5 | 1 << 1,
  .nature = 21,
 },
 {
  .species = 407,
  .heldItem = 50,
  .teamFlags = 0x96,
  .moves = {
   296,
   115,
   105,
   337
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 2,
 },
 {
  .species = 408,
  .heldItem = 47,
  .teamFlags = 0x95,
  .moves = {
   295,
   58,
   105,
   337
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 17,
 },
 {
  .species = 329,
  .heldItem = 50,
  .teamFlags = 0xD6,
  .moves = {
   57,
   58,
   105,
   104
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 3,
 },
 {
  .species = 317,
  .heldItem = 16,
  .teamFlags = 0x69,
  .moves = {
   271,
   156,
   231,
   50
  },
  .evSpread = 1 << 2 | 1 << 0,
  .nature = 24,
 },
 {
  .species = 279,
  .heldItem = 4,
  .teamFlags = 0x5F,
  .moves = {
   348,
   89,
   156,
   242
  },
  .evSpread = 1 << 5 | 1 << 3 | 1 << 2,
  .nature = 2,
 },
 {
  .species = 282,
  .heldItem = 41,
  .teamFlags = 0x7F,
  .moves = {
   264,
   68,
   207,
   317
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 22,
 },
 {
  .species = 285,
  .heldItem = 41,
  .teamFlags = 0x57,
  .moves = {
   231,
   174,
   104,
   156
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 9,
 },
 {
  .species = 394,
  .heldItem = 4,
  .teamFlags = 0x3B,
  .moves = {
   247,
   94,
   156,
   286
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 2,
 },
 {
  .species = 307,
  .heldItem = 48,
  .teamFlags = 0x56,
  .moves = {
   147,
   264,
   188,
   231
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 22,
 },
 {
  .species = 65,
  .heldItem = 16,
  .teamFlags = 0x1A,
  .moves = {
   94,
   271,
   105,
   289
  },
  .evSpread = 1 << 2 | 1 << 0,
  .nature = 11,
 },
 {
  .species = 336,
  .heldItem = 48,
  .teamFlags = 0x65,
  .moves = {
   279,
   68,
   264,
   179
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 22,
 },
 {
  .species = 297,
  .heldItem = 25,
  .teamFlags = 0x54,
  .moves = {
   240,
   182,
   92,
   57
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 169,
  .heldItem = 32,
  .teamFlags = 0x4B,
  .moves = {
   188,
   44,
   314,
   247
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 2,
 },
 {
  .species = 68,
  .heldItem = 34,
  .teamFlags = 0x75,
  .moves = {
   238,
   157,
   223,
   317
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 338,
  .heldItem = 60,
  .teamFlags = 0x0A,
  .moves = {
   85,
   86,
   213,
   242
  },
  .evSpread = 1 << 4 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 101,
  .heldItem = 52,
  .teamFlags = 0x64,
  .moves = {
   87,
   104,
   243,
   153
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 18,
 },
 {
  .species = 89,
  .heldItem = 48,
  .teamFlags = 0x49,
  .moves = {
   188,
   53,
   85,
   325
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 334,
  .heldItem = 32,
  .teamFlags = 0xCD,
  .moves = {
   182,
   91,
   92,
   201
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 9,
 },
 {
  .species = 121,
  .heldItem = 1,
  .teamFlags = 0x5B,
  .moves = {
   57,
   85,
   59,
   94
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 2,
 },
 {
  .species = 297,
  .heldItem = 25,
  .teamFlags = 0x1A,
  .moves = {
   240,
   73,
   291,
   182
  },
  .evSpread = 1 << 5 | 1 << 3,
  .nature = 2,
 },
 {
  .species = 26,
  .heldItem = 52,
  .teamFlags = 0x4A,
  .moves = {
   87,
   179,
   263,
   231
  },
  .evSpread = 1 << 3 | 1 << 2 | 1 << 1,
  .nature = 10,
 },
 {
  .species = 55,
  .heldItem = 48,
  .teamFlags = 0x0A,
  .moves = {
   57,
   94,
   58,
   231
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 6,
 },
 {
  .species = 214,
  .heldItem = 52,
  .teamFlags = 0x15,
  .moves = {
   224,
   89,
   263,
   317
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 343,
  .heldItem = 33,
  .teamFlags = 0x26,
  .moves = {
   57,
   58,
   90,
   329
  },
  .evSpread = 1 << 4 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 230,
  .heldItem = 47,
  .teamFlags = 0x4D,
  .moves = {
   56,
   59,
   63,
   50
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 397,
  .heldItem = 60,
  .teamFlags = 0x9C,
  .moves = {
   337,
   89,
   126,
   56
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 4,
 },
 {
  .species = 400,
  .heldItem = 52,
  .teamFlags = 0xB5,
  .moves = {
   309,
   94,
   228,
   317
  },
  .evSpread = 1 << 5 | 1 << 3,
  .nature = 2,
 },
 {
  .species = 401,
  .heldItem = 50,
  .teamFlags = 0x95,
  .moves = {
   89,
   92,
   276,
   156
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 12,
 },
 {
  .species = 402,
  .heldItem = 54,
  .teamFlags = 0x96,
  .moves = {
   58,
   85,
   246,
   153
  },
  .evSpread = 1 << 3 | 1 << 2,
  .nature = 19,
 },
 {
  .species = 403,
  .heldItem = 25,
  .teamFlags = 0xB4,
  .moves = {
   174,
   133,
   216,
   156
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 9,
 },
 {
  .species = 407,
  .heldItem = 47,
  .teamFlags = 0x92,
  .moves = {
   296,
   85,
   89,
   58
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 17,
 },
 {
  .species = 408,
  .heldItem = 47,
  .teamFlags = 0x91,
  .moves = {
   295,
   85,
   89,
   57
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 17,
 },
 {
  .species = 329,
  .heldItem = 32,
  .teamFlags = 0xB2,
  .moves = {
   57,
   58,
   105,
   213
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 2,
 },
 {
  .species = 366,
  .heldItem = 48,
  .teamFlags = 0x65,
  .moves = {
   281,
   163,
   68,
   63
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 6,
 },
 {
  .species = 279,
  .heldItem = 47,
  .teamFlags = 0xDF,
  .moves = {
   348,
   197,
   337,
   242
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 0,
 },
 {
  .species = 282,
  .heldItem = 48,
  .teamFlags = 0xD7,
  .moves = {
   299,
   327,
   89,
   157
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 6,
 },
 {
  .species = 285,
  .heldItem = 60,
  .teamFlags = 0x5F,
  .moves = {
   57,
   89,
   58,
   317
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 0,
  .nature = 22,
 },
 {
  .species = 303,
  .heldItem = 32,
  .teamFlags = 0xDB,
  .moves = {
   109,
   247,
   92,
   63
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 400,
  .heldItem = 24,
  .teamFlags = 0x94,
  .moves = {
   309,
   94,
   247,
   89
  },
  .evSpread = 1 << 5 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 352,
  .heldItem = 10,
  .teamFlags = 0x4B,
  .moves = {
   94,
   109,
   271,
   115
  },
  .evSpread = 1 << 4 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 407,
  .heldItem = 41,
  .teamFlags = 0x92,
  .moves = {
   296,
   105,
   213,
   337
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 3,
 },
 {
  .species = 408,
  .heldItem = 1,
  .teamFlags = 0x91,
  .moves = {
   295,
   85,
   58,
   337
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 0,
 },
 {
  .species = 121,
  .heldItem = 41,
  .teamFlags = 0x1A,
  .moves = {
   57,
   85,
   94,
   58
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 17,
 },
 {
  .species = 68,
  .heldItem = 34,
  .teamFlags = 0x14,
  .moves = {
   238,
   68,
   317,
   53
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 0,
 },
};
# 125 "src/battle_tower.c" 2
# 1 "src/data/battle_tower/level_100_mons.h" 1
const struct BattleTowerPokemonTemplate gBattleTowerLevel100Mons[] =
{
 {
  .species = 289,
  .heldItem = 26,
  .teamFlags = 0x42,
  .moves = {
   163,
   45,
   39,
   28
  },
  .evSpread = 1 << 3,
  .nature = 12,
 },
 {
  .species = 287,
  .heldItem = 2,
  .teamFlags = 0x41,
  .moves = {
   44,
   336,
   316,
   184
  },
  .evSpread = 1 << 1,
  .nature = 14,
 },
 {
  .species = 292,
  .heldItem = 7,
  .teamFlags = 0x41,
  .moves = {
   202,
   16,
   78,
   182
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 23,
 },
 {
  .species = 294,
  .heldItem = 39,
  .teamFlags = 0x41,
  .moves = {
   60,
   16,
   104,
   318
  },
  .evSpread = 1 << 3 | 1 << 2,
  .nature = 7,
 },
 {
  .species = 296,
  .heldItem = 4,
  .teamFlags = 0x03,
  .moves = {
   310,
   45,
   72,
   57
  },
  .evSpread = 1 << 4 | 1 << 0,
  .nature = 1,
 },
 {
  .species = 299,
  .heldItem = 19,
  .teamFlags = 0x01,
  .moves = {
   331,
   13,
   185,
   74
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 6,
 },
 {
  .species = 305,
  .heldItem = 23,
  .teamFlags = 0x42,
  .moves = {
   332,
   45,
   283,
   116
  },
  .evSpread = 1 << 1,
  .nature = 21,
 },
 {
  .species = 310,
  .heldItem = 22,
  .teamFlags = 0x02,
  .moves = {
   57,
   346,
   182,
   48
  },
  .evSpread = 1 << 4,
  .nature = 16,
 },
 {
  .species = 307,
  .heldItem = 1,
  .teamFlags = 0x42,
  .moves = {
   183,
   72,
   29,
   78
  },
  .evSpread = 1 << 1,
  .nature = 21,
 },
 {
  .species = 302,
  .heldItem = 26,
  .teamFlags = 0x41,
  .moves = {
   10,
   103,
   141,
   148
  },
  .evSpread = 1 << 2 | 1 << 1,
  .nature = 12,
 },
 {
  .species = 169,
  .heldItem = 2,
  .teamFlags = 0x01,
  .moves = {
   44,
   19,
   48,
   114
  },
  .evSpread = 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 8,
 },
 {
  .species = 355,
  .heldItem = 36,
  .teamFlags = 0x03,
  .moves = {
   11,
   230,
   310,
   70
  },
  .evSpread = 1 << 1,
  .nature = 0,
 },
 {
  .species = 320,
  .heldItem = 2,
  .teamFlags = 0x01,
  .moves = {
   88,
   201,
   106,
   182
  },
  .evSpread = 1 << 1,
  .nature = 8,
 },
 {
  .species = 316,
  .heldItem = 2,
  .teamFlags = 0x42,
  .moves = {
   3,
   39,
   213,
   204
  },
  .evSpread = 1 << 5 | 1 << 2,
  .nature = 5,
 },
 {
  .species = 340,
  .heldItem = 38,
  .teamFlags = 0x01,
  .moves = {
   52,
   36,
   45,
   201
  },
  .evSpread = 1 << 5,
  .nature = 19,
 },
 {
  .species = 89,
  .heldItem = 3,
  .teamFlags = 0x01,
  .moves = {
   139,
   107,
   124,
   103
  },
  .evSpread = 1 << 0,
  .nature = 20,
 },
 {
  .species = 28,
  .heldItem = 40,
  .teamFlags = 0x03,
  .moves = {
   163,
   28,
   111,
   129
  },
  .evSpread = 1 << 2 | 1 << 1,
  .nature = 6,
 },
 {
  .species = 308,
  .heldItem = 18,
  .teamFlags = 0x42,
  .moves = {
   253,
   352,
   37,
   219
  },
  .evSpread = 1 << 3,
  .nature = 10,
 },
 {
  .species = 324,
  .heldItem = 4,
  .teamFlags = 0x01,
  .moves = {
   321,
   300,
   55,
   346
  },
  .evSpread = 1 << 3 | 1 << 2,
  .nature = 11,
 },
 {
  .species = 345,
  .heldItem = 28,
  .teamFlags = 0x01,
  .moves = {
   40,
   42,
   71,
   178
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 14,
 },
 {
  .species = 39,
  .heldItem = 32,
  .teamFlags = 0x42,
  .moves = {
   47,
   205,
   1,
   113
  },
  .evSpread = 1 << 0,
  .nature = 0,
 },
 {
  .species = 183,
  .heldItem = 22,
  .teamFlags = 0x42,
  .moves = {
   61,
   111,
   240,
   231
  },
  .evSpread = 1 << 5,
  .nature = 17,
 },
 {
  .species = 82,
  .heldItem = 26,
  .teamFlags = 0x01,
  .moves = {
   84,
   48,
   148,
   103
  },
  .evSpread = 1 << 3,
  .nature = 23,
 },
 {
  .species = 330,
  .heldItem = 1,
  .teamFlags = 0x01,
  .moves = {
   44,
   99,
   184,
   43
  },
  .evSpread = 1 << 1,
  .nature = 24,
 },
 {
  .species = 317,
  .heldItem = 7,
  .teamFlags = 0x03,
  .moves = {
   168,
   122,
   20,
   154
  },
  .evSpread = 1 << 2,
  .nature = 13,
 },
 {
  .species = 38,
  .heldItem = 38,
  .teamFlags = 0x02,
  .moves = {
   52,
   109,
   83,
   219
  },
  .evSpread = 1 << 4,
  .nature = 1,
 },
 {
  .species = 26,
  .heldItem = 7,
  .teamFlags = 0x42,
  .moves = {
   351,
   45,
   104,
   113
  },
  .evSpread = 1 << 2,
  .nature = 14,
 },
 {
  .species = 342,
  .heldItem = 29,
  .teamFlags = 0x01,
  .moves = {
   301,
   55,
   227,
   258
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 9,
 },
 {
  .species = 75,
  .heldItem = 5,
  .teamFlags = 0x01,
  .moves = {
   88,
   300,
   201,
   317
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 377,
  .heldItem = 31,
  .teamFlags = 0x03,
  .moves = {
   101,
   261,
   103,
   282
  },
  .evSpread = 1 << 4,
  .nature = 17,
 },
 {
  .species = 325,
  .heldItem = 2,
  .teamFlags = 0x0A,
  .moves = {
   213,
   175,
   186,
   352
  },
  .evSpread = 1 << 4,
  .nature = 3,
 },
 {
  .species = 171,
  .heldItem = 12,
  .teamFlags = 0x0A,
  .moves = {
   86,
   48,
   55,
   209
  },
  .evSpread = 1 << 4 | 1 << 0,
  .nature = 5,
 },
 {
  .species = 222,
  .heldItem = 2,
  .teamFlags = 0x0A,
  .moves = {
   243,
   145,
   106,
   113
  },
  .evSpread = 1 << 5 | 1 << 2,
  .nature = 10,
 },
 {
  .species = 313,
  .heldItem = 2,
  .teamFlags = 0x05,
  .moves = {
   57,
   46,
   45,
   54
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 1,
  .nature = 22,
 },
 {
  .species = 112,
  .heldItem = 6,
  .teamFlags = 0x05,
  .moves = {
   36,
   184,
   39,
   46
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 85,
  .heldItem = 23,
  .teamFlags = 0x05,
  .moves = {
   31,
   228,
   332,
   97
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 55,
  .heldItem = 24,
  .teamFlags = 0x05,
  .moves = {
   154,
   39,
   50,
   244
  },
  .evSpread = 1 << 1,
  .nature = 7,
 },
 {
  .species = 182,
  .heldItem = 8,
  .teamFlags = 0x0A,
  .moves = {
   202,
   77,
   78,
   51
  },
  .evSpread = 1 << 4,
  .nature = 5,
 },
 {
  .species = 369,
  .heldItem = 1,
  .teamFlags = 0x05,
  .moves = {
   23,
   75,
   16,
   235
  },
  .evSpread = 1 << 1,
  .nature = 0,
 },
 {
  .species = 322,
  .heldItem = 31,
  .teamFlags = 0x0A,
  .moves = {
   101,
   252,
   244,
   197
  },
  .evSpread = 1 << 3,
  .nature = 0,
 },
 {
  .species = 101,
  .heldItem = 6,
  .teamFlags = 0x03,
  .moves = {
   49,
   103,
   209,
   120
  },
  .evSpread = 1 << 4 | 1 << 2,
  .nature = 24,
 },
 {
  .species = 73,
  .heldItem = 28,
  .teamFlags = 0x01,
  .moves = {
   51,
   352,
   112,
   35
  },
  .evSpread = 1 << 3,
  .nature = 11,
 },
 {
  .species = 319,
  .heldItem = 40,
  .teamFlags = 0x05,
  .moves = {
   246,
   189,
   229,
   93
  },
  .evSpread = 1 << 3 | 1 << 2,
  .nature = 17,
 },
 {
  .species = 352,
  .heldItem = 2,
  .teamFlags = 0x0A,
  .moves = {
   60,
   244,
   340,
   277
  },
  .evSpread = 1 << 4 | 1 << 2,
  .nature = 4,
 },
 {
  .species = 327,
  .heldItem = 37,
  .teamFlags = 0x05,
  .moves = {
   152,
   61,
   280,
   182
  },
  .evSpread = 1 << 1,
  .nature = 20,
 },
 {
  .species = 379,
  .heldItem = 28,
  .teamFlags = 0x01,
  .moves = {
   342,
   137,
   35,
   168
  },
  .evSpread = 1 << 5 | 1 << 2,
  .nature = 23,
 },
 {
  .species = 380,
  .heldItem = 2,
  .teamFlags = 0x05,
  .moves = {
   210,
   43,
   98,
   197
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 359,
  .heldItem = 43,
  .teamFlags = 0x03,
  .moves = {
   225,
   47,
   219,
   36
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 363,
  .heldItem = 4,
  .teamFlags = 0x0A,
  .moves = {
   73,
   72,
   74,
   78
  },
  .evSpread = 1 << 5 | 1 << 4,
  .nature = 4,
 },
 {
  .species = 386,
  .heldItem = 32,
  .teamFlags = 0x09,
  .moves = {
   324,
   109,
   104,
   113
  },
  .evSpread = 1 << 5 | 1 << 2,
  .nature = 0,
 },
 {
  .species = 387,
  .heldItem = 2,
  .teamFlags = 0x09,
  .moves = {
   204,
   227,
   76,
   213
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 17,
 },
 {
  .species = 338,
  .heldItem = 17,
  .teamFlags = 0x03,
  .moves = {
   44,
   336,
   86,
   209
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 12,
 },
 {
  .species = 355,
  .heldItem = 2,
  .teamFlags = 0x0A,
  .moves = {
   242,
   334,
   259,
   201
  },
  .evSpread = 1 << 2 | 1 << 1,
  .nature = 19,
 },
 {
  .species = 336,
  .heldItem = 1,
  .teamFlags = 0x05,
  .moves = {
   292,
   252,
   18,
   179
  },
  .evSpread = 1 << 1,
  .nature = 21,
 },
 {
  .species = 227,
  .heldItem = 36,
  .teamFlags = 0x01,
  .moves = {
   211,
   97,
   269,
   19
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 14,
 },
 {
  .species = 321,
  .heldItem = 39,
  .teamFlags = 0x03,
  .moves = {
   83,
   108,
   34,
   133
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 16,
 },
 {
  .species = 130,
  .heldItem = 7,
  .teamFlags = 0x05,
  .moves = {
   37,
   82,
   239,
   56
  },
  .evSpread = 1 << 4 | 1 << 1 | 1 << 0,
  .nature = 24,
 },
 {
  .species = 287,
  .heldItem = 2,
  .teamFlags = 0x05,
  .moves = {
   242,
   336,
   231,
   259
  },
  .evSpread = 1 << 4,
  .nature = 24,
 },
 {
  .species = 289,
  .heldItem = 12,
  .teamFlags = 0x06,
  .moves = {
   163,
   213,
   351,
   92
  },
  .evSpread = 1 << 1,
  .nature = 0,
 },
 {
  .species = 312,
  .heldItem = 2,
  .teamFlags = 0x0A,
  .moves = {
   92,
   78,
   241,
   76
  },
  .evSpread = 1 << 2 | 1 << 1,
  .nature = 9,
 },
 {
  .species = 279,
  .heldItem = 41,
  .teamFlags = 0x06,
  .moves = {
   331,
   21,
   103,
   197
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 7,
 },
 {
  .species = 282,
  .heldItem = 1,
  .teamFlags = 0x06,
  .moves = {
   24,
   53,
   104,
   46
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 21,
 },
 {
  .species = 285,
  .heldItem = 2,
  .teamFlags = 0x49,
  .moves = {
   57,
   341,
   300,
   240
  },
  .evSpread = 1 << 5 | 1 << 4,
  .nature = 0,
 },
 {
  .species = 397,
  .heldItem = 43,
  .teamFlags = 0x49,
  .moves = {
   225,
   19,
   92,
   263
  },
  .evSpread = 1 << 5 | 1 << 1 | 1 << 0,
  .nature = 20,
 },
 {
  .species = 230,
  .heldItem = 7,
  .teamFlags = 0x49,
  .moves = {
   57,
   58,
   108,
   240
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 12,
 },
 {
  .species = 222,
  .heldItem = 7,
  .teamFlags = 0x03,
  .moves = {
   246,
   243,
   219,
   115
  },
  .evSpread = 1 << 5 | 1 << 2,
  .nature = 5,
 },
 {
  .species = 112,
  .heldItem = 6,
  .teamFlags = 0x41,
  .moves = {
   89,
   231,
   46,
   85
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 11,
 },
 {
  .species = 214,
  .heldItem = 1,
  .teamFlags = 0x06,
  .moves = {
   224,
   68,
   182,
   43
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 21,
 },
 {
  .species = 203,
  .heldItem = 41,
  .teamFlags = 0x09,
  .moves = {
   94,
   242,
   226,
   97
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 0,
  .nature = 3,
 },
 {
  .species = 178,
  .heldItem = 41,
  .teamFlags = 0x09,
  .moves = {
   94,
   19,
   109,
   92
  },
  .evSpread = 1 << 3,
  .nature = 18,
 },
 {
  .species = 85,
  .heldItem = 23,
  .teamFlags = 0x03,
  .moves = {
   65,
   161,
   228,
   259
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 12,
 },
 {
  .species = 45,
  .heldItem = 2,
  .teamFlags = 0x89,
  .moves = {
   77,
   78,
   79,
   80
  },
  .evSpread = 1 << 4 | 1 << 2 | 1 << 0,
  .nature = 15,
 },
 {
  .species = 357,
  .heldItem = 35,
  .teamFlags = 0x06,
  .moves = {
   264,
   113,
   339,
   94
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 2,
  .nature = 13,
 },
 {
  .species = 376,
  .heldItem = 2,
  .teamFlags = 0x06,
  .moves = {
   163,
   14,
   104,
   213
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 362,
  .heldItem = 31,
  .teamFlags = 0x4B,
  .moves = {
   109,
   261,
   101,
   50
  },
  .evSpread = 1 << 5 | 1 << 2,
  .nature = 9,
 },
 {
  .species = 377,
  .heldItem = 31,
  .teamFlags = 0x43,
  .moves = {
   288,
   247,
   174,
   282
  },
  .evSpread = 1 << 4,
  .nature = 8,
 },
 {
  .species = 385,
  .heldItem = 41,
  .teamFlags = 0x82,
  .moves = {
   311,
   258,
   241,
   240
  },
  .evSpread = 1 << 3,
  .nature = 15,
 },
 {
  .species = 329,
  .heldItem = 43,
  .teamFlags = 0x02,
  .moves = {
   57,
   287,
   105,
   240
  },
  .evSpread = 1 << 5 | 1 << 4,
  .nature = 3,
 },
 {
  .species = 331,
  .heldItem = 7,
  .teamFlags = 0x01,
  .moves = {
   242,
   116,
   184,
   103
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 9,
 },
 {
  .species = 334,
  .heldItem = 12,
  .teamFlags = 0x06,
  .moves = {
   89,
   28,
   225,
   328
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 4,
 },
 {
  .species = 332,
  .heldItem = 2,
  .teamFlags = 0x09,
  .moves = {
   92,
   328,
   242,
   104
  },
  .evSpread = 1 << 1,
  .nature = 6,
 },
 {
  .species = 348,
  .heldItem = 32,
  .teamFlags = 0x43,
  .moves = {
   94,
   88,
   95,
   113
  },
  .evSpread = 1 << 5 | 1 << 4,
  .nature = 0,
 },
 {
  .species = 349,
  .heldItem = 39,
  .teamFlags = 0x43,
  .moves = {
   76,
   241,
   322,
   347
  },
  .evSpread = 1 << 5 | 1 << 2,
  .nature = 17,
 },
 {
  .species = 318,
  .heldItem = 2,
  .teamFlags = 0x43,
  .moves = {
   94,
   89,
   115,
   120
  },
  .evSpread = 1 << 4 | 1 << 0,
  .nature = 18,
 },
 {
  .species = 327,
  .heldItem = 24,
  .teamFlags = 0x06,
  .moves = {
   152,
   57,
   182,
   280
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 19,
 },
 {
  .species = 324,
  .heldItem = 30,
  .teamFlags = 0x06,
  .moves = {
   89,
   321,
   133,
   57
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 379,
  .heldItem = 2,
  .teamFlags = 0x09,
  .moves = {
   342,
   242,
   202,
   114
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 7,
 },
 {
  .species = 219,
  .heldItem = 32,
  .teamFlags = 0x89,
  .moves = {
   53,
   113,
   133,
   157
  },
  .evSpread = 1 << 1,
  .nature = 22,
 },
 {
  .species = 68,
  .heldItem = 14,
  .teamFlags = 0x09,
  .moves = {
   2,
   69,
   280,
   67
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 368,
  .heldItem = 2,
  .teamFlags = 0x86,
  .moves = {
   281,
   352,
   247,
   188
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 4,
 },
 {
  .species = 279,
  .heldItem = 2,
  .teamFlags = 0x0C,
  .moves = {
   348,
   202,
   210,
   197
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 0,
  .nature = 14,
 },
 {
  .species = 282,
  .heldItem = 34,
  .teamFlags = 0x0C,
  .moves = {
   299,
   53,
   182,
   98
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 1,
  .nature = 6,
 },
 {
  .species = 285,
  .heldItem = 32,
  .teamFlags = 0x4C,
  .moves = {
   57,
   341,
   189,
   104
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 287,
  .heldItem = 13,
  .teamFlags = 0x04,
  .moves = {
   242,
   336,
   207,
   247
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 20,
 },
 {
  .species = 289,
  .heldItem = 4,
  .teamFlags = 0x04,
  .moves = {
   163,
   156,
   187,
   85
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 16,
 },
 {
  .species = 292,
  .heldItem = 41,
  .teamFlags = 0x08,
  .moves = {
   202,
   213,
   234,
   78
  },
  .evSpread = 1 << 4 | 1 << 1 | 1 << 0,
  .nature = 11,
 },
 {
  .species = 294,
  .heldItem = 2,
  .teamFlags = 0x08,
  .moves = {
   94,
   318,
   236,
   92
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 23,
 },
 {
  .species = 297,
  .heldItem = 41,
  .teamFlags = 0x0C,
  .moves = {
   252,
   56,
   58,
   253
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 300,
  .heldItem = 7,
  .teamFlags = 0x0C,
  .moves = {
   218,
   202,
   259,
   207
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 1,
  .nature = 7,
 },
 {
  .species = 305,
  .heldItem = 41,
  .teamFlags = 0x88,
  .moves = {
   19,
   283,
   332,
   92
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 394,
  .heldItem = 13,
  .teamFlags = 0x4A,
  .moves = {
   95,
   138,
   94,
   104
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 3,
  .nature = 23,
 },
 {
  .species = 307,
  .heldItem = 32,
  .teamFlags = 0x0C,
  .moves = {
   223,
   170,
   289,
   72
  },
  .evSpread = 1 << 3 | 1 << 1 | 1 << 0,
  .nature = 3,
 },
 {
  .species = 365,
  .heldItem = 24,
  .teamFlags = 0x04,
  .moves = {
   163,
   253,
   227,
   263
  },
  .evSpread = 1 << 3 | 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 20,
 },
 {
  .species = 302,
  .heldItem = 11,
  .teamFlags = 0x04,
  .moves = {
   210,
   202,
   14,
   104
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 22,
 },
 {
  .species = 303,
  .heldItem = 24,
  .teamFlags = 0xCA,
  .moves = {
   109,
   76,
   241,
   288
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 3 | 1 << 2,
  .nature = 13,
 },
 {
  .species = 371,
  .heldItem = 39,
  .teamFlags = 0x04,
  .moves = {
   304,
   336,
   247,
   259
  },
  .evSpread = 1 << 4 | 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 336,
  .heldItem = 1,
  .teamFlags = 0x04,
  .moves = {
   292,
   339,
   280,
   237
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 1,
  .nature = 18,
 },
 {
  .species = 65,
  .heldItem = 35,
  .teamFlags = 0x88,
  .moves = {
   94,
   247,
   248,
   50
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 169,
  .heldItem = 12,
  .teamFlags = 0x88,
  .moves = {
   109,
   92,
   212,
   289
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 355,
  .heldItem = 36,
  .teamFlags = 0x04,
  .moves = {
   242,
   334,
   313,
   305
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 14,
 },
 {
  .species = 384,
  .heldItem = 36,
  .teamFlags = 0x45,
  .moves = {
   232,
   53,
   319,
   58
  },
  .evSpread = 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 76,
  .heldItem = 40,
  .teamFlags = 0xC5,
  .moves = {
   205,
   111,
   104,
   120
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 338,
  .heldItem = 17,
  .teamFlags = 0x04,
  .moves = {
   87,
   240,
   86,
   268
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 23,
 },
 {
  .species = 386,
  .heldItem = 11,
  .teamFlags = 0x08,
  .moves = {
   109,
   324,
   236,
   294
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 6,
 },
 {
  .species = 387,
  .heldItem = 11,
  .teamFlags = 0x08,
  .moves = {
   85,
   260,
   273,
   227
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 312,
  .heldItem = 7,
  .teamFlags = 0x88,
  .moves = {
   202,
   318,
   78,
   92
  },
  .evSpread = 1 << 5 | 1 << 4,
  .nature = 14,
 },
 {
  .species = 363,
  .heldItem = 8,
  .teamFlags = 0x08,
  .moves = {
   80,
   74,
   235,
   320
  },
  .evSpread = 1 << 4 | 1 << 0,
  .nature = 8,
 },
 {
  .species = 316,
  .heldItem = 2,
  .teamFlags = 0x08,
  .moves = {
   47,
   213,
   3,
   215
  },
  .evSpread = 1 << 3 | 1 << 1 | 1 << 0,
  .nature = 10,
 },
 {
  .species = 119,
  .heldItem = 22,
  .teamFlags = 0x88,
  .moves = {
   240,
   57,
   213,
   58
  },
  .evSpread = 1 << 5 | 1 << 4,
  .nature = 2,
 },
 {
  .species = 130,
  .heldItem = 43,
  .teamFlags = 0x8C,
  .moves = {
   56,
   89,
   82,
   182
  },
  .evSpread = 1 << 4 | 1 << 0,
  .nature = 20,
 },
 {
  .species = 368,
  .heldItem = 25,
  .teamFlags = 0x42,
  .moves = {
   254,
   256,
   255,
   281
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 4,
 },
 {
  .species = 219,
  .heldItem = 30,
  .teamFlags = 0x41,
  .moves = {
   157,
   126,
   34,
   113
  },
  .evSpread = 1 << 4 | 1 << 1 | 1 << 0,
  .nature = 1,
 },
 {
  .species = 89,
  .heldItem = 28,
  .teamFlags = 0xC3,
  .moves = {
   188,
   53,
   151,
   50
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 14,
 },
 {
  .species = 308,
  .heldItem = 18,
  .teamFlags = 0x42,
  .moves = {
   146,
   298,
   244,
   263
  },
  .evSpread = 1 << 3 | 1 << 1 | 1 << 0,
  .nature = 15,
 },
 {
  .species = 359,
  .heldItem = 43,
  .teamFlags = 0x03,
  .moves = {
   337,
   225,
   349,
   287
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 19,
 },
 {
  .species = 380,
  .heldItem = 2,
  .teamFlags = 0x03,
  .moves = {
   306,
   269,
   14,
   197
  },
  .evSpread = 1 << 3 | 1 << 1 | 1 << 0,
  .nature = 24,
 },
 {
  .species = 379,
  .heldItem = 41,
  .teamFlags = 0x41,
  .moves = {
   207,
   269,
   137,
   342
  },
  .evSpread = 1 << 3 | 1 << 1 | 1 << 0,
  .nature = 23,
 },
 {
  .species = 352,
  .heldItem = 2,
  .teamFlags = 0x42,
  .moves = {
   92,
   340,
   109,
   213
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 2,
 },
 {
  .species = 345,
  .heldItem = 8,
  .teamFlags = 0x41,
  .moves = {
   302,
   275,
   191,
   178
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 22,
 },
 {
  .species = 319,
  .heldItem = 4,
  .teamFlags = 0x03,
  .moves = {
   89,
   201,
   322,
   153
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 9,
 },
 {
  .species = 73,
  .heldItem = 37,
  .teamFlags = 0xC1,
  .moves = {
   188,
   56,
   112,
   48
  },
  .evSpread = 1 << 5 | 1 << 3 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 40,
  .heldItem = 26,
  .teamFlags = 0xC3,
  .moves = {
   47,
   264,
   50,
   263
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 3,
 },
 {
  .species = 184,
  .heldItem = 12,
  .teamFlags = 0xC2,
  .moves = {
   57,
   213,
   111,
   205
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 19,
 },
 {
  .species = 101,
  .heldItem = 12,
  .teamFlags = 0xC3,
  .moves = {
   85,
   243,
   113,
   120
  },
  .evSpread = 1 << 5 | 1 << 3 | 1 << 2,
  .nature = 0,
 },
 {
  .species = 329,
  .heldItem = 32,
  .teamFlags = 0x42,
  .moves = {
   56,
   213,
   105,
   287
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 0,
  .nature = 13,
 },
 {
  .species = 317,
  .heldItem = 2,
  .teamFlags = 0x43,
  .moves = {
   285,
   246,
   352,
   85
  },
  .evSpread = 1 << 2 | 1 << 0,
  .nature = 4,
 },
 {
  .species = 362,
  .heldItem = 25,
  .teamFlags = 0x43,
  .moves = {
   109,
   174,
   156,
   212
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 18,
 },
 {
  .species = 376,
  .heldItem = 41,
  .teamFlags = 0x41,
  .moves = {
   163,
   14,
   104,
   289
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 6,
 },
 {
  .species = 38,
  .heldItem = 50,
  .teamFlags = 0xC2,
  .moves = {
   53,
   109,
   104,
   261
  },
  .evSpread = 1 << 2 | 1 << 0,
  .nature = 10,
 },
 {
  .species = 25,
  .heldItem = 27,
  .teamFlags = 0xC2,
  .moves = {
   86,
   87,
   240,
   213
  },
  .evSpread = 1 << 2 | 1 << 0,
  .nature = 11,
 },
 {
  .species = 45,
  .heldItem = 30,
  .teamFlags = 0xC3,
  .moves = {
   202,
   79,
   236,
   188
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 232,
  .heldItem = 7,
  .teamFlags = 0x41,
  .moves = {
   89,
   38,
   231,
   90
  },
  .evSpread = 1 << 5 | 1 << 1 | 1 << 0,
  .nature = 24,
 },
 {
  .species = 121,
  .heldItem = 12,
  .teamFlags = 0xC3,
  .moves = {
   109,
   58,
   105,
   104
  },
  .evSpread = 1 << 5 | 1 << 3 | 1 << 2,
  .nature = 11,
 },
 {
  .species = 343,
  .heldItem = 29,
  .teamFlags = 0x43,
  .moves = {
   58,
   34,
   227,
   258
  },
  .evSpread = 1 << 4 | 1 << 1 | 1 << 0,
  .nature = 9,
 },
 {
  .species = 381,
  .heldItem = 25,
  .teamFlags = 0x41,
  .moves = {
   281,
   300,
   38,
   201
  },
  .evSpread = 1 << 5 | 1 << 1 | 1 << 0,
  .nature = 1,
 },
 {
  .species = 230,
  .heldItem = 32,
  .teamFlags = 0x43,
  .moves = {
   240,
   58,
   56,
   97
  },
  .evSpread = 1 << 4 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 389,
  .heldItem = 25,
  .teamFlags = 0x43,
  .moves = {
   109,
   275,
   246,
   202
  },
  .evSpread = 1 << 2 | 1 << 0,
  .nature = 16,
 },
 {
  .species = 391,
  .heldItem = 2,
  .teamFlags = 0x43,
  .moves = {
   163,
   157,
   89,
   352
  },
  .evSpread = 1 << 5 | 1 << 1 | 1 << 0,
  .nature = 14,
 },
 {
  .species = 400,
  .heldItem = 36,
  .teamFlags = 0x41,
  .moves = {
   232,
   94,
   113,
   97
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 397,
  .heldItem = 41,
  .teamFlags = 0x42,
  .moves = {
   225,
   242,
   53,
   332
  },
  .evSpread = 1 << 5 | 1 << 3 | 1 << 2,
  .nature = 11,
 },
 {
  .species = 287,
  .heldItem = 52,
  .teamFlags = 0x01,
  .moves = {
   242,
   281,
   263,
   336
  },
  .evSpread = 1 << 3 | 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 289,
  .heldItem = 48,
  .teamFlags = 0x02,
  .moves = {
   63,
   263,
   213,
   271
  },
  .evSpread = 1 << 3 | 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 297,
  .heldItem = 41,
  .teamFlags = 0x03,
  .moves = {
   57,
   264,
   252,
   235
  },
  .evSpread = 1 << 3 | 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 10,
 },
 {
  .species = 372,
  .heldItem = 52,
  .teamFlags = 0x01,
  .moves = {
   253,
   89,
   58,
   53
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 6,
 },
 {
  .species = 305,
  .heldItem = 49,
  .teamFlags = 0x02,
  .moves = {
   263,
   48,
   17,
   283
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 14,
 },
 {
  .species = 310,
  .heldItem = 24,
  .teamFlags = 0x82,
  .moves = {
   254,
   256,
   255,
   213
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 307,
  .heldItem = 6,
  .teamFlags = 0x01,
  .moves = {
   223,
   68,
   339,
   170
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 303,
  .heldItem = 41,
  .teamFlags = 0x01,
  .moves = {
   216,
   104,
   92,
   247
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 372,
  .heldItem = 2,
  .teamFlags = 0x01,
  .moves = {
   63,
   48,
   53,
   58
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 21,
 },
 {
  .species = 336,
  .heldItem = 34,
  .teamFlags = 0x01,
  .moves = {
   238,
   68,
   263,
   252
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 65,
  .heldItem = 60,
  .teamFlags = 0x83,
  .moves = {
   94,
   227,
   50,
   105
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 17,
 },
 {
  .species = 169,
  .heldItem = 34,
  .teamFlags = 0x81,
  .moves = {
   109,
   314,
   259,
   104
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 322,
  .heldItem = 25,
  .teamFlags = 0x83,
  .moves = {
   92,
   197,
   105,
   259
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 7,
 },
 {
  .species = 355,
  .heldItem = 4,
  .teamFlags = 0x02,
  .moves = {
   242,
   14,
   334,
   156
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 1,
  .nature = 21,
 },
 {
  .species = 384,
  .heldItem = 2,
  .teamFlags = 0x01,
  .moves = {
   38,
   334,
   46,
   89
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 76,
  .heldItem = 48,
  .teamFlags = 0x01,
  .moves = {
   89,
   157,
   53,
   263
  },
  .evSpread = 1 << 5 | 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 320,
  .heldItem = 2,
  .teamFlags = 0x81,
  .moves = {
   86,
   157,
   259,
   213
  },
  .evSpread = 1 << 4 | 1 << 2 | 1 << 0,
  .nature = 14,
 },
 {
  .species = 338,
  .heldItem = 60,
  .teamFlags = 0x02,
  .moves = {
   87,
   242,
   86,
   98
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 1,
  .nature = 13,
 },
 {
  .species = 363,
  .heldItem = 25,
  .teamFlags = 0x82,
  .moves = {
   320,
   73,
   202,
   74
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 316,
  .heldItem = 51,
  .teamFlags = 0x02,
  .moves = {
   274,
   47,
   213,
   164
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 6,
 },
 {
  .species = 369,
  .heldItem = 34,
  .teamFlags = 0xC2,
  .moves = {
   75,
   89,
   213,
   235
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 13,
 },
 {
  .species = 368,
  .heldItem = 52,
  .teamFlags = 0x03,
  .moves = {
   281,
   188,
   213,
   58
  },
  .evSpread = 1 << 4 | 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 68,
  .heldItem = 14,
  .teamFlags = 0x01,
  .moves = {
   238,
   339,
   67,
   280
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 18,
 },
 {
  .species = 340,
  .heldItem = 2,
  .teamFlags = 0x40,
  .moves = {
   284,
   89,
   157,
   315
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 14,
 },
 {
  .species = 219,
  .heldItem = 32,
  .teamFlags = 0x03,
  .moves = {
   53,
   157,
   89,
   115
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 110,
  .heldItem = 48,
  .teamFlags = 0x81,
  .moves = {
   261,
   63,
   85,
   194
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 1 | 1 << 0,
  .nature = 9,
 },
 {
  .species = 308,
  .heldItem = 16,
  .teamFlags = 0x82,
  .moves = {
   271,
   298,
   264,
   263
  },
  .evSpread = 1 << 5 | 1 << 3 | 1 << 2,
  .nature = 10,
 },
 {
  .species = 227,
  .heldItem = 48,
  .teamFlags = 0x01,
  .moves = {
   65,
   211,
   259,
   182
  },
  .evSpread = 1 << 3 | 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 359,
  .heldItem = 24,
  .teamFlags = 0x02,
  .moves = {
   47,
   337,
   58,
   89
  },
  .evSpread = 1 << 3 | 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 352,
  .heldItem = 41,
  .teamFlags = 0x82,
  .moves = {
   94,
   109,
   347,
   156
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 300,
  .heldItem = 24,
  .teamFlags = 0x20,
  .moves = {
   207,
   218,
   213,
   153
  },
  .evSpread = 1 << 3 | 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 319,
  .heldItem = 52,
  .teamFlags = 0x20,
  .moves = {
   322,
   94,
   89,
   153
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 7,
 },
 {
  .species = 336,
  .heldItem = 4,
  .teamFlags = 0x33,
  .moves = {
   89,
   68,
   187,
   156
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 22,
 },
 {
  .species = 320,
  .heldItem = 52,
  .teamFlags = 0x20,
  .moves = {
   157,
   86,
   89,
   153
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 9,
 },
 {
  .species = 362,
  .heldItem = 48,
  .teamFlags = 0x33,
  .moves = {
   325,
   261,
   109,
   194
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 22,
 },
 {
  .species = 119,
  .heldItem = 33,
  .teamFlags = 0x20,
  .moves = {
   32,
   97,
   214,
   156
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 2,
 },
 {
  .species = 340,
  .heldItem = 32,
  .teamFlags = 0x73,
  .moves = {
   89,
   284,
   157,
   90
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 14,
 },
 {
  .species = 171,
  .heldItem = 41,
  .teamFlags = 0x13,
  .moves = {
   85,
   57,
   86,
   109
  },
  .evSpread = 1 << 4 | 1 << 2 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 110,
  .heldItem = 48,
  .teamFlags = 0x33,
  .moves = {
   188,
   85,
   126,
   153
  },
  .evSpread = 1 << 5 | 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 324,
  .heldItem = 33,
  .teamFlags = 0x20,
  .moves = {
   89,
   57,
   209,
   90
  },
  .evSpread = 1 << 5 | 1 << 3 | 1 << 1,
  .nature = 7,
 },
 {
  .species = 384,
  .heldItem = 52,
  .teamFlags = 0x51,
  .moves = {
   38,
   89,
   57,
   337
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 317,
  .heldItem = 16,
  .teamFlags = 0x12,
  .moves = {
   271,
   264,
   213,
   289
  },
  .evSpread = 1 << 2 | 1 << 0,
  .nature = 16,
 },
 {
  .species = 331,
  .heldItem = 1,
  .teamFlags = 0x11,
  .moves = {
   242,
   38,
   57,
   207
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 376,
  .heldItem = 48,
  .teamFlags = 0x12,
  .moves = {
   38,
   263,
   14,
   98
  },
  .evSpread = 1 << 3 | 1 << 2 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 314,
  .heldItem = 33,
  .teamFlags = 0x72,
  .moves = {
   56,
   89,
   213,
   90
  },
  .evSpread = 1 << 3 | 1 << 0,
  .nature = 10,
 },
 {
  .species = 73,
  .heldItem = 25,
  .teamFlags = 0x20,
  .moves = {
   56,
   188,
   112,
   243
  },
  .evSpread = 1 << 2 | 1 << 1,
  .nature = 13,
 },
 {
  .species = 322,
  .heldItem = 25,
  .teamFlags = 0x32,
  .moves = {
   247,
   92,
   105,
   104
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 202,
  .heldItem = 25,
  .teamFlags = 0x20,
  .moves = {
   227,
   68,
   243,
   194
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 16,
 },
 {
  .species = 112,
  .heldItem = 24,
  .teamFlags = 0x71,
  .moves = {
   89,
   224,
   280,
   32
  },
  .evSpread = 1 << 5 | 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 347,
  .heldItem = 48,
  .teamFlags = 0x31,
  .moves = {
   242,
   59,
   258,
   329
  },
  .evSpread = 1 << 2 | 1 << 0,
  .nature = 18,
 },
 {
  .species = 279,
  .heldItem = 34,
  .teamFlags = 0x8C,
  .moves = {
   348,
   89,
   337,
   242
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 2,
  .nature = 17,
 },
 {
  .species = 282,
  .heldItem = 48,
  .teamFlags = 0x8C,
  .moves = {
   299,
   68,
   203,
   179
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 0,
  .nature = 6,
 },
 {
  .species = 285,
  .heldItem = 47,
  .teamFlags = 0x8C,
  .moves = {
   57,
   89,
   243,
   59
  },
  .evSpread = 1 << 4 | 1 << 1 | 1 << 0,
  .nature = 23,
 },
 {
  .species = 394,
  .heldItem = 48,
  .teamFlags = 0x1A,
  .moves = {
   94,
   85,
   194,
   289
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 2,
  .nature = 2,
 },
 {
  .species = 307,
  .heldItem = 41,
  .teamFlags = 0x15,
  .moves = {
   147,
   264,
   183,
   213
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 65,
  .heldItem = 32,
  .teamFlags = 0x58,
  .moves = {
   94,
   7,
   8,
   105
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 11,
 },
 {
  .species = 336,
  .heldItem = 34,
  .teamFlags = 0x15,
  .moves = {
   238,
   89,
   263,
   252
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 130,
  .heldItem = 47,
  .teamFlags = 0x55,
  .moves = {
   63,
   89,
   57,
   58
  },
  .evSpread = 1 << 5 | 1 << 1,
  .nature = 5,
 },
 {
  .species = 169,
  .heldItem = 32,
  .teamFlags = 0x58,
  .moves = {
   188,
   109,
   314,
   104
  },
  .evSpread = 1 << 5 | 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 68,
  .heldItem = 34,
  .teamFlags = 0x5D,
  .moves = {
   238,
   53,
   89,
   157
  },
  .evSpread = 1 << 3 | 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 338,
  .heldItem = 41,
  .teamFlags = 0x1A,
  .moves = {
   85,
   86,
   46,
   242
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 17,
 },
 {
  .species = 101,
  .heldItem = 41,
  .teamFlags = 0x60,
  .moves = {
   85,
   182,
   243,
   153
  },
  .evSpread = 1 << 3 | 1 << 2 | 1 << 1,
  .nature = 18,
 },
 {
  .species = 89,
  .heldItem = 24,
  .teamFlags = 0x64,
  .moves = {
   188,
   53,
   85,
   153
  },
  .evSpread = 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 334,
  .heldItem = 41,
  .teamFlags = 0x1C,
  .moves = {
   337,
   89,
   53,
   242
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 1,
  .nature = 10,
 },
 {
  .species = 121,
  .heldItem = 41,
  .teamFlags = 0x5C,
  .moves = {
   57,
   85,
   105,
   109
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 38,
  .heldItem = 41,
  .teamFlags = 0x4A,
  .moves = {
   109,
   92,
   83,
   257
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 17,
 },
 {
  .species = 26,
  .heldItem = 6,
  .teamFlags = 0x5A,
  .moves = {
   85,
   86,
   179,
   231
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 2,
  .nature = 10,
 },
 {
  .species = 55,
  .heldItem = 52,
  .teamFlags = 0x55,
  .moves = {
   57,
   238,
   58,
   91
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 13,
 },
 {
  .species = 214,
  .heldItem = 48,
  .teamFlags = 0x5D,
  .moves = {
   224,
   89,
   203,
   179
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 343,
  .heldItem = 24,
  .teamFlags = 0x26,
  .moves = {
   57,
   58,
   89,
   329
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 23,
 },
 {
  .species = 230,
  .heldItem = 4,
  .teamFlags = 0x5B,
  .moves = {
   57,
   58,
   225,
   156
  },
  .evSpread = 1 << 5 | 1 << 4,
  .nature = 17,
 },
 {
  .species = 397,
  .heldItem = 41,
  .teamFlags = 0x0D,
  .moves = {
   337,
   89,
   242,
   126
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 4,
 },
 {
  .species = 400,
  .heldItem = 48,
  .teamFlags = 0x3D,
  .moves = {
   309,
   94,
   89,
   317
  },
  .evSpread = 1 << 5 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 401,
  .heldItem = 32,
  .teamFlags = 0x3C,
  .moves = {
   89,
   246,
   85,
   153
  },
  .evSpread = 1 << 5 | 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 402,
  .heldItem = 54,
  .teamFlags = 0x3C,
  .moves = {
   58,
   85,
   89,
   153
  },
  .evSpread = 1 << 4 | 1 << 2 | 1 << 0,
  .nature = 23,
 },
 {
  .species = 403,
  .heldItem = 24,
  .teamFlags = 0x3C,
  .moves = {
   232,
   89,
   85,
   153
  },
  .evSpread = 1 << 4 | 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 407,
  .heldItem = 41,
  .teamFlags = 0x0E,
  .moves = {
   296,
   85,
   105,
   337
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 17,
 },
 {
  .species = 408,
  .heldItem = 60,
  .teamFlags = 0x0D,
  .moves = {
   295,
   85,
   105,
   337
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 17,
 },
 {
  .species = 329,
  .heldItem = 25,
  .teamFlags = 0x1A,
  .moves = {
   57,
   92,
   105,
   243
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 0,
  .nature = 2,
 },
 {
  .species = 366,
  .heldItem = 41,
  .teamFlags = 0x15,
  .moves = {
   281,
   264,
   68,
   303
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 6,
 },
 {
  .species = 279,
  .heldItem = 25,
  .teamFlags = 0x8C,
  .moves = {
   202,
   104,
   73,
   213
  },
  .evSpread = 1 << 4 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 282,
  .heldItem = 34,
  .teamFlags = 0x8C,
  .moves = {
   299,
   89,
   157,
   98
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 1,
  .nature = 6,
 },
 {
  .species = 285,
  .heldItem = 25,
  .teamFlags = 0x8C,
  .moves = {
   330,
   341,
   243,
   58
  },
  .evSpread = 1 << 5 | 1 << 4,
  .nature = 23,
 },
 {
  .species = 394,
  .heldItem = 48,
  .teamFlags = 0x0A,
  .moves = {
   94,
   85,
   95,
   138
  },
  .evSpread = 1 << 3 | 1 << 2 | 1 << 0,
  .nature = 7,
 },
 {
  .species = 307,
  .heldItem = 48,
  .teamFlags = 0x05,
  .moves = {
   147,
   68,
   327,
   202
  },
  .evSpread = 1 << 3 | 1 << 1 | 1 << 0,
  .nature = 6,
 },
 {
  .species = 65,
  .heldItem = 32,
  .teamFlags = 0x58,
  .moves = {
   94,
   9,
   7,
   105
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 2,
  .nature = 11,
 },
 {
  .species = 336,
  .heldItem = 6,
  .teamFlags = 0x04,
  .moves = {
   238,
   68,
   203,
   179
  },
  .evSpread = 1 << 3 | 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 130,
  .heldItem = 47,
  .teamFlags = 0x44,
  .moves = {
   63,
   85,
   89,
   58
  },
  .evSpread = 1 << 5 | 1 << 1,
  .nature = 5,
 },
 {
  .species = 169,
  .heldItem = 32,
  .teamFlags = 0x48,
  .moves = {
   92,
   109,
   213,
   19
  },
  .evSpread = 1 << 5 | 1 << 3,
  .nature = 0,
 },
 {
  .species = 68,
  .heldItem = 34,
  .teamFlags = 0x5D,
  .moves = {
   238,
   68,
   89,
   263
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 338,
  .heldItem = 60,
  .teamFlags = 0x0A,
  .moves = {
   87,
   86,
   98,
   242
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 17,
 },
 {
  .species = 101,
  .heldItem = 48,
  .teamFlags = 0x60,
  .moves = {
   85,
   113,
   243,
   153
  },
  .evSpread = 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 18,
 },
 {
  .species = 89,
  .heldItem = 24,
  .teamFlags = 0x64,
  .moves = {
   188,
   202,
   53,
   153
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 334,
  .heldItem = 47,
  .teamFlags = 0x1C,
  .moves = {
   337,
   89,
   231,
   242
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 10,
 },
 {
  .species = 121,
  .heldItem = 50,
  .teamFlags = 0x5C,
  .moves = {
   59,
   85,
   94,
   105
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 3,
  .nature = 17,
 },
 {
  .species = 85,
  .heldItem = 52,
  .teamFlags = 0x5A,
  .moves = {
   65,
   161,
   97,
   263
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 26,
  .heldItem = 60,
  .teamFlags = 0x4A,
  .moves = {
   85,
   86,
   213,
   264
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 2,
  .nature = 10,
 },
 {
  .species = 55,
  .heldItem = 60,
  .teamFlags = 0x45,
  .moves = {
   56,
   238,
   59,
   213
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 214,
  .heldItem = 52,
  .teamFlags = 0x5D,
  .moves = {
   224,
   89,
   68,
   179
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 343,
  .heldItem = 25,
  .teamFlags = 0x26,
  .moves = {
   57,
   59,
   157,
   329
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 2 | 1 << 0,
  .nature = 23,
 },
 {
  .species = 230,
  .heldItem = 25,
  .teamFlags = 0x5C,
  .moves = {
   56,
   58,
   225,
   213
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 2 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 397,
  .heldItem = 1,
  .teamFlags = 0x1D,
  .moves = {
   337,
   89,
   242,
   317
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 7,
 },
 {
  .species = 400,
  .heldItem = 24,
  .teamFlags = 0x3D,
  .moves = {
   309,
   94,
   89,
   247
  },
  .evSpread = 1 << 5 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 401,
  .heldItem = 24,
  .teamFlags = 0x3C,
  .moves = {
   89,
   85,
   264,
   153
  },
  .evSpread = 1 << 5 | 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 402,
  .heldItem = 32,
  .teamFlags = 0x3C,
  .moves = {
   58,
   85,
   258,
   153
  },
  .evSpread = 1 << 4 | 1 << 2,
  .nature = 23,
 },
 {
  .species = 403,
  .heldItem = 48,
  .teamFlags = 0x3C,
  .moves = {
   232,
   89,
   246,
   153
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 1,
  .nature = 21,
 },
 {
  .species = 407,
  .heldItem = 32,
  .teamFlags = 0x1E,
  .moves = {
   296,
   58,
   105,
   337
  },
  .evSpread = 1 << 4 | 1 << 2 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 408,
  .heldItem = 54,
  .teamFlags = 0x1D,
  .moves = {
   295,
   58,
   105,
   337
  },
  .evSpread = 1 << 4 | 1 << 2 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 329,
  .heldItem = 60,
  .teamFlags = 0x1A,
  .moves = {
   56,
   58,
   105,
   243
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 0,
  .nature = 2,
 },
 {
  .species = 366,
  .heldItem = 41,
  .teamFlags = 0x15,
  .moves = {
   281,
   264,
   68,
   228
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 6,
 },
 {
  .species = 279,
  .heldItem = 60,
  .teamFlags = 0x8C,
  .moves = {
   348,
   317,
   337,
   242
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 3,
  .nature = 0,
 },
 {
  .species = 282,
  .heldItem = 62,
  .teamFlags = 0x8C,
  .moves = {
   264,
   68,
   207,
   317
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 285,
  .heldItem = 47,
  .teamFlags = 0x8C,
  .moves = {
   57,
   58,
   213,
   156
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 23,
 },
 {
  .species = 394,
  .heldItem = 54,
  .teamFlags = 0x0A,
  .moves = {
   94,
   85,
   213,
   261
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 0,
 },
 {
  .species = 307,
  .heldItem = 41,
  .teamFlags = 0x05,
  .moves = {
   147,
   264,
   183,
   68
  },
  .evSpread = 1 << 5 | 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 65,
  .heldItem = 16,
  .teamFlags = 0x58,
  .moves = {
   94,
   271,
   105,
   289
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 11,
 },
 {
  .species = 336,
  .heldItem = 6,
  .teamFlags = 0x05,
  .moves = {
   279,
   68,
   264,
   179
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 297,
  .heldItem = 25,
  .teamFlags = 0x0A,
  .moves = {
   240,
   73,
   202,
   291
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 169,
  .heldItem = 32,
  .teamFlags = 0x48,
  .moves = {
   188,
   109,
   247,
   289
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 68,
  .heldItem = 34,
  .teamFlags = 0x5D,
  .moves = {
   238,
   126,
   67,
   317
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 338,
  .heldItem = 41,
  .teamFlags = 0x08,
  .moves = {
   85,
   86,
   213,
   242
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 1,
  .nature = 17,
 },
 {
  .species = 101,
  .heldItem = 52,
  .teamFlags = 0x60,
  .moves = {
   87,
   129,
   243,
   153
  },
  .evSpread = 1 << 3 | 1 << 2,
  .nature = 18,
 },
 {
  .species = 89,
  .heldItem = 48,
  .teamFlags = 0x64,
  .moves = {
   188,
   53,
   85,
   325
  },
  .evSpread = 1 << 4 | 1 << 2 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 334,
  .heldItem = 54,
  .teamFlags = 0x0C,
  .moves = {
   337,
   89,
   126,
   201
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 3 | 1 << 2 | 1 << 0,
  .nature = 10,
 },
 {
  .species = 121,
  .heldItem = 60,
  .teamFlags = 0x4C,
  .moves = {
   57,
   85,
   58,
   94
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 3 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 297,
  .heldItem = 25,
  .teamFlags = 0x4A,
  .moves = {
   73,
   213,
   104,
   182
  },
  .evSpread = 1 << 5 | 1 << 0,
  .nature = 17,
 },
 {
  .species = 227,
  .heldItem = 25,
  .teamFlags = 0x4B,
  .moves = {
   65,
   211,
   213,
   228
  },
  .evSpread = 1 << 5 | 1 << 3,
  .nature = 22,
 },
 {
  .species = 55,
  .heldItem = 34,
  .teamFlags = 0x49,
  .moves = {
   57,
   94,
   58,
   238
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 2 | 1 << 0,
  .nature = 13,
 },
 {
  .species = 214,
  .heldItem = 24,
  .teamFlags = 0x5D,
  .moves = {
   224,
   89,
   264,
   317
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 1 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 343,
  .heldItem = 33,
  .teamFlags = 0x26,
  .moves = {
   57,
   58,
   90,
   329
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 230,
  .heldItem = 48,
  .teamFlags = 0x5C,
  .moves = {
   57,
   59,
   63,
   175
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 2,
 },
 {
  .species = 397,
  .heldItem = 60,
  .teamFlags = 0x1D,
  .moves = {
   337,
   89,
   126,
   56
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 4,
 },
 {
  .species = 400,
  .heldItem = 52,
  .teamFlags = 0x3D,
  .moves = {
   309,
   94,
   89,
   63
  },
  .evSpread = 1 << 5 | 1 << 4,
  .nature = 0,
 },
 {
  .species = 401,
  .heldItem = 48,
  .teamFlags = 0x3C,
  .moves = {
   89,
   85,
   276,
   153
  },
  .evSpread = 1 << 5 | 1 << 1,
  .nature = 21,
 },
 {
  .species = 402,
  .heldItem = 54,
  .teamFlags = 0x3C,
  .moves = {
   58,
   85,
   246,
   153
  },
  .evSpread = 1 << 4 | 1 << 2 | 1 << 1,
  .nature = 23,
 },
 {
  .species = 403,
  .heldItem = 25,
  .teamFlags = 0x3C,
  .moves = {
   232,
   85,
   63,
   153
  },
  .evSpread = 1 << 1 | 1 << 0,
  .nature = 21,
 },
 {
  .species = 407,
  .heldItem = 50,
  .teamFlags = 0x1E,
  .moves = {
   296,
   85,
   89,
   58
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 1,
  .nature = 17,
 },
 {
  .species = 408,
  .heldItem = 62,
  .teamFlags = 0x1D,
  .moves = {
   295,
   85,
   89,
   58
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 1,
  .nature = 17,
 },
 {
  .species = 329,
  .heldItem = 50,
  .teamFlags = 0x1A,
  .moves = {
   57,
   58,
   105,
   213
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 2 | 1 << 0,
  .nature = 2,
 },
 {
  .species = 359,
  .heldItem = 62,
  .teamFlags = 0x0A,
  .moves = {
   337,
   58,
   47,
   53
  },
  .evSpread = 1 << 4 | 1 << 3 | 1 << 2,
  .nature = 17,
 },
 {
  .species = 279,
  .heldItem = 32,
  .teamFlags = 0x9C,
  .moves = {
   348,
   197,
   337,
   242
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 0,
 },
 {
  .species = 282,
  .heldItem = 48,
  .teamFlags = 0x9C,
  .moves = {
   299,
   327,
   89,
   157
  },
  .evSpread = 1 << 4 | 1 << 1,
  .nature = 6,
 },
 {
  .species = 285,
  .heldItem = 60,
  .teamFlags = 0x9C,
  .moves = {
   57,
   89,
   58,
   317
  },
  .evSpread = 1 << 4 | 1 << 0,
  .nature = 0,
 },
 {
  .species = 303,
  .heldItem = 32,
  .teamFlags = 0x20,
  .moves = {
   109,
   247,
   92,
   288
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 0,
 },
 {
  .species = 400,
  .heldItem = 25,
  .teamFlags = 0x1D,
  .moves = {
   309,
   89,
   104,
   182
  },
  .evSpread = 1 << 5 | 1 << 2 | 1 << 0,
  .nature = 14,
 },
 {
  .species = 65,
  .heldItem = 25,
  .teamFlags = 0x58,
  .moves = {
   94,
   9,
   8,
   7
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 11,
 },
 {
  .species = 407,
  .heldItem = 25,
  .teamFlags = 0x1E,
  .moves = {
   296,
   85,
   58,
   337
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 17,
 },
 {
  .species = 408,
  .heldItem = 47,
  .teamFlags = 0x1D,
  .moves = {
   295,
   85,
   58,
   337
  },
  .evSpread = 1 << 4 | 1 << 3,
  .nature = 0,
 },
 {
  .species = 397,
  .heldItem = 47,
  .teamFlags = 0x1D,
  .moves = {
   337,
   53,
   89,
   332
  },
  .evSpread = 1 << 5 | 1 << 4 | 1 << 2,
  .nature = 7,
 },
 {
  .species = 68,
  .heldItem = 52,
  .teamFlags = 0x5D,
  .moves = {
   238,
   89,
   67,
   157
  },
  .evSpread = 1 << 3 | 1 << 1,
  .nature = 0,
 },
};
# 126 "src/battle_tower.c" 2

static const u8 sMaleTrainerClasses[] =
{

};

static const u8 sFemaleTrainerClasses[] =
{

};

static const u8 sMaleTrainerGfx[] =
{

};

static const u8 sFemaleTrainerGfx[] =
{

};

const u16 gBattleTowerBannedSpecies[] = {
    151,
    150,
    250,
    249,
    251,
    404,
    405,
    406,
    409,
    410,
    0xFFFF
};

static const u16 sShortStreakPrizes[] = {
    63,
    64,
    65,
    67,
    66,
    70
};

static const u16 sLongStreakPrizes[] = {
    179,
    180,
    183,
    200,
    185,
    187,
    196,
    198,
    186
};

void BattleTowerMapScript2(void)
{
    u8 count = 0;
    s32 levelType;

    for (levelType = 0; levelType < 2; levelType++)
    {
        switch (gSaveBlock2Ptr->battleTower.var_4AE[levelType])
        {
        default:
        case 0:
            ResetBattleTowerStreak(levelType);
            if (count == 0)
                VarSet((0x4000 + 0x0), 5);
            break;
        case 1:
            ResetBattleTowerStreak(levelType);
            VarSet((0x4000 + 0x0), 1);
            count++;
            break;
        case 3:
            break;
        case 4:
            VarSet((0x4000 + 0x0), 2);
            count++;
            break;
        case 5:
            VarSet((0x4000 + 0x0), 3);
            count++;
            break;
        case 6:
            break;
        case 2:
            VarSet((0x4000 + 0x0), 4);
            count++;
            break;
        }
    }
    if (gSaveBlock2Ptr->battleTower.var_4AE[0] == 3 && gSaveBlock2Ptr->battleTower.var_4AE[1] == 3)
        VarSet((0x4000 + 0x0), 5);
    ValidateBattleTowerRecordChecksums();
}

static void ResetBattleTowerStreak(u8 levelType)
{
    gSaveBlock2Ptr->battleTower.var_4AE[levelType] = 0;
    gSaveBlock2Ptr->battleTower.curChallengeBattleNum[levelType] = 1;
    gSaveBlock2Ptr->battleTower.curStreakChallengesNum[levelType] = 1;
}

static bool8 ShouldBattleEReaderTrainer(u8 levelType, u16 winStreak)
{
    u8 trainerTeamLevel;
    u8 monLevel;
    s32 i;
    u16 validPartySpecies[6];
    u16 validPartyHeldItems[6];
    u8 numValid;

    numValid = 0;

    ValidateEReaderTrainer();

    if (gSpecialVar_Result != 0 || gSaveBlock2Ptr->battleTower.ereaderTrainer.winStreak != winStreak)
        return 0;

    if (levelType != 0)
        trainerTeamLevel = 100;
    else
        trainerTeamLevel = 50;

    for (i = 0; i < 3; i++)
    {
        monLevel = gSaveBlock2Ptr->battleTower.ereaderTrainer.party[i].level;
        if (gSaveBlock2Ptr->battleTower.ereaderTrainer.party[i].level != trainerTeamLevel)
            return 0;

        CheckMonBattleTowerBanlist(
            gSaveBlock2Ptr->battleTower.ereaderTrainer.party[i].species,
            gSaveBlock2Ptr->battleTower.ereaderTrainer.party[i].heldItem,
            1,
            levelType,
            monLevel,
            validPartySpecies,
            validPartyHeldItems,
            &numValid);
    }

    return (numValid == 3);
}

static bool8 ChooseSpecialBattleTowerTrainer(void)
{
    s32 recordIndex, i;
    u8 battleTowerLevelType;
    u16 winStreak;
    bool8 retVal;
    s32 numCandidates;
    u32 trainerIds[5];

    numCandidates = 0;
    battleTowerLevelType = gSaveBlock2Ptr->battleTower.battleTowerLevelType;

    winStreak = GetCurrentBattleTowerWinStreak(battleTowerLevelType);
    if (ShouldBattleEReaderTrainer(battleTowerLevelType, winStreak))
    {
        gSaveBlock2Ptr->battleTower.battleTowerTrainerId = 200;
        retVal = 1;
    }
    else
    {

        for (recordIndex = 0; recordIndex < 5; recordIndex++)
        {
            struct BattleTowerRecord *record = &gSaveBlock2Ptr->battleTower.records[recordIndex];
            u32 recordHasData = 0;
            u32 checksum = 0;

            for (i = 0; i < sizeof(struct BattleTowerRecord) / sizeof(u32) - 1; i++)
            {
                recordHasData |= ((u32 *) record)[i];
                checksum += ((u32 *) record)[i];
            }

            if (gSaveBlock2Ptr->battleTower.records[recordIndex].winStreak == winStreak
                && gSaveBlock2Ptr->battleTower.records[recordIndex].battleTowerLevelType == battleTowerLevelType
                && recordHasData
                && gSaveBlock2Ptr->battleTower.records[recordIndex].checksum == checksum)
            {
                trainerIds[numCandidates] = recordIndex;
                numCandidates++;
            }
        }

        if (numCandidates == 0)
        {
            retVal = 0;
        }
        else
        {
            gSaveBlock2Ptr->battleTower.battleTowerTrainerId =
                trainerIds[Random() % numCandidates] + 100;
            retVal = 1;
        }
    }
    return retVal;
}

void ChooseNextBattleTowerTrainer(void)
{
    int i;
    u16 trainerId;
    bool8 levelType;

    levelType = gSaveBlock2Ptr->battleTower.battleTowerLevelType;
    if (ChooseSpecialBattleTowerTrainer())
    {
        SetBattleTowerTrainerGfxId(gSaveBlock2Ptr->battleTower.battleTowerTrainerId);
        gSaveBlock2Ptr->battleTower.battledTrainerIds[gSaveBlock2Ptr->battleTower.curChallengeBattleNum[levelType] - 1] = gSaveBlock2Ptr->battleTower.battleTowerTrainerId;
        return;
    }

    if (gSaveBlock2Ptr->battleTower.curStreakChallengesNum[levelType] <= 7)
    {
        if (gSaveBlock2Ptr->battleTower.curChallengeBattleNum[levelType] == 7)
        {
            do
            {
                trainerId = ((Random() & 0xFF) * 5) >> 7;
                trainerId += (gSaveBlock2Ptr->battleTower.curStreakChallengesNum[levelType] - 1) * 10 + 20;


                for (i = 0; i < gSaveBlock2Ptr->battleTower.curChallengeBattleNum[levelType] - 1 && gSaveBlock2Ptr->battleTower.battledTrainerIds[i] != trainerId; i++);
            }
            while (i != gSaveBlock2Ptr->battleTower.curChallengeBattleNum[levelType] - 1);
            gSaveBlock2Ptr->battleTower.battleTowerTrainerId = trainerId;
        }
        else
        {
            do
            {
                trainerId = (((Random() & 0xFF) * 5) >> 6);
                trainerId += (gSaveBlock2Ptr->battleTower.curStreakChallengesNum[levelType] - 1) * 10;


                for (i = 0; i < gSaveBlock2Ptr->battleTower.curChallengeBattleNum[levelType] - 1 && gSaveBlock2Ptr->battleTower.battledTrainerIds[i] != trainerId; i++);
            }
            while (i != gSaveBlock2Ptr->battleTower.curChallengeBattleNum[levelType] - 1);
            gSaveBlock2Ptr->battleTower.battleTowerTrainerId = trainerId;
        }
    }
    else
    {
        do
        {
            trainerId = (((Random() & 0xFF) * 30) >> 8) + 70;


            for (i = 0; i < gSaveBlock2Ptr->battleTower.curChallengeBattleNum[levelType] - 1 && gSaveBlock2Ptr->battleTower.battledTrainerIds[i] != trainerId; i++);
        }
        while (i != gSaveBlock2Ptr->battleTower.curChallengeBattleNum[levelType] - 1);
        gSaveBlock2Ptr->battleTower.battleTowerTrainerId = trainerId;
    }

    SetBattleTowerTrainerGfxId(gSaveBlock2Ptr->battleTower.battleTowerTrainerId);

    if (gSaveBlock2Ptr->battleTower.curChallengeBattleNum[levelType] < 7)
        gSaveBlock2Ptr->battleTower.battledTrainerIds[gSaveBlock2Ptr->battleTower.curChallengeBattleNum[levelType] - 1] = gSaveBlock2Ptr->battleTower.battleTowerTrainerId;
}

static void SetBattleTowerTrainerGfxId(u8 trainerClass)
{
    VarSet(0x4010, 18);
}

void SetEReaderTrainerGfxId(void)
{
    SetBattleTowerTrainerGfxId(200);
}


static void UpdateOrInsertReceivedBattleTowerRecord(struct BattleTowerRecord * record0)
{
    s32 i;
    s32 j;
    s32 k;
    s32 l = 0;
    struct BattleTowerRecord * record = record0;

    u16 winStreaks[6];
    u16 indices[6];

    for (i = 0; i < 5; i++)
    {
        k = 0;
        for (j = 0; j < 4; j++)
        {
            if (gSaveBlock2Ptr->battleTower.records[i].trainerId[j] != record->trainerId[j])
                break;
        }
        if (j == 4)
        {
            for (k = 0; k < 7; k++)
            {
                if (gSaveBlock2Ptr->battleTower.records[i].name[j] != record->name[j])
                    break;
                if (record->name[j] == 0xFF)
                {
                    k = 7;
                    break;
                }
            }
        }
        if (k == 7)
            break;
    }

    if (i < 5)
    {
        gSaveBlock2Ptr->battleTower.records[i] = *record;
        return;
    }

    for (i = 0; i < 5; i++)
    {
        if (gSaveBlock2Ptr->battleTower.records[i].winStreak == 0)
            break;
    }

    if (i < 5)
    {
        gSaveBlock2Ptr->battleTower.records[i] = *record;
        return;
    }

    winStreaks[0] = gSaveBlock2Ptr->battleTower.records[0].winStreak;
    indices[0] = 0;
    l++;

    for (i = 1; i < 5; i++)
    {
        for (j = 0; j < l; j++)
        {
            if (gSaveBlock2Ptr->battleTower.records[i].winStreak < winStreaks[j])
            {
                j = 0;
                l = 1;
                winStreaks[0] = gSaveBlock2Ptr->battleTower.records[i].winStreak;
                indices[0] = i;
                break;
            }
            if (gSaveBlock2Ptr->battleTower.records[i].winStreak > winStreaks[j])
                break;
        }
        if (j == l)
        {
            winStreaks[l] = gSaveBlock2Ptr->battleTower.records[i].winStreak;
            indices[l] = i;
            l++;
        }
    }
    i = Random() % l;
    gSaveBlock2Ptr->battleTower.records[indices[i]] = *record;
}

u8 GetBattleTowerTrainerFrontSpriteId(void)
{
    if (gSaveBlock2Ptr->battleTower.battleTowerTrainerId == 200)
    {
        return gFacilityClassToPicIndex[gSaveBlock2Ptr->battleTower.ereaderTrainer.trainerClass];
    }
    else if (gSaveBlock2Ptr->battleTower.battleTowerTrainerId < 100)
    {
        return gFacilityClassToPicIndex[sBattleTowerTrainers[gSaveBlock2Ptr->battleTower.battleTowerTrainerId].trainerClass];
    }
    else
    {
        return gFacilityClassToPicIndex[gSaveBlock2Ptr->battleTower.records[gSaveBlock2Ptr->battleTower.battleTowerTrainerId - 100].trainerClass];
    }
}

u8 GetBattleTowerTrainerClassNameId(void)
{
    if (gSaveBlock2Ptr->battleTower.battleTowerTrainerId == 200)
    {
        return gFacilityClassToTrainerClass[gSaveBlock2Ptr->battleTower.ereaderTrainer.trainerClass];
    }
    else if (gSaveBlock2Ptr->battleTower.battleTowerTrainerId >= 100)
    {
        return gFacilityClassToTrainerClass[gSaveBlock2Ptr->battleTower.records[gSaveBlock2Ptr->battleTower.battleTowerTrainerId - 100].trainerClass];
    }
    else
    {
        return gFacilityClassToTrainerClass[sBattleTowerTrainers[gSaveBlock2Ptr->battleTower.battleTowerTrainerId].trainerClass];
    }
}

void GetBattleTowerTrainerName(u8 *dest)
{
    s32 i;
    if (gSaveBlock2Ptr->battleTower.battleTowerTrainerId == 200)
    {
        for (i = 0; i < 7; i++)
            dest[i] = gSaveBlock2Ptr->battleTower.ereaderTrainer.name[i];
    }
    else if (gSaveBlock2Ptr->battleTower.battleTowerTrainerId < 100)
    {
        for (i = 0; i < 3; i++)
            dest[i] = sBattleTowerTrainers[gSaveBlock2Ptr->battleTower.battleTowerTrainerId].name[i];
    }
    else
    {
        for (i = 0; i < 7; i++)
            dest[i] = gSaveBlock2Ptr->battleTower.records[gSaveBlock2Ptr->battleTower.battleTowerTrainerId - 100].name[i];
    }
    dest[i] = 0xFF;
}

static void FillBattleTowerTrainerParty(void)
{
    s32 partyIndex;
    s32 i;
    u16 chosenMonIndices[3];
    u8 friendship;
    u8 level;
    u8 fixedIV;
    u8 battleMonsOffset;
    u8 monPoolSize;
    u8 teamFlags;
    const struct BattleTowerPokemonTemplate *battleTowerMons;

    battleMonsOffset = 0;
    monPoolSize = 60;
    friendship = 255;

    ZeroEnemyPartyMons();




    if (gSaveBlock2Ptr->battleTower.battleTowerTrainerId < 20)
    {
        fixedIV = 6;
    }
    else if (gSaveBlock2Ptr->battleTower.battleTowerTrainerId < 30)
    {
        fixedIV = 9;
        battleMonsOffset = 30;
    }
    else if (gSaveBlock2Ptr->battleTower.battleTowerTrainerId < 40)
    {
        fixedIV = 12;
        battleMonsOffset = 60;
    }
    else if (gSaveBlock2Ptr->battleTower.battleTowerTrainerId < 50)
    {
        fixedIV = 15;
        battleMonsOffset = 90;
    }
    else if (gSaveBlock2Ptr->battleTower.battleTowerTrainerId < 60)
    {
        fixedIV = 18;
        battleMonsOffset = 120;
    }
    else if (gSaveBlock2Ptr->battleTower.battleTowerTrainerId < 70)
    {
        fixedIV = 21;
        battleMonsOffset = 150;
    }
    else if (gSaveBlock2Ptr->battleTower.battleTowerTrainerId < 80)
    {
        fixedIV = 31;
        battleMonsOffset = 180;
    }
    else if (gSaveBlock2Ptr->battleTower.battleTowerTrainerId < 100)
    {
        fixedIV = 31;
        battleMonsOffset = 200;
        monPoolSize = 100;
    }
    else if (gSaveBlock2Ptr->battleTower.battleTowerTrainerId == 200)
    {

        do
        {
            for (partyIndex = 0; partyIndex < 3; partyIndex++)
                CreateBattleTowerMon(&gEnemyParty[partyIndex], &gSaveBlock2Ptr->battleTower.ereaderTrainer.party[partyIndex]);
            return;
        } while (0);
    }
    else
    {

        for (partyIndex = 0; partyIndex < 3; partyIndex++)
        {
            CreateBattleTowerMon(
                &gEnemyParty[partyIndex],
                &gSaveBlock2Ptr->battleTower.records[gSaveBlock2Ptr->battleTower.battleTowerTrainerId - 100].party[partyIndex]);
        }
        return;
    }



    if (gSaveBlock2Ptr->battleTower.battleTowerLevelType != 0)
    {
        battleTowerMons = gBattleTowerLevel100Mons;
        level = 100;
    }
    else
    {
        battleTowerMons = gBattleTowerLevel50Mons;
        level = 50;
    }

    teamFlags = sBattleTowerTrainers[gSaveBlock2Ptr->battleTower.battleTowerTrainerId].teamFlags;






    partyIndex = 0;
    while (partyIndex != 3)
    {


        s32 battleMonIndex = ((Random() & 0xFF) * monPoolSize) / 256 + battleMonsOffset;


        if (teamFlags == 0 || (battleTowerMons[battleMonIndex].teamFlags & teamFlags) == teamFlags)
        {

            for (i = 0; i < partyIndex; i++)
            {
                if (GetMonData(&gEnemyParty[i], 11, ((void *)0)) == battleTowerMons[battleMonIndex].species)
                    break;
            }

            if (i != partyIndex)
                continue;


            for (i = 0; i < partyIndex; i++)
            {
                if (GetMonData(&gEnemyParty[i], 12, ((void *)0)) != 0
                    && GetMonData(&gEnemyParty[i], 12, ((void *)0)) == sBattleTowerHeldItems[battleTowerMons[battleMonIndex].heldItem])
                    break;
            }

            if (i != partyIndex)
                continue;





            for (i = 0; i < partyIndex; i++)
            {
                if (chosenMonIndices[i] == battleMonIndex)
                    break;
            }

            if (i != partyIndex)
                continue;

            chosenMonIndices[partyIndex] = battleMonIndex;


            CreateMonWithEVSpread(
                &gEnemyParty[partyIndex],
                battleTowerMons[battleMonIndex].species,
                level,
                fixedIV,
                battleTowerMons[battleMonIndex].evSpread);


            for (i = 0; i < 4; i++)
            {
                SetMonMoveSlot(&gEnemyParty[partyIndex], battleTowerMons[battleMonIndex].moves[i], i);
                if (battleTowerMons[battleMonIndex].moves[i] == 218)
                    friendship = 0;
            }

            SetMonData(&gEnemyParty[partyIndex], 32, &friendship);
            SetMonData(&gEnemyParty[partyIndex], 12, &sBattleTowerHeldItems[battleTowerMons[battleMonIndex].heldItem]);



            partyIndex++;
        }
    }
}

static u8 AppendBattleTowerBannedSpeciesName(u16 species, u8 count)
{
    if (GetSetPokedexFlag(SpeciesToNationalPokedexNum(species), FLAG_GET_CAUGHT))
    {
        if (count == 0)
            StringAppend(gStringVar1, gText_BattleTowerBan_Space);
        count++;
        StringAppend(gStringVar1, gSpeciesNames[species]);
        switch (count)
        {
        case 2:
            StringAppend(gStringVar1, gText_BattleTowerBan_Newline2);
            break;
        case 5:
        case 8:
        case 11:
            StringAppend(gStringVar1, gText_BattleTowerBan_Newline1);
            break;
        default:
            StringAppend(gStringVar1, gText_BattleTowerBan_Space);
            break;
        }
    }
    return count;
}

static void CheckMonBattleTowerBanlist(u16 species, u16 heldItem, u16 hp, u8 battleTowerLevelType, u8 monLevel, u16 *validPartySpecies, u16 *validPartyHeldItems, u8 *numValid)
{
    s32 i;
    u32 counter = 0;

    if (species == 412 || species == 0)
        return;

    while (1)
    {
        if (gBattleTowerBannedSpecies[counter] == 0xFFFF)
            break;

        if (gBattleTowerBannedSpecies[counter] == species)
            break;

        counter++;
    }

    if (gBattleTowerBannedSpecies[counter] != 0xFFFF)
        return;

    if (battleTowerLevelType == 0 && monLevel > 50)
        return;

    for (i = 0; i < *numValid && validPartySpecies[i] != species ; i++);
    if (i != *numValid)
        return;

    if (heldItem != 0)
    {
        for (i = 0; i < *numValid && validPartyHeldItems[i] != heldItem ; i++);
        if (i != *numValid)
            return;
    }

    validPartySpecies[*numValid] = species;
    validPartyHeldItems[*numValid] = heldItem;
    *numValid = *numValid + 1;
}

void CheckPartyBattleTowerBanlist(void)
{
    s32 i;
    u16 species2;
    u16 heldItem;
    u8 level;
    u16 hp;
    u32 numBanlistCaught;
    u16 validPartySpecies[6];
    u16 validPartyHeldItems[6];
    u8 counter;

    counter = 0;

    for (i = 0; i < 6; i++)
    {
        species2 = GetMonData(&gPlayerParty[i], 65);
        heldItem = GetMonData(&gPlayerParty[i], 12);
        level = GetMonData(&gPlayerParty[i], 56);
        hp = GetMonData(&gPlayerParty[i], 57);

        CheckMonBattleTowerBanlist(species2, heldItem, hp, gSpecialVar_Result, level, validPartySpecies, validPartyHeldItems, &counter);
    }

    if (counter < 3)
    {
        gStringVar1[0] = 0xFF;
        gSpecialVar_0x8004 = 1;
        counter = 0;

        for (i = 0; gBattleTowerBannedSpecies[i] != 0xFFFF; i++)
            counter = AppendBattleTowerBannedSpeciesName(gBattleTowerBannedSpecies[i], counter);

        i = StringLength(gStringVar1);
        gStringVar1[i - 1] = 0xFF;
        if (counter < 3)
            StringAppend(gStringVar1, gText_BattleTowerBan_Is1);
        else
            StringAppend(gStringVar1, gText_BattleTowerBan_Is2);
    }
    else
    {
        gSpecialVar_0x8004 = 0;
        gSaveBlock2Ptr->battleTower.battleTowerLevelType = gSpecialVar_Result;
    }
}

static void BufferBattleTowerTrainerMessage(const u16 *greeting)
{
    s32 i;
    if (EC_DoesEasyChatStringFitOnLine(greeting, 3, 2, 18))
    {
        ConvertEasyChatWordsToString(gStringVar4, greeting, 2, 3);
        i = 0;
        while (gStringVar4[i++] != 0xFE)
            ;
        while (gStringVar4[i] != 0xFE)
            i++;
        gStringVar4[i] = 0xFA;
    }
    else
    {
        ConvertEasyChatWordsToString(gStringVar4, greeting, 3, 2);
    }
}

void PrintBattleTowerTrainerGreeting(void)
{
    if (gSaveBlock2Ptr->battleTower.battleTowerTrainerId == 200)
        BufferBattleTowerTrainerMessage(gSaveBlock2Ptr->battleTower.ereaderTrainer.greeting);
    else if (gSaveBlock2Ptr->battleTower.battleTowerTrainerId < 100)
        BufferBattleTowerTrainerMessage(sBattleTowerTrainers[gSaveBlock2Ptr->battleTower.battleTowerTrainerId].greeting);
    else
        BufferBattleTowerTrainerMessage(gSaveBlock2Ptr->battleTower.records[gSaveBlock2Ptr->battleTower.battleTowerTrainerId - 100].greeting);
}

static void CB2_FinishEReaderBattle(void)
{
    s32 i;
    u16 heldItem;

    switch (sSpecialVar_0x8004_Copy)
    {
    case 0:
        break;
    case 1:
        for (i = 0; i < 6; i++)
        {
            heldItem = GetMonData(&gSaveBlock1Ptr->playerParty[i], 12);
            SetMonData(&gPlayerParty[i], 12, &heldItem);
        }
        break;
    case 2:
        PrintEReaderTrainerFarewellMessage();
        break;
    }

    SetMainCallback2(CB2_ReturnToFieldContinueScriptPlayMapMusic);
}

static void Task_WaitBT(u8 taskId)
{
    if (BT_IsDone() == 1)
    {
        gMain.savedCallback = CB2_FinishEReaderBattle;
        CleanupOverworldWindowsAndTilemaps();
        SetMainCallback2(CB2_InitBattle);
        DestroyTask(taskId);
    }
}


void StartSpecialBattle(void)
{
    s32 i;
    u16 heldItem;
    u8 transition;

    sSpecialVar_0x8004_Copy = gSpecialVar_0x8004;
    switch (sSpecialVar_0x8004_Copy)
    {
    case 0:
        gBattleTypeFlags = ((1 << 8) | (1 << 3));
        gTrainerBattleOpponent_A = 0;

        FillBattleTowerTrainerParty();

        CreateTask(Task_WaitBT, 1);
        PlayMapChosenOrBattleBGM(0);
        transition = BattleSetup_GetBattleTowerBattleTransition();
        BT_StartOnField(transition);
        break;
    case 1:
        for (i = 0; i < 6; i++)
        {
            heldItem = GetMonData(&gPlayerParty[i], 12);
            SetMonData(&gSaveBlock1Ptr->playerParty[i], 12, &heldItem);
        }

        CreateTask(Task_WaitBT, 1);
        PlayMapChosenOrBattleBGM(0);
        transition = BattleSetup_GetBattleTowerBattleTransition();
        BT_StartOnField(transition);
        break;
    case 2:
        ZeroEnemyPartyMons();

        for (i = 0; i < 3; i++)
            CreateBattleTowerMon(&gEnemyParty[i], &gSaveBlock2Ptr->battleTower.ereaderTrainer.party[i]);

        gBattleTypeFlags = ((1 << 11) | (1 << 3));
        gTrainerBattleOpponent_A = 0;

        CreateTask(Task_WaitBT, 1);
        PlayMapChosenOrBattleBGM(0);
        transition = BattleSetup_GetBattleTowerBattleTransition();
        BT_StartOnField(transition);
        break;
    }
}

void SetBattleTowerProperty(void)
{
    s32 i;
    u8 battleTowerLevelType = gSaveBlock2Ptr->battleTower.battleTowerLevelType;

    switch (gSpecialVar_0x8004)
    {
    case 0:
        (*((u8 *)&gBattleStruct->field_DA)) = gSaveBlock2Ptr->battleTower.var_4AE[battleTowerLevelType];
        gSaveBlock2Ptr->battleTower.var_4AE[battleTowerLevelType] = gSpecialVar_0x8005;
        break;
    case 1:
        gSaveBlock2Ptr->battleTower.battleTowerLevelType = gSpecialVar_0x8005;
        break;
    case 2:
        gSaveBlock2Ptr->battleTower.curChallengeBattleNum[battleTowerLevelType] = gSpecialVar_0x8005;
        break;
    case 3:
        gSaveBlock2Ptr->battleTower.curStreakChallengesNum[battleTowerLevelType] = gSpecialVar_0x8005;
        break;
    case 4:
        gSaveBlock2Ptr->battleTower.battleTowerTrainerId = gSpecialVar_0x8005;
        break;
    case 5:
        for (i = 0; i < 3; i++)
            gSaveBlock2Ptr->battleTower.selectedPartyMons[i] = gSelectedOrderFromParty[i];
        break;
    case 6:
        if (gSaveBlock2Ptr->battleTower.battleTowerTrainerId == 200)
            ClearEReaderTrainer(&gSaveBlock2Ptr->battleTower.ereaderTrainer);
        if (gSaveBlock2Ptr->battleTower.totalBattleTowerWins < 9999)
            gSaveBlock2Ptr->battleTower.totalBattleTowerWins++;
        gSaveBlock2Ptr->battleTower.curChallengeBattleNum[battleTowerLevelType]++;
        SaveCurrentWinStreak();
        gSpecialVar_Result = gSaveBlock2Ptr->battleTower.curChallengeBattleNum[battleTowerLevelType];
        gStringVar1[0] = gSaveBlock2Ptr->battleTower.curChallengeBattleNum[battleTowerLevelType] + 0xA1;
        gStringVar1[1] = 0xFF;
        break;
    case 7:
        if (gSaveBlock2Ptr->battleTower.curStreakChallengesNum[battleTowerLevelType] < 1430)
            gSaveBlock2Ptr->battleTower.curStreakChallengesNum[battleTowerLevelType]++;
        SaveCurrentWinStreak();
        gSpecialVar_Result = gSaveBlock2Ptr->battleTower.curStreakChallengesNum[battleTowerLevelType];
        break;
    case 8:
        gSaveBlock2Ptr->battleTower.unk_554 = gSpecialVar_0x8005;
        break;
    case 9:
        break;
    case 10:
        SetGameStat(32, gSaveBlock2Ptr->battleTower.bestBattleTowerWinStreak);
        break;
    case 11:
        if (gSaveBlock2Ptr->battleTower.var_4AE[battleTowerLevelType] != 3)
            ResetBattleTowerStreak(battleTowerLevelType);
        break;
    case 12:
        gSaveBlock2Ptr->battleTower.var_4AE[battleTowerLevelType] = (*((u8 *)&gBattleStruct->field_DA));
        break;
    case 13:
        gSaveBlock2Ptr->battleTower.currentWinStreaks[battleTowerLevelType] = GetCurrentBattleTowerWinStreak(battleTowerLevelType);
        break;
    case 14:
        gSaveBlock2Ptr->battleTower.lastStreakLevelType = gSaveBlock2Ptr->battleTower.battleTowerLevelType;
        break;
    }
}

void BattleTowerUtil(void)
{
    u8 battleTowerLevelType = gSaveBlock2Ptr->battleTower.battleTowerLevelType;

    switch (gSpecialVar_0x8004)
    {
    case 0:
        gSpecialVar_Result = gSaveBlock2Ptr->battleTower.var_4AE[battleTowerLevelType];
        break;
    case 1:
        gSpecialVar_Result = gSaveBlock2Ptr->battleTower.battleTowerLevelType;
        break;
    case 2:
        gSpecialVar_Result = gSaveBlock2Ptr->battleTower.curChallengeBattleNum[battleTowerLevelType];
        break;
    case 3:
        gSpecialVar_Result = gSaveBlock2Ptr->battleTower.curStreakChallengesNum[battleTowerLevelType];
        break;
    case 4:
        gSpecialVar_Result = gSaveBlock2Ptr->battleTower.battleTowerTrainerId;
        break;
    case 5:
    case 6:
    case 7:
        break;
    case 8:
        gSpecialVar_Result = gSaveBlock2Ptr->battleTower.unk_554;
        break;
    case 9:
        gSpecialVar_Result = GetCurrentBattleTowerWinStreak(battleTowerLevelType);
        break;
    case 10:
        SetGameStat(32, gSaveBlock2Ptr->battleTower.bestBattleTowerWinStreak);
        break;
    case 11:
        ResetBattleTowerStreak(battleTowerLevelType);
        break;
    case 12:
        gSaveBlock2Ptr->battleTower.var_4AE[battleTowerLevelType] = (*((u8 *)&gBattleStruct->field_DA));
        break;
    case 13:
        gSaveBlock2Ptr->battleTower.currentWinStreaks[battleTowerLevelType] = GetCurrentBattleTowerWinStreak(battleTowerLevelType);
        break;
    case 14:
        gSaveBlock2Ptr->battleTower.lastStreakLevelType = gSaveBlock2Ptr->battleTower.battleTowerLevelType;
        break;
    }
}

void SetBattleTowerParty(void)
{
    s32 i;

    for (i = 0; i < 3; i++)
        gSelectedOrderFromParty[i] = gSaveBlock2Ptr->battleTower.selectedPartyMons[i];

    ReducePlayerPartyToThree();
}

static void SaveCurrentWinStreak(void)
{
    u8 levelType = gSaveBlock2Ptr->battleTower.battleTowerLevelType;
    u16 streak = GetCurrentBattleTowerWinStreak(levelType);

    if (gSaveBlock2Ptr->battleTower.recordWinStreaks[levelType] < streak)
        gSaveBlock2Ptr->battleTower.recordWinStreaks[levelType] = streak;

    if (gSaveBlock2Ptr->battleTower.recordWinStreaks[0] > gSaveBlock2Ptr->battleTower.recordWinStreaks[1])
    {
        streak = gSaveBlock2Ptr->battleTower.recordWinStreaks[0];
        SetGameStat(32, streak);

        if (streak > 9999)
            gSaveBlock2Ptr->battleTower.bestBattleTowerWinStreak = 9999;
        else
            gSaveBlock2Ptr->battleTower.bestBattleTowerWinStreak = streak;
    }
    else
    {
        streak = gSaveBlock2Ptr->battleTower.recordWinStreaks[1];
        SetGameStat(32, streak);

        if (streak > 9999)
            gSaveBlock2Ptr->battleTower.bestBattleTowerWinStreak = 9999;
        else
            gSaveBlock2Ptr->battleTower.bestBattleTowerWinStreak = streak;
    }
}

static void SetPlayerBattleTowerRecord(void)
{
    s32 i;
    u8 trainerClass;
    struct BattleTowerRecord *playerRecord = &gSaveBlock2Ptr->battleTower.playerRecord;
    u8 battleTowerLevelType = gSaveBlock2Ptr->battleTower.battleTowerLevelType;

    if (gSaveBlock2Ptr->playerGender != 0)
    {
        trainerClass = sFemaleTrainerClasses[(gSaveBlock2Ptr->playerTrainerId[0] + gSaveBlock2Ptr->playerTrainerId[1]
                                              + gSaveBlock2Ptr->playerTrainerId[2] + gSaveBlock2Ptr->playerTrainerId[3]) % (sizeof(sFemaleTrainerClasses) / sizeof((sFemaleTrainerClasses)[0]))];
    }
    else
    {
        trainerClass = sMaleTrainerClasses[(gSaveBlock2Ptr->playerTrainerId[0] + gSaveBlock2Ptr->playerTrainerId[1]
                                            + gSaveBlock2Ptr->playerTrainerId[2] + gSaveBlock2Ptr->playerTrainerId[3]) % (sizeof(sMaleTrainerClasses) / sizeof((sMaleTrainerClasses)[0]))];
    }

    playerRecord->battleTowerLevelType = battleTowerLevelType;
    playerRecord->trainerClass = trainerClass;

    CopyTrainerId(playerRecord->trainerId, gSaveBlock2Ptr->playerTrainerId);
    StringCopy_PlayerName(playerRecord->name, gSaveBlock2Ptr->playerName);

    playerRecord->winStreak = GetCurrentBattleTowerWinStreak(battleTowerLevelType);

    for (i = 0; i < 6; i++)
        playerRecord->greeting[i] = gSaveBlock1Ptr->easyChatBattleStart[i];

    for (i = 0; i < 3; i++)
        ConvertPokemonToBattleTowerPokemon(&gPlayerParty[gSaveBlock2Ptr->battleTower.selectedPartyMons[i] - 1],
                                           &playerRecord->party[i]);

    SetBattleTowerRecordChecksum(&gSaveBlock2Ptr->battleTower.playerRecord);
    SaveCurrentWinStreak();
}

void SaveBattleTowerProgress(void)
{
    u8 battleTowerLevelType = gSaveBlock2Ptr->battleTower.battleTowerLevelType;

    if (gSpecialVar_0x8004 == 3 || gSpecialVar_0x8004 == 0)
    {
        if (gSaveBlock2Ptr->battleTower.curStreakChallengesNum[battleTowerLevelType] > 1
            || gSaveBlock2Ptr->battleTower.curChallengeBattleNum[battleTowerLevelType] > 1)
            SetPlayerBattleTowerRecord();
    }

    PopulateBravoTrainerBattleTowerLostData();

    gSaveBlock2Ptr->battleTower.battleOutcome = gBattleOutcome;

    if (gSpecialVar_0x8004 != 3)
        gSaveBlock2Ptr->battleTower.var_4AE[battleTowerLevelType] = gSpecialVar_0x8004;

    VarSet((0x4000 + 0x0), 0);
    gSaveBlock2Ptr->battleTower.unk_554 = 1;
    TrySavingData(SAVE_EREADER);
}

void BattleTower_SoftReset(void)
{
    DoSoftReset();
}

static void ValidateBattleTowerRecordChecksums(void)
{
    u32 i;
    s32 recordIndex;
    struct BattleTowerRecord *record;
    u32 checksum;

    record = &gSaveBlock2Ptr->battleTower.playerRecord;
    checksum = 0;
    for (i = 0; i < (sizeof(struct BattleTowerRecord) / sizeof(u32)) - 1; i++)
        checksum += ((u32 *)record)[i];

    if (gSaveBlock2Ptr->battleTower.playerRecord.checksum != checksum)
        ClearBattleTowerRecord(&gSaveBlock2Ptr->battleTower.playerRecord);

    for (recordIndex = 0; recordIndex < 5; recordIndex++)
    {
        record = &gSaveBlock2Ptr->battleTower.records[recordIndex];
        checksum = 0;
        for (i = 0; i < (sizeof(struct BattleTowerRecord) / sizeof(u32)) - 1; i++)
            checksum += ((u32 *)record)[i];

        if (gSaveBlock2Ptr->battleTower.records[recordIndex].checksum != checksum)
            ClearBattleTowerRecord(&gSaveBlock2Ptr->battleTower.records[recordIndex]);
    }
}

static void SetBattleTowerRecordChecksum(struct BattleTowerRecord *record)
{
    u32 i;

    record->checksum = 0;
    for (i = 0; i < (sizeof(struct BattleTowerRecord) / sizeof(u32)) - 1; i++)
        record->checksum += ((u32 *)record)[i];
}

static void ClearBattleTowerRecord(struct BattleTowerRecord *record)
{
    u32 i;

    for (i = 0; i < sizeof(struct BattleTowerRecord) / sizeof(u32); i++)
        ((u32 *)record)[i] = 0;
}

static void PopulateBravoTrainerBattleTowerLostData(void)
{
    s32 i;

    GetBattleTowerTrainerName(gSaveBlock2Ptr->battleTower.defeatedByTrainerName);
    gSaveBlock2Ptr->battleTower.defeatedBySpecies = gBattleMons[1].species;
    gSaveBlock2Ptr->battleTower.firstMonSpecies = gBattleMons[0].species;

    for (i = 0; i < 10; i++)
        gSaveBlock2Ptr->battleTower.firstMonNickname[i] = gBattleMons[0].nickname[i];
}

static u16 GetCurrentBattleTowerWinStreak(u8 battleTowerLevelType)
{
    u16 winStreak = ((gSaveBlock2Ptr->battleTower.curStreakChallengesNum[battleTowerLevelType] - 1) * 7 - 1)
                    + gSaveBlock2Ptr->battleTower.curChallengeBattleNum[battleTowerLevelType];

    if (winStreak > 9999)
        return 9999;
    else
        return winStreak;
}

void DetermineBattleTowerPrize(void)
{
    u8 levelType = gSaveBlock2Ptr->battleTower.battleTowerLevelType;

    if (gSaveBlock2Ptr->battleTower.curStreakChallengesNum[levelType] - 1 > 5)
        gSaveBlock2Ptr->battleTower.prizeItem = sLongStreakPrizes[Random() % (sizeof(sLongStreakPrizes) / sizeof((sLongStreakPrizes)[0]))];
    else
        gSaveBlock2Ptr->battleTower.prizeItem = sShortStreakPrizes[Random() % (sizeof(sShortStreakPrizes) / sizeof((sShortStreakPrizes)[0]))];
}

void GiveBattleTowerPrize(void)
{
    u8 battleTowerLevelType = gSaveBlock2Ptr->battleTower.battleTowerLevelType;

    if (AddBagItem(gSaveBlock2Ptr->battleTower.prizeItem, 1) == 1)
    {
        CopyItemName(gSaveBlock2Ptr->battleTower.prizeItem, gStringVar1);
        gSpecialVar_Result = 1;
    }
    else
    {
        gSpecialVar_Result = 0;
        gSaveBlock2Ptr->battleTower.var_4AE[battleTowerLevelType] = 6;
    }
}

void AwardBattleTowerRibbons(void)
{
    s32 i;
    u32 partyIndex;
    struct Pokemon *pokemon;
    u8 ribbonType;
    u8 battleTowerLevelType = gSaveBlock2Ptr->battleTower.battleTowerLevelType;

    if (battleTowerLevelType != 0)
        ribbonType = 69;
    else
        ribbonType = 68;

    gSpecialVar_Result = 0;

    if (GetCurrentBattleTowerWinStreak(battleTowerLevelType) > 55)
    {
        for (i = 0; i < 3; i++)
        {
            partyIndex = gSaveBlock2Ptr->battleTower.selectedPartyMons[i] - 1;
            pokemon = &gPlayerParty[partyIndex];
            if (!GetMonData(pokemon, ribbonType))
            {
                gSpecialVar_Result = 1;
                SetMonData(pokemon, ribbonType, &gSpecialVar_Result);
            }
        }
    }

    if (gSpecialVar_Result != 0)
        IncrementGameStat(42);
}



static void Debug_FillEReaderTrainerWithPlayerData(void)
{
    struct BattleTowerEReaderTrainer *ereaderTrainer;
    s32 i;
    s32 j;

    ereaderTrainer = &gSaveBlock2Ptr->battleTower.ereaderTrainer;

    if (gSaveBlock2Ptr->playerGender != 0)
    {
        ereaderTrainer->trainerClass = sFemaleTrainerClasses[(gSaveBlock2Ptr->playerTrainerId[0] + gSaveBlock2Ptr->playerTrainerId[1]
                                                              + gSaveBlock2Ptr->playerTrainerId[2] + gSaveBlock2Ptr->playerTrainerId[3]) % (sizeof(sFemaleTrainerClasses) / sizeof((sFemaleTrainerClasses)[0]))];
    }
    else
    {
        ereaderTrainer->trainerClass = sMaleTrainerClasses[(gSaveBlock2Ptr->playerTrainerId[0] + gSaveBlock2Ptr->playerTrainerId[1]
                                                            + gSaveBlock2Ptr->playerTrainerId[2] + gSaveBlock2Ptr->playerTrainerId[3]) % (sizeof(sMaleTrainerClasses) / sizeof((sMaleTrainerClasses)[0]))];
    }

    CopyTrainerId(ereaderTrainer->trainerId, gSaveBlock2Ptr->playerTrainerId);
    StringCopy_PlayerName(ereaderTrainer->name, gSaveBlock2Ptr->playerName);

    ereaderTrainer->winStreak = 1;

    j = 7;
    for (i = 0; i < 6; i++)
    {
        ereaderTrainer->greeting[i] = gSaveBlock1Ptr->easyChatBattleStart[i];
        ereaderTrainer->farewellPlayerLost[i] = j;
        ereaderTrainer->farewellPlayerWon[i] = j + 6;
        j++;
    }

    for (i = 0; i < 3; i++)
        ConvertPokemonToBattleTowerPokemon(&gPlayerParty[i], &ereaderTrainer->party[i]);

    SetEReaderTrainerChecksum(ereaderTrainer);
}

u8 GetEreaderTrainerFrontSpriteId(void)
{
    return gFacilityClassToPicIndex[gSaveBlock2Ptr->battleTower.ereaderTrainer.trainerClass];
}

u8 GetEreaderTrainerClassId(void)
{
    return gFacilityClassToTrainerClass[gSaveBlock2Ptr->battleTower.ereaderTrainer.trainerClass];
}

void CopyEReaderTrainerName5(u8 *trainerName)
{
    s32 i;

    for (i = 0; i < 5; i++)
        trainerName[i] = gSaveBlock2Ptr->battleTower.ereaderTrainer.name[i];

    trainerName[i] = 0xFF;
}


void ValidateEReaderTrainer(void)
{
    u32 i;
    u32 checksum;
    struct BattleTowerEReaderTrainer *ereaderTrainer;

    gSpecialVar_Result = 0;
    ereaderTrainer = &gSaveBlock2Ptr->battleTower.ereaderTrainer;

    checksum = 0;
    for (i = 0; i < sizeof(struct BattleTowerEReaderTrainer) / sizeof(u32) - 1; i++)
        checksum |= ((u32 *)ereaderTrainer)[i];

    if (checksum == 0)
    {
        gSpecialVar_Result = 1;
        return;
    }

    checksum = 0;
    for (i = 0; i < sizeof(struct BattleTowerEReaderTrainer) / sizeof(u32) - 1; i++)
        checksum += ((u32 *)ereaderTrainer)[i];

    if (gSaveBlock2Ptr->battleTower.ereaderTrainer.checksum != checksum)
    {
        ClearEReaderTrainer(&gSaveBlock2Ptr->battleTower.ereaderTrainer);
        gSpecialVar_Result = 1;
    }
}

static void SetEReaderTrainerChecksum(struct BattleTowerEReaderTrainer *ereaderTrainer)
{
    s32 i;

    ereaderTrainer->checksum = 0;
    for (i = 0; i < sizeof(struct BattleTowerEReaderTrainer) / sizeof(u32) - 1; i++)
        ereaderTrainer->checksum += ((u32 *)ereaderTrainer)[i];
}

void ClearEReaderTrainer(struct BattleTowerEReaderTrainer *ereaderTrainer)
{
    u32 i;

    for (i = 0; i < sizeof(struct BattleTowerEReaderTrainer) / sizeof(u32); i++)
        ((u32 *)ereaderTrainer)[i] = 0;
}

void BufferEReaderTrainerGreeting(void)
{
    BufferBattleTowerTrainerMessage(gSaveBlock2Ptr->battleTower.ereaderTrainer.greeting);
}

static void PrintEReaderTrainerFarewellMessage(void)
{
    if (gBattleOutcome == 3)
        gStringVar4[0] = 0xFF;
    else if (gBattleOutcome == 1)
        BufferBattleTowerTrainerMessage(gSaveBlock2Ptr->battleTower.ereaderTrainer.farewellPlayerWon);
    else
        BufferBattleTowerTrainerMessage(gSaveBlock2Ptr->battleTower.ereaderTrainer.farewellPlayerLost);
}

void Dummy_TryEnableBravoTrainerBattleTower(void)
{
    s32 i;

    for (i = 0; i < 2; i++)
    {
        if (gSaveBlock2Ptr->battleTower.var_4AE[i] == 1)
            ;
    }
}
