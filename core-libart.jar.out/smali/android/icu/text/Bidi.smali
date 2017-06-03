.class public Landroid/icu/text/Bidi;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/Bidi$BracketData;,
        Landroid/icu/text/Bidi$ImpTabPair;,
        Landroid/icu/text/Bidi$InsertPoints;,
        Landroid/icu/text/Bidi$IsoRun;,
        Landroid/icu/text/Bidi$Isolate;,
        Landroid/icu/text/Bidi$LevState;,
        Landroid/icu/text/Bidi$Opening;,
        Landroid/icu/text/Bidi$Point;
    }
.end annotation


# static fields
.field static final AL:B = 0xdt

.field static final AN:B = 0x5t

.field static final B:B = 0x7t

.field static final BN:B = 0x12t

.field public static final CLASS_DEFAULT:I = 0x17

.field private static final CR:C = '\r'

.field static final CS:B = 0x6t

.field public static final DIRECTION_DEFAULT_LEFT_TO_RIGHT:I = 0x7e

.field public static final DIRECTION_DEFAULT_RIGHT_TO_LEFT:I = 0x7f

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field public static final DO_MIRRORING:S = 0x2s

.field static final DirPropFlagE:[I

.field static final DirPropFlagLR:[I

.field static final DirPropFlagMultiRuns:I

.field static final DirPropFlagO:[I

.field static final EN:B = 0x2t

.field static final ENL:B = 0x17t

.field static final ENR:B = 0x18t

.field static final ES:B = 0x3t

.field static final ET:B = 0x4t

.field static final FIRSTALLOC:I = 0xa

.field static final FOUND_L:B

.field static final FOUND_R:B

.field static final FSI:B = 0x13t

.field private static final IMPTABLEVELS_COLUMNS:I = 0x8

.field private static final IMPTABLEVELS_RES:I = 0x7

.field private static final IMPTABPROPS_COLUMNS:I = 0x10

.field private static final IMPTABPROPS_RES:I = 0xf

.field public static final INSERT_LRM_FOR_NUMERIC:S = 0x4s

.field static final ISOLATE:I = 0x100

.field public static final KEEP_BASE_COMBINING:S = 0x1s

.field static final L:B = 0x0t

.field public static final LEVEL_DEFAULT_LTR:B = 0x7et

.field public static final LEVEL_DEFAULT_RTL:B = 0x7ft

.field public static final LEVEL_OVERRIDE:B = -0x80t

.field private static final LF:C = '\n'

.field static final LOOKING_FOR_PDI:I = 0x3

.field static final LRE:B = 0xbt

.field static final LRI:B = 0x14t

.field static final LRM_AFTER:I = 0x2

.field static final LRM_BEFORE:I = 0x1

.field static final LRO:B = 0xct

.field public static final LTR:B = 0x0t

.field public static final MAP_NOWHERE:I = -0x1

.field static final MASK_BN_EXPLICIT:I

.field static final MASK_B_S:I

.field static final MASK_EMBEDDING:I

.field static final MASK_EXPLICIT:I

.field static final MASK_ISO:I

.field static final MASK_LTR:I

.field static final MASK_POSSIBLE_N:I

.field static final MASK_RTL:I

.field static final MASK_R_AL:I

.field static final MASK_STRONG_EN_AN:I

.field static final MASK_WS:I

.field public static final MAX_EXPLICIT_LEVEL:B = 0x7dt

.field public static final MIXED:B = 0x2t

.field public static final NEUTRAL:B = 0x3t

.field static final NOT_SEEKING_STRONG:I = 0x0

.field static final NSM:B = 0x11t

.field static final ON:B = 0xat

.field public static final OPTION_DEFAULT:I = 0x0

.field public static final OPTION_INSERT_MARKS:I = 0x1

.field public static final OPTION_REMOVE_CONTROLS:I = 0x2

.field public static final OPTION_STREAMING:I = 0x4

.field public static final OUTPUT_REVERSE:S = 0x10s

.field static final PDF:B = 0x10t

.field static final PDI:B = 0x16t

.field static final R:B = 0x1t

.field public static final REMOVE_BIDI_CONTROLS:S = 0x8s

.field static final REORDER_COUNT:S = 0x7s

.field public static final REORDER_DEFAULT:S = 0x0s

.field public static final REORDER_GROUP_NUMBERS_WITH_R:S = 0x2s

.field public static final REORDER_INVERSE_FOR_NUMBERS_SPECIAL:S = 0x6s

.field public static final REORDER_INVERSE_LIKE_DIRECT:S = 0x5s

.field public static final REORDER_INVERSE_NUMBERS_AS_L:S = 0x4s

.field static final REORDER_LAST_LOGICAL_TO_VISUAL:S = 0x1s

.field public static final REORDER_NUMBERS_SPECIAL:S = 0x1s

.field public static final REORDER_RUNS_ONLY:S = 0x3s

.field static final RLE:B = 0xet

.field static final RLI:B = 0x15t

.field static final RLM_AFTER:I = 0x8

.field static final RLM_BEFORE:I = 0x4

.field static final RLO:B = 0xft

.field public static final RTL:B = 0x1t

.field static final S:B = 0x8t

.field static final SEEKING_STRONG_FOR_FSI:I = 0x2

.field static final SEEKING_STRONG_FOR_PARA:I = 0x1

.field static final SIMPLE_OPENINGS_COUNT:I = 0x14

.field static final SIMPLE_PARAS_COUNT:I = 0xa

.field static final WS:B = 0x9t

.field private static final _AN:S = 0x3s

.field private static final _B:S = 0x6s

.field private static final _EN:S = 0x2s

.field private static final _L:S = 0x0s

.field private static final _ON:S = 0x4s

.field private static final _R:S = 0x1s

.field private static final _S:S = 0x5s

.field private static final groupProp:[S

.field private static final impAct0:[S

.field private static final impAct1:[S

.field private static final impAct2:[S

.field private static final impAct3:[S

.field private static final impTabL_DEFAULT:[[B

.field private static final impTabL_GROUP_NUMBERS_WITH_R:[[B

.field private static final impTabL_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:[[B

.field private static final impTabL_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

.field private static final impTabL_INVERSE_NUMBERS_AS_L:[[B

.field private static final impTabL_NUMBERS_SPECIAL:[[B

.field private static final impTabProps:[[S

.field private static final impTabR_DEFAULT:[[B

.field private static final impTabR_GROUP_NUMBERS_WITH_R:[[B

.field private static final impTabR_INVERSE_LIKE_DIRECT:[[B

.field private static final impTabR_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

.field private static final impTabR_INVERSE_NUMBERS_AS_L:[[B

.field private static final impTab_DEFAULT:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final impTab_GROUP_NUMBERS_WITH_R:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final impTab_INVERSE_FOR_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final impTab_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final impTab_INVERSE_LIKE_DIRECT:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final impTab_INVERSE_LIKE_DIRECT_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final impTab_INVERSE_NUMBERS_AS_L:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final impTab_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;


# instance fields
.field final bdp:Landroid/icu/impl/UBiDiProps;

.field controlCount:I

.field customClassifier:Landroid/icu/text/BidiClassifier;

.field defaultParaLevel:B

.field dirProps:[B

.field dirPropsMemory:[B

.field direction:B

.field epilogue:Ljava/lang/String;

.field flags:I

.field impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

.field insertPoints:Landroid/icu/text/Bidi$InsertPoints;

.field isGoodLogicalToVisualRunsMap:Z

.field isInverse:Z

.field isolateCount:I

.field isolates:[Landroid/icu/text/Bidi$Isolate;

.field lastArabicPos:I

.field length:I

.field levels:[B

.field levelsMemory:[B

.field logicalToVisualRunsMap:[I

.field mayAllocateRuns:Z

.field mayAllocateText:Z

.field orderParagraphsLTR:Z

.field originalLength:I

.field paraBidi:Landroid/icu/text/Bidi;

.field paraCount:I

.field paraLevel:B

.field paras_level:[B

.field paras_limit:[I

.field prologue:Ljava/lang/String;

.field reorderingMode:I

.field reorderingOptions:I

.field resultLength:I

.field runCount:I

.field runs:[Landroid/icu/text/BidiRun;

.field runsMemory:[Landroid/icu/text/BidiRun;

.field simpleRuns:[Landroid/icu/text/BidiRun;

.field text:[C

.field trailingWSStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/16 v3, 0x10

    const/16 v5, 0x8

    invoke-static {v7}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v0

    int-to-byte v0, v0

    sput-byte v0, Landroid/icu/text/Bidi;->FOUND_L:B

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v0

    int-to-byte v0, v0

    sput-byte v0, Landroid/icu/text/Bidi;->FOUND_R:B

    const/16 v0, 0x1f

    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v0

    sput v0, Landroid/icu/text/Bidi;->DirPropFlagMultiRuns:I

    new-array v0, v8, [I

    invoke-static {v7}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    aput v1, v0, v7

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    aput v1, v0, v6

    sput-object v0, Landroid/icu/text/Bidi;->DirPropFlagLR:[I

    new-array v0, v8, [I

    const/16 v1, 0xb

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    aput v1, v0, v7

    const/16 v1, 0xe

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    aput v1, v0, v6

    sput-object v0, Landroid/icu/text/Bidi;->DirPropFlagE:[I

    new-array v0, v8, [I

    const/16 v1, 0xc

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    aput v1, v0, v7

    const/16 v1, 0xf

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    aput v1, v0, v6

    sput-object v0, Landroid/icu/text/Bidi;->DirPropFlagO:[I

    invoke-static {v7}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v0

    invoke-static {v8}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0x17

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0x18

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0xb

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0x14

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Landroid/icu/text/Bidi;->MASK_LTR:I

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v0

    const/16 v1, 0xd

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0xe

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0xf

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0x15

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Landroid/icu/text/Bidi;->MASK_RTL:I

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v0

    const/16 v1, 0xd

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Landroid/icu/text/Bidi;->MASK_R_AL:I

    invoke-static {v7}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v0

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0xd

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v8}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Landroid/icu/text/Bidi;->MASK_STRONG_EN_AN:I

    const/16 v0, 0xb

    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0xe

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0xf

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Landroid/icu/text/Bidi;->MASK_EXPLICIT:I

    const/16 v0, 0x12

    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v0

    sget v1, Landroid/icu/text/Bidi;->MASK_EXPLICIT:I

    or-int/2addr v0, v1

    sput v0, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    const/16 v0, 0x14

    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v0

    const/16 v1, 0x15

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0x13

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0x16

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Landroid/icu/text/Bidi;->MASK_ISO:I

    const/4 v0, 0x7

    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v0

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Landroid/icu/text/Bidi;->MASK_B_S:I

    sget v0, Landroid/icu/text/Bidi;->MASK_B_S:I

    const/16 v1, 0x9

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    sget v1, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    or-int/2addr v0, v1

    sget v1, Landroid/icu/text/Bidi;->MASK_ISO:I

    or-int/2addr v0, v1

    sput v0, Landroid/icu/text/Bidi;->MASK_WS:I

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v0, v1

    sget v1, Landroid/icu/text/Bidi;->MASK_WS:I

    or-int/2addr v0, v1

    sput v0, Landroid/icu/text/Bidi;->MASK_POSSIBLE_N:I

    const/16 v0, 0x11

    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v0

    sget v1, Landroid/icu/text/Bidi;->MASK_POSSIBLE_N:I

    or-int/2addr v0, v1

    sput v0, Landroid/icu/text/Bidi;->MASK_EMBEDDING:I

    const/16 v0, 0x19

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/text/Bidi;->groupProp:[S

    const/16 v0, 0x18

    new-array v0, v0, [[S

    new-array v1, v3, [S

    fill-array-data v1, :array_1

    aput-object v1, v0, v7

    new-array v1, v3, [S

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v3, [S

    fill-array-data v1, :array_3

    aput-object v1, v0, v8

    new-array v1, v3, [S

    fill-array-data v1, :array_4

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v3, [S

    fill-array-data v1, :array_5

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v3, [S

    fill-array-data v1, :array_6

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v3, [S

    fill-array-data v1, :array_7

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v3, [S

    fill-array-data v1, :array_8

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v3, [S

    fill-array-data v1, :array_9

    aput-object v1, v0, v5

    new-array v1, v3, [S

    fill-array-data v1, :array_a

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v3, [S

    fill-array-data v1, :array_b

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v3, [S

    fill-array-data v1, :array_c

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-array v1, v3, [S

    fill-array-data v1, :array_d

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-array v1, v3, [S

    fill-array-data v1, :array_e

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-array v1, v3, [S

    fill-array-data v1, :array_f

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-array v1, v3, [S

    fill-array-data v1, :array_10

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-array v1, v3, [S

    fill-array-data v1, :array_11

    aput-object v1, v0, v3

    new-array v1, v3, [S

    fill-array-data v1, :array_12

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-array v1, v3, [S

    fill-array-data v1, :array_13

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-array v1, v3, [S

    fill-array-data v1, :array_14

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-array v1, v3, [S

    fill-array-data v1, :array_15

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-array v1, v3, [S

    fill-array-data v1, :array_16

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-array v1, v3, [S

    fill-array-data v1, :array_17

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-array v1, v3, [S

    fill-array-data v1, :array_18

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/Bidi;->impTabProps:[[S

    const/4 v0, 0x6

    new-array v0, v0, [[B

    new-array v1, v5, [B

    fill-array-data v1, :array_19

    aput-object v1, v0, v7

    new-array v1, v5, [B

    fill-array-data v1, :array_1a

    aput-object v1, v0, v6

    new-array v1, v5, [B

    fill-array-data v1, :array_1b

    aput-object v1, v0, v8

    new-array v1, v5, [B

    fill-array-data v1, :array_1c

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_1d

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_1e

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/Bidi;->impTabL_DEFAULT:[[B

    const/4 v0, 0x6

    new-array v0, v0, [[B

    new-array v1, v5, [B

    fill-array-data v1, :array_1f

    aput-object v1, v0, v7

    new-array v1, v5, [B

    fill-array-data v1, :array_20

    aput-object v1, v0, v6

    new-array v1, v5, [B

    fill-array-data v1, :array_21

    aput-object v1, v0, v8

    new-array v1, v5, [B

    fill-array-data v1, :array_22

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_23

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_24

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/Bidi;->impTabR_DEFAULT:[[B

    const/4 v0, 0x5

    new-array v0, v0, [S

    fill-array-data v0, :array_25

    sput-object v0, Landroid/icu/text/Bidi;->impAct0:[S

    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v1, Landroid/icu/text/Bidi;->impTabL_DEFAULT:[[B

    sget-object v2, Landroid/icu/text/Bidi;->impTabR_DEFAULT:[[B

    sget-object v3, Landroid/icu/text/Bidi;->impAct0:[S

    sget-object v4, Landroid/icu/text/Bidi;->impAct0:[S

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v0, Landroid/icu/text/Bidi;->impTab_DEFAULT:Landroid/icu/text/Bidi$ImpTabPair;

    const/4 v0, 0x5

    new-array v0, v0, [[B

    new-array v1, v5, [B

    fill-array-data v1, :array_26

    aput-object v1, v0, v7

    new-array v1, v5, [B

    fill-array-data v1, :array_27

    aput-object v1, v0, v6

    new-array v1, v5, [B

    fill-array-data v1, :array_28

    aput-object v1, v0, v8

    new-array v1, v5, [B

    fill-array-data v1, :array_29

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_2a

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/Bidi;->impTabL_NUMBERS_SPECIAL:[[B

    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v1, Landroid/icu/text/Bidi;->impTabL_NUMBERS_SPECIAL:[[B

    sget-object v2, Landroid/icu/text/Bidi;->impTabR_DEFAULT:[[B

    sget-object v3, Landroid/icu/text/Bidi;->impAct0:[S

    sget-object v4, Landroid/icu/text/Bidi;->impAct0:[S

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v0, Landroid/icu/text/Bidi;->impTab_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;

    const/4 v0, 0x6

    new-array v0, v0, [[B

    new-array v1, v5, [B

    fill-array-data v1, :array_2b

    aput-object v1, v0, v7

    new-array v1, v5, [B

    fill-array-data v1, :array_2c

    aput-object v1, v0, v6

    new-array v1, v5, [B

    fill-array-data v1, :array_2d

    aput-object v1, v0, v8

    new-array v1, v5, [B

    fill-array-data v1, :array_2e

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_2f

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_30

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/Bidi;->impTabL_GROUP_NUMBERS_WITH_R:[[B

    const/4 v0, 0x5

    new-array v0, v0, [[B

    new-array v1, v5, [B

    fill-array-data v1, :array_31

    aput-object v1, v0, v7

    new-array v1, v5, [B

    fill-array-data v1, :array_32

    aput-object v1, v0, v6

    new-array v1, v5, [B

    fill-array-data v1, :array_33

    aput-object v1, v0, v8

    new-array v1, v5, [B

    fill-array-data v1, :array_34

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_35

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/Bidi;->impTabR_GROUP_NUMBERS_WITH_R:[[B

    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v1, Landroid/icu/text/Bidi;->impTabL_GROUP_NUMBERS_WITH_R:[[B

    sget-object v2, Landroid/icu/text/Bidi;->impTabR_GROUP_NUMBERS_WITH_R:[[B

    sget-object v3, Landroid/icu/text/Bidi;->impAct0:[S

    sget-object v4, Landroid/icu/text/Bidi;->impAct0:[S

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v0, Landroid/icu/text/Bidi;->impTab_GROUP_NUMBERS_WITH_R:Landroid/icu/text/Bidi$ImpTabPair;

    const/4 v0, 0x6

    new-array v0, v0, [[B

    new-array v1, v5, [B

    fill-array-data v1, :array_36

    aput-object v1, v0, v7

    new-array v1, v5, [B

    fill-array-data v1, :array_37

    aput-object v1, v0, v6

    new-array v1, v5, [B

    fill-array-data v1, :array_38

    aput-object v1, v0, v8

    new-array v1, v5, [B

    fill-array-data v1, :array_39

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_3a

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_3b

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/Bidi;->impTabL_INVERSE_NUMBERS_AS_L:[[B

    const/4 v0, 0x6

    new-array v0, v0, [[B

    new-array v1, v5, [B

    fill-array-data v1, :array_3c

    aput-object v1, v0, v7

    new-array v1, v5, [B

    fill-array-data v1, :array_3d

    aput-object v1, v0, v6

    new-array v1, v5, [B

    fill-array-data v1, :array_3e

    aput-object v1, v0, v8

    new-array v1, v5, [B

    fill-array-data v1, :array_3f

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_40

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_41

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/Bidi;->impTabR_INVERSE_NUMBERS_AS_L:[[B

    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v1, Landroid/icu/text/Bidi;->impTabL_INVERSE_NUMBERS_AS_L:[[B

    sget-object v2, Landroid/icu/text/Bidi;->impTabR_INVERSE_NUMBERS_AS_L:[[B

    sget-object v3, Landroid/icu/text/Bidi;->impAct0:[S

    sget-object v4, Landroid/icu/text/Bidi;->impAct0:[S

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v0, Landroid/icu/text/Bidi;->impTab_INVERSE_NUMBERS_AS_L:Landroid/icu/text/Bidi$ImpTabPair;

    const/4 v0, 0x7

    new-array v0, v0, [[B

    new-array v1, v5, [B

    fill-array-data v1, :array_42

    aput-object v1, v0, v7

    new-array v1, v5, [B

    fill-array-data v1, :array_43

    aput-object v1, v0, v6

    new-array v1, v5, [B

    fill-array-data v1, :array_44

    aput-object v1, v0, v8

    new-array v1, v5, [B

    fill-array-data v1, :array_45

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_46

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_47

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_48

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT:[[B

    const/4 v0, 0x4

    new-array v0, v0, [S

    fill-array-data v0, :array_49

    sput-object v0, Landroid/icu/text/Bidi;->impAct1:[S

    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v1, Landroid/icu/text/Bidi;->impTabL_DEFAULT:[[B

    sget-object v2, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT:[[B

    sget-object v3, Landroid/icu/text/Bidi;->impAct0:[S

    sget-object v4, Landroid/icu/text/Bidi;->impAct1:[S

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v0, Landroid/icu/text/Bidi;->impTab_INVERSE_LIKE_DIRECT:Landroid/icu/text/Bidi$ImpTabPair;

    const/4 v0, 0x7

    new-array v0, v0, [[B

    new-array v1, v5, [B

    fill-array-data v1, :array_4a

    aput-object v1, v0, v7

    new-array v1, v5, [B

    fill-array-data v1, :array_4b

    aput-object v1, v0, v6

    new-array v1, v5, [B

    fill-array-data v1, :array_4c

    aput-object v1, v0, v8

    new-array v1, v5, [B

    fill-array-data v1, :array_4d

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_4e

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_4f

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_50

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/Bidi;->impTabL_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    const/4 v0, 0x7

    new-array v0, v0, [[B

    new-array v1, v5, [B

    fill-array-data v1, :array_51

    aput-object v1, v0, v7

    new-array v1, v5, [B

    fill-array-data v1, :array_52

    aput-object v1, v0, v6

    new-array v1, v5, [B

    fill-array-data v1, :array_53

    aput-object v1, v0, v8

    new-array v1, v5, [B

    fill-array-data v1, :array_54

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_55

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_56

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_57

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    const/4 v0, 0x7

    new-array v0, v0, [S

    fill-array-data v0, :array_58

    sput-object v0, Landroid/icu/text/Bidi;->impAct2:[S

    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_59

    sput-object v0, Landroid/icu/text/Bidi;->impAct3:[S

    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v1, Landroid/icu/text/Bidi;->impTabL_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    sget-object v2, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    sget-object v3, Landroid/icu/text/Bidi;->impAct2:[S

    sget-object v4, Landroid/icu/text/Bidi;->impAct3:[S

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v0, Landroid/icu/text/Bidi;->impTab_INVERSE_LIKE_DIRECT_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v1, Landroid/icu/text/Bidi;->impTabL_NUMBERS_SPECIAL:[[B

    sget-object v2, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT:[[B

    sget-object v3, Landroid/icu/text/Bidi;->impAct0:[S

    sget-object v4, Landroid/icu/text/Bidi;->impAct1:[S

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v0, Landroid/icu/text/Bidi;->impTab_INVERSE_FOR_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;

    const/4 v0, 0x5

    new-array v0, v0, [[B

    new-array v1, v5, [B

    fill-array-data v1, :array_5a

    aput-object v1, v0, v7

    new-array v1, v5, [B

    fill-array-data v1, :array_5b

    aput-object v1, v0, v6

    new-array v1, v5, [B

    fill-array-data v1, :array_5c

    aput-object v1, v0, v8

    new-array v1, v5, [B

    fill-array-data v1, :array_5d

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, v5, [B

    fill-array-data v1, :array_5e

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/Bidi;->impTabL_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:[[B

    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v1, Landroid/icu/text/Bidi;->impTabL_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:[[B

    sget-object v2, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    sget-object v3, Landroid/icu/text/Bidi;->impAct2:[S

    sget-object v4, Landroid/icu/text/Bidi;->impAct3:[S

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v0, Landroid/icu/text/Bidi;->impTab_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x7s
        0x8s
        0x3s
        0x9s
        0x6s
        0x5s
        0x4s
        0x4s
        0xas
        0xas
        0xcs
        0xas
        0xas
        0xas
        0xbs
        0xas
        0x4s
        0x4s
        0x4s
        0x4s
        0xds
        0xes
    .end array-data

    nop

    :array_1
    .array-data 2
        0x1s
        0x2s
        0x4s
        0x5s
        0x7s
        0xfs
        0x11s
        0x7s
        0x9s
        0x7s
        0x0s
        0x7s
        0x3s
        0x12s
        0x15s
        0x4s
    .end array-data

    :array_2
    .array-data 2
        0x1s
        0x22s
        0x24s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x29s
        0x27s
        0x1s
        0x1s
        0x23s
        0x32s
        0x35s
        0x0s
    .end array-data

    :array_3
    .array-data 2
        0x21s
        0x2s
        0x24s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x29s
        0x27s
        0x2s
        0x2s
        0x23s
        0x32s
        0x35s
        0x1s
    .end array-data

    :array_4
    .array-data 2
        0x21s
        0x22s
        0x26s
        0x26s
        0x28s
        0x30s
        0x31s
        0x28s
        0x28s
        0x28s
        0x3s
        0x3s
        0x3s
        0x32s
        0x35s
        0x1s
    .end array-data

    :array_5
    .array-data 2
        0x21s
        0x22s
        0x4s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x4as
        0xbs
        0x4as
        0x4s
        0x4s
        0x23s
        0x12s
        0x15s
        0x2s
    .end array-data

    :array_6
    .array-data 2
        0x21s
        0x22s
        0x24s
        0x5s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x29s
        0x4cs
        0x5s
        0x5s
        0x23s
        0x32s
        0x35s
        0x3s
    .end array-data

    :array_7
    .array-data 2
        0x21s
        0x22s
        0x6s
        0x6s
        0x28s
        0x30s
        0x31s
        0x28s
        0x28s
        0x4ds
        0x6s
        0x6s
        0x23s
        0x12s
        0x15s
        0x3s
    .end array-data

    :array_8
    .array-data 2
        0x21s
        0x22s
        0x24s
        0x25s
        0x7s
        0x2fs
        0x31s
        0x7s
        0x4es
        0x7s
        0x7s
        0x7s
        0x23s
        0x32s
        0x35s
        0x4s
    .end array-data

    :array_9
    .array-data 2
        0x21s
        0x22s
        0x26s
        0x26s
        0x8s
        0x30s
        0x31s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x23s
        0x32s
        0x35s
        0x4s
    .end array-data

    :array_a
    .array-data 2
        0x21s
        0x22s
        0x4s
        0x25s
        0x7s
        0x2fs
        0x31s
        0x7s
        0x9s
        0x7s
        0x9s
        0x9s
        0x23s
        0x12s
        0x15s
        0x4s
    .end array-data

    :array_b
    .array-data 2
        0x61s
        0x62s
        0x4s
        0x65s
        0x87s
        0x6fs
        0x71s
        0x87s
        0x8es
        0x87s
        0xas
        0x87s
        0x63s
        0x12s
        0x15s
        0x2s
    .end array-data

    :array_c
    .array-data 2
        0x21s
        0x22s
        0x4s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0xbs
        0x27s
        0xbs
        0xbs
        0x23s
        0x12s
        0x15s
        0x2s
    .end array-data

    :array_d
    .array-data 2
        0x61s
        0x62s
        0x64s
        0x5s
        0x87s
        0x6fs
        0x71s
        0x87s
        0x8es
        0x87s
        0xcs
        0x87s
        0x63s
        0x72s
        0x75s
        0x3s
    .end array-data

    :array_e
    .array-data 2
        0x61s
        0x62s
        0x6s
        0x6s
        0x88s
        0x70s
        0x71s
        0x88s
        0x88s
        0x88s
        0xds
        0x88s
        0x63s
        0x12s
        0x15s
        0x3s
    .end array-data

    :array_f
    .array-data 2
        0x21s
        0x22s
        0x84s
        0x25s
        0x7s
        0x2fs
        0x31s
        0x7s
        0xes
        0x7s
        0xes
        0xes
        0x23s
        0x92s
        0x95s
        0x4s
    .end array-data

    :array_10
    .array-data 2
        0x21s
        0x22s
        0x24s
        0x25s
        0x27s
        0xfs
        0x31s
        0x27s
        0x29s
        0x27s
        0xfs
        0x27s
        0x23s
        0x32s
        0x35s
        0x5s
    .end array-data

    :array_11
    .array-data 2
        0x21s
        0x22s
        0x26s
        0x26s
        0x28s
        0x10s
        0x31s
        0x28s
        0x28s
        0x28s
        0x10s
        0x28s
        0x23s
        0x32s
        0x35s
        0x5s
    .end array-data

    :array_12
    .array-data 2
        0x21s
        0x22s
        0x24s
        0x25s
        0x27s
        0x2fs
        0x11s
        0x27s
        0x29s
        0x27s
        0x11s
        0x27s
        0x23s
        0x32s
        0x35s
        0x6s
    .end array-data

    :array_13
    .array-data 2
        0x21s
        0x22s
        0x12s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x53s
        0x14s
        0x53s
        0x12s
        0x12s
        0x23s
        0x12s
        0x15s
        0x0s
    .end array-data

    :array_14
    .array-data 2
        0x61s
        0x62s
        0x12s
        0x65s
        0x87s
        0x6fs
        0x71s
        0x87s
        0x8es
        0x87s
        0x13s
        0x87s
        0x63s
        0x12s
        0x15s
        0x0s
    .end array-data

    :array_15
    .array-data 2
        0x21s
        0x22s
        0x12s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x14s
        0x27s
        0x14s
        0x14s
        0x23s
        0x12s
        0x15s
        0x0s
    .end array-data

    :array_16
    .array-data 2
        0x21s
        0x22s
        0x15s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x56s
        0x17s
        0x56s
        0x15s
        0x15s
        0x23s
        0x12s
        0x15s
        0x3s
    .end array-data

    :array_17
    .array-data 2
        0x61s
        0x62s
        0x15s
        0x65s
        0x87s
        0x6fs
        0x71s
        0x87s
        0x8es
        0x87s
        0x16s
        0x87s
        0x63s
        0x12s
        0x15s
        0x3s
    .end array-data

    :array_18
    .array-data 2
        0x21s
        0x22s
        0x15s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x17s
        0x27s
        0x17s
        0x17s
        0x23s
        0x12s
        0x15s
        0x3s
    .end array-data

    :array_19
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1a
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x3t
        0x14t
        0x14t
        0x0t
        0x1t
    .end array-data

    :array_1b
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x2t
        0x15t
        0x15t
        0x0t
        0x2t
    .end array-data

    :array_1c
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x3t
        0x14t
        0x14t
        0x0t
        0x2t
    .end array-data

    :array_1d
    .array-data 1
        0x0t
        0x21t
        0x33t
        0x33t
        0x4t
        0x4t
        0x0t
        0x0t
    .end array-data

    :array_1e
    .array-data 1
        0x0t
        0x21t
        0x0t
        0x32t
        0x5t
        0x5t
        0x0t
        0x0t
    .end array-data

    :array_1f
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_20
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x3t
        0x14t
        0x14t
        0x0t
        0x1t
    .end array-data

    :array_21
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_22
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x3t
        0x5t
        0x5t
        0x0t
        0x1t
    .end array-data

    :array_23
    .array-data 1
        0x21t
        0x0t
        0x21t
        0x3t
        0x4t
        0x4t
        0x0t
        0x0t
    .end array-data

    :array_24
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x3t
        0x5t
        0x5t
        0x0t
        0x0t
    .end array-data

    :array_25
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
    .end array-data

    nop

    :array_26
    .array-data 1
        0x0t
        0x2t
        0x11t
        0x11t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_27
    .array-data 1
        0x0t
        0x42t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_28
    .array-data 1
        0x0t
        0x2t
        0x4t
        0x4t
        0x13t
        0x13t
        0x0t
        0x1t
    .end array-data

    :array_29
    .array-data 1
        0x0t
        0x22t
        0x34t
        0x34t
        0x3t
        0x3t
        0x0t
        0x0t
    .end array-data

    :array_2a
    .array-data 1
        0x0t
        0x2t
        0x4t
        0x4t
        0x13t
        0x13t
        0x0t
        0x2t
    .end array-data

    :array_2b
    .array-data 1
        0x0t
        0x3t
        0x11t
        0x11t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2c
    .array-data 1
        0x20t
        0x3t
        0x1t
        0x1t
        0x2t
        0x20t
        0x20t
        0x2t
    .end array-data

    :array_2d
    .array-data 1
        0x20t
        0x3t
        0x1t
        0x1t
        0x2t
        0x20t
        0x20t
        0x1t
    .end array-data

    :array_2e
    .array-data 1
        0x0t
        0x3t
        0x5t
        0x5t
        0x14t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_2f
    .array-data 1
        0x20t
        0x3t
        0x5t
        0x5t
        0x4t
        0x20t
        0x20t
        0x1t
    .end array-data

    :array_30
    .array-data 1
        0x0t
        0x3t
        0x5t
        0x5t
        0x14t
        0x0t
        0x0t
        0x2t
    .end array-data

    :array_31
    .array-data 1
        0x2t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_32
    .array-data 1
        0x2t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_33
    .array-data 1
        0x2t
        0x0t
        0x14t
        0x14t
        0x13t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_34
    .array-data 1
        0x22t
        0x0t
        0x4t
        0x4t
        0x3t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_35
    .array-data 1
        0x22t
        0x0t
        0x4t
        0x4t
        0x3t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_36
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_37
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x14t
        0x14t
        0x0t
        0x1t
    .end array-data

    :array_38
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x15t
        0x15t
        0x0t
        0x2t
    .end array-data

    :array_39
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x14t
        0x14t
        0x0t
        0x2t
    .end array-data

    :array_3a
    .array-data 1
        0x20t
        0x1t
        0x20t
        0x20t
        0x4t
        0x4t
        0x20t
        0x1t
    .end array-data

    :array_3b
    .array-data 1
        0x20t
        0x1t
        0x20t
        0x20t
        0x5t
        0x5t
        0x20t
        0x1t
    .end array-data

    :array_3c
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3d
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x14t
        0x14t
        0x0t
        0x1t
    .end array-data

    :array_3e
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_3f
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x1t
    .end array-data

    :array_40
    .array-data 1
        0x21t
        0x0t
        0x21t
        0x21t
        0x4t
        0x4t
        0x0t
        0x0t
    .end array-data

    :array_41
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x0t
    .end array-data

    :array_42
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_43
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x2t
        0x13t
        0x13t
        0x0t
        0x1t
    .end array-data

    :array_44
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_45
    .array-data 1
        0x21t
        0x30t
        0x6t
        0x4t
        0x3t
        0x3t
        0x30t
        0x0t
    .end array-data

    :array_46
    .array-data 1
        0x21t
        0x30t
        0x6t
        0x4t
        0x5t
        0x5t
        0x30t
        0x3t
    .end array-data

    :array_47
    .array-data 1
        0x21t
        0x30t
        0x6t
        0x4t
        0x5t
        0x5t
        0x30t
        0x2t
    .end array-data

    :array_48
    .array-data 1
        0x21t
        0x30t
        0x6t
        0x4t
        0x3t
        0x3t
        0x30t
        0x1t
    .end array-data

    :array_49
    .array-data 2
        0x0s
        0x1s
        0xds
        0xes
    .end array-data

    :array_4a
    .array-data 1
        0x0t
        0x63t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4b
    .array-data 1
        0x0t
        0x63t
        0x0t
        0x1t
        0x12t
        0x30t
        0x0t
        0x4t
    .end array-data

    :array_4c
    .array-data 1
        0x20t
        0x63t
        0x20t
        0x1t
        0x2t
        0x30t
        0x20t
        0x3t
    .end array-data

    :array_4d
    .array-data 1
        0x0t
        0x63t
        0x55t
        0x56t
        0x14t
        0x30t
        0x0t
        0x3t
    .end array-data

    :array_4e
    .array-data 1
        0x30t
        0x43t
        0x55t
        0x56t
        0x4t
        0x30t
        0x30t
        0x3t
    .end array-data

    :array_4f
    .array-data 1
        0x30t
        0x43t
        0x5t
        0x56t
        0x14t
        0x30t
        0x30t
        0x4t
    .end array-data

    :array_50
    .array-data 1
        0x30t
        0x43t
        0x55t
        0x6t
        0x14t
        0x30t
        0x30t
        0x4t
    .end array-data

    :array_51
    .array-data 1
        0x13t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_52
    .array-data 1
        0x23t
        0x0t
        0x1t
        0x1t
        0x2t
        0x40t
        0x0t
        0x1t
    .end array-data

    :array_53
    .array-data 1
        0x23t
        0x0t
        0x1t
        0x1t
        0x2t
        0x40t
        0x0t
        0x0t
    .end array-data

    :array_54
    .array-data 1
        0x3t
        0x0t
        0x3t
        0x36t
        0x14t
        0x40t
        0x0t
        0x1t
    .end array-data

    :array_55
    .array-data 1
        0x53t
        0x40t
        0x5t
        0x36t
        0x4t
        0x40t
        0x40t
        0x0t
    .end array-data

    :array_56
    .array-data 1
        0x53t
        0x40t
        0x5t
        0x36t
        0x4t
        0x40t
        0x40t
        0x1t
    .end array-data

    :array_57
    .array-data 1
        0x53t
        0x40t
        0x6t
        0x6t
        0x4t
        0x40t
        0x40t
        0x3t
    .end array-data

    :array_58
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x5s
        0x6s
        0x7s
        0x8s
    .end array-data

    nop

    :array_59
    .array-data 2
        0x0s
        0x1s
        0x9s
        0xas
        0xbs
        0xcs
    .end array-data

    :array_5a
    .array-data 1
        0x0t
        0x62t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_5b
    .array-data 1
        0x0t
        0x62t
        0x1t
        0x1t
        0x0t
        0x30t
        0x0t
        0x4t
    .end array-data

    :array_5c
    .array-data 1
        0x0t
        0x62t
        0x54t
        0x54t
        0x13t
        0x30t
        0x0t
        0x3t
    .end array-data

    :array_5d
    .array-data 1
        0x30t
        0x42t
        0x54t
        0x54t
        0x3t
        0x30t
        0x30t
        0x3t
    .end array-data

    :array_5e
    .array-data 1
        0x30t
        0x42t
        0x4t
        0x4t
        0x13t
        0x30t
        0x30t
        0x4t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/icu/text/Bidi;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    const/16 v1, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [B

    iput-object v0, p0, Landroid/icu/text/Bidi;->dirPropsMemory:[B

    new-array v0, v3, [B

    iput-object v0, p0, Landroid/icu/text/Bidi;->levelsMemory:[B

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    new-array v0, v1, [B

    iput-object v0, p0, Landroid/icu/text/Bidi;->paras_level:[B

    new-array v0, v2, [Landroid/icu/text/BidiRun;

    iput-object v0, p0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    new-array v0, v3, [Landroid/icu/text/BidiRun;

    new-instance v1, Landroid/icu/text/BidiRun;

    invoke-direct {v1}, Landroid/icu/text/BidiRun;-><init>()V

    aput-object v1, v0, v2

    iput-object v0, p0, Landroid/icu/text/Bidi;->simpleRuns:[Landroid/icu/text/BidiRun;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/Bidi;->customClassifier:Landroid/icu/text/BidiClassifier;

    new-instance v0, Landroid/icu/text/Bidi$InsertPoints;

    invoke-direct {v0}, Landroid/icu/text/Bidi$InsertPoints;-><init>()V

    iput-object v0, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    iput-object v0, p0, Landroid/icu/text/Bidi;->bdp:Landroid/icu/impl/UBiDiProps;

    if-lez p1, :cond_3

    invoke-direct {p0, p1}, Landroid/icu/text/Bidi;->getInitialDirPropsMemory(I)V

    invoke-direct {p0, p1}, Landroid/icu/text/Bidi;->getInitialLevelsMemory(I)V

    :goto_0
    if-lez p2, :cond_4

    if-le p2, v3, :cond_2

    invoke-direct {p0, p2}, Landroid/icu/text/Bidi;->getInitialRunsMemory(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iput-boolean v3, p0, Landroid/icu/text/Bidi;->mayAllocateText:Z

    goto :goto_0

    :cond_4
    iput-boolean v3, p0, Landroid/icu/text/Bidi;->mayAllocateRuns:Z

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move v4, v2

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/Bidi;-><init>()V

    invoke-virtual {p0, p1}, Landroid/icu/text/Bidi;->setPara(Ljava/text/AttributedCharacterIterator;)V

    return-void
.end method

.method public constructor <init>([CI[BIII)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/icu/text/Bidi;-><init>()V

    sparse-switch p6, :sswitch_data_0

    const/4 v3, 0x0

    :goto_0
    if-nez p3, :cond_1

    const/4 v2, 0x0

    :cond_0
    if-nez p2, :cond_4

    if-nez p4, :cond_4

    array-length v5, p1

    if-ne p5, v5, :cond_4

    invoke-virtual {p0, p1, v3, v2}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    :goto_1
    return-void

    :sswitch_0
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_1
    const/16 v3, 0x7e

    goto :goto_0

    :sswitch_2
    const/16 v3, 0x7f

    goto :goto_0

    :cond_1
    new-array v2, p5, [B

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p5, :cond_0

    add-int v5, v0, p4

    aget-byte v1, p3, v5

    if-gez v1, :cond_3

    neg-int v5, v1

    or-int/lit8 v5, v5, -0x80

    int-to-byte v1, v5

    :cond_2
    :goto_3
    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-nez v1, :cond_2

    move v1, v3

    const/16 v5, 0x7d

    if-le v3, v5, :cond_2

    and-int/lit8 v5, v1, 0x1

    int-to-byte v1, v5

    goto :goto_3

    :cond_4
    new-array v4, p5, [C

    invoke-static {p1, p2, v4, v6, p5}, Ljava/lang/System;->arraycopy([CI[CII)V

    invoke-virtual {p0, v4, v3, v2}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7e -> :sswitch_1
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method static final DirFromStrong(B)B
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static DirPropFlag(B)I
    .locals 1

    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method static final DirPropFlagE(B)I
    .locals 2

    sget-object v0, Landroid/icu/text/Bidi;->DirPropFlagE:[I

    and-int/lit8 v1, p0, 0x1

    aget v0, v0, v1

    return v0
.end method

.method static final DirPropFlagLR(B)I
    .locals 2

    sget-object v0, Landroid/icu/text/Bidi;->DirPropFlagLR:[I

    and-int/lit8 v1, p0, 0x1

    aget v0, v0, v1

    return v0
.end method

.method static final DirPropFlagO(B)I
    .locals 2

    sget-object v0, Landroid/icu/text/Bidi;->DirPropFlagO:[I

    and-int/lit8 v1, p0, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private static GetAction(B)S
    .locals 1

    shr-int/lit8 v0, p0, 0x4

    int-to-short v0, v0

    return v0
.end method

.method private static GetActionProps(S)S
    .locals 1

    shr-int/lit8 v0, p0, 0x5

    int-to-short v0, v0

    return v0
.end method

.method static GetLRFromLevel(B)B
    .locals 1

    and-int/lit8 v0, p0, 0x1

    int-to-byte v0, v0

    return v0
.end method

.method private static GetState(B)S
    .locals 1

    and-int/lit8 v0, p0, 0xf

    int-to-short v0, v0

    return v0
.end method

.method private static GetStateProps(S)S
    .locals 1

    and-int/lit8 v0, p0, 0x1f

    int-to-short v0, v0

    return v0
.end method

.method static IsBidiControlChar(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    and-int/lit8 v2, p0, -0x4

    const/16 v3, 0x200c

    if-eq v2, v3, :cond_0

    const/16 v2, 0x202a

    if-lt p0, v2, :cond_1

    const/16 v2, 0x202e

    if-gt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x2066

    if-lt p0, v2, :cond_2

    const/16 v2, 0x2069

    if-le p0, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static IsDefaultLevel(B)Z
    .locals 2

    and-int/lit8 v0, p0, 0x7e

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final NoOverride(B)B
    .locals 1

    and-int/lit8 v0, p0, 0x7f

    int-to-byte v0, v0

    return v0
.end method

.method private addPoint(II)V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Landroid/icu/text/Bidi$Point;

    invoke-direct {v1}, Landroid/icu/text/Bidi$Point;-><init>()V

    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v3, v3, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    array-length v0, v3

    if-nez v0, :cond_0

    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    const/16 v4, 0xa

    new-array v4, v4, [Landroid/icu/text/Bidi$Point;

    iput-object v4, v3, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    const/16 v0, 0xa

    :cond_0
    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v3, v3, Landroid/icu/text/Bidi$InsertPoints;->size:I

    if-lt v3, v0, :cond_1

    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v2, v3, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    mul-int/lit8 v4, v0, 0x2

    new-array v4, v4, [Landroid/icu/text/Bidi$Point;

    iput-object v4, v3, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v3, v3, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    invoke-static {v2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput p1, v1, Landroid/icu/text/Bidi$Point;->pos:I

    iput p2, v1, Landroid/icu/text/Bidi$Point;->flag:I

    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v3, v3, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    iget-object v4, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v4, v4, Landroid/icu/text/Bidi$InsertPoints;->size:I

    aput-object v1, v3, v4

    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v4, v3, Landroid/icu/text/Bidi$InsertPoints;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/icu/text/Bidi$InsertPoints;->size:I

    return-void
.end method

.method private adjustWSLevels()V
    .locals 7

    const/4 v6, 0x7

    const/4 v5, 0x0

    iget v2, p0, Landroid/icu/text/Bidi;->flags:I

    sget v3, Landroid/icu/text/Bidi;->MASK_WS:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    iget v1, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    :cond_0
    :goto_0
    if-lez v1, :cond_5

    :goto_1
    if-lez v1, :cond_2

    iget-object v2, p0, Landroid/icu/text/Bidi;->dirProps:[B

    add-int/lit8 v1, v1, -0x1

    aget-byte v2, v2, v1

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v0

    sget v2, Landroid/icu/text/Bidi;->MASK_WS:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    if-eqz v2, :cond_1

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v5, v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v3

    aput-byte v3, v2, v1

    goto :goto_1

    :cond_2
    :goto_2
    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/icu/text/Bidi;->dirProps:[B

    add-int/lit8 v1, v1, -0x1

    aget-byte v2, v2, v1

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v0

    sget v2, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    iget-object v3, p0, Landroid/icu/text/Bidi;->levels:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    aput-byte v3, v2, v1

    goto :goto_2

    :cond_3
    iget-boolean v2, p0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    if-eqz v2, :cond_4

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    and-int/2addr v2, v0

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v5, v2, v1

    goto :goto_0

    :cond_4
    sget v2, Landroid/icu/text/Bidi;->MASK_B_S:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v3

    aput-byte v3, v2, v1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private bracketAddOpening(Landroid/icu/text/Bidi$BracketData;CI)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v6, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v2, v5, v6

    iget-short v5, v2, Landroid/icu/text/Bidi$IsoRun;->limit:S

    iget-object v6, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    array-length v6, v6

    if-lt v5, v6, :cond_0

    iget-object v4, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    :try_start_0
    iget-object v5, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    array-length v0, v5

    mul-int/lit8 v5, v0, 0x2

    new-array v5, v5, [Landroid/icu/text/Bidi$Opening;

    iput-object v5, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    invoke-static {v4, v7, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v5, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    iget-short v6, v2, Landroid/icu/text/Bidi$IsoRun;->limit:S

    aget-object v3, v5, v6

    if-nez v3, :cond_1

    new-instance v3, Landroid/icu/text/Bidi$Opening;

    invoke-direct {v3}, Landroid/icu/text/Bidi$Opening;-><init>()V

    iget-object v5, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    iget-short v6, v2, Landroid/icu/text/Bidi$IsoRun;->limit:S

    aput-object v3, v5, v6

    :cond_1
    iput p3, v3, Landroid/icu/text/Bidi$Opening;->position:I

    iput p2, v3, Landroid/icu/text/Bidi$Opening;->match:I

    iget-byte v5, v2, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    iput-byte v5, v3, Landroid/icu/text/Bidi$Opening;->contextDir:B

    iget v5, v2, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    iput v5, v3, Landroid/icu/text/Bidi$Opening;->contextPos:I

    iput-short v7, v3, Landroid/icu/text/Bidi$Opening;->flags:S

    iget-short v5, v2, Landroid/icu/text/Bidi$IsoRun;->limit:S

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    iput-short v5, v2, Landroid/icu/text/Bidi$IsoRun;->limit:S

    return-void

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/OutOfMemoryError;

    const-string/jumbo v6, "Failed to allocate memory for openings"

    invoke-direct {v5, v6}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private bracketInit(Landroid/icu/text/Bidi$BracketData;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    new-instance v3, Landroid/icu/text/Bidi$IsoRun;

    invoke-direct {v3}, Landroid/icu/text/Bidi$IsoRun;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v2, v2, v1

    iput-short v1, v2, Landroid/icu/text/Bidi$IsoRun;->start:S

    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v2, v2, v1

    iput-short v1, v2, Landroid/icu/text/Bidi$IsoRun;->limit:S

    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v2, v2, v1

    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v3

    iput-byte v3, v2, Landroid/icu/text/Bidi$IsoRun;->level:B

    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v2, v2, v1

    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v3

    and-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    iget-object v4, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v4, v4, v1

    iput-byte v3, v4, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    iget-object v4, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v4, v4, v1

    iput-byte v3, v4, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    iput-byte v3, v2, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v2, v2, v1

    iput v1, v2, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    const/16 v2, 0x14

    new-array v2, v2, [Landroid/icu/text/Bidi$Opening;

    iput-object v2, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    iget v2, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    if-eq v2, v0, :cond_0

    iget v2, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p1, Landroid/icu/text/Bidi$BracketData;->isNumbersSpecial:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private bracketProcessB(Landroid/icu/text/Bidi$BracketData;B)V
    .locals 4

    const/4 v3, 0x0

    iput v3, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v0, v0, v3

    iput-short v3, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v0, v0, v3

    iput-byte p2, v0, Landroid/icu/text/Bidi$IsoRun;->level:B

    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v0, v0, v3

    and-int/lit8 v1, p2, 0x1

    int-to-byte v1, v1

    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v2, v2, v3

    iput-byte v1, v2, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v2, v2, v3

    iput-byte v1, v2, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v0, v0, v3

    iput v3, v0, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    return-void
.end method

.method private bracketProcessBoundary(Landroid/icu/text/Bidi$BracketData;IBB)V
    .locals 3

    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v0, v1, v2

    iget-object v1, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v1, v1, p2

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    sget v2, Landroid/icu/text/Bidi;->MASK_ISO:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {p4}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v1

    invoke-static {p3}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v2

    if-le v1, v2, :cond_1

    move p3, p4

    :cond_1
    iget-short v1, v0, Landroid/icu/text/Bidi$IsoRun;->start:S

    iput-short v1, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    iput-byte p4, v0, Landroid/icu/text/Bidi$IsoRun;->level:B

    and-int/lit8 v1, p3, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    iput p2, v0, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    return-void
.end method

.method private bracketProcessChar(Landroid/icu/text/Bidi$BracketData;I)V
    .locals 12

    iget-object v9, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v10, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v8, v9, v10

    iget-object v9, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v1, v9, p2

    const/16 v9, 0xa

    if-ne v1, v9, :cond_3

    iget-object v9, p0, Landroid/icu/text/Bidi;->text:[C

    aget-char v0, v9, p2

    iget-short v9, v8, Landroid/icu/text/Bidi$IsoRun;->limit:S

    add-int/lit8 v4, v9, -0x1

    :goto_0
    iget-short v9, v8, Landroid/icu/text/Bidi$IsoRun;->start:S

    if-lt v4, v9, :cond_1

    iget-object v9, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v9, v9, v4

    iget v9, v9, Landroid/icu/text/Bidi$Opening;->match:I

    if-eq v9, v0, :cond_0

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v4, p2}, Landroid/icu/text/Bidi;->bracketProcessClosing(Landroid/icu/text/Bidi$BracketData;II)B

    move-result v7

    const/16 v9, 0xa

    if-ne v7, v9, :cond_8

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_b

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getBidiPairedBracket(I)I

    move-result v9

    int-to-char v6, v9

    :goto_1
    if-eq v6, v0, :cond_3

    const/16 v9, 0x1015

    invoke-static {v0, v9}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    const/16 v9, 0x232a

    if-ne v6, v9, :cond_c

    const/16 v9, 0x3009

    invoke-direct {p0, p1, v9, p2}, Landroid/icu/text/Bidi;->bracketAddOpening(Landroid/icu/text/Bidi$BracketData;CI)V

    :cond_2
    :goto_2
    invoke-direct {p0, p1, v6, p2}, Landroid/icu/text/Bidi;->bracketAddOpening(Landroid/icu/text/Bidi$BracketData;CI)V

    :cond_3
    iget-object v9, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v5, v9, p2

    and-int/lit8 v9, v5, -0x80

    if-eqz v9, :cond_d

    and-int/lit8 v9, v5, 0x1

    int-to-byte v7, v9

    const/16 v9, 0x8

    if-eq v1, v9, :cond_4

    const/16 v9, 0x9

    if-eq v1, v9, :cond_4

    const/16 v9, 0xa

    if-eq v1, v9, :cond_4

    iget-object v9, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte v7, v9, p2

    :cond_4
    iput-byte v7, v8, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    iput-byte v7, v8, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    iput-byte v7, v8, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    iput p2, v8, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    :cond_5
    :goto_3
    const/4 v9, 0x1

    if-le v7, v9, :cond_6

    const/16 v9, 0xd

    if-ne v7, v9, :cond_16

    :cond_6
    invoke-static {v7}, Landroid/icu/text/Bidi;->DirFromStrong(B)B

    move-result v9

    invoke-static {v9}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v9

    int-to-short v2, v9

    iget-short v3, v8, Landroid/icu/text/Bidi$IsoRun;->start:S

    :goto_4
    iget-short v9, v8, Landroid/icu/text/Bidi$IsoRun;->limit:S

    if-ge v3, v9, :cond_16

    iget-object v9, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v9, v9, v3

    iget v9, v9, Landroid/icu/text/Bidi$Opening;->position:I

    if-le p2, v9, :cond_7

    iget-object v9, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v9, v9, v3

    iget-short v10, v9, Landroid/icu/text/Bidi$Opening;->flags:S

    or-int/2addr v10, v2

    int-to-short v10, v10

    iput-short v10, v9, Landroid/icu/text/Bidi$Opening;->flags:S

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    const/16 v9, 0xa

    iput-byte v9, v8, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    iput-byte v7, v8, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    iput p2, v8, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    iget-object v9, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v5, v9, p2

    and-int/lit8 v9, v5, -0x80

    if-eqz v9, :cond_a

    and-int/lit8 v9, v5, 0x1

    int-to-byte v7, v9

    iput-byte v7, v8, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    invoke-static {v7}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v9

    int-to-short v2, v9

    iget-short v3, v8, Landroid/icu/text/Bidi$IsoRun;->start:S

    :goto_5
    if-ge v3, v4, :cond_9

    iget-object v9, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v9, v9, v3

    iget-short v10, v9, Landroid/icu/text/Bidi$Opening;->flags:S

    or-int/2addr v10, v2

    int-to-short v10, v10

    iput-short v10, v9, Landroid/icu/text/Bidi$Opening;->flags:S

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    iget-object v9, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v10, v9, p2

    and-int/lit8 v10, v10, 0x7f

    int-to-byte v10, v10

    aput-byte v10, v9, p2

    :cond_a
    iget-object v9, p0, Landroid/icu/text/Bidi;->levels:[B

    iget-object v10, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/icu/text/Bidi$Opening;->position:I

    aget-byte v11, v9, v10

    and-int/lit8 v11, v11, 0x7f

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    return-void

    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_c
    const/16 v9, 0x3009

    if-ne v6, v9, :cond_2

    const/16 v9, 0x232a

    invoke-direct {p0, p1, v9, p2}, Landroid/icu/text/Bidi;->bracketAddOpening(Landroid/icu/text/Bidi$BracketData;CI)V

    goto/16 :goto_2

    :cond_d
    const/4 v9, 0x1

    if-le v1, v9, :cond_e

    const/16 v9, 0xd

    if-ne v1, v9, :cond_f

    :cond_e
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirFromStrong(B)B

    move-result v7

    iput-byte v1, v8, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    iput-byte v1, v8, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    iput-byte v7, v8, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    iput p2, v8, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    goto/16 :goto_3

    :cond_f
    const/4 v9, 0x2

    if-ne v1, v9, :cond_13

    const/4 v9, 0x2

    iput-byte v9, v8, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    iget-byte v9, v8, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    if-nez v9, :cond_11

    const/4 v7, 0x0

    iget-boolean v9, p1, Landroid/icu/text/Bidi$BracketData;->isNumbersSpecial:Z

    if-nez v9, :cond_10

    iget-object v9, p0, Landroid/icu/text/Bidi;->dirProps:[B

    const/16 v10, 0x17

    aput-byte v10, v9, p2

    :cond_10
    const/4 v9, 0x0

    iput-byte v9, v8, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    iput p2, v8, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    goto/16 :goto_3

    :cond_11
    const/4 v7, 0x1

    iget-byte v9, v8, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    const/16 v10, 0xd

    if-ne v9, v10, :cond_12

    iget-object v9, p0, Landroid/icu/text/Bidi;->dirProps:[B

    const/4 v10, 0x5

    aput-byte v10, v9, p2

    :goto_6
    const/4 v9, 0x1

    iput-byte v9, v8, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    iput p2, v8, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    goto/16 :goto_3

    :cond_12
    iget-object v9, p0, Landroid/icu/text/Bidi;->dirProps:[B

    const/16 v10, 0x18

    aput-byte v10, v9, p2

    goto :goto_6

    :cond_13
    const/4 v9, 0x5

    if-ne v1, v9, :cond_14

    const/4 v7, 0x1

    const/4 v9, 0x5

    iput-byte v9, v8, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    const/4 v9, 0x1

    iput-byte v9, v8, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    iput p2, v8, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    goto/16 :goto_3

    :cond_14
    const/16 v9, 0x11

    if-ne v1, v9, :cond_15

    iget-byte v7, v8, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    const/16 v9, 0xa

    if-ne v7, v9, :cond_5

    iget-object v9, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte v7, v9, p2

    goto/16 :goto_3

    :cond_15
    move v7, v1

    iput-byte v1, v8, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    goto/16 :goto_3

    :cond_16
    return-void
.end method

.method private bracketProcessClosing(Landroid/icu/text/Bidi$BracketData;II)B
    .locals 12

    const/4 v11, 0x0

    iget-object v8, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v9, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v4, v8, v9

    iget-object v8, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v5, v8, p2

    iget-byte v8, v4, Landroid/icu/text/Bidi$IsoRun;->level:B

    and-int/lit8 v8, v8, 0x1

    int-to-byte v0, v8

    const/4 v7, 0x1

    if-nez v0, :cond_1

    iget-short v8, v5, Landroid/icu/text/Bidi$Opening;->flags:S

    sget-byte v9, Landroid/icu/text/Bidi;->FOUND_L:B

    and-int/2addr v8, v9

    if-lez v8, :cond_1

    :cond_0
    move v3, v0

    :goto_0
    iget-object v8, p0, Landroid/icu/text/Bidi;->dirProps:[B

    iget v9, v5, Landroid/icu/text/Bidi$Opening;->position:I

    aput-byte v3, v8, v9

    iget-object v8, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte v3, v8, p3

    iget v8, v5, Landroid/icu/text/Bidi$Opening;->position:I

    invoke-direct {p0, p1, p2, v8, v3}, Landroid/icu/text/Bidi;->fixN0c(Landroid/icu/text/Bidi$BracketData;IIB)V

    if-eqz v7, :cond_6

    int-to-short v8, p2

    iput-short v8, v4, Landroid/icu/text/Bidi$IsoRun;->limit:S

    :goto_1
    iget-short v8, v4, Landroid/icu/text/Bidi$IsoRun;->limit:S

    iget-short v9, v4, Landroid/icu/text/Bidi$IsoRun;->start:S

    if-le v8, v9, :cond_8

    iget-object v8, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    iget-short v9, v4, Landroid/icu/text/Bidi$IsoRun;->limit:S

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    iget v8, v8, Landroid/icu/text/Bidi$Opening;->position:I

    iget v9, v5, Landroid/icu/text/Bidi$Opening;->position:I

    if-ne v8, v9, :cond_8

    iget-short v8, v4, Landroid/icu/text/Bidi$IsoRun;->limit:S

    add-int/lit8 v8, v8, -0x1

    int-to-short v8, v8

    iput-short v8, v4, Landroid/icu/text/Bidi$IsoRun;->limit:S

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    if-ne v0, v8, :cond_2

    iget-short v8, v5, Landroid/icu/text/Bidi$Opening;->flags:S

    sget-byte v9, Landroid/icu/text/Bidi;->FOUND_R:B

    and-int/2addr v8, v9

    if-gtz v8, :cond_0

    :cond_2
    iget-short v8, v5, Landroid/icu/text/Bidi$Opening;->flags:S

    sget-byte v9, Landroid/icu/text/Bidi;->FOUND_L:B

    sget-byte v10, Landroid/icu/text/Bidi;->FOUND_R:B

    or-int/2addr v9, v10

    and-int/2addr v8, v9

    if-eqz v8, :cond_5

    iget-short v8, v4, Landroid/icu/text/Bidi$IsoRun;->start:S

    if-ne p2, v8, :cond_3

    const/4 v7, 0x1

    :goto_2
    iget-byte v8, v5, Landroid/icu/text/Bidi$Opening;->contextDir:B

    if-eq v0, v8, :cond_4

    iget-byte v3, v5, Landroid/icu/text/Bidi$Opening;->contextDir:B

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    move v3, v0

    goto :goto_0

    :cond_5
    int-to-short v8, p2

    iput-short v8, v4, Landroid/icu/text/Bidi$IsoRun;->limit:S

    const/16 v8, 0xa

    return v8

    :cond_6
    neg-int v8, p3

    iput v8, v5, Landroid/icu/text/Bidi$Opening;->match:I

    add-int/lit8 v1, p2, -0x1

    :goto_3
    iget-short v8, v4, Landroid/icu/text/Bidi$IsoRun;->start:S

    if-lt v1, v8, :cond_7

    iget-object v8, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v8, v8, v1

    iget v8, v8, Landroid/icu/text/Bidi$Opening;->position:I

    iget v9, v5, Landroid/icu/text/Bidi$Opening;->position:I

    if-ne v8, v9, :cond_7

    iget-object v8, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    add-int/lit8 v2, v1, -0x1

    aget-object v8, v8, v1

    iput v11, v8, Landroid/icu/text/Bidi$Opening;->match:I

    move v1, v2

    goto :goto_3

    :cond_7
    add-int/lit8 v1, p2, 0x1

    :goto_4
    iget-short v8, v4, Landroid/icu/text/Bidi$IsoRun;->limit:S

    if-ge v1, v8, :cond_8

    iget-object v8, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v6, v8, v1

    iget v8, v6, Landroid/icu/text/Bidi$Opening;->position:I

    if-lt v8, p3, :cond_9

    :cond_8
    return v3

    :cond_9
    iget v8, v6, Landroid/icu/text/Bidi$Opening;->match:I

    if-lez v8, :cond_a

    iput v11, v6, Landroid/icu/text/Bidi$Opening;->match:I

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method private bracketProcessLRI_RLI(Landroid/icu/text/Bidi$BracketData;B)V
    .locals 4

    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v3, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v1, v2, v3

    const/16 v2, 0xa

    iput-byte v2, v1, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    iget-short v0, v1, Landroid/icu/text/Bidi$IsoRun;->limit:S

    iget v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v3, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v1, v2, v3

    if-nez v1, :cond_0

    new-instance v1, Landroid/icu/text/Bidi$IsoRun;

    invoke-direct {v1}, Landroid/icu/text/Bidi$IsoRun;-><init>()V

    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v3, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aput-object v1, v2, v3

    :cond_0
    iput-short v0, v1, Landroid/icu/text/Bidi$IsoRun;->limit:S

    iput-short v0, v1, Landroid/icu/text/Bidi$IsoRun;->start:S

    iput-byte p2, v1, Landroid/icu/text/Bidi$IsoRun;->level:B

    and-int/lit8 v2, p2, 0x1

    int-to-byte v2, v2

    iput-byte v2, v1, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    iput-byte v2, v1, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    iput-byte v2, v1, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    const/4 v2, 0x0

    iput v2, v1, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    return-void
.end method

.method private bracketProcessPDI(Landroid/icu/text/Bidi$BracketData;)V
    .locals 3

    iget v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v0, v1, v2

    const/16 v1, 0xa

    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    return-void
.end method

.method private checkExplicitLevels()B
    .locals 8

    const/4 v7, 0x7

    const/4 v4, 0x0

    const/4 v2, 0x0

    iput v4, p0, Landroid/icu/text/Bidi;->flags:I

    iput v4, p0, Landroid/icu/text/Bidi;->isolateCount:I

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Landroid/icu/text/Bidi;->length:I

    if-ge v1, v4, :cond_7

    iget-object v4, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v3, v4, v1

    iget-object v4, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v0, v4, v1

    const/16 v4, 0x14

    if-eq v0, v4, :cond_0

    const/16 v4, 0x15

    if-ne v0, v4, :cond_3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    iget v4, p0, Landroid/icu/text/Bidi;->isolateCount:I

    if-le v2, v4, :cond_1

    iput v2, p0, Landroid/icu/text/Bidi;->isolateCount:I

    :cond_1
    :goto_1
    and-int/lit8 v4, v3, -0x80

    if-eqz v4, :cond_5

    and-int/lit8 v4, v3, 0x7f

    int-to-byte v3, v4

    iget v4, p0, Landroid/icu/text/Bidi;->flags:I

    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlagO(B)I

    move-result v5

    or-int/2addr v4, v5

    iput v4, p0, Landroid/icu/text/Bidi;->flags:I

    :goto_2
    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v4

    if-ge v3, v4, :cond_6

    if-nez v3, :cond_2

    if-eq v0, v7, :cond_6

    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "level "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " out of bounds at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    const/16 v4, 0x16

    if-ne v0, v4, :cond_4

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    if-ne v0, v7, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    iget v4, p0, Landroid/icu/text/Bidi;->flags:I

    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlagE(B)I

    move-result v5

    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v6

    or-int/2addr v5, v6

    or-int/2addr v4, v5

    iput v4, p0, Landroid/icu/text/Bidi;->flags:I

    goto :goto_2

    :cond_6
    const/16 v4, 0x7d

    if-lt v4, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget v4, p0, Landroid/icu/text/Bidi;->flags:I

    sget v5, Landroid/icu/text/Bidi;->MASK_EMBEDDING:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_8

    iget v4, p0, Landroid/icu/text/Bidi;->flags:I

    iget-byte v5, p0, Landroid/icu/text/Bidi;->paraLevel:B

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v5

    or-int/2addr v4, v5

    iput v4, p0, Landroid/icu/text/Bidi;->flags:I

    :cond_8
    invoke-direct {p0}, Landroid/icu/text/Bidi;->directionFromFlags()B

    move-result v4

    return v4
.end method

.method private checkParaCount()V
    .locals 7

    const/4 v6, 0x0

    iget v0, p0, Landroid/icu/text/Bidi;->paraCount:I

    iget-object v5, p0, Landroid/icu/text/Bidi;->paras_level:[B

    array-length v5, v5

    if-gt v0, v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Landroid/icu/text/Bidi;->paras_level:[B

    array-length v2, v5

    iget-object v4, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    iget-object v3, p0, Landroid/icu/text/Bidi;->paras_level:[B

    mul-int/lit8 v5, v0, 0x2

    :try_start_0
    new-array v5, v5, [I

    iput-object v5, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    mul-int/lit8 v5, v0, 0x2

    new-array v5, v5, [B

    iput-object v5, p0, Landroid/icu/text/Bidi;->paras_level:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    invoke-static {v4, v6, v5, v6, v2}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v5, p0, Landroid/icu/text/Bidi;->paras_level:[B

    invoke-static {v3, v6, v5, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/OutOfMemoryError;

    const-string/jumbo v6, "Failed to allocate memory for paras"

    invoke-direct {v5, v6}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private directionFromFlags()B
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/icu/text/Bidi;->flags:I

    sget v1, Landroid/icu/text/Bidi;->MASK_RTL:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Landroid/icu/text/Bidi;->flags:I

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/icu/text/Bidi;->flags:I

    sget v1, Landroid/icu/text/Bidi;->MASK_POSSIBLE_N:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    :cond_0
    return v2

    :cond_1
    iget v0, p0, Landroid/icu/text/Bidi;->flags:I

    sget v1, Landroid/icu/text/Bidi;->MASK_LTR:I

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x2

    return v0
.end method

.method private firstL_R_AL()B
    .locals 5

    const/16 v2, 0xa

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p0, v3}, Landroid/icu/text/Bidi;->getCustomizedClass(I)I

    move-result v4

    int-to-byte v0, v4

    const/16 v4, 0xa

    if-ne v2, v4, :cond_3

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    :cond_1
    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    const/16 v4, 0xd

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_3
    const/4 v4, 0x7

    if-ne v0, v4, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :cond_4
    return v2
.end method

.method private firstL_R_AL_EN_AN()B
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    :cond_0
    iget-object v3, p0, Landroid/icu/text/Bidi;->epilogue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Landroid/icu/text/Bidi;->epilogue:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v2}, Landroid/icu/text/Bidi;->getCustomizedClass(I)I

    move-result v3

    int-to-byte v0, v3

    if-nez v0, :cond_1

    return v4

    :cond_1
    if-eq v0, v5, :cond_2

    const/16 v3, 0xd

    if-ne v0, v3, :cond_3

    :cond_2
    return v5

    :cond_3
    if-ne v0, v6, :cond_4

    return v6

    :cond_4
    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    const/4 v3, 0x3

    return v3

    :cond_5
    const/4 v3, 0x4

    return v3
.end method

.method private fixN0c(Landroid/icu/text/Bidi$BracketData;IIB)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v6, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v3, v5, v6

    add-int/lit8 v1, p2, 0x1

    :goto_0
    iget-short v5, v3, Landroid/icu/text/Bidi$IsoRun;->limit:S

    if-ge v1, v5, :cond_2

    iget-object v5, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v4, v5, v1

    iget v5, v4, Landroid/icu/text/Bidi$Opening;->match:I

    if-ltz v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v5, v4, Landroid/icu/text/Bidi$Opening;->contextPos:I

    if-ge p3, v5, :cond_3

    :cond_2
    return-void

    :cond_3
    iget v5, v4, Landroid/icu/text/Bidi$Opening;->position:I

    if-ge p3, v5, :cond_0

    iget-byte v5, v4, Landroid/icu/text/Bidi$Opening;->contextDir:B

    if-eq p4, v5, :cond_2

    iget v2, v4, Landroid/icu/text/Bidi$Opening;->position:I

    iget-object v5, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte p4, v5, v2

    iget v5, v4, Landroid/icu/text/Bidi$Opening;->match:I

    neg-int v0, v5

    iget-object v5, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte p4, v5, v0

    iput v7, v4, Landroid/icu/text/Bidi$Opening;->match:I

    invoke-direct {p0, p1, v1, v2, p4}, Landroid/icu/text/Bidi;->fixN0c(Landroid/icu/text/Bidi$BracketData;IIB)V

    invoke-direct {p0, p1, v1, v0, p4}, Landroid/icu/text/Bidi;->fixN0c(Landroid/icu/text/Bidi$BracketData;IIB)V

    goto :goto_1
.end method

.method public static getBaseDirection(Ljava/lang/CharSequence;)B
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return v7

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_5

    invoke-static {p0, v2}, Landroid/icu/lang/UCharacter;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getDirectionality(I)B

    move-result v1

    if-nez v1, :cond_2

    return v5

    :cond_2
    if-eq v1, v6, :cond_3

    const/16 v4, 0xd

    if-ne v1, v4, :cond_4

    :cond_3
    return v6

    :cond_4
    invoke-static {p0, v2, v6}, Landroid/icu/lang/UCharacter;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v2

    goto :goto_0

    :cond_5
    return v7
.end method

.method private getDirProps()V
    .locals 21

    const/4 v6, 0x0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/icu/text/Bidi;->IsDefaultLevel(B)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/4 v10, 0x1

    :goto_0
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->lastArabicPos:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x2

    if-eqz v18, :cond_9

    const/4 v14, 0x1

    :goto_1
    const/16 v12, 0xa

    const/16 v18, 0x7e

    move/from16 v0, v18

    new-array v11, v0, [I

    const/16 v18, 0x7e

    move/from16 v0, v18

    new-array v13, v0, [B

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x4

    if-eqz v18, :cond_0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->length:I

    :cond_0
    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-byte v4, v0

    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-byte v4, v18, v19

    move v12, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->firstL_R_AL()B

    move-result v5

    const/16 v18, 0xa

    move/from16 v0, v18

    if-eq v5, v0, :cond_b

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput-byte v19, v18, v20

    :goto_2
    const/16 v16, 0x0

    :goto_3
    const/4 v6, 0x0

    :cond_1
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->originalLength:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_1f

    move v7, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->text:[C

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->originalLength:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2, v6}, Landroid/icu/text/UTF16;->charAt([CIII)I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v18

    add-int v6, v6, v18

    add-int/lit8 v8, v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->getCustomizedClass(I)I

    move-result v18

    move/from16 v0, v18

    int-to-byte v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v18, v0

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v19

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    move-object/from16 v18, v0

    aput-byte v5, v18, v8

    if-le v8, v7, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v18, v0

    const/16 v19, 0x12

    invoke-static/range {v19 .. v19}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v19

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    move-object/from16 v18, v0

    add-int/lit8 v8, v8, -0x1

    const/16 v19, 0x12

    aput-byte v19, v18, v8

    if-gt v8, v7, :cond_2

    :cond_3
    if-eqz v14, :cond_4

    invoke-static/range {v17 .. v17}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v18

    if-eqz v18, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    if-nez v5, :cond_f

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x0

    aput-byte v20, v18, v19

    const/16 v16, 0x0

    :cond_5
    :goto_5
    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_6
    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    aput-byte v19, v18, v20

    goto/16 :goto_2

    :cond_b
    const/16 v16, 0x1

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    move/from16 v19, v0

    const/16 v20, 0x0

    aput-byte v19, v18, v20

    const/16 v16, 0x0

    goto/16 :goto_3

    :cond_d
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/16 v18, 0x7d

    move/from16 v0, v18

    if-gt v15, v0, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v18, v0

    const/16 v19, 0x14

    invoke-static/range {v19 .. v19}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v19

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    :cond_e
    const/16 v16, 0x3

    goto :goto_5

    :cond_f
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_10

    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v5, v0, :cond_14

    :cond_10
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x1

    aput-byte v20, v18, v19

    const/16 v16, 0x0

    :cond_11
    :goto_6
    const/4 v12, 0x1

    const/16 v18, 0xd

    move/from16 v0, v18

    if-ne v5, v0, :cond_1

    add-int/lit8 v18, v6, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->lastArabicPos:I

    goto/16 :goto_4

    :cond_12
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    const/16 v18, 0x7d

    move/from16 v0, v18

    if-gt v15, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    move-object/from16 v18, v0

    aget v19, v11, v15

    const/16 v20, 0x15

    aput-byte v20, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v18, v0

    const/16 v19, 0x15

    invoke-static/range {v19 .. v19}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v19

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    :cond_13
    const/16 v16, 0x3

    goto :goto_6

    :cond_14
    const/16 v18, 0x13

    move/from16 v0, v18

    if-lt v5, v0, :cond_17

    const/16 v18, 0x15

    move/from16 v0, v18

    if-gt v5, v0, :cond_17

    add-int/lit8 v15, v15, 0x1

    const/16 v18, 0x7d

    move/from16 v0, v18

    if-gt v15, v0, :cond_15

    add-int/lit8 v18, v6, -0x1

    aput v18, v11, v15

    aput-byte v16, v13, v15

    :cond_15
    const/16 v18, 0x13

    move/from16 v0, v18

    if-ne v5, v0, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    move-object/from16 v18, v0

    add-int/lit8 v19, v6, -0x1

    const/16 v20, 0x14

    aput-byte v20, v18, v19

    const/16 v16, 0x2

    goto/16 :goto_4

    :cond_16
    const/16 v16, 0x3

    goto/16 :goto_4

    :cond_17
    const/16 v18, 0x16

    move/from16 v0, v18

    if-ne v5, v0, :cond_1a

    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_18

    const/16 v18, 0x7d

    move/from16 v0, v18

    if-gt v15, v0, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v18, v0

    const/16 v19, 0x14

    invoke-static/range {v19 .. v19}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v19

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    :cond_18
    if-ltz v15, :cond_1

    const/16 v18, 0x7d

    move/from16 v0, v18

    if-gt v15, v0, :cond_19

    aget-byte v16, v13, v15

    :cond_19
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_4

    :cond_1a
    const/16 v18, 0x7

    move/from16 v0, v18

    if-ne v5, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->originalLength:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_1b

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->text:[C

    move-object/from16 v18, v0

    aget-char v18, v18, v6

    const/16 v19, 0xa

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aput v6, v18, v19

    if-eqz v10, :cond_1c

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x1

    aput-byte v20, v18, v19

    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x4

    if-eqz v18, :cond_1d

    move-object/from16 v0, p0

    iput v6, v0, Landroid/icu/text/Bidi;->length:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/icu/text/Bidi;->controlCount:I

    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->originalLength:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->paraCount:I

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->checkParaCount()V

    if-eqz v9, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aput-byte v4, v18, v19

    const/16 v16, 0x1

    move v12, v4

    :goto_7
    const/4 v15, -0x1

    goto/16 :goto_4

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    move/from16 v20, v0

    aput-byte v20, v18, v19

    const/16 v16, 0x0

    goto :goto_7

    :cond_1f
    const/16 v18, 0x7d

    move/from16 v0, v18

    if-le v15, v0, :cond_20

    const/16 v15, 0x7d

    const/16 v16, 0x2

    :cond_20
    :goto_8
    if-ltz v15, :cond_21

    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v18, v0

    const/16 v19, 0x14

    invoke-static/range {v19 .. v19}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v19

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x4

    if-eqz v18, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->originalLength:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->paraCount:I

    :cond_22
    :goto_9
    if-eqz v10, :cond_23

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x1

    aput-byte v20, v18, v19

    :cond_23
    if-eqz v9, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-byte v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Landroid/icu/text/Bidi;->paraLevel:B

    :cond_24
    const/4 v6, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    move-object/from16 v19, v0

    aget-byte v19, v19, v6

    invoke-static/range {v19 .. v19}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v19

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_25
    aget-byte v16, v13, v15

    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_8

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->originalLength:I

    move/from16 v20, v0

    aput v20, v18, v19

    move-object/from16 v0, p0

    iput v3, v0, Landroid/icu/text/Bidi;->controlCount:I

    goto :goto_9

    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    move/from16 v18, v0

    if-eqz v18, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v18, v0

    const/16 v19, 0x7

    invoke-static/range {v19 .. v19}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v19

    and-int v18, v18, v19

    if-eqz v18, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v19

    or-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    :cond_28
    return-void
.end method

.method private getDirPropsMemory(ZI)V
    .locals 7

    const-string/jumbo v1, "DirProps"

    iget-object v2, p0, Landroid/icu/text/Bidi;->dirPropsMemory:[B

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/Bidi;->getMemory(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    iput-object v6, p0, Landroid/icu/text/Bidi;->dirPropsMemory:[B

    return-void
.end method

.method private getInitialDirPropsMemory(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getDirPropsMemory(ZI)V

    return-void
.end method

.method private getInitialLevelsMemory(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getLevelsMemory(ZI)V

    return-void
.end method

.method private getInitialRunsMemory(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getRunsMemory(ZI)V

    return-void
.end method

.method private getLevelsMemory(ZI)V
    .locals 7

    const-string/jumbo v1, "Levels"

    iget-object v2, p0, Landroid/icu/text/Bidi;->levelsMemory:[B

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/Bidi;->getMemory(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    iput-object v6, p0, Landroid/icu/text/Bidi;->levelsMemory:[B

    return-void
.end method

.method private getMemory(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;ZI)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ne p5, v1, :cond_0

    return-object p2

    :cond_0
    if-nez p4, :cond_2

    if-gt p5, v1, :cond_1

    return-object p2

    :cond_1
    new-instance v2, Ljava/lang/OutOfMemoryError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to allocate memory for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_0
    invoke-static {p3, p5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/OutOfMemoryError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to allocate memory for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getRunsMemory(ZI)V
    .locals 7

    const-string/jumbo v1, "Runs"

    iget-object v2, p0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    const-class v3, Landroid/icu/text/BidiRun;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/Bidi;->getMemory(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/icu/text/BidiRun;

    iput-object v6, p0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    return-void
.end method

.method public static invertMap([I)[I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/icu/text/BidiLine;->invertMap([I)[I

    move-result-object v0

    return-object v0
.end method

.method private lastL_R_AL()B
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    if-lez v1, :cond_4

    iget-object v3, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointBefore(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0, v2}, Landroid/icu/text/Bidi;->getCustomizedClass(I)I

    move-result v3

    int-to-byte v0, v3

    if-nez v0, :cond_1

    return v4

    :cond_1
    if-eq v0, v5, :cond_2

    const/16 v3, 0xd

    if-ne v0, v3, :cond_3

    :cond_2
    return v5

    :cond_3
    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    return v6

    :cond_4
    return v6
.end method

.method private processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V
    .locals 14

    iget-object v6, p1, Landroid/icu/text/Bidi$LevState;->impTab:[[B

    iget-object v5, p1, Landroid/icu/text/Bidi$LevState;->impAct:[S

    move/from16 v11, p3

    iget-short v10, p1, Landroid/icu/text/Bidi$LevState;->state:S

    aget-object v12, v6, v10

    aget-byte v4, v12, p2

    invoke-static {v4}, Landroid/icu/text/Bidi;->GetState(B)S

    move-result v12

    iput-short v12, p1, Landroid/icu/text/Bidi$LevState;->state:S

    invoke-static {v4}, Landroid/icu/text/Bidi;->GetAction(B)S

    move-result v12

    aget-short v2, v5, v12

    iget-short v12, p1, Landroid/icu/text/Bidi$LevState;->state:S

    aget-object v12, v6, v12

    const/4 v13, 0x7

    aget-byte v3, v12, v13

    if-eqz v2, :cond_0

    packed-switch v2, :pswitch_data_0

    new-instance v12, Ljava/lang/IllegalStateException;

    const-string/jumbo v13, "Internal ICU error in processPropertySeq"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    :pswitch_0
    move/from16 v0, p3

    iput v0, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    :cond_0
    :goto_0
    if-nez v3, :cond_1

    move/from16 v0, p3

    if-ge v0, v11, :cond_14

    :cond_1
    iget-byte v12, p1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    add-int/2addr v12, v3

    int-to-byte v9, v12

    iget v12, p1, Landroid/icu/text/Bidi$LevState;->runStart:I

    move/from16 v0, p3

    if-lt v0, v12, :cond_13

    move/from16 v7, p3

    :goto_1
    move/from16 v0, p4

    if-ge v7, v0, :cond_14

    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v9, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :pswitch_1
    iget v0, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    move/from16 p3, v0

    goto :goto_0

    :pswitch_2
    iget-byte v12, p1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    add-int/lit8 v12, v12, 0x1

    int-to-byte v9, v12

    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    move/from16 v0, p3

    invoke-direct {p0, v12, v0, v9}, Landroid/icu/text/Bidi;->setLevelsOutsideIsolates(IIB)V

    goto :goto_0

    :pswitch_3
    iget-byte v12, p1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    add-int/lit8 v12, v12, 0x2

    int-to-byte v9, v12

    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    move/from16 v0, p3

    invoke-direct {p0, v12, v0, v9}, Landroid/icu/text/Bidi;->setLevelsOutsideIsolates(IIB)V

    goto :goto_0

    :pswitch_4
    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    if-ltz v12, :cond_2

    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Landroid/icu/text/Bidi;->addPoint(II)V

    :cond_2
    const/4 v12, -0x1

    iput v12, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v12, v12, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    array-length v12, v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v12, v12, Landroid/icu/text/Bidi$InsertPoints;->size:I

    iget-object v13, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    if-gt v12, v13, :cond_5

    :cond_3
    const/4 v12, -0x1

    iput v12, p1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    aget-object v12, v6, v10

    const/4 v13, 0x7

    aget-byte v9, v12, v13

    and-int/lit8 v12, v9, 0x1

    if-eqz v12, :cond_4

    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    if-lez v12, :cond_4

    iget v0, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    move/from16 p3, v0

    :cond_4
    const/4 v12, 0x5

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12}, Landroid/icu/text/Bidi;->addPoint(II)V

    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v13, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->size:I

    iput v13, v12, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    goto :goto_0

    :cond_5
    iget v12, p1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    add-int/lit8 v7, v12, 0x1

    :goto_2
    move/from16 v0, p3

    if-ge v7, v0, :cond_6

    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    iget-object v13, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v13, v13, v7

    add-int/lit8 v13, v13, -0x2

    and-int/lit8 v13, v13, -0x2

    int-to-byte v13, v13

    aput-byte v13, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v13, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->size:I

    iput v13, v12, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    const/4 v12, -0x1

    iput v12, p1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    const/4 v12, 0x5

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    const/4 v12, 0x1

    move/from16 v0, p3

    invoke-direct {p0, v0, v12}, Landroid/icu/text/Bidi;->addPoint(II)V

    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v13, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->size:I

    iput v13, v12, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    goto/16 :goto_0

    :pswitch_5
    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v12, v12, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    array-length v12, v12

    if-lez v12, :cond_7

    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v13, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    iput v13, v12, Landroid/icu/text/Bidi$InsertPoints;->size:I

    :cond_7
    const/4 v12, -0x1

    iput v12, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    const/4 v12, -0x1

    iput v12, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    add-int/lit8 v12, p4, -0x1

    iput v12, p1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    goto/16 :goto_0

    :pswitch_6
    const/4 v12, 0x3

    move/from16 v0, p2

    if-ne v0, v12, :cond_a

    iget-object v12, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v12, v12, p3

    const/4 v13, 0x5

    if-ne v12, v13, :cond_a

    iget v12, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v13, 0x6

    if-eq v12, v13, :cond_a

    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_8

    add-int/lit8 v12, p4, -0x1

    iput v12, p1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    goto/16 :goto_0

    :cond_8
    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    if-ltz v12, :cond_9

    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Landroid/icu/text/Bidi;->addPoint(II)V

    const/4 v12, -0x2

    iput v12, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    :cond_9
    const/4 v12, 0x1

    move/from16 v0, p3

    invoke-direct {p0, v0, v12}, Landroid/icu/text/Bidi;->addPoint(II)V

    goto/16 :goto_0

    :cond_a
    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    move/from16 v0, p3

    iput v0, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    goto/16 :goto_0

    :pswitch_7
    add-int/lit8 v12, p4, -0x1

    iput v12, p1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    const/4 v12, -0x1

    iput v12, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    goto/16 :goto_0

    :pswitch_8
    add-int/lit8 v7, p3, -0x1

    :goto_3
    if-ltz v7, :cond_b

    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v12, v12, v7

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_b

    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_b
    if-ltz v7, :cond_c

    const/4 v12, 0x4

    invoke-direct {p0, v7, v12}, Landroid/icu/text/Bidi;->addPoint(II)V

    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v13, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->size:I

    iput v13, v12, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    :cond_c
    move/from16 v0, p3

    iput v0, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    goto/16 :goto_0

    :pswitch_9
    const/4 v12, 0x1

    move/from16 v0, p3

    invoke-direct {p0, v0, v12}, Landroid/icu/text/Bidi;->addPoint(II)V

    const/4 v12, 0x2

    move/from16 v0, p3

    invoke-direct {p0, v0, v12}, Landroid/icu/text/Bidi;->addPoint(II)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v13, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    iput v13, v12, Landroid/icu/text/Bidi$InsertPoints;->size:I

    const/4 v12, 0x5

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    const/4 v12, 0x4

    move/from16 v0, p3

    invoke-direct {p0, v0, v12}, Landroid/icu/text/Bidi;->addPoint(II)V

    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v13, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->size:I

    iput v13, v12, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    goto/16 :goto_0

    :pswitch_b
    iget-byte v12, p1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    add-int/2addr v12, v3

    int-to-byte v9, v12

    iget v7, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    :goto_4
    move/from16 v0, p3

    if-ge v7, v0, :cond_e

    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v12, v12, v7

    if-ge v12, v9, :cond_d

    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v9, v12, v7

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_e
    iget-object v12, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v13, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v13, v13, Landroid/icu/text/Bidi$InsertPoints;->size:I

    iput v13, v12, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    move/from16 v0, p3

    iput v0, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    goto/16 :goto_0

    :pswitch_c
    iget-byte v9, p1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    add-int/lit8 v7, p3, -0x1

    :goto_5
    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    if-lt v7, v12, :cond_0

    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v12, v12, v7

    add-int/lit8 v13, v9, 0x3

    if-ne v12, v13, :cond_10

    :goto_6
    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v12, v12, v7

    add-int/lit8 v13, v9, 0x3

    if-ne v12, v13, :cond_f

    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    add-int/lit8 v8, v7, -0x1

    aget-byte v13, v12, v7

    add-int/lit8 v13, v13, -0x2

    int-to-byte v13, v13

    aput-byte v13, v12, v7

    move v7, v8

    goto :goto_6

    :cond_f
    :goto_7
    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v12, v12, v7

    if-ne v12, v9, :cond_10

    add-int/lit8 v7, v7, -0x1

    goto :goto_7

    :cond_10
    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v12, v12, v7

    add-int/lit8 v13, v9, 0x2

    if-ne v12, v13, :cond_11

    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v9, v12, v7

    :goto_8
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :cond_11
    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    add-int/lit8 v13, v9, 0x1

    int-to-byte v13, v13

    aput-byte v13, v12, v7

    goto :goto_8

    :pswitch_d
    iget-byte v12, p1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    add-int/lit8 v12, v12, 0x1

    int-to-byte v9, v12

    add-int/lit8 v7, p3, -0x1

    :goto_9
    iget v12, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    if-lt v7, v12, :cond_0

    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v12, v12, v7

    if-le v12, v9, :cond_12

    iget-object v12, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v13, v12, v7

    add-int/lit8 v13, v13, -0x2

    int-to-byte v13, v13

    aput-byte v13, v12, v7

    :cond_12
    add-int/lit8 v7, v7, -0x1

    goto :goto_9

    :cond_13
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v0, v1, v9}, Landroid/icu/text/Bidi;->setLevelsOutsideIsolates(IIB)V

    :cond_14
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static reorderLogical([B)[I
    .locals 1

    invoke-static {p0}, Landroid/icu/text/BidiLine;->reorderLogical([B)[I

    move-result-object v0

    return-object v0
.end method

.method public static reorderVisual([B)[I
    .locals 1

    invoke-static {p0}, Landroid/icu/text/BidiLine;->reorderVisual([B)[I

    move-result-object v0

    return-object v0
.end method

.method public static reorderVisually([BI[Ljava/lang/Object;II)V
    .locals 6

    const/4 v4, 0x0

    new-array v2, p4, [B

    invoke-static {p0, p1, v2, v4, p4}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v2}, Landroid/icu/text/Bidi;->reorderVisual([B)[I

    move-result-object v1

    new-array v3, p4, [Ljava/lang/Object;

    invoke-static {p2, p3, v3, v4, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v4, p3, v0

    aget v5, v1, v0

    aget-object v5, v3, v5

    aput-object v5, p2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static requiresBidi([CII)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v0, 0xe022

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_1

    aget-char v2, p0, v1

    invoke-static {v2}, Landroid/icu/lang/UCharacter;->getDirection(I)I

    move-result v2

    shl-int v2, v5, v2

    const v3, 0xe022

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    return v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method private resolveExplicitLevels()B
    .locals 22

    const/4 v6, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v8

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->isolateCount:I

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->directionFromFlags()B

    move-result v4

    const/16 v19, 0x2

    move/from16 v0, v19

    if-eq v4, v0, :cond_0

    return v4

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    const/4 v13, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_3

    if-nez v13, :cond_1

    const/16 v17, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    move-object/from16 v19, v0

    aget v9, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    move-object/from16 v19, v0

    aget-byte v8, v19, v13

    move/from16 v6, v17

    :goto_2
    if-ge v6, v9, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->levels:[B

    move-object/from16 v19, v0

    aput-byte v8, v19, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, -0x1

    aget v17, v19, v20

    goto :goto_1

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    return v4

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v19, v0

    sget v20, Landroid/icu/text/Bidi;->MASK_EXPLICIT:I

    sget v21, Landroid/icu/text/Bidi;->MASK_ISO:I

    or-int v20, v20, v21

    and-int v19, v19, v20

    if-nez v19, :cond_c

    new-instance v2, Landroid/icu/text/Bidi$BracketData;

    invoke-direct {v2}, Landroid/icu/text/Bidi$BracketData;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/icu/text/Bidi;->bracketInit(Landroid/icu/text/Bidi$BracketData;)V

    const/4 v13, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->paraCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_b

    if-nez v13, :cond_6

    const/16 v17, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    move-object/from16 v19, v0

    aget v9, v19, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_level:[B

    move-object/from16 v19, v0

    aget-byte v8, v19, v13

    move/from16 v6, v17

    :goto_5
    if-ge v6, v9, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->levels:[B

    move-object/from16 v19, v0

    aput-byte v8, v19, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    move-object/from16 v19, v0

    aget-byte v3, v19, v6

    const/16 v19, 0x12

    move/from16 v0, v19

    if-ne v3, v0, :cond_7

    :cond_5
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, -0x1

    aget v17, v19, v20

    goto :goto_4

    :cond_7
    const/16 v19, 0x7

    move/from16 v0, v19

    if-ne v3, v0, :cond_9

    add-int/lit8 v19, v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->text:[C

    move-object/from16 v19, v0

    aget-char v19, v19, v6

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->text:[C

    move-object/from16 v19, v0

    add-int/lit8 v20, v6, 0x1

    aget-char v19, v19, v20

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Landroid/icu/text/Bidi;->bracketProcessB(Landroid/icu/text/Bidi$BracketData;B)V

    goto :goto_6

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/icu/text/Bidi;->bracketProcessChar(Landroid/icu/text/Bidi$BracketData;I)V

    goto :goto_6

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    :cond_b
    return v4

    :cond_c
    move v5, v8

    move v14, v8

    const/4 v7, 0x0

    const/16 v19, 0x7f

    move/from16 v0, v19

    new-array v15, v0, [S

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    new-instance v2, Landroid/icu/text/Bidi$BracketData;

    invoke-direct {v2}, Landroid/icu/text/Bidi$BracketData;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/icu/text/Bidi;->bracketInit(Landroid/icu/text/Bidi$BracketData;)V

    int-to-short v0, v8

    move/from16 v19, v0

    const/16 v20, 0x0

    aput-short v19, v15, v20

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    const/4 v6, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    move-object/from16 v19, v0

    aget-byte v3, v19, v6

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-static {v5}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v19

    invoke-static {v14}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7, v14, v5}, Landroid/icu/text/Bidi;->bracketProcessBoundary(Landroid/icu/text/Bidi$BracketData;IBB)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v19, v0

    sget v20, Landroid/icu/text/Bidi;->DirPropFlagMultiRuns:I

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    and-int/lit8 v19, v5, -0x80

    if-eqz v19, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v19, v0

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlagO(B)I

    move-result v20

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    :cond_d
    :goto_8
    move v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->levels:[B

    move-object/from16 v19, v0

    aput-byte v5, v19, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Landroid/icu/text/Bidi;->bracketProcessChar(Landroid/icu/text/Bidi$BracketData;I)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v6

    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v20

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    :cond_e
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v19, v0

    const/16 v20, 0x12

    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v20

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->levels:[B

    move-object/from16 v19, v0

    aput-byte v14, v19, v6

    const/16 v19, 0xb

    move/from16 v0, v19

    if-eq v3, v0, :cond_f

    const/16 v19, 0xc

    move/from16 v0, v19

    if-ne v3, v0, :cond_12

    :cond_f
    add-int/lit8 v19, v5, 0x2

    and-int/lit8 v19, v19, 0x7e

    move/from16 v0, v19

    int-to-byte v10, v0

    :goto_a
    const/16 v19, 0x7d

    move/from16 v0, v19

    if-gt v10, v0, :cond_13

    if-nez v12, :cond_13

    if-nez v11, :cond_13

    move v7, v6

    move v5, v10

    const/16 v19, 0xc

    move/from16 v0, v19

    if-eq v3, v0, :cond_10

    const/16 v19, 0xf

    move/from16 v0, v19

    if-ne v3, v0, :cond_11

    :cond_10
    or-int/lit8 v19, v5, -0x80

    move/from16 v0, v19

    int-to-byte v5, v0

    :cond_11
    add-int/lit8 v16, v16, 0x1

    int-to-short v0, v5

    move/from16 v19, v0

    aput-short v19, v15, v16

    goto :goto_9

    :cond_12
    invoke-static {v5}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v19

    add-int/lit8 v19, v19, 0x1

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-byte v10, v0

    goto :goto_a

    :cond_13
    if-nez v12, :cond_e

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v19, v0

    const/16 v20, 0x12

    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v20

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->levels:[B

    move-object/from16 v19, v0

    aput-byte v14, v19, v6

    if-gtz v12, :cond_e

    if-lez v11, :cond_14

    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_9

    :cond_14
    if-lez v16, :cond_e

    aget-short v19, v15, v16

    const/16 v20, 0x100

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    move v7, v6

    add-int/lit8 v16, v16, -0x1

    aget-short v19, v15, v16

    move/from16 v0, v19

    int-to-byte v5, v0

    goto/16 :goto_9

    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v19, v0

    const/16 v20, 0xa

    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v20

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v21

    or-int v20, v20, v21

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->levels:[B

    move-object/from16 v19, v0

    invoke-static {v5}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v20

    aput-byte v20, v19, v6

    invoke-static {v5}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v19

    invoke-static {v14}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7, v14, v5}, Landroid/icu/text/Bidi;->bracketProcessBoundary(Landroid/icu/text/Bidi$BracketData;IBB)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v19, v0

    sget v20, Landroid/icu/text/Bidi;->DirPropFlagMultiRuns:I

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    :cond_15
    move v14, v5

    const/16 v19, 0x14

    move/from16 v0, v19

    if-ne v3, v0, :cond_17

    add-int/lit8 v19, v5, 0x2

    and-int/lit8 v19, v19, 0x7e

    move/from16 v0, v19

    int-to-byte v10, v0

    :goto_b
    const/16 v19, 0x7d

    move/from16 v0, v19

    if-gt v10, v0, :cond_18

    if-nez v12, :cond_18

    if-nez v11, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v19, v0

    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v20

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    move v7, v6

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_16

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->isolateCount:I

    :cond_16
    move v5, v10

    add-int/lit8 v16, v16, 0x1

    add-int/lit16 v0, v10, 0x100

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    aput-short v19, v15, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Landroid/icu/text/Bidi;->bracketProcessLRI_RLI(Landroid/icu/text/Bidi$BracketData;B)V

    goto/16 :goto_9

    :cond_17
    invoke-static {v5}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v19

    add-int/lit8 v19, v19, 0x1

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    int-to-byte v10, v0

    goto :goto_b

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    move-object/from16 v19, v0

    const/16 v20, 0x9

    aput-byte v20, v19, v6

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_9

    :pswitch_4
    invoke-static {v5}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v19

    invoke-static {v14}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7, v14, v5}, Landroid/icu/text/Bidi;->bracketProcessBoundary(Landroid/icu/text/Bidi$BracketData;IBB)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v19, v0

    sget v20, Landroid/icu/text/Bidi;->DirPropFlagMultiRuns:I

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    :cond_19
    if-lez v12, :cond_1a

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    move-object/from16 v19, v0

    const/16 v20, 0x9

    aput-byte v20, v19, v6

    :goto_c
    aget-short v19, v15, v16

    move/from16 v0, v19

    and-int/lit16 v0, v0, -0x101

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v19, v0

    const/16 v20, 0xa

    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v20

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v21

    or-int v20, v20, v21

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    move v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->levels:[B

    move-object/from16 v19, v0

    invoke-static {v5}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v20

    aput-byte v20, v19, v6

    goto/16 :goto_9

    :cond_1a
    if-lez v18, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v19, v0

    const/16 v20, 0x16

    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v20

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    move v7, v6

    const/4 v11, 0x0

    :goto_d
    aget-short v19, v15, v16

    const/16 v20, 0x100

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1b

    add-int/lit8 v16, v16, -0x1

    goto :goto_d

    :cond_1b
    add-int/lit8 v16, v16, -0x1

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/icu/text/Bidi;->bracketProcessPDI(Landroid/icu/text/Bidi$BracketData;)V

    goto :goto_c

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    move-object/from16 v19, v0

    const/16 v20, 0x9

    aput-byte v20, v19, v6

    goto :goto_c

    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v19, v0

    const/16 v20, 0x7

    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v20

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->levels:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v20

    aput-byte v20, v19, v6

    add-int/lit8 v19, v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->text:[C

    move-object/from16 v19, v0

    aget-char v19, v19, v6

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->text:[C

    move-object/from16 v19, v0

    add-int/lit8 v20, v6, 0x1

    aget-char v19, v19, v20

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    :cond_1d
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x0

    add-int/lit8 v19, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v5

    move v14, v5

    int-to-short v0, v5

    move/from16 v19, v0

    const/16 v20, 0x0

    aput-short v19, v15, v20

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Landroid/icu/text/Bidi;->bracketProcessB(Landroid/icu/text/Bidi$BracketData;B)V

    goto/16 :goto_9

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->levels:[B

    move-object/from16 v19, v0

    aput-byte v14, v19, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v19, v0

    const/16 v20, 0x12

    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v20

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    goto/16 :goto_9

    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v19, v0

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlagE(B)I

    move-result v20

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    goto/16 :goto_8

    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v19, v0

    sget v20, Landroid/icu/text/Bidi;->MASK_EMBEDDING:I

    and-int v19, v19, v20

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v20

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    move/from16 v19, v0

    if-eqz v19, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v19, v0

    const/16 v20, 0x7

    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v20

    and-int v19, v19, v20

    if-eqz v19, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->flags:I

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v20

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->flags:I

    :cond_21
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->directionFromFlags()B

    move-result v4

    return v4

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private resolveImplicitLevels(IISS)V
    .locals 27

    new-instance v14, Landroid/icu/text/Bidi$LevState;

    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Landroid/icu/text/Bidi$LevState;-><init>(Landroid/icu/text/Bidi$LevState;)V

    const/16 v16, 0x1

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->lastArabicPos:I

    move/from16 v24, v0

    move/from16 v0, p1

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    invoke-virtual/range {p0 .. p1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v24

    and-int/lit8 v24, v24, 0x1

    if-lez v24, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    move/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    move/from16 v24, v0

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    const/4 v10, 0x1

    :goto_0
    const/16 v24, -0x1

    move/from16 v0, v24

    iput v0, v14, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    const/16 v24, -0x1

    move/from16 v0, v24

    iput v0, v14, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    move/from16 v0, p1

    iput v0, v14, Landroid/icu/text/Bidi$LevState;->runStart:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->levels:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, p1

    move/from16 v0, v24

    iput-byte v0, v14, Landroid/icu/text/Bidi$LevState;->runLevel:B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/icu/text/Bidi$ImpTabPair;->imptab:[[[B

    move-object/from16 v24, v0

    iget-byte v0, v14, Landroid/icu/text/Bidi$LevState;->runLevel:B

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iput-object v0, v14, Landroid/icu/text/Bidi$LevState;->impTab:[[B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/icu/text/Bidi$ImpTabPair;->impact:[[S

    move-object/from16 v24, v0

    iget-byte v0, v14, Landroid/icu/text/Bidi$LevState;->runLevel:B

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x1

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iput-object v0, v14, Landroid/icu/text/Bidi$LevState;->impAct:[S

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->lastL_R_AL()B

    move-result v13

    const/16 v24, 0x4

    move/from16 v0, v24

    if-eq v13, v0, :cond_0

    int-to-short v0, v13

    move/from16 p3, v0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, p1

    const/16 v25, 0x16

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget v0, v0, Landroid/icu/text/Bidi$Isolate;->startON:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v14, Landroid/icu/text/Bidi$LevState;->startON:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget v0, v0, Landroid/icu/text/Bidi$Isolate;->start1:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-short v0, v0, Landroid/icu/text/Bidi$Isolate;->stateImp:S

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    iget-short v0, v0, Landroid/icu/text/Bidi$Isolate;->state:S

    move/from16 v24, v0

    move/from16 v0, v24

    iput-short v0, v14, Landroid/icu/text/Bidi$LevState;->state:S

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->isolateCount:I

    :goto_1
    move/from16 v22, p1

    move/from16 v9, p1

    :goto_2
    move/from16 v0, p2

    if-gt v9, v0, :cond_7

    move/from16 v0, p2

    if-lt v9, v0, :cond_b

    add-int/lit8 v12, p2, -0x1

    :goto_3
    move/from16 v0, p1

    if-le v12, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v12

    invoke-static/range {v24 .. v24}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v24

    sget v25, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    and-int v24, v24, v25

    if-eqz v24, :cond_6

    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    :cond_1
    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_4
    const/16 v24, -0x1

    move/from16 v0, v24

    iput v0, v14, Landroid/icu/text/Bidi$LevState;->startON:I

    move/from16 v21, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, p1

    const/16 v25, 0x11

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    add-int/lit8 v24, p3, 0x1

    move/from16 v0, v24

    int-to-short v0, v0

    move/from16 v23, v0

    :goto_4
    const/16 v24, 0x0

    move/from16 v0, v24

    iput-short v0, v14, Landroid/icu/text/Bidi$LevState;->state:S

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p1

    move/from16 v3, p1

    invoke-direct {v0, v14, v1, v2, v3}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    goto :goto_1

    :cond_5
    const/16 v23, 0x0

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    move-object/from16 v24, v0

    aget-byte v6, v24, v12

    const/16 v24, 0x14

    move/from16 v0, v24

    if-eq v6, v0, :cond_7

    const/16 v24, 0x15

    move/from16 v0, v24

    if-ne v6, v0, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    move/from16 v24, v0

    move/from16 v0, p2

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->epilogue:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->firstL_R_AL_EN_AN()B

    move-result v7

    const/16 v24, 0x4

    move/from16 v0, v24

    if-eq v7, v0, :cond_8

    int-to-short v0, v7

    move/from16 p4, v0

    :cond_8
    add-int/lit8 v9, p2, -0x1

    :goto_5
    move/from16 v0, p1

    if-le v9, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v9

    invoke-static/range {v24 .. v24}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v24

    sget v25, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    and-int v24, v24, v25

    if-eqz v24, :cond_13

    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    :cond_9
    move/from16 v8, p4

    :goto_6
    move/from16 v17, v23

    sget-object v24, Landroid/icu/text/Bidi;->impTabProps:[[S

    aget-object v24, v24, v17

    aget-short v5, v24, v8

    invoke-static {v5}, Landroid/icu/text/Bidi;->GetStateProps(S)S

    move-result v23

    invoke-static {v5}, Landroid/icu/text/Bidi;->GetActionProps(S)S

    move-result v4

    move/from16 v0, p2

    if-ne v9, v0, :cond_a

    if-nez v4, :cond_a

    const/4 v4, 0x1

    :cond_a
    if-eqz v4, :cond_12

    sget-object v24, Landroid/icu/text/Bidi;->impTabProps:[[S

    aget-object v24, v24, v17

    const/16 v25, 0xf

    aget-short v20, v24, v25

    packed-switch v4, :pswitch_data_0

    new-instance v24, Ljava/lang/IllegalStateException;

    const-string/jumbo v25, "Internal ICU error in resolveImplicitLevels"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    move-object/from16 v24, v0

    aget-byte v18, v24, v9

    const/16 v24, 0x7

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->isolateCount:I

    :cond_c
    if-eqz v10, :cond_d

    const/16 v24, 0xd

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    const/16 v18, 0x1

    :cond_d
    :goto_7
    sget-object v24, Landroid/icu/text/Bidi;->groupProp:[S

    aget-short v8, v24, v18

    goto :goto_6

    :cond_e
    const/16 v24, 0x2

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    if-gt v15, v9, :cond_10

    const/16 v16, 0x1

    move/from16 v15, p2

    add-int/lit8 v11, v9, 0x1

    :goto_8
    move/from16 v0, p2

    if-ge v11, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    move-object/from16 v24, v0

    aget-byte v19, v24, v11

    if-eqz v19, :cond_f

    const/16 v24, 0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    :cond_f
    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v16, v0

    move v15, v11

    :cond_10
    const/16 v24, 0xd

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    const/16 v18, 0x5

    goto :goto_7

    :cond_11
    const/16 v24, 0xd

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_f

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v14, v1, v2, v9}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    move/from16 v21, v9

    :cond_12
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :pswitch_1
    move/from16 v22, v9

    goto :goto_9

    :pswitch_2
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v14, v1, v2, v3}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-direct {v0, v14, v1, v2, v9}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    move/from16 v21, v9

    goto :goto_9

    :pswitch_3
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v14, v1, v2, v3}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    move/from16 v21, v22

    move/from16 v22, v9

    goto :goto_9

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->dirProps:[B

    move-object/from16 v24, v0

    aget-byte v6, v24, v9

    const/16 v24, 0x14

    move/from16 v0, v24

    if-eq v6, v0, :cond_14

    const/16 v24, 0x15

    move/from16 v0, v24

    if-ne v6, v0, :cond_16

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    move/from16 v24, v0

    move/from16 v0, p2

    move/from16 v1, v24

    if-ge v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->isolateCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    if-nez v24, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    move/from16 v25, v0

    new-instance v26, Landroid/icu/text/Bidi$Isolate;

    invoke-direct/range {v26 .. v26}, Landroid/icu/text/Bidi$Isolate;-><init>()V

    aput-object v26, v24, v25

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move/from16 v0, v23

    move-object/from16 v1, v24

    iput-short v0, v1, Landroid/icu/text/Bidi$Isolate;->stateImp:S

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    iget-short v0, v14, Landroid/icu/text/Bidi$LevState;->state:S

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-short v0, v1, Landroid/icu/text/Bidi$Isolate;->state:S

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    move/from16 v0, v21

    move-object/from16 v1, v24

    iput v0, v1, Landroid/icu/text/Bidi$Isolate;->start1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    move/from16 v25, v0

    aget-object v24, v24, v25

    iget v0, v14, Landroid/icu/text/Bidi$LevState;->startON:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/icu/text/Bidi$Isolate;->startON:I

    :goto_a
    return-void

    :cond_16
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p2

    move/from16 v3, p2

    invoke-direct {v0, v14, v1, v2, v3}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setLevelsOutsideIsolates(IIB)V
    .locals 4

    const/4 v1, 0x0

    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_4

    iget-object v3, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v0, v3, v2

    const/16 v3, 0x16

    if-ne v0, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte p3, v3, v2

    :cond_1
    const/16 v3, 0x14

    if-eq v0, v3, :cond_2

    const/16 v3, 0x15

    if-ne v0, v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private setParaSuccess()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/Bidi;->epilogue:Ljava/lang/String;

    iput-object p0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    return-void
.end method

.method public static writeReverse(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p0, p1}, Landroid/icu/text/BidiWriter;->writeReverse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    return-object v0
.end method


# virtual methods
.method Bidi_Abs(I)I
    .locals 0

    if-ltz p1, :cond_0

    :goto_0
    return p1

    :cond_0
    neg-int p1, p1

    goto :goto_0
.end method

.method Bidi_Min(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    :goto_0
    return p1

    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method GetParaLevelAt(I)B
    .locals 3

    const/4 v2, 0x0

    iget-byte v1, p0, Landroid/icu/text/Bidi;->defaultParaLevel:B

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v1, v1, v2

    if-ge p1, v1, :cond_1

    :cond_0
    iget-byte v1, p0, Landroid/icu/text/Bidi;->paraLevel:B

    return v1

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Landroid/icu/text/Bidi;->paraCount:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v1, v1, v0

    if-ge p1, v1, :cond_4

    :cond_2
    iget v1, p0, Landroid/icu/text/Bidi;->paraCount:I

    if-lt v0, v1, :cond_3

    iget v1, p0, Landroid/icu/text/Bidi;->paraCount:I

    add-int/lit8 v0, v1, -0x1

    :cond_3
    iget-object v1, p0, Landroid/icu/text/Bidi;->paras_level:[B

    aget-byte v1, v1, v0

    return v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public baseIsLeftToRight()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public countParagraphs()I
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    iget v0, p0, Landroid/icu/text/Bidi;->paraCount:I

    return v0
.end method

.method public countRuns()I
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    iget v0, p0, Landroid/icu/text/Bidi;->runCount:I

    return v0
.end method

.method public createLineBidi(II)Landroid/icu/text/Bidi;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/Bidi;->setLine(II)Landroid/icu/text/Bidi;

    move-result-object v0

    return-object v0
.end method

.method public getBaseLevel()I
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v0

    return v0
.end method

.method public getCustomClassifier()Landroid/icu/text/BidiClassifier;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/Bidi;->customClassifier:Landroid/icu/text/BidiClassifier;

    return-object v0
.end method

.method public getCustomizedClass(I)I
    .locals 3

    const/16 v2, 0x17

    iget-object v1, p0, Landroid/icu/text/Bidi;->customClassifier:Landroid/icu/text/BidiClassifier;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/Bidi;->customClassifier:Landroid/icu/text/BidiClassifier;

    invoke-virtual {v1, p1}, Landroid/icu/text/BidiClassifier;->classify(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/icu/text/Bidi;->bdp:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v1, p1}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    move-result v0

    :cond_1
    if-lt v0, v2, :cond_2

    const/16 v0, 0xa

    :cond_2
    return v0
.end method

.method getDirPropsMemory(I)V
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/Bidi;->mayAllocateText:Z

    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getDirPropsMemory(ZI)V

    return-void
.end method

.method public getDirection()B
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    iget-byte v0, p0, Landroid/icu/text/Bidi;->direction:B

    return v0
.end method

.method public getLength()I
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    iget v0, p0, Landroid/icu/text/Bidi;->originalLength:I

    return v0
.end method

.method public getLevelAt(I)B
    .locals 2

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    invoke-static {p0, p1}, Landroid/icu/text/BidiLine;->getLevelAt(Landroid/icu/text/Bidi;I)B

    move-result v0

    return v0
.end method

.method public getLevels()[B
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    if-gtz v0, :cond_0

    new-array v0, v1, [B

    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getLevels(Landroid/icu/text/Bidi;)[B

    move-result-object v0

    return-object v0
.end method

.method getLevelsMemory(I)V
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/Bidi;->mayAllocateText:Z

    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getLevelsMemory(ZI)V

    return-void
.end method

.method public getLogicalIndex(I)I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    iget v0, p0, Landroid/icu/text/Bidi;->resultLength:I

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    iget-object v0, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v0, v0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/icu/text/Bidi;->controlCount:I

    if-nez v0, :cond_1

    iget-byte v0, p0, Landroid/icu/text/Bidi;->direction:B

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-byte v0, p0, Landroid/icu/text/Bidi;->direction:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_1
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    invoke-static {p0, p1}, Landroid/icu/text/BidiLine;->getLogicalIndex(Landroid/icu/text/Bidi;I)I

    move-result v0

    return v0
.end method

.method public getLogicalMap()[I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->countRuns()I

    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    if-gtz v0, :cond_0

    new-array v0, v1, [I

    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getLogicalMap(Landroid/icu/text/Bidi;)[I

    move-result-object v0

    return-object v0
.end method

.method public getLogicalRun(I)Landroid/icu/text/BidiRun;
    .locals 2

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    invoke-static {p0, p1}, Landroid/icu/text/BidiLine;->getLogicalRun(Landroid/icu/text/Bidi;I)Landroid/icu/text/BidiRun;

    move-result-object v0

    return-object v0
.end method

.method getLogicalToVisualRunsMap()V
    .locals 8

    iget-boolean v3, p0, Landroid/icu/text/Bidi;->isGoodLogicalToVisualRunsMap:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v0

    iget-object v3, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    array-length v3, v3

    if-ge v3, v0, :cond_2

    :cond_1
    new-array v3, v0, [I

    iput-object v3, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    :cond_2
    new-array v2, v0, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v3, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v3, v3, v1

    iget v3, v3, Landroid/icu/text/BidiRun;->start:I

    int-to-long v4, v3

    const/16 v3, 0x20

    shl-long/2addr v4, v3

    int-to-long v6, v1

    add-long/2addr v4, v6

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v3, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    aget-wide v4, v2, v1

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/icu/text/Bidi;->isGoodLogicalToVisualRunsMap:Z

    return-void
.end method

.method public getParaLevel()B
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    iget-byte v0, p0, Landroid/icu/text/Bidi;->paraLevel:B

    return v0
.end method

.method public getParagraph(I)Landroid/icu/text/BidiRun;
    .locals 4

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    iget-object v0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    iget v2, v0, Landroid/icu/text/Bidi;->length:I

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v2}, Landroid/icu/text/Bidi;->verifyRange(III)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v2, v2, v1

    if-lt p1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->getParagraphByIndex(I)Landroid/icu/text/BidiRun;

    move-result-object v2

    return-object v2
.end method

.method public getParagraphByIndex(I)Landroid/icu/text/BidiRun;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    iget v3, p0, Landroid/icu/text/Bidi;->paraCount:I

    invoke-virtual {p0, p1, v4, v3}, Landroid/icu/text/Bidi;->verifyRange(III)V

    iget-object v0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    new-instance v1, Landroid/icu/text/BidiRun;

    invoke-direct {v1}, Landroid/icu/text/BidiRun;-><init>()V

    iput v2, v1, Landroid/icu/text/BidiRun;->start:I

    iget-object v3, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v3, v3, p1

    iput v3, v1, Landroid/icu/text/BidiRun;->limit:I

    invoke-virtual {p0, v2}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v3

    iput-byte v3, v1, Landroid/icu/text/BidiRun;->level:B

    return-object v1

    :cond_0
    iget-object v3, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    add-int/lit8 v4, p1, -0x1

    aget v2, v3, v4

    goto :goto_0
.end method

.method public getParagraphIndex(I)I
    .locals 4

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    iget-object v0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    iget v2, v0, Landroid/icu/text/Bidi;->length:I

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v2}, Landroid/icu/text/Bidi;->verifyRange(III)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v2, v2, v1

    if-lt p1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getProcessedLength()I
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    return v0
.end method

.method public getReorderingMode()I
    .locals 1

    iget v0, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    return v0
.end method

.method public getReorderingOptions()I
    .locals 1

    iget v0, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    return v0
.end method

.method public getResultLength()I
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    iget v0, p0, Landroid/icu/text/Bidi;->resultLength:I

    return v0
.end method

.method public getRunCount()I
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v0

    return v0
.end method

.method public getRunLevel(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    iget v0, p0, Landroid/icu/text/Bidi;->runCount:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getLogicalToVisualRunsMap()V

    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    iget-object v1, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    iget-byte v0, v0, Landroid/icu/text/BidiRun;->level:B

    return v0
.end method

.method public getRunLimit(I)I
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    iget v2, p0, Landroid/icu/text/Bidi;->runCount:I

    invoke-virtual {p0, p1, v3, v2}, Landroid/icu/text/Bidi;->verifyRange(III)V

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getLogicalToVisualRunsMap()V

    iget-object v2, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    aget v0, v2, p1

    if-nez v0, :cond_0

    iget-object v2, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v2, v2, v0

    iget v1, v2, Landroid/icu/text/BidiRun;->limit:I

    :goto_0
    iget-object v2, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/icu/text/BidiRun;->start:I

    add-int/2addr v2, v1

    return v2

    :cond_0
    iget-object v2, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/icu/text/BidiRun;->limit:I

    iget-object v3, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Landroid/icu/text/BidiRun;->limit:I

    sub-int v1, v2, v3

    goto :goto_0
.end method

.method public getRunStart(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    iget v0, p0, Landroid/icu/text/Bidi;->runCount:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getLogicalToVisualRunsMap()V

    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    iget-object v1, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    iget v0, v0, Landroid/icu/text/BidiRun;->start:I

    return v0
.end method

.method getRunsMemory(I)V
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/Bidi;->mayAllocateRuns:Z

    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getRunsMemory(ZI)V

    return-void
.end method

.method public getText()[C
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    iget-object v0, p0, Landroid/icu/text/Bidi;->text:[C

    return-object v0
.end method

.method public getTextAsString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/Bidi;->text:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public getVisualIndex(I)I
    .locals 2

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    invoke-static {p0, p1}, Landroid/icu/text/BidiLine;->getVisualIndex(Landroid/icu/text/Bidi;I)I

    move-result v0

    return v0
.end method

.method public getVisualMap()[I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->countRuns()I

    iget v0, p0, Landroid/icu/text/Bidi;->resultLength:I

    if-gtz v0, :cond_0

    new-array v0, v1, [I

    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getVisualMap(Landroid/icu/text/Bidi;)[I

    move-result-object v0

    return-object v0
.end method

.method public getVisualRun(I)Landroid/icu/text/BidiRun;
    .locals 2

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    iget v0, p0, Landroid/icu/text/Bidi;->runCount:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    invoke-static {p0, p1}, Landroid/icu/text/BidiLine;->getVisualRun(Landroid/icu/text/Bidi;I)Landroid/icu/text/BidiRun;

    move-result-object v0

    return-object v0
.end method

.method public isInverse()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/Bidi;->isInverse:Z

    return v0
.end method

.method public isLeftToRight()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getDirection()B

    move-result v1

    if-nez v1, :cond_0

    iget-byte v1, p0, Landroid/icu/text/Bidi;->paraLevel:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isMixed()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isLeftToRight()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isRightToLeft()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOrderParagraphsLTR()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    return v0
.end method

.method public isRightToLeft()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getDirection()B

    move-result v2

    if-ne v2, v0, :cond_0

    iget-byte v2, p0, Landroid/icu/text/Bidi;->paraLevel:B

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public orderParagraphsLTR(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    return-void
.end method

.method public setContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    iput-object p1, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    :goto_1
    iput-object p2, p0, Landroid/icu/text/Bidi;->epilogue:Ljava/lang/String;

    return-void

    :cond_0
    move-object p1, v0

    goto :goto_0

    :cond_1
    move-object p2, v0

    goto :goto_1
.end method

.method public setCustomClassifier(Landroid/icu/text/BidiClassifier;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/Bidi;->customClassifier:Landroid/icu/text/BidiClassifier;

    return-void
.end method

.method public setInverse(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/icu/text/Bidi;->isInverse:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLine(II)Landroid/icu/text/Bidi;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidPara()V

    invoke-virtual {p0, p1, v1, p2}, Landroid/icu/text/Bidi;->verifyRange(III)V

    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p2, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    invoke-virtual {p0, p1}, Landroid/icu/text/Bidi;->getParagraphIndex(I)I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->getParagraphIndex(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/icu/text/BidiLine;->setLine(Landroid/icu/text/Bidi;II)Landroid/icu/text/Bidi;

    move-result-object v0

    return-object v0
.end method

.method public setPara(Ljava/lang/String;B[B)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [C

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    goto :goto_0
.end method

.method public setPara(Ljava/text/AttributedCharacterIterator;)V
    .locals 14

    const/4 v13, 0x0

    sget-object v11, Ljava/awt/font/TextAttribute;->RUN_DIRECTION:Ljava/awt/font/TextAttribute;

    invoke-interface {p1, v11}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    if-nez v8, :cond_1

    const/16 v7, 0x7e

    :goto_0
    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v11

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v12

    sub-int v4, v11, v12

    new-array v2, v4, [B

    new-array v10, v4, [C

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->first()C

    move-result v0

    :goto_1
    const v11, 0xffff

    if-eq v0, v11, :cond_5

    aput-char v0, v10, v3

    sget-object v11, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    invoke-interface {p1, v11}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v5

    if-nez v5, :cond_3

    :cond_0
    :goto_2
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v11, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_LTR:Ljava/lang/Boolean;

    invoke-virtual {v8, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    if-gez v5, :cond_4

    move-object v6, v2

    rsub-int/lit8 v11, v5, 0x0

    or-int/lit8 v11, v11, -0x80

    int-to-byte v11, v11

    aput-byte v11, v2, v3

    goto :goto_2

    :cond_4
    move-object v6, v2

    aput-byte v5, v2, v3

    goto :goto_2

    :cond_5
    sget-object v11, Ljava/awt/font/TextAttribute;->NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

    invoke-interface {p1, v11}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/awt/font/NumericShaper;

    if-eqz v9, :cond_6

    invoke-virtual {v9, v10, v13, v4}, Ljava/awt/font/NumericShaper;->shape([CII)V

    :cond_6
    invoke-virtual {p0, v10, v7, v6}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    return-void
.end method

.method public setPara([CB[B)V
    .locals 17

    const/16 v13, 0x7e

    move/from16 v0, p2

    if-ge v0, v13, :cond_0

    const/4 v13, 0x0

    const/16 v14, 0x7e

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v13, v14}, Landroid/icu/text/Bidi;->verifyRange(III)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v13, 0x0

    new-array v0, v13, [C

    move-object/from16 p1, v0

    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_2

    invoke-virtual/range {p0 .. p2}, Landroid/icu/text/Bidi;->setParaRunsOnly([CB)V

    return-void

    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/Bidi;->text:[C

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/Bidi;->text:[C

    array-length v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/icu/text/Bidi;->resultLength:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/icu/text/Bidi;->originalLength:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/icu/text/Bidi;->length:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-byte v0, v1, Landroid/icu/text/Bidi;->paraLevel:B

    and-int/lit8 v13, p2, 0x1

    int-to-byte v13, v13

    move-object/from16 v0, p0

    iput-byte v13, v0, Landroid/icu/text/Bidi;->direction:B

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/icu/text/Bidi;->paraCount:I

    const/4 v13, 0x0

    new-array v13, v13, [B

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/icu/text/Bidi;->dirProps:[B

    const/4 v13, 0x0

    new-array v13, v13, [B

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    const/4 v13, 0x0

    new-array v13, v13, [Landroid/icu/text/BidiRun;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/icu/text/Bidi;->isGoodLogicalToVisualRunsMap:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    const/4 v14, 0x0

    iput v14, v13, Landroid/icu/text/Bidi$InsertPoints;->size:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    const/4 v14, 0x0

    iput v14, v13, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    invoke-static/range {p2 .. p2}, Landroid/icu/text/Bidi;->IsDefaultLevel(B)Z

    move-result v13

    if-eqz v13, :cond_4

    move/from16 v13, p2

    :goto_0
    move-object/from16 v0, p0

    iput-byte v13, v0, Landroid/icu/text/Bidi;->defaultParaLevel:B

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->length:I

    if-nez v13, :cond_5

    invoke-static/range {p2 .. p2}, Landroid/icu/text/Bidi;->IsDefaultLevel(B)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-byte v13, v0, Landroid/icu/text/Bidi;->paraLevel:B

    and-int/lit8 v13, v13, 0x1

    int-to-byte v13, v13

    move-object/from16 v0, p0

    iput-byte v13, v0, Landroid/icu/text/Bidi;->paraLevel:B

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-byte v13, v0, Landroid/icu/text/Bidi;->defaultParaLevel:B

    :cond_3
    invoke-static/range {p2 .. p2}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/icu/text/Bidi;->flags:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/icu/text/Bidi;->runCount:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/icu/text/Bidi;->paraCount:I

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->setParaSuccess()V

    return-void

    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    :cond_5
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/icu/text/Bidi;->runCount:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->length:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/icu/text/Bidi;->getDirPropsMemory(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/Bidi;->dirPropsMemory:[B

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/icu/text/Bidi;->dirProps:[B

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->getDirProps()V

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->length:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    if-nez p3, :cond_b

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->length:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/icu/text/Bidi;->getLevelsMemory(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/Bidi;->levelsMemory:[B

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->resolveExplicitLevels()B

    move-result v13

    move-object/from16 v0, p0

    iput-byte v13, v0, Landroid/icu/text/Bidi;->direction:B

    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->isolateCount:I

    if-lez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    array-length v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/text/Bidi;->isolateCount:I

    if-ge v13, v14, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->isolateCount:I

    add-int/lit8 v13, v13, 0x3

    new-array v13, v13, [Landroid/icu/text/Bidi$Isolate;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    :cond_7
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/icu/text/Bidi;->isolateCount:I

    move-object/from16 v0, p0

    iget-byte v13, v0, Landroid/icu/text/Bidi;->direction:B

    packed-switch v13, :pswitch_data_0

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    packed-switch v13, :pswitch_data_1

    :goto_2
    if-nez p3, :cond_e

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->paraCount:I

    const/4 v14, 0x1

    if-gt v13, v14, :cond_e

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->flags:I

    sget v14, Landroid/icu/text/Bidi;->DirPropFlagMultiRuns:I

    and-int/2addr v13, v14

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->length:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v14

    invoke-static {v14}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result v14

    int-to-short v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/icu/text/Bidi;->length:I

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v15

    invoke-static {v15}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result v15

    int-to-short v15, v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v13, v14, v15}, Landroid/icu/text/Bidi;->resolveImplicitLevels(IISS)V

    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->adjustWSLevels()V

    :goto_3
    move-object/from16 v0, p0

    iget-byte v13, v0, Landroid/icu/text/Bidi;->defaultParaLevel:B

    if-lez v13, :cond_1a

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_1a

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v14, 0x5

    if-eq v13, v14, :cond_9

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v14, 0x6

    if-ne v13, v14, :cond_1a

    :cond_9
    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->paraCount:I

    if-ge v4, v13, :cond_1a

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v13, v13, v4

    add-int/lit8 v6, v13, -0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/Bidi;->paras_level:[B

    aget-byte v7, v13, v4

    if-nez v7, :cond_16

    :cond_a
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/Bidi;->levels:[B

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->checkExplicitLevels()B

    move-result v13

    move-object/from16 v0, p0

    iput-byte v13, v0, Landroid/icu/text/Bidi;->direction:B

    goto/16 :goto_1

    :pswitch_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    goto :goto_3

    :pswitch_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    goto :goto_3

    :pswitch_2
    sget-object v13, Landroid/icu/text/Bidi;->impTab_DEFAULT:Landroid/icu/text/Bidi$ImpTabPair;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    goto/16 :goto_2

    :pswitch_3
    sget-object v13, Landroid/icu/text/Bidi;->impTab_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    goto/16 :goto_2

    :pswitch_4
    sget-object v13, Landroid/icu/text/Bidi;->impTab_GROUP_NUMBERS_WITH_R:Landroid/icu/text/Bidi$ImpTabPair;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    goto/16 :goto_2

    :pswitch_5
    new-instance v13, Ljava/lang/InternalError;

    const-string/jumbo v14, "Internal ICU error in setPara"

    invoke-direct {v13, v14}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v13

    :pswitch_6
    sget-object v13, Landroid/icu/text/Bidi;->impTab_INVERSE_NUMBERS_AS_L:Landroid/icu/text/Bidi$ImpTabPair;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    goto/16 :goto_2

    :pswitch_7
    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_c

    sget-object v13, Landroid/icu/text/Bidi;->impTab_INVERSE_LIKE_DIRECT_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    goto/16 :goto_2

    :cond_c
    sget-object v13, Landroid/icu/text/Bidi;->impTab_INVERSE_LIKE_DIRECT:Landroid/icu/text/Bidi$ImpTabPair;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    goto/16 :goto_2

    :pswitch_8
    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_d

    sget-object v13, Landroid/icu/text/Bidi;->impTab_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    goto/16 :goto_2

    :cond_d
    sget-object v13, Landroid/icu/text/Bidi;->impTab_INVERSE_FOR_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    goto/16 :goto_2

    :cond_e
    const/4 v8, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v7

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    const/4 v14, 0x0

    aget-byte v9, v13, v14

    if-ge v7, v9, :cond_11

    invoke-static {v9}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result v13

    int-to-short v3, v13

    :goto_6
    move v11, v8

    move v7, v9

    if-lez v8, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/Bidi;->dirProps:[B

    add-int/lit8 v14, v11, -0x1

    aget-byte v13, v13, v14

    const/4 v14, 0x7

    if-ne v13, v14, :cond_12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v13

    invoke-static {v13}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result v13

    int-to-short v10, v13

    :cond_f
    :goto_7
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->length:I

    if-ge v8, v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v13, v13, v8

    if-eq v13, v7, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v13, v13, v8

    invoke-static {v13}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v13

    sget v14, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    and-int/2addr v13, v14

    if-nez v13, :cond_f

    :cond_10
    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->length:I

    if-ge v8, v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v9, v13, v8

    :goto_8
    invoke-static {v7}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v13

    invoke-static {v9}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v14

    if-ge v13, v14, :cond_14

    invoke-static {v9}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result v13

    int-to-short v3, v13

    :goto_9
    and-int/lit8 v13, v7, -0x80

    if-nez v13, :cond_15

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v10, v3}, Landroid/icu/text/Bidi;->resolveImplicitLevels(IISS)V

    :goto_a
    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->length:I

    if-ge v8, v13, :cond_8

    goto :goto_6

    :cond_11
    invoke-static {v7}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result v13

    int-to-short v3, v13

    goto :goto_6

    :cond_12
    move v10, v3

    goto :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->length:I

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v9

    goto :goto_8

    :cond_14
    invoke-static {v7}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result v13

    int-to-short v3, v13

    goto :goto_9

    :cond_15
    :goto_b
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/Bidi;->levels:[B

    add-int/lit8 v12, v11, 0x1

    aget-byte v14, v13, v11

    and-int/lit8 v14, v14, 0x7f

    int-to-byte v14, v14

    aput-byte v14, v13, v11

    if-ge v12, v8, :cond_1c

    move v11, v12

    goto :goto_b

    :cond_16
    if-nez v4, :cond_17

    const/4 v11, 0x0

    :goto_c
    move v5, v6

    :goto_d
    if-lt v5, v11, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v2, v13, v5

    if-nez v2, :cond_19

    if-ge v5, v6, :cond_18

    :goto_e
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v13, v13, v6

    const/4 v14, 0x7

    if-ne v13, v14, :cond_18

    add-int/lit8 v6, v6, -0x1

    goto :goto_e

    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    add-int/lit8 v14, v4, -0x1

    aget v11, v13, v14

    goto :goto_c

    :cond_18
    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Landroid/icu/text/Bidi;->addPoint(II)V

    goto/16 :goto_5

    :cond_19
    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v13

    sget v14, Landroid/icu/text/Bidi;->MASK_R_AL:I

    and-int/2addr v13, v14

    if-nez v13, :cond_a

    add-int/lit8 v5, v5, -0x1

    goto :goto_d

    :cond_1a
    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_1b

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->resultLength:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/text/Bidi;->controlCount:I

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/icu/text/Bidi;->resultLength:I

    :goto_f
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->setParaSuccess()V

    return-void

    :cond_1b
    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/text/Bidi;->resultLength:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v14, v14, Landroid/icu/text/Bidi$InsertPoints;->size:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/icu/text/Bidi;->resultLength:I

    goto :goto_f

    :cond_1c
    move v11, v12

    goto/16 :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method setParaRunsOnly([CB)V
    .locals 34

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->reorderingMode:I

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    const/16 v29, 0x3

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->reorderingMode:I

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    move/from16 v22, v0

    and-int/lit8 v29, v22, 0x1

    if-lez v29, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, -0x2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->reorderingOptions:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->reorderingOptions:I

    :cond_1
    and-int/lit8 v29, p2, 0x1

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 p2, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/Bidi;->getLevels()[B

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    move/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v21

    move/from16 v3, v32

    move/from16 v4, v30

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    move/from16 v23, v0

    const/16 v29, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->writeReordered(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/Bidi;->getVisualMap()[I

    move-result-object v26

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->reorderingOptions:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->length:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/text/Bidi;->direction:B

    move/from16 v19, v0

    const/16 v29, 0x5

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->reorderingMode:I

    xor-int/lit8 v29, p2, 0x1

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 p2, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, p2

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/Bidi;->setPara(Ljava/lang/String;B[B)V

    invoke-static/range {p0 .. p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    move/from16 v16, v0

    const/16 v27, 0x0

    const/4 v6, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v6, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    aget-object v29, v29, v6

    move-object/from16 v0, v29

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v29, v0

    sub-int v18, v29, v27

    const/16 v29, 0x2

    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    add-int v27, v27, v18

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    aget-object v29, v29, v6

    move-object/from16 v0, v29

    iget v14, v0, Landroid/icu/text/BidiRun;->start:I

    add-int/lit8 v11, v14, 0x1

    :goto_1
    add-int v29, v14, v18

    move/from16 v0, v29

    if-ge v11, v0, :cond_2

    aget v7, v26, v11

    add-int/lit8 v29, v11, -0x1

    aget v8, v26, v29

    sub-int v29, v7, v8

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->Bidi_Abs(I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    aget-byte v29, v21, v7

    aget-byte v30, v21, v8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_6
    if-lez v5, :cond_9

    add-int v29, v16, v5

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->getRunsMemory(I)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget-object v30, v30, v31

    const/16 v31, 0x0

    aput-object v30, v29, v31

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    move/from16 v29, v0

    add-int v29, v29, v5

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->runCount:I

    move/from16 v6, v16

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v6, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    aget-object v29, v29, v6

    if-nez v29, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    new-instance v30, Landroid/icu/text/BidiRun;

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-direct/range {v30 .. v33}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    aput-object v30, v29, v6

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    move/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v30

    move/from16 v3, v33

    move/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_9
    add-int/lit8 v6, v16, -0x1

    :goto_4
    if-ltz v6, :cond_12

    add-int v15, v6, v5

    if-nez v6, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget-object v29, v29, v30

    move-object/from16 v0, v29

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v18, v0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    aget-object v29, v29, v6

    move-object/from16 v0, v29

    iget v14, v0, Landroid/icu/text/BidiRun;->start:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    aget-object v29, v29, v6

    move-object/from16 v0, v29

    iget-byte v0, v0, Landroid/icu/text/BidiRun;->level:B

    move/from16 v29, v0

    and-int/lit8 v9, v29, 0x1

    const/16 v29, 0x2

    move/from16 v0, v18

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    if-lez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    aget-object v29, v29, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v30, v0

    aget-object v30, v30, v6

    invoke-virtual/range {v29 .. v30}, Landroid/icu/text/BidiRun;->copyFrom(Landroid/icu/text/BidiRun;)V

    :cond_a
    aget v13, v26, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    aget-object v29, v29, v15

    move-object/from16 v0, v29

    iput v13, v0, Landroid/icu/text/BidiRun;->start:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    aget-object v29, v29, v15

    aget-byte v30, v21, v13

    xor-int v30, v30, v9

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-byte v0, v1, Landroid/icu/text/BidiRun;->level:B

    :goto_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    aget-object v29, v29, v6

    move-object/from16 v0, v29

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v30, v0

    add-int/lit8 v31, v6, -0x1

    aget-object v30, v30, v31

    move-object/from16 v0, v30

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v30, v0

    sub-int v18, v29, v30

    goto/16 :goto_5

    :cond_c
    if-lez v9, :cond_f

    move/from16 v24, v14

    add-int v29, v14, v18

    add-int/lit8 v12, v29, -0x1

    const/16 v25, 0x1

    :goto_7
    move/from16 v11, v24

    :goto_8
    if-eq v11, v12, :cond_10

    aget v7, v26, v11

    add-int v29, v11, v25

    aget v8, v26, v29

    sub-int v29, v7, v8

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->Bidi_Abs(I)I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    aget-byte v29, v21, v7

    aget-byte v30, v21, v8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_e

    :cond_d
    aget v29, v26, v24

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1, v7}, Landroid/icu/text/Bidi;->Bidi_Min(II)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    aget-object v29, v29, v15

    move-object/from16 v0, v29

    iput v13, v0, Landroid/icu/text/BidiRun;->start:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    aget-object v29, v29, v15

    aget-byte v30, v21, v13

    xor-int v30, v30, v9

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-byte v0, v1, Landroid/icu/text/BidiRun;->level:B

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    aget-object v29, v29, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v30, v0

    aget-object v30, v30, v6

    move-object/from16 v0, v30

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Landroid/icu/text/BidiRun;->limit:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    aget-object v29, v29, v6

    move-object/from16 v0, v29

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    move/from16 v30, v0

    sub-int v31, v11, v24

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->Bidi_Abs(I)I

    move-result v31

    add-int/lit8 v31, v31, 0x1

    sub-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Landroid/icu/text/BidiRun;->limit:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    aget-object v29, v29, v6

    move-object/from16 v0, v29

    iget v0, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    move/from16 v29, v0

    and-int/lit8 v10, v29, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    aget-object v29, v29, v15

    move-object/from16 v0, v29

    iput v10, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    aget-object v29, v29, v6

    move-object/from16 v0, v29

    iget v0, v0, Landroid/icu/text/BidiRun;->insertRemove:I

    move/from16 v30, v0

    not-int v0, v10

    move/from16 v31, v0

    and-int v30, v30, v31

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Landroid/icu/text/BidiRun;->insertRemove:I

    add-int v24, v11, v25

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v15, v15, -0x1

    :cond_e
    add-int v11, v11, v25

    goto/16 :goto_8

    :cond_f
    add-int v29, v14, v18

    add-int/lit8 v24, v29, -0x1

    move v12, v14

    const/16 v25, -0x1

    goto/16 :goto_7

    :cond_10
    if-lez v5, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    aget-object v29, v29, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v30, v0

    aget-object v30, v30, v6

    invoke-virtual/range {v29 .. v30}, Landroid/icu/text/BidiRun;->copyFrom(Landroid/icu/text/BidiRun;)V

    :cond_11
    aget v29, v26, v24

    aget v30, v26, v12

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/Bidi;->Bidi_Min(II)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    aget-object v29, v29, v15

    move-object/from16 v0, v29

    iput v13, v0, Landroid/icu/text/BidiRun;->start:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    move-object/from16 v29, v0

    aget-object v29, v29, v15

    aget-byte v30, v21, v13

    xor-int v30, v30, v9

    move/from16 v0, v30

    int-to-byte v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-byte v0, v1, Landroid/icu/text/BidiRun;->level:B

    goto/16 :goto_6

    :cond_12
    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/text/Bidi;->paraLevel:B

    move/from16 v29, v0

    xor-int/lit8 v29, v29, 0x1

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-byte v0, v1, Landroid/icu/text/Bidi;->paraLevel:B

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/Bidi;->text:[C

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->length:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->originalLength:I

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-byte v0, v1, Landroid/icu/text/Bidi;->direction:B

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/Bidi;->levels:[B

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->trailingWSStart:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/Bidi;->runCount:I

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_13

    const/16 v29, 0x2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-byte v0, v1, Landroid/icu/text/Bidi;->direction:B

    :cond_13
    const/16 v29, 0x3

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/Bidi;->reorderingMode:I

    return-void
.end method

.method public setReorderingMode(I)V
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x7

    if-lt p1, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Landroid/icu/text/Bidi;->isInverse:Z

    return-void
.end method

.method public setReorderingOptions(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, -0x2

    iput v0, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    goto :goto_0
.end method

.method testDirPropFlagAt(II)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v1, v1, p2

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method verifyRange(III)V
    .locals 3

    if-lt p1, p2, :cond_0

    if-lt p1, p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is out of range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method verifyValidPara()V
    .locals 1

    iget-object v0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method verifyValidParaOrLine()V
    .locals 2

    iget-object v0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    if-eq v0, v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_2
    return-void
.end method

.method public writeReordered(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Landroid/icu/text/BidiWriter;->writeReordered(Landroid/icu/text/Bidi;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
