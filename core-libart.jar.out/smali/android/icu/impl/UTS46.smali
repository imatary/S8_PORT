.class public final Landroid/icu/impl/UTS46;
.super Landroid/icu/text/IDNA;
.source "UTS46.java"


# static fields
.field private static final EN_AN_MASK:I

.field private static final ES_CS_ET_ON_BN_NSM_MASK:I

.field private static final L_EN_ES_CS_ET_ON_BN_NSM_MASK:I

.field private static final L_EN_MASK:I

.field private static final L_MASK:I

.field private static final L_R_AL_MASK:I

.field private static final R_AL_AN_EN_ES_CS_ET_ON_BN_NSM_MASK:I

.field private static final R_AL_AN_MASK:I

.field private static final R_AL_EN_AN_MASK:I

.field private static final R_AL_MASK:I

.field private static U_GC_M_MASK:I

.field private static final asciiData:[B

.field private static final severeErrors:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/IDNA$Error;",
            ">;"
        }
    .end annotation
.end field

.field private static final uts46Norm2:Landroid/icu/text/Normalizer2;


# instance fields
.field final options:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x2

    const-string/jumbo v0, "uts46"

    sget-object v1, Landroid/icu/text/Normalizer2$Mode;->COMPOSE:Landroid/icu/text/Normalizer2$Mode;

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Landroid/icu/text/Normalizer2;->getInstance(Ljava/io/InputStream;Ljava/lang/String;Landroid/icu/text/Normalizer2$Mode;)Landroid/icu/text/Normalizer2;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    sget-object v0, Landroid/icu/text/IDNA$Error;->LEADING_COMBINING_MARK:Landroid/icu/text/IDNA$Error;

    sget-object v1, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    sget-object v2, Landroid/icu/text/IDNA$Error;->PUNYCODE:Landroid/icu/text/IDNA$Error;

    sget-object v3, Landroid/icu/text/IDNA$Error;->LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

    sget-object v4, Landroid/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/UTS46;->severeErrors:Ljava/util/EnumSet;

    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/impl/UTS46;->asciiData:[B

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v0

    sput v0, Landroid/icu/impl/UTS46;->L_MASK:I

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v0

    const/16 v1, 0xd

    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Landroid/icu/impl/UTS46;->R_AL_MASK:I

    sget v0, Landroid/icu/impl/UTS46;->L_MASK:I

    sget v1, Landroid/icu/impl/UTS46;->R_AL_MASK:I

    or-int/2addr v0, v1

    sput v0, Landroid/icu/impl/UTS46;->L_R_AL_MASK:I

    sget v0, Landroid/icu/impl/UTS46;->R_AL_MASK:I

    invoke-static {v6}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Landroid/icu/impl/UTS46;->R_AL_AN_MASK:I

    invoke-static {v5}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v0

    invoke-static {v6}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Landroid/icu/impl/UTS46;->EN_AN_MASK:I

    sget v0, Landroid/icu/impl/UTS46;->R_AL_MASK:I

    sget v1, Landroid/icu/impl/UTS46;->EN_AN_MASK:I

    or-int/2addr v0, v1

    sput v0, Landroid/icu/impl/UTS46;->R_AL_EN_AN_MASK:I

    sget v0, Landroid/icu/impl/UTS46;->L_MASK:I

    invoke-static {v5}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Landroid/icu/impl/UTS46;->L_EN_MASK:I

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v0

    invoke-static {v7}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0x12

    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0x11

    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Landroid/icu/impl/UTS46;->ES_CS_ET_ON_BN_NSM_MASK:I

    sget v0, Landroid/icu/impl/UTS46;->L_EN_MASK:I

    sget v1, Landroid/icu/impl/UTS46;->ES_CS_ET_ON_BN_NSM_MASK:I

    or-int/2addr v0, v1

    sput v0, Landroid/icu/impl/UTS46;->L_EN_ES_CS_ET_ON_BN_NSM_MASK:I

    sget v0, Landroid/icu/impl/UTS46;->R_AL_MASK:I

    sget v1, Landroid/icu/impl/UTS46;->EN_AN_MASK:I

    or-int/2addr v0, v1

    sget v1, Landroid/icu/impl/UTS46;->ES_CS_ET_ON_BN_NSM_MASK:I

    or-int/2addr v0, v1

    sput v0, Landroid/icu/impl/UTS46;->R_AL_AN_EN_ES_CS_ET_ON_BN_NSM_MASK:I

    invoke-static {v7}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Landroid/icu/impl/UTS46;->U_GC_M_MASK:I

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/IDNA;-><init>()V

    iput p1, p0, Landroid/icu/impl/UTS46;->options:I

    return-void
.end method

.method private static U_GET_GC_MASK(I)I
    .locals 2

    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.method private static U_MASK(I)I
    .locals 1

    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method

.method private checkLabelBiDi(Ljava/lang/CharSequence;IILandroid/icu/text/IDNA$Info;)V
    .locals 9

    move v3, p2

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int v3, p2, v7

    sget-object v7, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v7, v0}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    move-result v7

    invoke-static {v7}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v2

    sget v7, Landroid/icu/impl/UTS46;->L_R_AL_MASK:I

    not-int v7, v7

    and-int/2addr v7, v2

    if-eqz v7, :cond_0

    invoke-static {p4}, Landroid/icu/impl/UTS46;->setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V

    :cond_0
    add-int v4, p2, p3

    :cond_1
    if-lt v3, v4, :cond_3

    move v5, v2

    :goto_0
    sget v7, Landroid/icu/impl/UTS46;->L_MASK:I

    and-int/2addr v7, v2

    if-eqz v7, :cond_4

    sget v7, Landroid/icu/impl/UTS46;->L_EN_MASK:I

    not-int v7, v7

    and-int/2addr v7, v5

    if-eqz v7, :cond_2

    :goto_1
    invoke-static {p4}, Landroid/icu/impl/UTS46;->setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-ge v3, v4, :cond_5

    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v3, v7

    sget-object v7, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v7, v0}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    move-result v7

    invoke-static {v7}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v7

    or-int/2addr v6, v7

    goto :goto_2

    :cond_3
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    sub-int/2addr v4, v7

    sget-object v7, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v7, v0}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    move-result v1

    const/16 v7, 0x11

    if-eq v1, v7, :cond_1

    invoke-static {v1}, Landroid/icu/impl/UTS46;->U_MASK(I)I

    move-result v5

    goto :goto_0

    :cond_4
    sget v7, Landroid/icu/impl/UTS46;->R_AL_EN_AN_MASK:I

    not-int v7, v7

    and-int/2addr v7, v5

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_5
    sget v7, Landroid/icu/impl/UTS46;->L_MASK:I

    and-int/2addr v7, v2

    if-eqz v7, :cond_8

    sget v7, Landroid/icu/impl/UTS46;->L_EN_ES_CS_ET_ON_BN_NSM_MASK:I

    not-int v7, v7

    and-int/2addr v7, v6

    if-eqz v7, :cond_6

    invoke-static {p4}, Landroid/icu/impl/UTS46;->setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V

    :cond_6
    :goto_3
    or-int v7, v2, v6

    or-int/2addr v7, v5

    sget v8, Landroid/icu/impl/UTS46;->R_AL_AN_MASK:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_7

    invoke-static {p4}, Landroid/icu/impl/UTS46;->setBiDi(Landroid/icu/text/IDNA$Info;)V

    :cond_7
    return-void

    :cond_8
    sget v7, Landroid/icu/impl/UTS46;->R_AL_AN_EN_ES_CS_ET_ON_BN_NSM_MASK:I

    not-int v7, v7

    and-int/2addr v7, v6

    if-eqz v7, :cond_9

    invoke-static {p4}, Landroid/icu/impl/UTS46;->setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V

    :cond_9
    sget v7, Landroid/icu/impl/UTS46;->EN_AN_MASK:I

    and-int/2addr v7, v6

    sget v8, Landroid/icu/impl/UTS46;->EN_AN_MASK:I

    if-ne v7, v8, :cond_6

    invoke-static {p4}, Landroid/icu/impl/UTS46;->setNotOkBiDi(Landroid/icu/text/IDNA$Info;)V

    goto :goto_3
