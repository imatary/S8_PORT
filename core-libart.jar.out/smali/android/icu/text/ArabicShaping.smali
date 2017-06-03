.class public final Landroid/icu/text/ArabicShaping;
.super Ljava/lang/Object;
.source "ArabicShaping.java"


# static fields
.field private static final ALEFTYPE:I = 0x20

.field private static final DESHAPE_MODE:I = 0x1

.field public static final DIGITS_AN2EN:I = 0x40

.field public static final DIGITS_EN2AN:I = 0x20

.field public static final DIGITS_EN2AN_INIT_AL:I = 0x80

.field public static final DIGITS_EN2AN_INIT_LR:I = 0x60

.field public static final DIGITS_MASK:I = 0xe0

.field public static final DIGITS_NOOP:I = 0x0

.field public static final DIGIT_TYPE_AN:I = 0x0

.field public static final DIGIT_TYPE_AN_EXTENDED:I = 0x100

.field public static final DIGIT_TYPE_MASK:I = 0x100

.field private static final HAMZA06_CHAR:C = '\u0621'

.field private static final HAMZAFE_CHAR:C = '\ufe80'

.field private static final IRRELEVANT:I = 0x4

.field public static final LAMALEF_AUTO:I = 0x10000

.field public static final LAMALEF_BEGIN:I = 0x3

.field public static final LAMALEF_END:I = 0x2

.field public static final LAMALEF_MASK:I = 0x10003

.field public static final LAMALEF_NEAR:I = 0x1

.field public static final LAMALEF_RESIZE:I = 0x0

.field private static final LAMALEF_SPACE_SUB:C = '\uffff'

.field private static final LAMTYPE:I = 0x10

.field private static final LAM_CHAR:C = '\u0644'

.field public static final LENGTH_FIXED_SPACES_AT_BEGINNING:I = 0x3

.field public static final LENGTH_FIXED_SPACES_AT_END:I = 0x2

.field public static final LENGTH_FIXED_SPACES_NEAR:I = 0x1

.field public static final LENGTH_GROW_SHRINK:I = 0x0

.field public static final LENGTH_MASK:I = 0x10003

.field public static final LETTERS_MASK:I = 0x18

.field public static final LETTERS_NOOP:I = 0x0

.field public static final LETTERS_SHAPE:I = 0x8

.field public static final LETTERS_SHAPE_TASHKEEL_ISOLATED:I = 0x18

.field public static final LETTERS_UNSHAPE:I = 0x10

.field private static final LINKL:I = 0x2

.field private static final LINKR:I = 0x1

.field private static final LINK_MASK:I = 0x3

.field private static final NEW_TAIL_CHAR:C = '\ufe73'

.field private static final OLD_TAIL_CHAR:C = '\u200b'

.field public static final SEEN_MASK:I = 0x700000

.field public static final SEEN_TWOCELL_NEAR:I = 0x200000

.field private static final SHADDA06_CHAR:C = '\u0651'

.field private static final SHADDA_CHAR:C = '\ufe7c'

.field private static final SHADDA_TATWEEL_CHAR:C = '\ufe7d'

.field private static final SHAPE_MODE:I = 0x0

.field public static final SHAPE_TAIL_NEW_UNICODE:I = 0x8000000

.field public static final SHAPE_TAIL_TYPE_MASK:I = 0x8000000

.field public static final SPACES_RELATIVE_TO_TEXT_BEGIN_END:I = 0x4000000

.field public static final SPACES_RELATIVE_TO_TEXT_MASK:I = 0x4000000

.field private static final SPACE_CHAR:C = ' '

.field public static final TASHKEEL_BEGIN:I = 0x40000

.field public static final TASHKEEL_END:I = 0x60000

.field public static final TASHKEEL_MASK:I = 0xe0000

.field public static final TASHKEEL_REPLACE_BY_TATWEEL:I = 0xc0000

.field public static final TASHKEEL_RESIZE:I = 0x80000

.field private static final TASHKEEL_SPACE_SUB:C = '\ufffe'

.field private static final TATWEEL_CHAR:C = '\u0640'

.field public static final TEXT_DIRECTION_LOGICAL:I = 0x0

.field public static final TEXT_DIRECTION_MASK:I = 0x4

.field public static final TEXT_DIRECTION_VISUAL_LTR:I = 0x4

.field public static final TEXT_DIRECTION_VISUAL_RTL:I = 0x0

.field public static final YEHHAMZA_MASK:I = 0x3800000

.field public static final YEHHAMZA_TWOCELL_NEAR:I = 0x1000000

.field private static final YEH_HAMZAFE_CHAR:C = '\ufe89'

.field private static final YEH_HAMZA_CHAR:C = '\u0626'

