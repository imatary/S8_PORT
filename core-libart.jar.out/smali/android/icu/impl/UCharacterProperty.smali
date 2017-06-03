.class public final Landroid/icu/impl/UCharacterProperty;
.super Ljava/lang/Object;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UCharacterProperty$10;,
        Landroid/icu/impl/UCharacterProperty$11;,
        Landroid/icu/impl/UCharacterProperty$12;,
        Landroid/icu/impl/UCharacterProperty$13;,
        Landroid/icu/impl/UCharacterProperty$14;,
        Landroid/icu/impl/UCharacterProperty$15;,
        Landroid/icu/impl/UCharacterProperty$16;,
        Landroid/icu/impl/UCharacterProperty$17;,
        Landroid/icu/impl/UCharacterProperty$18;,
        Landroid/icu/impl/UCharacterProperty$19;,
        Landroid/icu/impl/UCharacterProperty$1;,
        Landroid/icu/impl/UCharacterProperty$20;,
        Landroid/icu/impl/UCharacterProperty$21;,
        Landroid/icu/impl/UCharacterProperty$22;,
        Landroid/icu/impl/UCharacterProperty$23;,
        Landroid/icu/impl/UCharacterProperty$2;,
        Landroid/icu/impl/UCharacterProperty$3;,
        Landroid/icu/impl/UCharacterProperty$4;,
        Landroid/icu/impl/UCharacterProperty$5;,
        Landroid/icu/impl/UCharacterProperty$6;,
        Landroid/icu/impl/UCharacterProperty$7;,
        Landroid/icu/impl/UCharacterProperty$8;,
        Landroid/icu/impl/UCharacterProperty$9;,
        Landroid/icu/impl/UCharacterProperty$BiDiIntProperty;,
        Landroid/icu/impl/UCharacterProperty$BinaryProperty;,
        Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;,
        Landroid/icu/impl/UCharacterProperty$CombiningClassIntProperty;,
        Landroid/icu/impl/UCharacterProperty$IntProperty;,
        Landroid/icu/impl/UCharacterProperty$IsAcceptable;,
        Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;,
        Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final AGE_SHIFT_:I = 0x18

.field private static final ALPHABETIC_PROPERTY_:I = 0x8

.field private static final ASCII_HEX_DIGIT_PROPERTY_:I = 0x7

.field private static final BLOCK_MASK_:I = 0x1ff00

.field private static final BLOCK_SHIFT_:I = 0x8

.field private static final CGJ:I = 0x34f

.field private static final CR:I = 0xd

.field private static final DASH_PROPERTY_:I = 0x1

.field private static final DATA_FILE_NAME_:Ljava/lang/String; = "uprops.icu"

.field private static final DATA_FORMAT:I = 0x5550726f

.field private static final DECOMPOSITION_TYPE_MASK_:I = 0x1f

.field private static final DEFAULT_IGNORABLE_CODE_POINT_PROPERTY_:I = 0x13

.field private static final DEL:I = 0x7f

.field private static final DEPRECATED_PROPERTY_:I = 0x14

.field private static final DIACRITIC_PROPERTY_:I = 0xa

.field private static final EAST_ASIAN_MASK_:I = 0xe0000

.field private static final EAST_ASIAN_SHIFT_:I = 0x11

.field private static final EXTENDER_PROPERTY_:I = 0xb

.field private static final FIGURESP:I = 0x2007

.field private static final FIRST_NIBBLE_SHIFT_:I = 0x4

.field private static final GCB_MASK:I = 0x3e0

.field private static final GCB_SHIFT:I = 0x5

.field private static final GC_CC_MASK:I

.field private static final GC_CN_MASK:I

.field private static final GC_CS_MASK:I

.field private static final GC_ZL_MASK:I

.field private static final GC_ZP_MASK:I

.field private static final GC_ZS_MASK:I

.field private static final GC_Z_MASK:I

.field private static final GRAPHEME_BASE_PROPERTY_:I = 0x1a

.field private static final GRAPHEME_EXTEND_PROPERTY_:I = 0xd

.field private static final GRAPHEME_LINK_PROPERTY_:I = 0xe

.field private static final HAIRSP:I = 0x200a