.end method

.method private checkLabelContextO(Ljava/lang/CharSequence;IILandroid/icu/text/IDNA$Info;)V
    .locals 10

    const/16 v9, 0xb7

    const/16 v8, 0x6c

    add-int v6, p2, p3

    add-int/lit8 v4, v6, -0x1

    const/4 v0, 0x0

    move v2, p2

    :goto_0
    if-gt v2, v4, :cond_f

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ge v1, v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v6, 0x6f9

    if-gt v1, v6, :cond_d

    if-ne v1, v9, :cond_4

    if-ge p2, v2, :cond_2

    add-int/lit8 v6, v2, -0x1

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_3

    :cond_2
    :goto_2
    sget-object v6, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    invoke-static {p4, v6}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    goto :goto_1

    :cond_3
    if-ge v2, v4, :cond_2

    add-int/lit8 v6, v2, 0x1

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_0

    goto :goto_2

    :cond_4
    const/16 v6, 0x375

    if-ne v1, v6, :cond_6

    if-ge v2, v4, :cond_5

    add-int/lit8 v6, v2, 0x1

    invoke-static {p1, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v6

    invoke-static {v6}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v6

    const/16 v7, 0xe

    if-eq v7, v6, :cond_0

    :cond_5
    sget-object v6, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    invoke-static {p4, v6}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    goto :goto_1

    :cond_6
    const/16 v6, 0x5f3

    if-eq v1, v6, :cond_7

    const/16 v6, 0x5f4

    if-ne v1, v6, :cond_9

    :cond_7
    if-ge p2, v2, :cond_8

    invoke-static {p1, v2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v6

    invoke-static {v6}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v6

    const/16 v7, 0x13

    if-eq v7, v6, :cond_0

    :cond_8
    sget-object v6, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    invoke-static {p4, v6}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    goto :goto_1

    :cond_9
    const/16 v6, 0x660

    if-gt v6, v1, :cond_0

    const/16 v6, 0x669

    if-gt v1, v6, :cond_b

    if-lez v0, :cond_a

    sget-object v6, Landroid/icu/text/IDNA$Error;->CONTEXTO_DIGITS:Landroid/icu/text/IDNA$Error;

    invoke-static {p4, v6}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_a
    const/4 v0, -0x1

    goto :goto_1

    :cond_b
    const/16 v6, 0x6f0

    if-gt v6, v1, :cond_0

    if-gez v0, :cond_c

    sget-object v6, Landroid/icu/text/IDNA$Error;->CONTEXTO_DIGITS:Landroid/icu/text/IDNA$Error;

    invoke-static {p4, v6}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_c
    const/4 v0, 0x1

    goto :goto_1

    :cond_d
    const/16 v6, 0x30fb

    if-ne v1, v6, :cond_0

    move v3, p2

    :goto_3
    if-le v3, v4, :cond_e

    sget-object v6, Landroid/icu/text/IDNA$Error;->CONTEXTO_PUNCTUATION:Landroid/icu/text/IDNA$Error;

    invoke-static {p4, v6}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    goto/16 :goto_1

    :cond_e
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v5

    const/16 v6, 0x14

    if-eq v5, v6, :cond_0

    const/16 v6, 0x16

    if-eq v5, v6, :cond_0

    const/16 v6, 0x11

    if-eq v5, v6, :cond_0

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_3

    :cond_f
    return-void
.end method

.method private static isASCIIOkBiDi(Ljava/lang/CharSequence;I)Z
    .locals 7

    const/16 v6, 0x7a

    const/16 v5, 0x61

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_8

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_4

    if-le v1, v2, :cond_2

    add-int/lit8 v3, v1, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-gt v5, v0, :cond_0

    if-le v0, v6, :cond_2

    :cond_0
    const/16 v3, 0x30

    if-gt v3, v0, :cond_1

    const/16 v3, 0x39

    if-le v0, v3, :cond_2

    :cond_1
    return v4

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-ne v1, v2, :cond_6

    if-gt v5, v0, :cond_5

    if-le v0, v6, :cond_3

    :cond_5
    return v4

    :cond_6
    const/16 v3, 0x20

    if-gt v0, v3, :cond_3

    const/16 v3, 0x1c

    if-ge v0, v3, :cond_7

    const/16 v3, 0x9

    if-gt v3, v0, :cond_3

    const/16 v3, 0xd

    if-gt v0, v3, :cond_3

    :cond_7
    return v4

    :cond_8
    const/4 v3, 0x1

    return v3
.end method

.method private static isASCIIString(Ljava/lang/CharSequence;)Z
    .locals 4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private isLabelOkContextJ(Ljava/lang/CharSequence;II)Z
    .locals 11

    const/16 v10, 0x9

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x0

    add-int v3, p2, p3

    move v1, p2

    :goto_0
    if-ge v1, v3, :cond_b

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x200c

    if-ne v5, v6, :cond_9

    if-ne v1, p2, :cond_0

    return v7

    :cond_0
    move v2, v1

    invoke-static {p1, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    sub-int/2addr v2, v5

    sget-object v5, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v5, v0}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v5

    if-ne v5, v10, :cond_3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    sub-int/2addr v2, v5

    :cond_3
    sget-object v5, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v5, v0}, Landroid/icu/impl/UBiDiProps;->getJoiningType(I)I

    move-result v4

    if-ne v4, v9, :cond_4

    if-nez v2, :cond_2

    return v7

    :cond_4
    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    if-ne v4, v8, :cond_7

    :cond_5
    add-int/lit8 v2, v1, 0x1

    :cond_6
    if-ne v2, v3, :cond_8

    return v7

    :cond_7
    return v7

    :cond_8
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    sget-object v5, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {v5, v0}, Landroid/icu/impl/UBiDiProps;->getJoiningType(I)I

    move-result v4

    if-eq v4, v9, :cond_6

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    if-eq v4, v8, :cond_1

    return v7

    :cond_9
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x200d

    if-ne v5, v6, :cond_1

    if-ne v1, p2, :cond_a

    return v7

    :cond_a
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    sget-object v5, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v5, v0}, Landroid/icu/text/Normalizer2;->getCombiningClass(I)I

    move-result v5

    if-eq v5, v10, :cond_1

    return v7

    :cond_b
    const/4 v5, 0x1

    return v5