.field private static final araLink:[I

.field private static convertFEto06:[I

.field private static final convertNormalizedLamAlef:[C

.field private static final irrelevantPos:[I

.field private static final presLink:[I

.field private static final shapeTable:[[[I

.field private static final tailFamilyIsolatedFinal:[I

.field private static final tashkeelMedial:[I

.field private static final yehHamzaToYeh:[C


# instance fields
.field private isLogical:Z

.field private final options:I

.field private spacesRelativeToTextBeginEnd:Z

.field private tailChar:C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/text/ArabicShaping;->irrelevantPos:[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/icu/text/ArabicShaping;->tailFamilyIsolatedFinal:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/icu/text/ArabicShaping;->tashkeelMedial:[I

    new-array v0, v5, [C

    fill-array-data v0, :array_3

    sput-object v0, Landroid/icu/text/ArabicShaping;->yehHamzaToYeh:[C

    new-array v0, v7, [C

    fill-array-data v0, :array_4

    sput-object v0, Landroid/icu/text/ArabicShaping;->convertNormalizedLamAlef:[C

    const/16 v0, 0xb2

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Landroid/icu/text/ArabicShaping;->araLink:[I

    const/16 v0, 0x8d

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Landroid/icu/text/ArabicShaping;->presLink:[I

    const/16 v0, 0x8d

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    sput-object v0, Landroid/icu/text/ArabicShaping;->convertFEto06:[I

    new-array v0, v7, [[[I

    new-array v1, v7, [[I

    filled-new-array {v3, v3, v3, v3}, [I

    move-result-object v2

    aput-object v2, v1, v3

    filled-new-array {v3, v3, v3, v3}, [I

    move-result-object v2

    aput-object v2, v1, v4

    filled-new-array {v3, v4, v3, v6}, [I

    move-result-object v2

    aput-object v2, v1, v5

    filled-new-array {v3, v4, v3, v4}, [I

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    new-array v1, v7, [[I

    filled-new-array {v3, v3, v5, v5}, [I

    move-result-object v2

    aput-object v2, v1, v3

    filled-new-array {v3, v3, v4, v5}, [I

    move-result-object v2

    aput-object v2, v1, v4

    filled-new-array {v3, v4, v4, v5}, [I

    move-result-object v2

    aput-object v2, v1, v5

    filled-new-array {v3, v4, v4, v6}, [I

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v7, [[I

    filled-new-array {v3, v3, v3, v3}, [I

    move-result-object v2

    aput-object v2, v1, v3

    filled-new-array {v3, v3, v3, v3}, [I

    move-result-object v2

    aput-object v2, v1, v4

    filled-new-array {v3, v4, v3, v6}, [I

    move-result-object v2

    aput-object v2, v1, v5

    filled-new-array {v3, v4, v3, v6}, [I

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [[I

    filled-new-array {v3, v3, v4, v5}, [I

    move-result-object v2

    aput-object v2, v1, v3

    filled-new-array {v3, v3, v4, v5}, [I

    move-result-object v2

    aput-object v2, v1, v4

    filled-new-array {v3, v4, v4, v5}, [I

    move-result-object v2

    aput-object v2, v1, v5

    filled-new-array {v3, v4, v4, v6}, [I

    move-result-object v2

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    sput-object v0, Landroid/icu/text/ArabicShaping;->shapeTable:[[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x4
        0x6
        0x8
        0xa
        0xc
        0xe
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 2
        -0x111s
        -0x110s
    .end array-data

    :array_4
    .array-data 2
        0x622s
        0x623s
        0x625s
        0x627s
    .end array-data

    :array_5
    .array-data 4
        0x1121
        0x1321
        0x1501
        0x1721
        0x1903
        0x1d21
        0x1f03
        0x2301
        0x2503
        0x2903
        0x2d03
        0x3103
        0x3503
        0x3901
        0x3b01
        0x3d01
        0x3f01
        0x4103
        0x4503
        0x4903
        0x4d03
        0x5103
        0x5503
        0x5903
        0x5d03
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x6103
        0x6503
        0x6903
        0x6d13
        0x7103
        0x7503
        0x7903
        0x7d01
        0x7f01
        0x8103
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x8501
        0x8701
        0x8901
        0x8b01
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x0
        0x21
        0x21
        0x0
        0x21
        0x1
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x1
        0x3
        0x3
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x3
        0x3
        0x0
        0x3
        0x0
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x0
        0x20
        0x21
        0x20
        0x21
        0x0
        0x1
        0x20
        0x21
        0x0
        0x2
        0x3
        0x1
        0x20
        0x21
        0x0
        0x2
        0x3
        0x1
        0x0
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x10
        0x12
        0x13
        0x11
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x64b
        0x64b
        0x64c
        0x64c
        0x64d
        0x64d
        0x64e
        0x64e
        0x64f
        0x64f
        0x650
        0x650
        0x651
        0x651
        0x652
        0x652
        0x621
        0x622
        0x622
        0x623
        0x623
        0x624
        0x624
        0x625
        0x625
        0x626
        0x626
        0x626
        0x626
        0x627
        0x627
        0x628
        0x628
        0x628
        0x628
        0x629
        0x629
        0x62a
        0x62a
        0x62a
        0x62a
        0x62b
        0x62b
        0x62b
        0x62b
        0x62c
        0x62c
        0x62c
        0x62c
        0x62d
        0x62d
        0x62d
        0x62d
        0x62e
        0x62e
        0x62e
        0x62e
        0x62f
        0x62f
        0x630
        0x630
        0x631
        0x631
        0x632
        0x632
        0x633
        0x633
        0x633
        0x633
        0x634
        0x634
        0x634
        0x634
        0x635
        0x635
        0x635
        0x635
        0x636
        0x636
        0x636
        0x636
        0x637
        0x637
        0x637
        0x637
        0x638
        0x638
        0x638
        0x638
        0x639
        0x639
        0x639
        0x639
        0x63a
        0x63a
        0x63a
        0x63a
        0x641
        0x641
        0x641
        0x641
        0x642
        0x642
        0x642
        0x642
        0x643
        0x643
        0x643
        0x643
        0x644
        0x644
        0x644
        0x644
        0x645
        0x645
        0x645
        0x645
        0x646
        0x646
        0x646
        0x646
        0x647
        0x647
        0x647
        0x647
        0x648
        0x648
        0x649
        0x649
        0x64a
        0x64a
        0x64a
        0x64a
        0x65c
        0x65c
        0x65d
        0x65d
        0x65e
        0x65e
        0x65f
        0x65f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 6

    const/high16 v5, 0x8000000

    const/high16 v4, 0x4000000

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit16 v0, p1, 0xe0

    const/16 v3, 0x80

    if-le v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bad DIGITS options"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    and-int v0, p1, v4

    if-ne v0, v4, :cond_2

    :goto_1
    iput-boolean v1, p0, Landroid/icu/text/ArabicShaping;->spacesRelativeToTextBeginEnd:Z

    and-int v0, p1, v5

    if-ne v0, v5, :cond_3

    const v0, 0xfe73

    iput-char v0, p0, Landroid/icu/text/ArabicShaping;->tailChar:C

    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    const/16 v0, 0x200b

    iput-char v0, p0, Landroid/icu/text/ArabicShaping;->tailChar:C

    goto :goto_2
.end method

.method private calculateSize([CII)I
    .locals 5

    const/16 v4, 0x644

    move v0, p3

    iget v3, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit8 v3, v3, 0x18

    sparse-switch v3, :sswitch_data_0

    :cond_0
    return v0

    :sswitch_0
    iget-boolean v3, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    if-eqz v3, :cond_4

    move v2, p2

    add-int v3, p2, p3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v3, p1, v2

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget-char v3, p1, v3

    invoke-static {v3}, Landroid/icu/text/ArabicShaping;->isAlefChar(C)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    aget-char v3, p1, v2

    invoke-static {v3}, Landroid/icu/text/ArabicShaping;->isTashkeelCharFE(C)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    add-int/lit8 v0, v0, -0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, p2, 0x1

    add-int v1, p2, p3

    :goto_1
    if-ge v2, v1, :cond_0

    aget-char v3, p1, v2

    if-ne v3, v4, :cond_5

    add-int/lit8 v3, v2, -0x1

    aget-char v3, p1, v3

    invoke-static {v3}, Landroid/icu/text/ArabicShaping;->isAlefChar(C)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    aget-char v3, p1, v2

    invoke-static {v3}, Landroid/icu/text/ArabicShaping;->isTashkeelCharFE(C)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    add-int/lit8 v0, v0, -0x1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :sswitch_1
    move v2, p2

    add-int v1, p2, p3

    :goto_2
    if-ge v2, v1, :cond_0

    aget-char v3, p1, v2

    invoke-static {v3}, Landroid/icu/text/ArabicShaping;->isLamAlefChar(C)Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v0, v0, 0x1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method private static changeLamAlef(C)C
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/16 v0, 0x65c

    return v0

    :pswitch_2
    const/16 v0, 0x65d

    return v0

    :pswitch_3
    const/16 v0, 0x65e

    return v0

    :pswitch_4
    const/16 v0, 0x65f

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x622
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static countSpaceSub([CIC)I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    aget-char v2, p0, v1

    if-ne v2, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static countSpacesLeft([CII)I
    .locals 4

    move v1, p1

    add-int v0, p1, p2

    :goto_0
    if-ge v1, v0, :cond_1

    aget-char v2, p0, v1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    sub-int v2, v1, p1

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method private static countSpacesRight([CII)I
    .locals 3

    add-int v0, p1, p2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-lt v0, p1, :cond_1

    aget-char v1, p0, v0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v0

    return v1

    :cond_1
    return p2
.end method

.method private deShapeUnicode([CIII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/ArabicShaping;->deshapeNormalize([CII)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/ArabicShaping;->expandCompositChar([CIIII)I

    move-result p4

    :goto_0
    return p4

    :cond_0
    move p4, p3

    goto :goto_0
.end method

.method private deshapeNormalize([CII)I
    .locals 11

    const v10, 0xfe70

    const/16 v9, 0x20

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v6, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v7, 0x3800000

    and-int/2addr v6, v7

    const/high16 v7, 0x1000000

    if-ne v6, v7, :cond_2

    const/4 v5, 0x1

    :goto_0
    iget v6, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v7, 0x700000

    and-int/2addr v6, v7

    const/high16 v7, 0x200000

    if-ne v6, v7, :cond_3

    const/4 v4, 0x1

    :goto_1
    move v2, p2

    add-int v1, p2, p3

    :goto_2
    if-ge v2, v1, :cond_7

    aget-char v0, p1, v2

    if-ne v5, v8, :cond_4

    const/16 v6, 0x621

    if-eq v0, v6, :cond_0

    const v6, 0xfe80

    if-ne v0, v6, :cond_4

    :cond_0
    add-int/lit8 v6, p3, -0x1

    if-ge v2, v6, :cond_4

    add-int/lit8 v6, v2, 0x1

    aget-char v6, p1, v6

    invoke-static {v6}, Landroid/icu/text/ArabicShaping;->isAlefMaksouraChar(C)Z

    move-result v6

    if-eqz v6, :cond_4

    aput-char v9, p1, v2

    add-int/lit8 v6, v2, 0x1

    const/16 v7, 0x626

    aput-char v7, p1, v6

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    if-ne v4, v8, :cond_5

    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isTailChar(C)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v6, p3, -0x1

    if-ge v2, v6, :cond_5

    add-int/lit8 v6, v2, 0x1

    aget-char v6, p1, v6

    invoke-static {v6}, Landroid/icu/text/ArabicShaping;->isSeenTailFamilyChar(C)I

    move-result v6

    if-ne v6, v8, :cond_5

    aput-char v9, p1, v2

    goto :goto_3

    :cond_5
    if-lt v0, v10, :cond_1

    const v6, 0xfefc

    if-gt v0, v6, :cond_1

    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isLamAlefChar(C)Z

    move-result v6

    if-eqz v6, :cond_6

    add-int/lit8 v3, v3, 0x1

    :cond_6
    sget-object v6, Landroid/icu/text/ArabicShaping;->convertFEto06:[I

    sub-int v7, v0, v10

    aget v6, v6, v7

    int-to-char v6, v6

    aput-char v6, p1, v2

    goto :goto_3

    :cond_7
    return v3
.end method

.method private expandCompositChar([CIIII)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const v2, 0x10003

    and-int v9, v1, v2

    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v2, 0x700000

    and-int v10, v1, v2

    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v2, 0x3800000

    and-int v11, v1, v2

    const/4 v13, 0x0

    iget-boolean v1, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/icu/text/ArabicShaping;->spacesRelativeToTextBeginEnd:Z

    if-eqz v1, :cond_3

    :cond_0
    :goto_0
    const/4 v1, 0x1

    move/from16 v0, p5

    if-ne v0, v1, :cond_e

    const/high16 v1, 0x10000

    if-ne v9, v1, :cond_7

    iget-boolean v1, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    if-eqz v1, :cond_4

    invoke-direct/range {p0 .. p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtEnd([CIII)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-direct/range {p0 .. p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtBegin([CIII)Z

    move-result v13

    :cond_1
    if-eqz v13, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v1 .. v7}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtNear([CIIIII)Z

    move-result v13

    :cond_2
    if-eqz v13, :cond_d

    new-instance v1, Landroid/icu/text/ArabicShapingException;

    const-string/jumbo v2, "No spacefor lamalef"

    invoke-direct {v1, v2}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    packed-switch v9, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v9, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v9, 0x2

    goto :goto_0

    :cond_4
    invoke-direct/range {p0 .. p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtBegin([CIII)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-direct/range {p0 .. p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtEnd([CIII)Z

    move-result v13

    :cond_5
    if-eqz v13, :cond_6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v1 .. v7}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtNear([CIIIII)Z

    move-result v13

    :cond_6
    if-eqz v13, :cond_d

    new-instance v1, Landroid/icu/text/ArabicShapingException;

    const-string/jumbo v2, "No spacefor lamalef"

    invoke-direct {v1, v2}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    const/4 v1, 0x2

    if-ne v9, v1, :cond_8

    invoke-direct/range {p0 .. p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtEnd([CIII)Z

    move-result v13

    if-eqz v13, :cond_d

    new-instance v1, Landroid/icu/text/ArabicShapingException;

    const-string/jumbo v2, "No spacefor lamalef"

    invoke-direct {v1, v2}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    const/4 v1, 0x3

    if-ne v9, v1, :cond_9

    invoke-direct/range {p0 .. p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtBegin([CIII)Z

    move-result v13

    if-eqz v13, :cond_d

    new-instance v1, Landroid/icu/text/ArabicShapingException;

    const-string/jumbo v2, "No spacefor lamalef"

    invoke-direct {v1, v2}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const/4 v1, 0x1

    if-ne v9, v1, :cond_a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v1 .. v7}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtNear([CIIIII)Z

    move-result v13

    if-eqz v13, :cond_d

    new-instance v1, Landroid/icu/text/ArabicShapingException;

    const-string/jumbo v2, "No spacefor lamalef"

    invoke-direct {v1, v2}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    if-nez v9, :cond_d

    add-int v12, p2, p3

    add-int v14, v12, p4

    :goto_1
    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p2

    if-lt v12, v0, :cond_c

    aget-char v8, p1, v12

    invoke-static {v8}, Landroid/icu/text/ArabicShaping;->isNormalizedLamAlefChar(C)Z

    move-result v1

    if-eqz v1, :cond_b

    add-int/lit8 v14, v14, -0x1

    const/16 v1, 0x644

    aput-char v1, p1, v14

    add-int/lit8 v14, v14, -0x1

    sget-object v1, Landroid/icu/text/ArabicShaping;->convertNormalizedLamAlef:[C

    add-int/lit16 v2, v8, -0x65c

    aget-char v1, v1, v2

    aput-char v1, p1, v14

    goto :goto_1

    :cond_b
    add-int/lit8 v14, v14, -0x1

    aput-char v8, p1, v14

    goto :goto_1

    :cond_c
    add-int p3, p3, p4

    :cond_d
    return p3

    :cond_e
    const/high16 v1, 0x200000

    if-ne v10, v1, :cond_f

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v1 .. v7}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtNear([CIIIII)Z

    move-result v13

    if-eqz v13, :cond_f

    new-instance v1, Landroid/icu/text/ArabicShapingException;

    const-string/jumbo v2, "No space for Seen tail expansion"

    invoke-direct {v1, v2}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    const/high16 v1, 0x1000000

    if-ne v11, v1, :cond_d

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct/range {v1 .. v7}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtNear([CIIIII)Z

    move-result v13

    if-eqz v13, :cond_d

    new-instance v1, Landroid/icu/text/ArabicShapingException;

    const-string/jumbo v2, "No space for YehHamza expansion"

    invoke-direct {v1, v2}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private expandCompositCharAtBegin([CIII)Z
    .locals 6

    const/4 v2, 0x0

    invoke-static {p1, p2, p3}, Landroid/icu/text/ArabicShaping;->countSpacesRight([CII)I

    move-result v4

    if-le p4, v4, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int v4, p2, p3

    sub-int v1, v4, p4

    add-int v3, p2, p3

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p2, :cond_2

    aget-char v0, p1, v1

    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isNormalizedLamAlefChar(C)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x644

    aput-char v4, p1, v3

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Landroid/icu/text/ArabicShaping;->convertNormalizedLamAlef:[C

    add-int/lit16 v5, v0, -0x65c

    aget-char v4, v4, v5

    aput-char v4, p1, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, -0x1

    aput-char v0, p1, v3

    goto :goto_0

    :cond_2
    return v2
.end method

.method private expandCompositCharAtEnd([CIII)Z
    .locals 8

    const/4 v3, 0x0

    invoke-static {p1, p2, p3}, Landroid/icu/text/ArabicShaping;->countSpacesLeft([CII)I

    move-result v6

    if-le p4, v6, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int v2, p2, p4

    move v4, p2

    add-int v1, p2, p3

    move v5, v4

    :goto_0
    if-ge v2, v1, :cond_2

    aget-char v0, p1, v2

    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isNormalizedLamAlefChar(C)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v4, v5, 0x1

    sget-object v6, Landroid/icu/text/ArabicShaping;->convertNormalizedLamAlef:[C

    add-int/lit16 v7, v0, -0x65c

    aget-char v6, v6, v7

    aput-char v6, p1, v5

    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0x644

    aput-char v6, p1, v4

    move v4, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v5, 0x1

    aput-char v0, p1, v5

    goto :goto_1

    :cond_2
    return v3
.end method

.method private expandCompositCharAtNear([CIIIII)Z
    .locals 7

    const/16 v6, 0x20

    const/4 v5, 0x1

    const/4 v2, 0x0

    aget-char v3, p1, p2

    invoke-static {v3}, Landroid/icu/text/ArabicShaping;->isNormalizedLamAlefChar(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int v1, p2, p3

    :cond_1
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p2, :cond_7

    aget-char v0, p1, v1

    if-ne p6, v5, :cond_3

    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isNormalizedLamAlefChar(C)Z

    move-result v3

    if-eqz v3, :cond_3

    if-le v1, p2, :cond_2

    add-int/lit8 v3, v1, -0x1

    aget-char v3, p1, v3

    if-ne v3, v6, :cond_2

    const/16 v3, 0x644

    aput-char v3, p1, v1

    add-int/lit8 v1, v1, -0x1

    sget-object v3, Landroid/icu/text/ArabicShaping;->convertNormalizedLamAlef:[C

    add-int/lit16 v4, v0, -0x65c

    aget-char v3, v3, v4

    aput-char v3, p1, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    return v2

    :cond_3
    if-ne p5, v5, :cond_5

    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isSeenTailFamilyChar(C)I

    move-result v3

    if-ne v3, v5, :cond_5

    if-le v1, p2, :cond_4

    add-int/lit8 v3, v1, -0x1

    aget-char v3, p1, v3

    if-ne v3, v6, :cond_4

    add-int/lit8 v3, v1, -0x1

    iget-char v4, p0, Landroid/icu/text/ArabicShaping;->tailChar:C

    aput-char v4, p1, v3

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    return v2

    :cond_5
    if-ne p4, v5, :cond_1

    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isYehHamzaChar(C)Z

    move-result v3

    if-eqz v3, :cond_1

    if-le v1, p2, :cond_6

    add-int/lit8 v3, v1, -0x1

    aget-char v3, p1, v3

    if-ne v3, v6, :cond_6

    sget-object v3, Landroid/icu/text/ArabicShaping;->yehHamzaToYeh:[C

    const v4, 0xfe89

    sub-int v4, v0, v4

    aget-char v3, v3, v4

    aput-char v3, p1, v1

    add-int/lit8 v3, v1, -0x1

    const v4, 0xfe80

    aput-char v4, p1, v3

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    return v2

    :cond_7
    const/4 v3, 0x0

    return v3
.end method

.method private static flipArray([CIII)I
    .locals 4

    if-le p3, p1, :cond_0

    move v0, p3

    move p3, p1

    move v1, v0

    move v2, p3

    :goto_0
    if-ge v1, p2, :cond_1

    add-int/lit8 p3, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    aget-char v3, p0, v1

    aput-char v3, p0, v2

    move v1, v0

    move v2, p3

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_1
    return p3

    :cond_1
    move p3, v2

    goto :goto_1
.end method

.method private static getLink(C)I
    .locals 2

    const v1, 0xfe70

    const/16 v0, 0x622

    if-lt p0, v0, :cond_0

    const/16 v0, 0x6d3

    if-gt p0, v0, :cond_0

    sget-object v0, Landroid/icu/text/ArabicShaping;->araLink:[I

    add-int/lit16 v1, p0, -0x622

    aget v0, v0, v1

    return v0

    :cond_0
    const/16 v0, 0x200d

    if-ne p0, v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    const/16 v0, 0x206d

    if-lt p0, v0, :cond_2

    const/16 v0, 0x206f

    if-gt p0, v0, :cond_2

    const/4 v0, 0x4

    return v0

    :cond_2
    if-lt p0, v1, :cond_3

    const v0, 0xfefc

    if-gt p0, v0, :cond_3

    sget-object v0, Landroid/icu/text/ArabicShaping;->presLink:[I

    sub-int v1, p0, v1

    aget v0, v0, v1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private handleGeneratedSpaces([CII)I
    .locals 12

    iget v10, p0, Landroid/icu/text/ArabicShaping;->options:I

    const v11, 0x10003

    and-int v3, v10, v11

    iget v10, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v11, 0xe0000

    and-int v4, v10, v11

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-boolean v10, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    :goto_0
    iget-boolean v11, p0, Landroid/icu/text/ArabicShaping;->spacesRelativeToTextBeginEnd:Z

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    :goto_1
    and-int/2addr v10, v11

    if-eqz v10, :cond_0

    packed-switch v3, :pswitch_data_0

    :goto_2
    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_3
    const/4 v10, 0x1

    if-ne v3, v10, :cond_4

    move v1, p2

    add-int v0, p2, p3

    :goto_4
    if-ge v1, v0, :cond_13

    aget-char v10, p1, v1

    const v11, 0xffff

    if-ne v10, v11, :cond_1

    const/16 v10, 0x20

    aput-char v10, p1, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_2
    const/4 v10, 0x1

    goto :goto_0

    :cond_3
    const/4 v11, 0x1

    goto :goto_1

    :pswitch_0
    const/4 v3, 0x2

    goto :goto_2

    :pswitch_1
    const/4 v3, 0x3

    goto :goto_2

    :sswitch_0
    const/high16 v4, 0x60000

    goto :goto_3

    :sswitch_1
    const/high16 v4, 0x40000

    goto :goto_3

    :cond_4
    add-int v0, p2, p3

    const v10, 0xffff

    invoke-static {p1, p3, v10}, Landroid/icu/text/ArabicShaping;->countSpaceSub([CIC)I

    move-result v6

    const v10, 0xfffe

    invoke-static {p1, p3, v10}, Landroid/icu/text/ArabicShaping;->countSpaceSub([CIC)I

    move-result v8

    const/4 v10, 0x2

    if-ne v3, v10, :cond_5

    const/4 v2, 0x1

    :cond_5
    const/high16 v10, 0x60000

    if-ne v4, v10, :cond_6

    const/4 v5, 0x1

    :cond_6
    if-eqz v2, :cond_7

    const/4 v10, 0x2

    if-ne v3, v10, :cond_7

    const v10, 0xffff

    invoke-static {p1, p2, v0, v10}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    :goto_5
    if-le v6, p2, :cond_7

    add-int/lit8 v6, v6, -0x1

    const/16 v10, 0x20

    aput-char v10, p1, v6

    goto :goto_5

    :cond_7
    if-eqz v5, :cond_8

    const/high16 v10, 0x60000

    if-ne v4, v10, :cond_8

    const v10, 0xfffe

    invoke-static {p1, p2, v0, v10}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    :goto_6
    if-le v8, p2, :cond_8

    add-int/lit8 v8, v8, -0x1

    const/16 v10, 0x20

    aput-char v10, p1, v8

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_9

    const/4 v2, 0x1

    :cond_9
    const/high16 v10, 0x80000

    if-ne v4, v10, :cond_a

    const/4 v5, 0x1

    :cond_a
    if-eqz v2, :cond_b

    if-nez v3, :cond_b

    const v10, 0xffff

    invoke-static {p1, p2, v0, v10}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    invoke-static {p1, p2, v0, v6}, Landroid/icu/text/ArabicShaping;->flipArray([CIII)I

    move-result v6

    sub-int p3, v6, p2

    :cond_b
    if-eqz v5, :cond_c

    const/high16 v10, 0x80000

    if-ne v4, v10, :cond_c

    const v10, 0xfffe

    invoke-static {p1, p2, v0, v10}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    invoke-static {p1, p2, v0, v8}, Landroid/icu/text/ArabicShaping;->flipArray([CIII)I

    move-result v8

    sub-int p3, v8, p2

    :cond_c
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x3

    if-eq v3, v10, :cond_d

    const/high16 v10, 0x10000

    if-ne v3, v10, :cond_e

    :cond_d
    const/4 v2, 0x1

    :cond_e
    const/high16 v10, 0x40000

    if-ne v4, v10, :cond_f

    const/4 v5, 0x1

    :cond_f
    if-eqz v2, :cond_12

    const/4 v10, 0x3

    if-eq v3, v10, :cond_10

    const/high16 v10, 0x10000

    if-ne v3, v10, :cond_12

    :cond_10
    const v10, 0xffff

    invoke-static {p1, p2, v0, v10}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    invoke-static {p1, p2, v0, v6}, Landroid/icu/text/ArabicShaping;->flipArray([CIII)I

    move-result v6

    move v7, v6

    :goto_7
    if-ge v7, v0, :cond_11

    add-int/lit8 v6, v7, 0x1

    const/16 v10, 0x20

    aput-char v10, p1, v7

    move v7, v6

    goto :goto_7

    :cond_11
    move v6, v7

    :cond_12
    if-eqz v5, :cond_13

    const/high16 v10, 0x40000

    if-ne v4, v10, :cond_13

    const v10, 0xfffe

    invoke-static {p1, p2, v0, v10}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    invoke-static {p1, p2, v0, v8}, Landroid/icu/text/ArabicShaping;->flipArray([CIII)I

    move-result v8

    move v9, v8

    :goto_8
    if-ge v9, v0, :cond_13

    add-int/lit8 v8, v9, 0x1

    const/16 v10, 0x20

    aput-char v10, p1, v9

    move v9, v8

    goto :goto_8

    :cond_13
    return p3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_0
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private static handleTashkeelWithTatweel([CI)I
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    aget-char v1, p0, v0

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isTashkeelOnTatweelChar(C)I

    move-result v1

    if-ne v1, v3, :cond_1

    const/16 v1, 0x640

    aput-char v1, p0, v0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-char v1, p0, v0

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isTashkeelOnTatweelChar(C)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const v1, 0xfe7d

    aput-char v1, p0, v0

    goto :goto_1

    :cond_2
    aget-char v1, p0, v0

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isIsolatedTashkeelChar(C)I

    move-result v1

    if-ne v1, v3, :cond_0

    aget-char v1, p0, v0

    const v2, 0xfe7c

    if-eq v1, v2, :cond_0

    const/16 v1, 0x20

    aput-char v1, p0, v0

    goto :goto_1

    :cond_3
    return p1
.end method

.method private internalShape([CII[CII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    if-nez p6, :cond_2

    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit8 v1, v1, 0x18

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const v3, 0x10003

    and-int/2addr v1, v3

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/ArabicShaping;->calculateSize([CII)I

    move-result v1

    return v1

    :cond_1
    return p3

    :cond_2
    mul-int/lit8 v1, p3, 0x2

    new-array v2, v1, [C

    const/4 v1, 0x0

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget-boolean v1, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    invoke-static {v2, v1, p3}, Landroid/icu/text/ArabicShaping;->invertBuffer([CII)V

    :cond_3
    move v4, p3

    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit8 v1, v1, 0x18

    sparse-switch v1, :sswitch_data_0

    :cond_4
    :goto_0
    move/from16 v0, p6

    if-le v4, v0, :cond_6

    new-instance v1, Landroid/icu/text/ArabicShapingException;

    const-string/jumbo v3, "not enough room for result data"

    invoke-direct {v1, v3}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v4, p3

    move/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/ArabicShaping;->shapeUnicode([CIIII)I

    move-result v4

    goto :goto_0

    :sswitch_1
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v3, 0xe0000

    and-int/2addr v1, v3

    if-lez v1, :cond_5

    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v3, 0xe0000

    and-int/2addr v1, v3

    const/high16 v3, 0xc0000

    if-eq v1, v3, :cond_5

    const/4 v3, 0x0

    const/4 v6, 0x2

    move-object v1, p0

    move v4, p3

    move/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/ArabicShaping;->shapeUnicode([CIIII)I

    move-result v4

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p3

    move/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/ArabicShaping;->shapeUnicode([CIIII)I

    move-result v4

    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v3, 0xe0000

    and-int/2addr v1, v3

    const/high16 v3, 0xc0000

    if-ne v1, v3, :cond_4

    invoke-static {v2, p3}, Landroid/icu/text/ArabicShaping;->handleTashkeelWithTatweel([CI)I

    move-result v4

    goto :goto_0

    :sswitch_2
    const/4 v1, 0x0

    move/from16 v0, p6

    invoke-direct {p0, v2, v1, p3, v0}, Landroid/icu/text/ArabicShaping;->deShapeUnicode([CIII)I

    move-result v4

    goto :goto_0

    :cond_6
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit16 v1, v1, 0xe0

    if-eqz v1, :cond_7

    const/16 v5, 0x30

    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit16 v1, v1, 0x100

    sparse-switch v1, :sswitch_data_1

    :goto_1
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit16 v1, v1, 0xe0

    sparse-switch v1, :sswitch_data_2

    :cond_7
    :goto_2
    iget-boolean v1, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    invoke-static {v2, v1, v4}, Landroid/icu/text/ArabicShaping;->invertBuffer([CII)V

    :cond_8
    const/4 v1, 0x0

    move/from16 v0, p5

    invoke-static {v2, v1, p4, v0, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    return v4

    :sswitch_3
    const/16 v5, 0x660

    goto :goto_1

    :sswitch_4
    const/16 v5, 0x6f0

    goto :goto_1

    :sswitch_5
    add-int/lit8 v8, v5, -0x30

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v4, :cond_7

    aget-char v7, v2, v10

    const/16 v1, 0x39

    if-gt v7, v1, :cond_9

    const/16 v1, 0x30

    if-lt v7, v1, :cond_9

    aget-char v1, v2, v10

    add-int/2addr v1, v8

    int-to-char v1, v1

    aput-char v1, v2, v10

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :sswitch_6
    add-int/lit8 v1, v5, 0x9

    int-to-char v9, v1

    rsub-int/lit8 v8, v5, 0x30

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v4, :cond_7

    aget-char v7, v2, v10

    if-gt v7, v9, :cond_a

    if-lt v7, v5, :cond_a

    aget-char v1, v2, v10

    add-int/2addr v1, v8

    int-to-char v1, v1

    aput-char v1, v2, v10

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :sswitch_7
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/ArabicShaping;->shapeToArabicDigitsWithContext([CIICZ)V

    goto :goto_2

    :sswitch_8
    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/ArabicShaping;->shapeToArabicDigitsWithContext([CIICZ)V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x100 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x60 -> :sswitch_7
        0x80 -> :sswitch_8
    .end sparse-switch
.end method

.method private static invertBuffer([CII)V
    .locals 4

    move v0, p1

    add-int v3, p1, p2

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-char v2, p0, v0

    aget-char v3, p0, v1

    aput-char v3, p0, v0

    aput-char v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static isAlefChar(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x622

    if-eq p0, v1, :cond_0

    const/16 v1, 0x623

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x625

    if-eq p0, v1, :cond_0

    const/16 v1, 0x627

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAlefMaksouraChar(C)Z
    .locals 2

    const/4 v0, 0x1

    const v1, 0xfeef

    if-eq p0, v1, :cond_0

    const v1, 0xfef0

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x649

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isIsolatedTashkeelChar(C)I
    .locals 2

    const v1, 0xfe70

    if-lt p0, v1, :cond_0

    const v0, 0xfe7f

    if-gt p0, v0, :cond_0

    const v0, 0xfe73

    if-eq p0, v0, :cond_0

    const v0, 0xfe75

    if-eq p0, v0, :cond_0

    sget-object v0, Landroid/icu/text/ArabicShaping;->tashkeelMedial:[I

    sub-int v1, p0, v1

    aget v0, v0, v1

    rsub-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const v0, 0xfc5e

    if-lt p0, v0, :cond_1

    const v0, 0xfc63

    if-gt p0, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isLamAlefChar(C)Z
    .locals 2

    const/4 v0, 0x0

    const v1, 0xfef5

    if-lt p0, v1, :cond_0

    const v1, 0xfefc

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isNormalizedLamAlefChar(C)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x65c

    if-lt p0, v1, :cond_0

    const/16 v1, 0x65f

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isSeenFamilyChar(C)I
    .locals 1

    const/16 v0, 0x633

    if-lt p0, v0, :cond_0

    const/16 v0, 0x636

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isSeenTailFamilyChar(C)I
    .locals 2

    const v1, 0xfeb1

    if-lt p0, v1, :cond_0

    const v0, 0xfebf

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/icu/text/ArabicShaping;->tailFamilyIsolatedFinal:[I

    sub-int v1, p0, v1

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isTailChar(C)Z
    .locals 1

    const/16 v0, 0x200b

    if-eq p0, v0, :cond_0

    const v0, 0xfe73

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isTashkeelChar(C)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64b

    if-lt p0, v1, :cond_0

    const/16 v1, 0x652

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isTashkeelCharFE(C)Z
    .locals 2

    const/4 v0, 0x0

    const v1, 0xfe75

    if-eq p0, v1, :cond_0

    const v1, 0xfe70

    if-lt p0, v1, :cond_0

    const v1, 0xfe7f

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isTashkeelOnTatweelChar(C)I
    .locals 3

    const v2, 0xfe7d

    const v1, 0xfe70

    if-lt p0, v1, :cond_0

    const v0, 0xfe7f

    if-gt p0, v0, :cond_0

    const v0, 0xfe73

    if-eq p0, v0, :cond_0

    const v0, 0xfe75

    if-eq p0, v0, :cond_0

    if-eq p0, v2, :cond_0

    sget-object v0, Landroid/icu/text/ArabicShaping;->tashkeelMedial:[I

    sub-int v1, p0, v1

    aget v0, v0, v1

    return v0

    :cond_0
    const v0, 0xfcf2

    if-lt p0, v0, :cond_2

    const v0, 0xfcf4

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    return v0

    :cond_2
    if-eq p0, v2, :cond_1

    const/4 v0, 0x0

    return v0
.end method

.method private static isYehHamzaChar(C)Z
    .locals 1

    const v0, 0xfe89

    if-eq p0, v0, :cond_0

    const v0, 0xfe8a

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private normalize([CII)I
    .locals 7

    const v6, 0xfe70

    const/4 v3, 0x0

    move v2, p2

    add-int v1, p2, p3

    :goto_0
    if-ge v2, v1, :cond_2

    aget-char v0, p1, v2

    if-lt v0, v6, :cond_1

    const v4, 0xfefc

    if-gt v0, v4, :cond_1

    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isLamAlefChar(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    sget-object v4, Landroid/icu/text/ArabicShaping;->convertFEto06:[I

    sub-int v5, v0, v6

    aget v4, v4, v5

    int-to-char v4, v4

    aput-char v4, p1, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private shapeToArabicDigitsWithContext([CIICZ)V
    .locals 4

    sget-object v0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    add-int/lit8 v3, p4, -0x30

    int-to-char p4, v3

    add-int v2, p2, p3

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-lt v2, p2, :cond_1

    aget-char v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 p5, 0x0

    goto :goto_0

    :sswitch_1
    const/4 p5, 0x1

    goto :goto_0

    :sswitch_2
    if-eqz p5, :cond_0

    const/16 v3, 0x39

    if-gt v1, v3, :cond_0

    add-int v3, v1, p4

    int-to-char v3, v3

    aput-char v3, p1, v2

    goto :goto_0

    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method private shapeUnicode([CIIII)I
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    invoke-direct/range {p0 .. p3}, Landroid/icu/text/ArabicShaping;->normalize([CII)I

    move-result v5

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v19, 0x0

    add-int v1, p2, p3

    add-int/lit8 v9, v1, -0x1

    aget-char v1, p1, v9

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->getLink(C)I

    move-result v7

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    move v12, v9

    const/4 v15, -0x2

    const/4 v14, 0x0

    :cond_0
    :goto_0
    if-ltz v9, :cond_15

    const v1, 0xff00

    and-int/2addr v1, v7

    if-gtz v1, :cond_1

    aget-char v1, p1, v9

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isTashkeelChar(C)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_1
    add-int/lit8 v14, v9, -0x1

    const/4 v15, -0x2

    :goto_1
    if-gez v15, :cond_4

    const/4 v1, -0x1

    if-ne v14, v1, :cond_2

    const/4 v13, 0x0

    const v15, 0x7fffffff

    goto :goto_1

    :cond_2
    aget-char v1, p1, v14

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->getLink(C)I

    move-result v13

    and-int/lit8 v1, v13, 0x4

    if-nez v1, :cond_3

    move v15, v14

    goto :goto_1

    :cond_3
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    :cond_4
    and-int/lit8 v1, v7, 0x20

    if-lez v1, :cond_6

    and-int/lit8 v1, v11, 0x10

    if-lez v1, :cond_6

    const/4 v10, 0x1

    aget-char v1, p1, v9

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->changeLamAlef(C)C

    move-result v20

    if-eqz v20, :cond_5

    const v1, 0xffff

    aput-char v1, p1, v9

    aput-char v20, p1, v12

    move v9, v12

    :cond_5
    move/from16 v11, v16

    invoke-static/range {v20 .. v20}, Landroid/icu/text/ArabicShaping;->getLink(C)I

    move-result v7

    :cond_6
    if-lez v9, :cond_c

    add-int/lit8 v1, v9, -0x1

    aget-char v1, p1, v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_c

    aget-char v1, p1, v9

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isSeenFamilyChar(C)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    const/16 v17, 0x1

    :cond_7
    :goto_2
    aget-char v1, p1, v9

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->specialChar(C)I

    move-result v8

    sget-object v1, Landroid/icu/text/ArabicShaping;->shapeTable:[[[I

    and-int/lit8 v2, v13, 0x3

    aget-object v1, v1, v2

    and-int/lit8 v2, v11, 0x3

    aget-object v1, v1, v2

    and-int/lit8 v2, v7, 0x3

    aget v18, v1, v2

    const/4 v1, 0x1

    if-ne v8, v1, :cond_e

    and-int/lit8 v18, v18, 0x1

    :cond_8
    :goto_3
    const/4 v1, 0x2

    if-ne v8, v1, :cond_13

    const/4 v1, 0x2

    move/from16 v0, p5

    if-ne v0, v1, :cond_12

    aget-char v1, p1, v9

    const/16 v2, 0x651

    if-eq v1, v2, :cond_12

    const v1, 0xfffe

    aput-char v1, p1, v9

    const/16 v19, 0x1

    :cond_9
    :goto_4
    and-int/lit8 v1, v7, 0x4

    if-nez v1, :cond_a

    move/from16 v16, v11

    move v11, v7

    move v12, v9

    :cond_a
    add-int/lit8 v9, v9, -0x1

    if-ne v9, v15, :cond_14

    move v7, v13

    const/4 v15, -0x2

    goto/16 :goto_0

    :cond_b
    aget-char v1, p1, v9

    const/16 v2, 0x626

    if-ne v1, v2, :cond_7

    const/16 v21, 0x1

    goto :goto_2

    :cond_c
    if-nez v9, :cond_7

    aget-char v1, p1, v9

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isSeenFamilyChar(C)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    const/16 v17, 0x1

    goto :goto_2

    :cond_d
    aget-char v1, p1, v9

    const/16 v2, 0x626

    if-ne v1, v2, :cond_7

    const/16 v21, 0x1

    goto :goto_2

    :cond_e
    const/4 v1, 0x2

    if-ne v8, v1, :cond_8

    if-nez p5, :cond_10

    and-int/lit8 v1, v11, 0x2

    if-eqz v1, :cond_10

    and-int/lit8 v1, v13, 0x1

    if-eqz v1, :cond_10

    aget-char v1, p1, v9

    const/16 v2, 0x64c

    if-eq v1, v2, :cond_10

    aget-char v1, p1, v9

    const/16 v2, 0x64d

    if-eq v1, v2, :cond_10

    and-int/lit8 v1, v13, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_f

    and-int/lit8 v1, v11, 0x10

    const/16 v2, 0x10

    if-eq v1, v2, :cond_10

    :cond_f
    const/16 v18, 0x1

    goto :goto_3

    :cond_10
    const/4 v1, 0x2

    move/from16 v0, p5

    if-ne v0, v1, :cond_11

    aget-char v1, p1, v9

    const/16 v2, 0x651

    if-ne v1, v2, :cond_11

    const/16 v18, 0x1

    goto :goto_3

    :cond_11
    const/16 v18, 0x0

    goto :goto_3

    :cond_12
    sget-object v1, Landroid/icu/text/ArabicShaping;->irrelevantPos:[I

    aget-char v2, p1, v9

    add-int/lit16 v2, v2, -0x64b

    aget v1, v1, v2

    const v2, 0xfe70

    add-int/2addr v1, v2

    add-int v1, v1, v18

    int-to-char v1, v1

    aput-char v1, p1, v9

    goto :goto_4

    :cond_13
    shr-int/lit8 v1, v7, 0x8

    const v2, 0xfe70

    add-int/2addr v1, v2

    add-int v1, v1, v18

    int-to-char v1, v1

    aput-char v1, p1, v9

    goto/16 :goto_4

    :cond_14
    const/4 v1, -0x1

    if-eq v9, v1, :cond_0

    aget-char v1, p1, v9

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->getLink(C)I

    move-result v7

    goto/16 :goto_0

    :cond_15
    move/from16 p4, p3

    if-nez v10, :cond_16

    if-eqz v19, :cond_17

    :cond_16
    invoke-direct/range {p0 .. p3}, Landroid/icu/text/ArabicShaping;->handleGeneratedSpaces([CII)I

    move-result p4

    :cond_17
    if-nez v17, :cond_18

    if-eqz v21, :cond_19

    :cond_18
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Landroid/icu/text/ArabicShaping;->expandCompositChar([CIIII)I

    move-result p4

    :cond_19
    return p4
.end method

.method private static shiftArray([CIIC)V
    .locals 3

    move v2, p2

    move v1, p2

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p1, :cond_1

    aget-char v0, p0, v1

    if-eq v0, p3, :cond_0

    add-int/lit8 v2, v2, -0x1

    if-eq v2, v1, :cond_0

    aput-char v0, p0, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static specialChar(C)I
    .locals 1

    const/16 v0, 0x621

    if-le p0, v0, :cond_1

    const/16 v0, 0x626

    if-ge p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0x627

    if-eq p0, v0, :cond_0

    const/16 v0, 0x62e

    if-le p0, v0, :cond_2

    const/16 v0, 0x633

    if-lt p0, v0, :cond_0

    :cond_2
    const/16 v0, 0x647

    if-le p0, v0, :cond_3

    const/16 v0, 0x64a

    if-lt p0, v0, :cond_0

    :cond_3
    const/16 v0, 0x629

    if-eq p0, v0, :cond_0

    const/16 v0, 0x64b

    if-lt p0, v0, :cond_4

    const/16 v0, 0x652

    if-gt p0, v0, :cond_4

    const/4 v0, 0x2

    return v0

    :cond_4
    const/16 v0, 0x653

    if-lt p0, v0, :cond_6

    const/16 v0, 0x655

    if-gt p0, v0, :cond_6

    :cond_5
    const/4 v0, 0x3

    return v0

    :cond_6
    const/16 v0, 0x670

    if-eq p0, v0, :cond_5

    const v0, 0xfe70

    if-lt p0, v0, :cond_7

    const v0, 0xfe7f

    if-le p0, v0, :cond_5

    :cond_7
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/icu/text/ArabicShaping;

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    check-cast p1, Landroid/icu/text/ArabicShaping;

    iget v2, p1, Landroid/icu/text/ArabicShaping;->options:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    return v0
.end method

.method public shape([CII[CII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    const/high16 v3, 0xe0000

    const v2, 0x10003

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad source start ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") or length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") for buffer of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-nez p4, :cond_3

    if-eqz p6, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null dest requires destSize == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz p6, :cond_6

    if-ltz p5, :cond_4

    if-gez p6, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad dest start ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") or size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") for buffer of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int v0, p5, p6

    array-length v1, p4

    if-gt v0, v1, :cond_4

    :cond_6
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v3

    if-lez v0, :cond_7

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v3

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_7

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v3

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_7

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v3

    const/high16 v1, 0x80000

    if-eq v0, v1, :cond_7

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v3

    const/high16 v1, 0xc0000

    if-eq v0, v1, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong Tashkeel argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v2

    if-lez v0, :cond_8

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v2

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_8

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong Lam Alef argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v0, v3

    if-lez v0, :cond_9

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit8 v0, v0, 0x18

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Tashkeel replacement should not be enabled in deshaping mode "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-direct/range {p0 .. p6}, Landroid/icu/text/ArabicShaping;->internalShape([CII[CII)I

    move-result v0

    return v0
.end method

.method public shape(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    move-object v4, v1

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    const v3, 0x10003

    and-int/2addr v0, v3

    if-nez v0, :cond_0

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit8 v0, v0, 0x18

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [C

    :cond_0
    array-length v3, v1

    array-length v6, v4

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/icu/text/ArabicShaping;->shape([CII[CII)I

    move-result v7

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v2, v7}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public shape([CII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    const v1, 0x10003

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/text/ArabicShapingException;

    const-string/jumbo v1, "Cannot shape in place with length option resize."

    invoke-direct {v0, v1}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/icu/text/ArabicShaping;->shape([CII[CII)I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const v2, 0x10003

    and-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_0

    :goto_0
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit8 v1, v1, 0x4

    sparse-switch v1, :sswitch_data_1

    :goto_1
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit8 v1, v1, 0x18

    sparse-switch v1, :sswitch_data_2

    :goto_2
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v2, 0x700000

    and-int/2addr v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_3
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v2, 0x3800000

    and-int/2addr v1, v2

    packed-switch v1, :pswitch_data_1

    :goto_4
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v2, 0xe0000

    and-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_3

    :goto_5
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit16 v1, v1, 0xe0

    sparse-switch v1, :sswitch_data_4

    :goto_6
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit16 v1, v1, 0x100

    sparse-switch v1, :sswitch_data_5

    :goto_7
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_0
    const-string/jumbo v1, "LamAlef resize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "LamAlef spaces at near"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "LamAlef spaces at begin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "LamAlef spaces at end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "lamAlef auto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, ", logical"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, ", visual"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_7
    const-string/jumbo v1, ", no letter shaping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_8
    const-string/jumbo v1, ", shape letters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_9
    const-string/jumbo v1, ", shape letters tashkeel isolated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_a
    const-string/jumbo v1, ", unshape letters"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_0
    const-string/jumbo v1, ", Seen at near"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_1
    const-string/jumbo v1, ", Yeh Hamza at near"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :sswitch_b
    const-string/jumbo v1, ", Tashkeel at begin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :sswitch_c
    const-string/jumbo v1, ", Tashkeel at end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :sswitch_d
    const-string/jumbo v1, ", Tashkeel replace with tatweel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :sswitch_e
    const-string/jumbo v1, ", Tashkeel resize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :sswitch_f
    const-string/jumbo v1, ", no digit shaping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :sswitch_10
    const-string/jumbo v1, ", shape digits to AN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :sswitch_11
    const-string/jumbo v1, ", shape digits to EN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :sswitch_12
    const-string/jumbo v1, ", shape digits to AN contextually: default EN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :sswitch_13
    const-string/jumbo v1, ", shape digits to AN contextually: default AL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :sswitch_14
    const-string/jumbo v1, ", standard Arabic-Indic digits"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :sswitch_15
    const-string/jumbo v1, ", extended Arabic-Indic digits"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x10000 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_5
        0x4 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_7
        0x8 -> :sswitch_8
        0x10 -> :sswitch_a
        0x18 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x200000
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1000000
        :pswitch_1
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x40000 -> :sswitch_b
        0x60000 -> :sswitch_c
        0x80000 -> :sswitch_e
        0xc0000 -> :sswitch_d
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x0 -> :sswitch_f
        0x20 -> :sswitch_10
        0x40 -> :sswitch_11
        0x60 -> :sswitch_12
        0x80 -> :sswitch_13
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        0x0 -> :sswitch_14
        0x100 -> :sswitch_15
    .end sparse-switch
.end method