.field private static final HEX_DIGIT_PROPERTY_:I = 0x6

.field private static final HYPHEN_PROPERTY_:I = 0x2

.field private static final IDEOGRAPHIC_PROPERTY_:I = 0x9

.field private static final IDS_BINARY_OPERATOR_PROPERTY_:I = 0xf

.field private static final IDS_TRINARY_OPERATOR_PROPERTY_:I = 0x10

.field private static final ID_CONTINUE_PROPERTY_:I = 0x19

.field private static final ID_START_PROPERTY_:I = 0x18

.field private static final INHSWAP:I = 0x206a

.field public static final INSTANCE:Landroid/icu/impl/UCharacterProperty;

.field private static final LAST_NIBBLE_MASK_:I = 0xf

.field public static final LATIN_CAPITAL_LETTER_I_WITH_DOT_ABOVE_:C = '\u0130'

.field public static final LATIN_SMALL_LETTER_DOTLESS_I_:C = '\u0131'

.field public static final LATIN_SMALL_LETTER_I_:C = 'i'

.field private static final LB_MASK:I = 0x3f00000

.field private static final LB_SHIFT:I = 0x14

.field private static final LOGICAL_ORDER_EXCEPTION_PROPERTY_:I = 0x15

.field private static final MATH_PROPERTY_:I = 0x5

.field static final MY_MASK:I = 0x1e

.field private static final NBSP:I = 0xa0

.field private static final NL:I = 0x85

.field private static final NNBSP:I = 0x202f

.field private static final NOMDIG:I = 0x206f

.field private static final NONCHARACTER_CODE_POINT_PROPERTY_:I = 0xc

.field private static final NTV_BASE60_START_:I = 0x300

.field private static final NTV_DECIMAL_START_:I = 0x1

.field private static final NTV_DIGIT_START_:I = 0xb

.field private static final NTV_FRACTION_START_:I = 0xb0

.field private static final NTV_LARGE_START_:I = 0x1e0

.field private static final NTV_NONE_:I = 0x0

.field private static final NTV_NUMERIC_START_:I = 0x15

.field private static final NTV_RESERVED_START_:I = 0x324

.field private static final NUMERIC_TYPE_VALUE_SHIFT_:I = 0x6

.field private static final PATTERN_SYNTAX:I = 0x1d

.field private static final PATTERN_WHITE_SPACE:I = 0x1e

.field private static final QUOTATION_MARK_PROPERTY_:I = 0x3

.field private static final RADICAL_PROPERTY_:I = 0x11

.field private static final RLM:I = 0x200f

.field private static final SB_MASK:I = 0xf8000

.field private static final SB_SHIFT:I = 0xf

.field public static final SCRIPT_MASK_:I = 0xff

.field public static final SCRIPT_X_MASK:I = 0xc000ff

.field public static final SCRIPT_X_WITH_COMMON:I = 0x400000

.field public static final SCRIPT_X_WITH_INHERITED:I = 0x800000

.field public static final SCRIPT_X_WITH_OTHER:I = 0xc00000

.field public static final SRC_BIDI:I = 0x5

.field public static final SRC_CASE:I = 0x4

.field public static final SRC_CASE_AND_NORM:I = 0x7

.field public static final SRC_CHAR:I = 0x1

.field public static final SRC_CHAR_AND_PROPSVEC:I = 0x6

.field public static final SRC_COUNT:I = 0xc

.field public static final SRC_NAMES:I = 0x3

.field public static final SRC_NFC:I = 0x8

.field public static final SRC_NFC_CANON_ITER:I = 0xb

.field public static final SRC_NFKC:I = 0x9

.field public static final SRC_NFKC_CF:I = 0xa

.field public static final SRC_NONE:I = 0x0

.field public static final SRC_PROPSVEC:I = 0x2

.field private static final S_TERM_PROPERTY_:I = 0x1b

.field private static final TAB:I = 0x9

.field private static final TERMINAL_PUNCTUATION_PROPERTY_:I = 0x4

.field public static final TYPE_MASK:I = 0x1f

.field private static final UNIFIED_IDEOGRAPH_PROPERTY_:I = 0x12

.field private static final U_A:I = 0x41

.field private static final U_F:I = 0x46