.end method

.method private static isNonASCIIDisallowedSTD3Valid(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x2260

    if-eq p0, v1, :cond_0

    const/16 v1, 0x226e

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x226f

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mapDevChars(Ljava/lang/StringBuilder;II)I
    .locals 8

    const/16 v7, 0x73

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v1, 0x0

    move v2, p3

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    add-int/lit8 v2, v3, 0x1

    :goto_1
    move v3, v2

    goto :goto_0

    :sswitch_0
    const/4 v1, 0x1

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v3, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    move v2, v3

    goto :goto_1

    :sswitch_1
    const/4 v1, 0x1

    add-int/lit8 v2, v3, 0x1

    const/16 v6, 0x3c3

    invoke-virtual {p1, v3, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    :sswitch_2
    const/4 v1, 0x1

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1, v3, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x1

    move v2, v3

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v6, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {p1, p2, v7}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7fffffff

    invoke-virtual {p1, p2, v6, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    return v6

    :cond_1
    return v4

    :sswitch_data_0
    .sparse-switch
        0xdf -> :sswitch_0
        0x3c2 -> :sswitch_1
        0x200c -> :sswitch_2
        0x200d -> :sswitch_2
    .end sparse-switch
.end method

.method private markBadACELabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I
    .locals 8

    const v7, 0xfffd

    iget v6, p0, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_3

    const/4 v1, 0x1

    :goto_0
    const/4 v3, 0x1

    const/4 v5, 0x1

    add-int/lit8 v2, p2, 0x4

    add-int v4, p2, p3

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v6, 0x7f

    if-gt v0, v6, :cond_5

    const/16 v6, 0x2e

    if-ne v0, v6, :cond_4

    sget-object v6, Landroid/icu/text/IDNA$Error;->LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

    invoke-static {p5, v6}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    invoke-virtual {p1, v2, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v5, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v4, :cond_0

    if-eqz v5, :cond_6

    add-int v6, p2, p3

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    :cond_2
    :goto_2
    return p3

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    sget-object v6, Landroid/icu/impl/UTS46;->asciiData:[B

    aget-byte v6, v6, v0

    if-gez v6, :cond_1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1, v2, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    if-eqz p4, :cond_2

    if-eqz v3, :cond_2

    const/16 v6, 0x3f

    if-le p3, v6, :cond_2

    sget-object v6, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    invoke-static {p5, v6}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    goto :goto_2
.end method

.method private process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 13

    move-object/from16 v0, p4

    if-ne v0, p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    const/4 v1, 0x0

    const v2, 0x7fffffff

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->resetInfo(Landroid/icu/text/IDNA$Info;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_1

    sget-object v1, Landroid/icu/text/IDNA$Error;->EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/icu/impl/UTS46;->addError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    return-object p4

    :cond_1
    iget v1, p0, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    const/4 v11, 0x1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ne v4, v12, :cond_6

    if-eqz p3, :cond_4

    sub-int v1, v4, v3

    const/16 v2, 0x3f

    if-le v1, v2, :cond_2

    sget-object v1, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_2
    if-nez p2, :cond_4

    const/16 v1, 0xfe

    if-lt v4, v1, :cond_4

    const/16 v1, 0xfe

    if-gt v4, v1, :cond_3

    if-ge v3, v4, :cond_4

    :cond_3
    sget-object v1, Landroid/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/icu/impl/UTS46;->addError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_4
    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V

    return-object p4

    :cond_5
    const/4 v11, 0x0

    goto :goto_0

    :cond_6
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v1, 0x7f

    if-le v9, v1, :cond_9

    :cond_7
    :goto_2
    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Landroid/icu/impl/UTS46;->processUnicode(Ljava/lang/CharSequence;IIZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->isBiDi(Landroid/icu/text/IDNA$Info;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Landroid/icu/impl/UTS46;->severeErrors:Ljava/util/EnumSet;

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/icu/impl/UTS46;->hasCertainErrors(Landroid/icu/text/IDNA$Info;Ljava/util/EnumSet;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_8
    :goto_3
    return-object p4

    :cond_9
    sget-object v1, Landroid/icu/impl/UTS46;->asciiData:[B

    aget-byte v10, v1, v9

    if-lez v10, :cond_b

    add-int/lit8 v1, v9, 0x20

    int-to-char v1, v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_b
    if-gez v10, :cond_c

    if-nez v11, :cond_7

    :cond_c
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    if-ne v9, v1, :cond_10

    add-int/lit8 v1, v3, 0x3

    if-ne v4, v1, :cond_d

    add-int/lit8 v1, v4, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_d

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_d
    if-ne v4, v3, :cond_e

    sget-object v1, Landroid/icu/text/IDNA$Error;->LEADING_HYPHEN:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_e
    add-int/lit8 v1, v4, 0x1

    if-eq v1, v12, :cond_f

    add-int/lit8 v1, v4, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_a

    :cond_f
    sget-object v1, Landroid/icu/text/IDNA$Error;->TRAILING_HYPHEN:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    goto :goto_4

    :cond_10
    const/16 v1, 0x2e

    if-ne v9, v1, :cond_a

    if-eqz p2, :cond_11

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_11
    if-ne v4, v3, :cond_12

    sget-object v1, Landroid/icu/text/IDNA$Error;->EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_12
    if-eqz p3, :cond_13

    sub-int v1, v4, v3

    const/16 v2, 0x3f

    if-le v1, v2, :cond_13

    sget-object v1, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_13
    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V

    add-int/lit8 v3, v4, 0x1

    goto :goto_4

    :cond_14
    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->isOkBiDi(Landroid/icu/text/IDNA$Info;)Z

    move-result v1

    if-eqz v1, :cond_15

    if-lez v3, :cond_8

    move-object/from16 v0, p4

    invoke-static {v0, v3}, Landroid/icu/impl/UTS46;->isASCIIOkBiDi(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_15
    sget-object v1, Landroid/icu/text/IDNA$Error;->BIDI:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Landroid/icu/impl/UTS46;->addError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    goto/16 :goto_3
.end method

.method private processLabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I
    .locals 23

    move/from16 v7, p2

    move/from16 v8, p3

    const/4 v5, 0x4

    move/from16 v0, p3

    if-lt v0, v5, :cond_1

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x78

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, p2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x6e

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, p2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_1

    add-int/lit8 v5, p2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_1

    const/16 v22, 0x1

    add-int/lit8 v5, p2, 0x4

    add-int v6, p2, p3

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/icu/impl/Punycode;->decode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    sget-object v5, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {v5, v15}, Landroid/icu/text/Normalizer2;->isNormalized(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    sget-object v5, Landroid/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    invoke-direct/range {p0 .. p5}, Landroid/icu/impl/UTS46;->markBadACELabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I

    move-result v5

    return v5

    :catch_0
    move-exception v14

    sget-object v5, Landroid/icu/text/IDNA$Error;->PUNYCODE:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    invoke-direct/range {p0 .. p5}, Landroid/icu/impl/UTS46;->markBadACELabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I

    move-result v5

    return v5

    :cond_0
    move-object/from16 v18, v15

    const/16 p2, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    :goto_0
    if-nez p3, :cond_2

    sget-object v5, Landroid/icu/text/IDNA$Error;->EMPTY_LABEL:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, p3

    invoke-static {v0, v7, v8, v1, v2}, Landroid/icu/impl/UTS46;->replaceLabel(Ljava/lang/StringBuilder;IILjava/lang/CharSequence;I)I

    move-result v5

    return v5

    :cond_1
    const/16 v22, 0x0

    move-object/from16 v18, p1

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    move/from16 v0, p3

    if-lt v0, v5, :cond_3

    add-int/lit8 v5, p2, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_3

    add-int/lit8 v5, p2, 0x3

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_3

    sget-object v5, Landroid/icu/text/IDNA$Error;->HYPHEN_3_4:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_3
    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_4

    sget-object v5, Landroid/icu/text/IDNA$Error;->LEADING_HYPHEN:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_4
    add-int v5, p2, p3

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_5

    sget-object v5, Landroid/icu/text/IDNA$Error;->TRAILING_HYPHEN:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_5
    move/from16 v16, p2

    add-int v19, p2, p3

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_e

    const/4 v13, 0x1

    :cond_6
    :goto_1
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    const/16 v5, 0x7f

    if-gt v11, v5, :cond_10

    const/16 v5, 0x2e

    if-ne v11, v5, :cond_f

    sget-object v5, Landroid/icu/text/IDNA$Error;->LABEL_HAS_DOT:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    const v5, 0xfffd

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_7
    :goto_2
    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v12

    invoke-static {v12}, Landroid/icu/impl/UTS46;->U_GET_GC_MASK(I)I

    move-result v5

    sget v6, Landroid/icu/impl/UTS46;->U_GC_M_MASK:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_8

    sget-object v5, Landroid/icu/text/IDNA$Error;->LEADING_COMBINING_MARK:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    const v5, 0xfffd

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const v5, 0xffff

    if-le v12, v5, :cond_8

    add-int/lit8 v5, p2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_8

    add-int/lit8 v8, v8, -0x1

    :cond_8
    sget-object v5, Landroid/icu/impl/UTS46;->severeErrors:Ljava/util/EnumSet;

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->hasCertainLabelErrors(Landroid/icu/text/IDNA$Info;Ljava/util/EnumSet;)Z

    move-result v5

    if-nez v5, :cond_17

    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_a

    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->isBiDi(Landroid/icu/text/IDNA$Info;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static/range {p5 .. p5}, Landroid/icu/impl/UTS46;->isOkBiDi(Landroid/icu/text/IDNA$Info;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/impl/UTS46;->checkLabelBiDi(Ljava/lang/CharSequence;IILandroid/icu/text/IDNA$Info;)V

    :cond_a
    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_b

    move/from16 v0, v20

    and-int/lit16 v5, v0, 0x200c

    const/16 v6, 0x200c

    if-ne v5, v6, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/impl/UTS46;->isLabelOkContextJ(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_c

    const/16 v5, 0xb7

    move/from16 v0, v20

    if-lt v0, v5, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/impl/UTS46;->checkLabelContextO(Ljava/lang/CharSequence;IILandroid/icu/text/IDNA$Info;)V

    :cond_c
    if-eqz p4, :cond_16

    if-eqz v22, :cond_13

    const/16 v5, 0x3f

    if-le v8, v5, :cond_d

    sget-object v5, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_d
    return v8

    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_f
    if-eqz v13, :cond_7

    sget-object v5, Landroid/icu/impl/UTS46;->asciiData:[B

    aget-byte v5, v5, v11

    if-gez v5, :cond_7

    sget-object v5, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    const v5, 0xfffd

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto/16 :goto_2

    :cond_10
    or-int v5, v20, v11

    int-to-char v0, v5

    move/from16 v20, v0

    if-eqz v13, :cond_11

    invoke-static {v11}, Landroid/icu/impl/UTS46;->isNonASCIIDisallowedSTD3Valid(I)Z

    move-result v5

    if-eqz v5, :cond_11

    sget-object v5, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    const v5, 0xfffd

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto/16 :goto_2

    :cond_11
    const v5, 0xfffd

    if-ne v11, v5, :cond_7

    sget-object v5, Landroid/icu/text/IDNA$Error;->DISALLOWED:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    goto/16 :goto_2

    :cond_12
    sget-object v5, Landroid/icu/text/IDNA$Error;->CONTEXTJ:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    goto :goto_3

    :cond_13
    const/16 v5, 0x80

    move/from16 v0, v20

    if-lt v0, v5, :cond_15

    add-int v5, p2, p3

    :try_start_1
    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/icu/impl/Punycode;->encode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v21

    const-string/jumbo v5, "xn--"

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/16 v6, 0x3f

    if-le v5, v6, :cond_14

    sget-object v5, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_14
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v7, v8, v1, v5}, Landroid/icu/impl/UTS46;->replaceLabel(Ljava/lang/StringBuilder;IILjava/lang/CharSequence;I)I

    move-result v5

    return v5

    :catch_1
    move-exception v14

    new-instance v5, Landroid/icu/util/ICUException;

    invoke-direct {v5, v14}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_15
    const/16 v5, 0x3f

    move/from16 v0, p3

    if-le v0, v5, :cond_16

    sget-object v5, Landroid/icu/text/IDNA$Error;->LABEL_TOO_LONG:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    :cond_16
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, p3

    invoke-static {v0, v7, v8, v1, v2}, Landroid/icu/impl/UTS46;->replaceLabel(Ljava/lang/StringBuilder;IILjava/lang/CharSequence;I)I

    move-result v5

    return v5

    :cond_17
    if-eqz v22, :cond_16

    sget-object v5, Landroid/icu/text/IDNA$Error;->INVALID_ACE_LABEL:Landroid/icu/text/IDNA$Error;

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Landroid/icu/impl/UTS46;->addLabelError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Landroid/icu/impl/UTS46;->markBadACELabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I

    move-result v5

    return v5
.end method

.method private processUnicode(Ljava/lang/CharSequence;IIZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 19

    if-nez p3, :cond_2

    sget-object v4, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v4, v0, v1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz p5, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_3

    const/16 v16, 0x1

    :goto_1
    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    move/from16 v17, p2

    :goto_2
    move/from16 v0, v17

    if-ge v0, v15, :cond_a

    move-object/from16 v0, p6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    const/16 v4, 0x2e

    if-ne v14, v4, :cond_0

    if-eqz p4, :cond_6

    :cond_0
    const/16 v4, 0xdf

    if-gt v4, v14, :cond_8

    const/16 v4, 0x200d

    if-gt v14, v4, :cond_8

    const/16 v4, 0xdf

    if-eq v14, v4, :cond_1

    const/16 v4, 0x3c2

    if-ne v14, v4, :cond_7

    :cond_1
    invoke-static/range {p7 .. p7}, Landroid/icu/impl/UTS46;->setTransitionalDifferent(Landroid/icu/text/IDNA$Info;)V

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, p2

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/impl/UTS46;->mapDevChars(Ljava/lang/StringBuilder;II)I

    move-result v15

    const/16 v16, 0x0

    goto :goto_2

    :cond_2
    sget-object v4, Landroid/icu/impl/UTS46;->uts46Norm2:Landroid/icu/text/Normalizer2;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v4, v0, v5}, Landroid/icu/text/Normalizer2;->normalizeSecondAndAppend(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v16, 0x0

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Landroid/icu/impl/UTS46;->options:I

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_5

    const/16 v16, 0x1

    goto :goto_1

    :cond_5
    const/16 v16, 0x0

    goto :goto_1

    :cond_6
    sub-int v7, v17, p2

    move-object/from16 v4, p0

    move-object/from16 v5, p6

    move/from16 v6, p2

    move/from16 v8, p5

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v9}, Landroid/icu/impl/UTS46;->processLabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I

    move-result v18

    invoke-static/range {p7 .. p7}, Landroid/icu/impl/UTS46;->promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V

    sub-int v4, v18, v7

    add-int/2addr v15, v4

    add-int/lit8 v4, v18, 0x1

    add-int p2, p2, v4

    move/from16 v17, p2

    goto :goto_2

    :cond_7
    const/16 v4, 0x200c

    if-ge v14, v4, :cond_1

    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    :cond_a
    if-eqz p2, :cond_b

    move/from16 v0, p2

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    :cond_b
    sub-int v11, v17, p2

    move-object/from16 v8, p0

    move-object/from16 v9, p6

    move/from16 v10, p2

    move/from16 v12, p5

    move-object/from16 v13, p7

    invoke-direct/range {v8 .. v13}, Landroid/icu/impl/UTS46;->processLabel(Ljava/lang/StringBuilder;IIZLandroid/icu/text/IDNA$Info;)I

    invoke-static/range {p7 .. p7}, Landroid/icu/impl/UTS46;->promoteAndResetLabelErrors(Landroid/icu/text/IDNA$Info;)V

    :cond_c
    return-object p6
.end method

.method private static replaceLabel(Ljava/lang/StringBuilder;IILjava/lang/CharSequence;I)I
    .locals 1

    if-eq p3, p0, :cond_0

    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    return p4
.end method


# virtual methods
.method public labelToASCII(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 6

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UTS46;->process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public labelToUnicode(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UTS46;->process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public nameToASCII(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 7

    const/16 v6, 0xfe

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UTS46;->process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt v0, v6, :cond_0

    invoke-virtual {p3}, Landroid/icu/text/IDNA$Info;->getErrors()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Landroid/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    invoke-static {p2}, Landroid/icu/impl/UTS46;->isASCIIString(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gt v0, v6, :cond_2

    const/16 v0, 0xfd

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_0

    :cond_2
    sget-object v0, Landroid/icu/text/IDNA$Error;->DOMAIN_NAME_TOO_LONG:Landroid/icu/text/IDNA$Error;

    invoke-static {p3, v0}, Landroid/icu/impl/UTS46;->addError(Landroid/icu/text/IDNA$Info;Landroid/icu/text/IDNA$Error;)V

    goto :goto_0
.end method

.method public nameToUnicode(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UTS46;->process(Ljava/lang/CharSequence;ZZLjava/lang/StringBuilder;Landroid/icu/text/IDNA$Info;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method