.field private static final U_FW_A:I = 0xff21

.field private static final U_FW_F:I = 0xff26

.field private static final U_FW_Z:I = 0xff3a

.field private static final U_FW_a:I = 0xff41

.field private static final U_FW_f:I = 0xff46

.field private static final U_FW_z:I = 0xff5a

.field private static final U_Z:I = 0x5a

.field private static final U_a:I = 0x61

.field private static final U_f:I = 0x66

.field private static final U_z:I = 0x7a

.field private static final VARIATION_SELECTOR_PROPERTY_:I = 0x1c

.field private static final WB_MASK:I = 0x7c00

.field private static final WB_SHIFT:I = 0xa

.field private static final WHITE_SPACE_PROPERTY_:I = 0x0

.field private static final WJ:I = 0x2060

.field private static final XID_CONTINUE_PROPERTY_:I = 0x17

.field private static final XID_START_PROPERTY_:I = 0x16

.field private static final ZWNBSP:I = 0xfeff

.field private static final gcbToHst:[I


# instance fields
.field binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

.field intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

.field m_additionalColumnsCount_:I

.field m_additionalTrie_:Landroid/icu/impl/Trie2_16;

.field m_additionalVectors_:[I

.field m_maxBlockScriptValue_:I

.field m_maxJTGValue_:I

.field public m_scriptExtensions_:[C

.field public m_trie_:Landroid/icu/impl/Trie2_16;

.field public m_unicodeVersion_:Landroid/icu/util/VersionInfo;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Landroid/icu/impl/UCharacterProperty;->gcbToHst:[I

    return-object v0
.end method

.method static synthetic -wrap0(I)Z
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/UCharacterProperty;->isgraphPOSIX(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(I)I
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(I)I
    .locals 1

    invoke-static {p0}, Landroid/icu/impl/UCharacterProperty;->ntvGetType(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v2, 0x0

    const-class v1, Landroid/icu/impl/UCharacterProperty;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Landroid/icu/impl/UCharacterProperty;->-assertionsDisabled:Z

    invoke-static {v2}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v1

    sput v1, Landroid/icu/impl/UCharacterProperty;->GC_CN_MASK:I

    const/16 v1, 0xf

    invoke-static {v1}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v1

    sput v1, Landroid/icu/impl/UCharacterProperty;->GC_CC_MASK:I

    const/16 v1, 0x12

    invoke-static {v1}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v1

    sput v1, Landroid/icu/impl/UCharacterProperty;->GC_CS_MASK:I

    const/16 v1, 0xc

    invoke-static {v1}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v1

    sput v1, Landroid/icu/impl/UCharacterProperty;->GC_ZS_MASK:I

    const/16 v1, 0xd

    invoke-static {v1}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v1

    sput v1, Landroid/icu/impl/UCharacterProperty;->GC_ZL_MASK:I

    const/16 v1, 0xe

    invoke-static {v1}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v1

    sput v1, Landroid/icu/impl/UCharacterProperty;->GC_ZP_MASK:I

    sget v1, Landroid/icu/impl/UCharacterProperty;->GC_ZS_MASK:I

    sget v2, Landroid/icu/impl/UCharacterProperty;->GC_ZL_MASK:I

    or-int/2addr v1, v2

    sget v2, Landroid/icu/impl/UCharacterProperty;->GC_ZP_MASK:I

    or-int/2addr v1, v2

    sput v1, Landroid/icu/impl/UCharacterProperty;->GC_Z_MASK:I

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/icu/impl/UCharacterProperty;->gcbToHst:[I

    :try_start_0
    new-instance v1, Landroid/icu/impl/UCharacterProperty;

    invoke-direct {v1}, Landroid/icu/impl/UCharacterProperty;-><init>()V

    sput-object v1, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/MissingResourceException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x4
        0x5
        0x3
        0x2
    .end array-data
.end method

.method private constructor <init>()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x39

    new-array v2, v2, [Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/16 v5, 0x100

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/16 v5, 0x80

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$1;

    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$1;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$2;

    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$2;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    const/4 v4, 0x3

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/4 v4, 0x4

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/high16 v5, 0x80000

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/4 v4, 0x5

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/high16 v5, 0x100000

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/4 v4, 0x6

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/16 v5, 0x400

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/4 v4, 0x7

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/16 v5, 0x800

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x8

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$3;

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$3;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x9

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/high16 v5, 0x4000000

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0xa

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/16 v5, 0x2000

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0xb

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/16 v5, 0x4000

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0xc

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/16 v5, 0x40

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0xd

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0xe

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/high16 v5, 0x2000000

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0xf

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/high16 v5, 0x1000000

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x10

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/16 v5, 0x200

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x11

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const v5, 0x8000

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x12

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/high16 v5, 0x10000

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x13

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$4;

    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$4;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x14

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/high16 v5, 0x200000

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x15

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v4, 0x16

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x16

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/16 v5, 0x20

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x17

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/16 v5, 0x1000

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x18

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x19

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/high16 v5, 0x20000

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x1a

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x1b

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/16 v5, 0x10

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x1c

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/high16 v5, 0x40000

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x1d

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v4, 0x1e

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x1e

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x1f

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/high16 v5, 0x800000

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x20

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/high16 v5, 0x400000

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x21

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v4, 0x22

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x22

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/high16 v5, 0x8000000

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x23

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/high16 v5, 0x10000000

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x24

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    const/16 v4, 0x8

    const/16 v5, 0x25

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x25

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    const/16 v4, 0x9

    const/16 v5, 0x26

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x26

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    const/16 v4, 0x8

    const/16 v5, 0x27

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x27

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    const/16 v4, 0x9

    const/16 v5, 0x28

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x28

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$5;

    const/16 v4, 0xb

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$5;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x29

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/high16 v5, 0x20000000

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x2a

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v4, 0x2b

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$6;

    const/4 v4, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$6;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x2c

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$7;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$7;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x2d

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$8;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$8;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x2e

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$9;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$9;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x2f

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$10;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$10;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x30

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v4, 0x31

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x31

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v4, 0x32

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x32

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v4, 0x33

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x33

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v4, 0x34

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x34

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v4, 0x35

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x35

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$11;

    const/4 v4, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$11;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x36

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v4, 0x37

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x37

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$12;

    const/16 v4, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1, v4}, Landroid/icu/impl/UCharacterProperty$12;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x38

    aput-object v3, v2, v4

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/icu/impl/UCharacterProperty;->binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v2, 0x16

    new-array v0, v2, [Landroid/icu/impl/UCharacterProperty$IntProperty;

    move-object/from16 v18, v0

    new-instance v2, Landroid/icu/impl/UCharacterProperty$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Landroid/icu/impl/UCharacterProperty$13;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;)V

    const/4 v3, 0x0

    aput-object v2, v18, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$IntProperty;

    const/4 v3, 0x0

    const v4, 0x1ff00

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/4 v3, 0x1

    aput-object v2, v18, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$14;

    const/16 v3, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1, v3}, Landroid/icu/impl/UCharacterProperty$14;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    const/4 v3, 0x2

    aput-object v2, v18, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$IntProperty;

    const/4 v3, 0x2

    const/16 v4, 0x1f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/4 v3, 0x3

    aput-object v2, v18, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$IntProperty;

    const/4 v3, 0x0

    const/high16 v4, 0xe0000

    const/16 v5, 0x11

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/4 v3, 0x4

    aput-object v2, v18, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$15;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1, v3}, Landroid/icu/impl/UCharacterProperty$15;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    const/4 v3, 0x5

    aput-object v2, v18, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$16;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Landroid/icu/impl/UCharacterProperty$16;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;)V

    const/4 v3, 0x6

    aput-object v2, v18, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$17;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Landroid/icu/impl/UCharacterProperty$17;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;)V

    const/4 v3, 0x7

    aput-object v2, v18, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$IntProperty;

    const/4 v3, 0x2

    const/high16 v4, 0x3f00000

    const/16 v5, 0x14

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/16 v3, 0x8

    aput-object v2, v18, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$18;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1, v3}, Landroid/icu/impl/UCharacterProperty$18;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v3, 0x9

    aput-object v2, v18, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$19;

    const/4 v5, 0x0

    const/16 v6, 0xff

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/UCharacterProperty$19;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;III)V

    const/16 v3, 0xa

    aput-object v2, v18, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$20;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1, v3}, Landroid/icu/impl/UCharacterProperty$20;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v3, 0xb

    aput-object v2, v18, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    const/16 v3, 0x8

    const/16 v4, 0x100c

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/16 v3, 0xc

    aput-object v2, v18, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    const/16 v3, 0x9

    const/16 v4, 0x100d

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/16 v3, 0xd

    aput-object v2, v18, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    const/16 v3, 0x8

    const/16 v4, 0x100e

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/16 v3, 0xe

    aput-object v2, v18, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    const/16 v3, 0x9

    const/16 v4, 0x100f

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/16 v3, 0xf

    aput-object v2, v18, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$21;

    const/16 v3, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1, v3}, Landroid/icu/impl/UCharacterProperty$21;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v3, 0x10

    aput-object v2, v18, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$22;

    const/16 v3, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1, v3}, Landroid/icu/impl/UCharacterProperty$22;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v3, 0x11

    aput-object v2, v18, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$IntProperty;

    const/4 v3, 0x2

    const/16 v4, 0x3e0

    const/4 v5, 0x5

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/16 v3, 0x12

    aput-object v2, v18, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$IntProperty;

    const/4 v3, 0x2

    const v4, 0xf8000

    const/16 v5, 0xf

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/16 v3, 0x13

    aput-object v2, v18, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$IntProperty;

    const/4 v3, 0x2

    const/16 v4, 0x7c00

    const/16 v5, 0xa

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/16 v3, 0x14

    aput-object v2, v18, v3

    new-instance v2, Landroid/icu/impl/UCharacterProperty$23;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Landroid/icu/impl/UCharacterProperty$23;-><init>(Landroid/icu/impl/UCharacterProperty;Landroid/icu/impl/UCharacterProperty;)V

    const/16 v3, 0x15

    aput-object v2, v18, v3

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/impl/UCharacterProperty;->intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/UCharacterProperty;->binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    array-length v2, v2

    const/16 v3, 0x39

    if-eq v2, v3, :cond_0

    new-instance v2, Landroid/icu/util/ICUException;

    const-string/jumbo v3, "binProps.length!=UProperty.BINARY_LIMIT"

    invoke-direct {v2, v3}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/UCharacterProperty;->intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

    array-length v2, v2

    const/16 v3, 0x16

    if-eq v2, v3, :cond_1

    new-instance v2, Landroid/icu/util/ICUException;

    const-string/jumbo v3, "intProps.length!=(UProperty.INT_LIMIT-UProperty.INT_START)"

    invoke-direct {v2, v3}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string/jumbo v2, "uprops.icu"

    invoke-static {v2}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v10

    new-instance v2, Landroid/icu/impl/UCharacterProperty$IsAcceptable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/icu/impl/UCharacterProperty$IsAcceptable;-><init>(Landroid/icu/impl/UCharacterProperty$IsAcceptable;)V

    const v3, 0x5550726f

    invoke-static {v10, v3, v2}, Landroid/icu/impl/ICUBinary;->readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)Landroid/icu/util/VersionInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/icu/impl/UCharacterProperty;->m_unicodeVersion_:Landroid/icu/util/VersionInfo;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/impl/UCharacterProperty;->m_maxBlockScriptValue_:I

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/impl/UCharacterProperty;->m_maxJTGValue_:I

    const/16 v2, 0x10

    invoke-static {v10, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    invoke-static {v10}, Landroid/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/icu/impl/UCharacterProperty;->m_trie_:Landroid/icu/impl/Trie2_16;

    add-int/lit8 v2, v13, -0x10

    mul-int/lit8 v11, v2, 0x4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/UCharacterProperty;->m_trie_:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v2}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v11, :cond_2

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "uprops.icu: not enough bytes for main trie"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    sub-int v2, v11, v17

    invoke-static {v10, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    sub-int v2, v8, v13

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v10, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    if-lez v2, :cond_4

    invoke-static {v10}, Landroid/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/icu/impl/UCharacterProperty;->m_additionalTrie_:Landroid/icu/impl/Trie2_16;

    sub-int v2, v9, v8

    mul-int/lit8 v11, v2, 0x4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/impl/UCharacterProperty;->m_additionalTrie_:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v2}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v11, :cond_3

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "uprops.icu: not enough bytes for additional-properties trie"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    sub-int v2, v11, v17

    invoke-static {v10, v2}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    sub-int v16, v15, v9

    const/4 v2, 0x0

    move/from16 v0, v16

    invoke-static {v10, v0, v2}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/icu/impl/UCharacterProperty;->m_additionalVectors_:[I

    :cond_4
    sub-int v2, v14, v15

    mul-int/lit8 v12, v2, 0x2

    if-lez v12, :cond_5

    const/4 v2, 0x0

    invoke-static {v10, v12, v2}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/icu/impl/UCharacterProperty;->m_scriptExtensions_:[C

    :cond_5
    return-void
.end method

.method public static getEuropeanDigit(I)I
    .locals 6

    const v5, 0xff21

    const/16 v4, 0x7a

    const/16 v1, 0x61

    const/16 v3, 0x5a

    const/16 v0, 0x41

    if-le p0, v4, :cond_1

    if-ge p0, v5, :cond_1

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    if-lt p0, v0, :cond_0

    if-le p0, v3, :cond_2

    if-lt p0, v1, :cond_0

    :cond_2
    const v2, 0xff5a

    if-gt p0, v2, :cond_0

    const v2, 0xff3a

    if-le p0, v2, :cond_3

    const v2, 0xff41

    if-lt p0, v2, :cond_0

    :cond_3
    if-gt p0, v4, :cond_5

    add-int/lit8 v2, p0, 0xa

    if-gt p0, v3, :cond_4

    :goto_0
    sub-int v0, v2, v0

    return v0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    const v0, 0xff3a

    if-gt p0, v0, :cond_6

    add-int/lit8 v0, p0, 0xa

    sub-int/2addr v0, v5

    return v0

    :cond_6
    add-int/lit8 v0, p0, 0xa

    const v1, 0xff41

    sub-int/2addr v0, v1

    return v0
.end method

.method public static final getMask(I)I
    .locals 1

    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method private static final getNumericTypeValue(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x6

    return v0
.end method

.method private static final isgraphPOSIX(I)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v1

    sget v2, Landroid/icu/impl/UCharacterProperty;->GC_CC_MASK:I

    sget v3, Landroid/icu/impl/UCharacterProperty;->GC_CS_MASK:I

    or-int/2addr v2, v3

    sget v3, Landroid/icu/impl/UCharacterProperty;->GC_CN_MASK:I

    or-int/2addr v2, v3

    sget v3, Landroid/icu/impl/UCharacterProperty;->GC_Z_MASK:I

    or-int/2addr v2, v3

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static final ntvGetType(I)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xb

    if-ge p0, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x15

    if-ge p0, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public addPropertyStarts(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 3

    iget-object v2, p0, Landroid/icu/impl/UCharacterProperty;->m_trie_:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v2}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Trie2$Range;

    iget-boolean v2, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-eqz v2, :cond_1

    :cond_0
    const/16 v2, 0x9

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x1c

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x85

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x86

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x7f

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x200a

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x2010

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x206a

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x2070

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const v2, 0xfeff

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const v2, 0xff00

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0xa0

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0xa1

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x2007

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x2008

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x202f

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x2030

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x3007

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x3008

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x4e00

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x4e01

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x4e8c

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x4e8d

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x4e09

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x4e0a

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x56db

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x56dc

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x4e94

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x4e95

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x516d

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x516e

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x4e03

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x4e04

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x516b

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x516c

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x4e5d

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x4e5e

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x61

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x7b

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x41

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const v2, 0xff41

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const v2, 0xff5b

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const v2, 0xff21

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const v2, 0xff3b

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x67

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x47

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const v2, 0xff47

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const v2, 0xff27

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x2060

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const v2, 0xfff0

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const v2, 0xfffc

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/high16 v2, 0xe0000

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const v2, 0xe1000

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x34f

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x350

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    return-object p1

    :cond_1
    iget v2, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto/16 :goto_0
.end method

.method public digit(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getAdditional(II)I
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Landroid/icu/impl/UCharacterProperty;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    if-lt p2, v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->m_additionalVectors_:[I

    iget-object v1, p0, Landroid/icu/impl/UCharacterProperty;->m_additionalTrie_:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v1, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v1

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public getAge(I)Landroid/icu/util/VersionInfo;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result v1

    shr-int/lit8 v0, v1, 0x18

    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0xf

    and-int/lit8 v2, v0, 0xf

    invoke-static {v1, v2, v3, v3}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v1

    return-object v1
.end method

.method public getIntPropertyMaxValue(I)I
    .locals 2

    const/16 v0, 0x1000

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_1

    const/16 v0, 0x39

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v0, 0x1016

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

    add-int/lit16 v1, p1, -0x1000

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/icu/impl/UCharacterProperty$IntProperty;->getMaxValue(I)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getIntPropertyValue(II)I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1000

    if-ge p2, v1, :cond_1

    if-ltz p2, :cond_3

    const/16 v1, 0x39

    if-ge p2, v1, :cond_3

    iget-object v1, p0, Landroid/icu/impl/UCharacterProperty;->binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    aget-object v1, v1, p2

    invoke-virtual {v1, p1}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const/16 v1, 0x1016

    if-ge p2, v1, :cond_2

    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

    add-int/lit16 v1, p2, -0x1000

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/icu/impl/UCharacterProperty$IntProperty;->getValue(I)I

    move-result v0

    return v0

    :cond_2
    const/16 v1, 0x2000

    if-ne p2, v1, :cond_3

    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty;->getType(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    return v0

    :cond_3
    return v0
.end method

.method public getMaxValues(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    iget v0, p0, Landroid/icu/impl/UCharacterProperty;->m_maxBlockScriptValue_:I

    return v0

    :pswitch_2
    iget v0, p0, Landroid/icu/impl/UCharacterProperty;->m_maxJTGValue_:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getNumericValue(I)I
    .locals 7

    const/16 v6, 0x9

    const/4 v5, -0x2

    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result v4

    invoke-static {v4}, Landroid/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/icu/impl/UCharacterProperty;->getEuropeanDigit(I)I

    move-result v4

    return v4

    :cond_0
    const/16 v4, 0xb

    if-ge v2, v4, :cond_1

    add-int/lit8 v4, v2, -0x1

    return v4

    :cond_1
    const/16 v4, 0x15

    if-ge v2, v4, :cond_2

    add-int/lit8 v4, v2, -0xb

    return v4

    :cond_2
    const/16 v4, 0xb0

    if-ge v2, v4, :cond_3

    add-int/lit8 v4, v2, -0x15

    return v4

    :cond_3
    const/16 v4, 0x1e0

    if-ge v2, v4, :cond_4

    return v5

    :cond_4
    const/16 v4, 0x300

    if-ge v2, v4, :cond_8

    shr-int/lit8 v4, v2, 0x5

    add-int/lit8 v1, v4, -0xe

    and-int/lit8 v4, v2, 0x1f

    add-int/lit8 v0, v4, 0x2

    if-lt v0, v6, :cond_5

    if-ne v0, v6, :cond_7

    const/4 v4, 0x2

    if-gt v1, v4, :cond_7

    :cond_5
    move v3, v1

    :cond_6
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_6

    return v3

    :cond_7
    return v5

    :cond_8
    const/16 v4, 0x324

    if-ge v2, v4, :cond_9

    shr-int/lit8 v4, v2, 0x2

    add-int/lit16 v3, v4, -0xbf

    and-int/lit8 v4, v2, 0x3

    add-int/lit8 v0, v4, 0x1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    const v4, 0xc5c100

    mul-int/2addr v3, v4

    goto :goto_0

    :pswitch_1
    const v4, 0x34bc0

    mul-int/2addr v3, v4

    goto :goto_0

    :pswitch_2
    mul-int/lit16 v3, v3, 0xe10

    goto :goto_0

    :pswitch_3
    mul-int/lit8 v3, v3, 0x3c

    goto :goto_0

    :cond_9
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getProperty(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->m_trie_:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    return v0
.end method

.method public final getSource(I)I
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    if-gez p1, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x39

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->getSource()I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x1000

    if-ge p1, v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x1016

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

    add-int/lit16 v1, p1, -0x1000

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/icu/impl/UCharacterProperty$IntProperty;->getSource()I

    move-result v0

    return v0

    :cond_3
    const/16 v0, 0x4000

    if-ge p1, v0, :cond_4

    sparse-switch p1, :sswitch_data_0

    return v1

    :sswitch_0
    const/4 v0, 0x1

    return v0

    :cond_4
    const/16 v0, 0x400e

    if-ge p1, v0, :cond_5

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    return v2

    :pswitch_1
    const/4 v0, 0x5

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :cond_5
    packed-switch p1, :pswitch_data_1

    return v1

    :pswitch_4
    return v2

    :sswitch_data_0
    .sparse-switch
        0x2000 -> :sswitch_0
        0x3000 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x4000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7000
        :pswitch_4
    .end packed-switch
.end method

.method public getType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public getUnicodeNumericValue(I)D
    .locals 12

    const-wide v10, -0x3e6290cbac000000L    # -1.23456789E8

    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result v8

    invoke-static {v8}, Landroid/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    move-result v3

    if-nez v3, :cond_0

    return-wide v10

    :cond_0
    const/16 v8, 0xb

    if-ge v3, v8, :cond_1

    add-int/lit8 v8, v3, -0x1

    int-to-double v8, v8

    return-wide v8

    :cond_1
    const/16 v8, 0x15

    if-ge v3, v8, :cond_2

    add-int/lit8 v8, v3, -0xb

    int-to-double v8, v8

    return-wide v8

    :cond_2
    const/16 v8, 0xb0

    if-ge v3, v8, :cond_3

    add-int/lit8 v8, v3, -0x15

    int-to-double v8, v8

    return-wide v8

    :cond_3
    const/16 v8, 0x1e0

    if-ge v3, v8, :cond_4

    shr-int/lit8 v8, v3, 0x4

    add-int/lit8 v7, v8, -0xc

    and-int/lit8 v8, v3, 0xf

    add-int/lit8 v0, v8, 0x1

    int-to-double v8, v7

    int-to-double v10, v0

    div-double/2addr v8, v10

    return-wide v8

    :cond_4
    const/16 v8, 0x300

    if-ge v3, v8, :cond_6

    shr-int/lit8 v8, v3, 0x5

    add-int/lit8 v2, v8, -0xe

    and-int/lit8 v8, v3, 0x1f

    add-int/lit8 v1, v8, 0x2

    int-to-double v4, v2

    :goto_0
    const/4 v8, 0x4

    if-lt v1, v8, :cond_5

    const-wide v8, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, v8

    add-int/lit8 v1, v1, -0x4

    goto :goto_0

    :cond_5
    packed-switch v1, :pswitch_data_0

    :goto_1
    return-wide v4

    :pswitch_0
    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v8

    goto :goto_1

    :pswitch_1
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v8

    goto :goto_1

    :pswitch_2
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v8

    goto :goto_1

    :cond_6
    const/16 v8, 0x324

    if-ge v3, v8, :cond_7

    shr-int/lit8 v8, v3, 0x2

    add-int/lit16 v6, v8, -0xbf

    and-int/lit8 v8, v3, 0x3

    add-int/lit8 v1, v8, 0x1

    packed-switch v1, :pswitch_data_1

    :goto_2
    int-to-double v8, v6

    return-wide v8

    :pswitch_3
    const v8, 0xc5c100

    mul-int/2addr v6, v8

    goto :goto_2

    :pswitch_4
    const v8, 0x34bc0

    mul-int/2addr v6, v8

    goto :goto_2

    :pswitch_5
    mul-int/lit16 v6, v6, 0xe10

    goto :goto_2

    :pswitch_6
    mul-int/lit8 v6, v6, 0x3c

    goto :goto_2

    :cond_7
    return-wide v10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public hasBinaryProperty(II)Z
    .locals 2

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    const/16 v0, 0x39

    if-gt v0, p2, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->contains(I)Z

    move-result v0

    return v0
.end method

.method public upropsvec_addPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .locals 3

    iget v2, p0, Landroid/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/icu/impl/UCharacterProperty;->m_additionalTrie_:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v2}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Trie2$Range;

    iget-boolean v2, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v2, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0
.end method
