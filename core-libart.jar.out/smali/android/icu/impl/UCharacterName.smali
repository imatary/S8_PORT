.class public final Landroid/icu/impl/UCharacterName;
.super Ljava/lang/Object;
.source "UCharacterName.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UCharacterName$AlgorithmName;
    }
.end annotation


# static fields
.field static final EXTENDED_CATEGORY_:I = 0x21

.field private static final FILE_NAME_:Ljava/lang/String; = "unames.icu"

.field private static final GROUP_MASK_:I = 0x1f

.field private static final GROUP_SHIFT_:I = 0x5

.field public static final INSTANCE:Landroid/icu/impl/UCharacterName;

.field private static final LEAD_SURROGATE_:I = 0x1f

.field public static final LINES_PER_GROUP_:I = 0x20

.field private static final NON_CHARACTER_:I = 0x1e

.field private static final OFFSET_HIGH_OFFSET_:I = 0x1

.field private static final OFFSET_LOW_OFFSET_:I = 0x2

.field private static final SINGLE_NIBBLE_MAX_:I = 0xb

.field private static final TRAIL_SURROGATE_:I = 0x20

.field private static final TYPE_NAMES_:[Ljava/lang/String;

.field private static final UNKNOWN_TYPE_NAME_:Ljava/lang/String; = "unknown"


# instance fields
.field private m_ISOCommentSet_:[I

.field private m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

.field public m_groupcount_:I

.field private m_groupinfo_:[C

.field private m_grouplengths_:[C

.field private m_groupoffsets_:[C

.field m_groupsize_:I

.field private m_groupstring_:[B

.field private m_maxISOCommentLength_:I

.field private m_maxNameLength_:I

.field private m_nameSet_:[I

.field private m_tokenstring_:[B

.field private m_tokentable_:[C

.field private m_utilIntBuffer_:[I

.field private m_utilStringBuffer_:Ljava/lang/StringBuffer;


# direct methods
.method static synthetic -wrap0([ILjava/lang/StringBuffer;)I
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/impl/UCharacterName;->add([ILjava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1([ILjava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/impl/UCharacterName;->add([ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 5

    :try_start_0
    new-instance v1, Landroid/icu/impl/UCharacterName;

    invoke-direct {v1}, Landroid/icu/impl/UCharacterName;-><init>()V

    sput-object v1, Landroid/icu/impl/UCharacterName;->INSTANCE:Landroid/icu/impl/UCharacterName;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x21

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "unassigned"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "uppercase letter"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "lowercase letter"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "titlecase letter"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "modifier letter"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "other letter"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "non spacing mark"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "enclosing mark"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "combining spacing mark"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "decimal digit number"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "letter number"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "other number"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "space separator"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "line separator"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string/jumbo v2, "paragraph separator"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string/jumbo v2, "control"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string/jumbo v2, "format"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string/jumbo v2, "private use area"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string/jumbo v2, "surrogate"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string/jumbo v2, "dash punctuation"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const-string/jumbo v2, "start punctuation"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    const-string/jumbo v2, "end punctuation"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string/jumbo v2, "connector punctuation"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string/jumbo v2, "other punctuation"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string/jumbo v2, "math symbol"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const-string/jumbo v2, "currency symbol"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const-string/jumbo v2, "modifier symbol"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string/jumbo v2, "other symbol"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    const-string/jumbo v2, "initial punctuation"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    const-string/jumbo v2, "final punctuation"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    const-string/jumbo v2, "noncharacter"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    const-string/jumbo v2, "lead surrogate"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    const-string/jumbo v2, "trail surrogate"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    sput-object v1, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/util/MissingResourceException;

    const-string/jumbo v2, "Could not construct UCharacterName. Missing unames.icu"

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-direct {v1, v2, v3, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x21

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    iput v2, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    new-array v2, v4, [C

    iput-object v2, p0, Landroid/icu/impl/UCharacterName;->m_groupoffsets_:[C

    new-array v2, v4, [C

    iput-object v2, p0, Landroid/icu/impl/UCharacterName;->m_grouplengths_:[C

    new-array v2, v3, [I

    iput-object v2, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    new-array v2, v3, [I

    iput-object v2, p0, Landroid/icu/impl/UCharacterName;->m_ISOCommentSet_:[I

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/icu/impl/UCharacterName;->m_utilIntBuffer_:[I

    const-string/jumbo v2, "unames.icu"

    invoke-static {v2}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Landroid/icu/impl/UCharacterNameReader;

    invoke-direct {v1, v0}, Landroid/icu/impl/UCharacterNameReader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1, p0}, Landroid/icu/impl/UCharacterNameReader;->read(Landroid/icu/impl/UCharacterName;)V

    return-void
.end method

.method private static add([ILjava/lang/String;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {p0, v2}, Landroid/icu/impl/UCharacterName;->add([IC)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static add([ILjava/lang/StringBuffer;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {p0, v2}, Landroid/icu/impl/UCharacterName;->add([IC)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static add([IC)V
    .locals 4

    ushr-int/lit8 v0, p1, 0x5

    aget v1, p0, v0

    and-int/lit8 v2, p1, 0x1f

    const/4 v3, 0x1

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    aput v1, p0, v0

    return-void
.end method

.method private addAlgorithmName(I)I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    invoke-virtual {v2, v3, p1}, Landroid/icu/impl/UCharacterName$AlgorithmName;->add([II)I

    move-result v1

    if-le v1, p1, :cond_0

    move p1, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private addExtendedName(I)I
    .locals 4

    sget-object v2, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    sget-object v3, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Landroid/icu/impl/UCharacterName;->add([ILjava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, 0x9

    if-le v1, p1, :cond_0

    move p1, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private addGroupName(I)V
    .locals 13

    const/16 v10, 0x22

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v5, 0x0

    new-array v7, v10, [C

    new-array v2, v10, [C

    iget-object v10, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v10, v10

    new-array v9, v10, [B

    const/4 v0, 0x0

    :goto_0
    iget v10, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    if-ge v0, v10, :cond_5

    invoke-virtual {p0, v0, v7, v2}, Landroid/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    move-result v6

    const/4 v3, 0x0

    :goto_1
    const/16 v10, 0x20

    if-ge v3, v10, :cond_4

    aget-char v10, v7, v3

    add-int v4, v6, v10

    aget-char v1, v2, v3

    if-nez v1, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v10, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    invoke-direct {p0, v4, v1, v9, v10}, Landroid/icu/impl/UCharacterName;->addGroupName(II[B[I)[I

    move-result-object v8

    aget v10, v8, v12

    if-le v10, p1, :cond_2

    aget p1, v8, v12

    :cond_2
    aget v10, v8, v11

    add-int/2addr v4, v10

    aget v10, v8, v11

    if-ge v10, v1, :cond_0

    aget v10, v8, v11

    sub-int/2addr v1, v10

    iget-object v10, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    invoke-direct {p0, v4, v1, v9, v10}, Landroid/icu/impl/UCharacterName;->addGroupName(II[B[I)[I

    move-result-object v8

    aget v10, v8, v12

    if-le v10, p1, :cond_3

    aget p1, v8, v12

    :cond_3
    aget v10, v8, v11

    add-int/2addr v4, v10

    aget v10, v8, v11

    if-ge v10, v1, :cond_0

    aget v10, v8, v11

    sub-int/2addr v1, v10

    iget-object v10, p0, Landroid/icu/impl/UCharacterName;->m_ISOCommentSet_:[I

    invoke-direct {p0, v4, v1, v9, v10}, Landroid/icu/impl/UCharacterName;->addGroupName(II[B[I)[I

    move-result-object v8

    aget v10, v8, v11

    if-le v10, v5, :cond_0

    move v5, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iput v5, p0, Landroid/icu/impl/UCharacterName;->m_maxISOCommentLength_:I

    iput p1, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    return-void
.end method

.method private addGroupName(II[B[I)[I
    .locals 10

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v6, p1, v2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-char v0, v5

    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x3b

    if-ne v0, v5, :cond_1

    :cond_0
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilIntBuffer_:[I

    aput v1, v5, v9

    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilIntBuffer_:[I

    const/4 v6, 0x1

    aput v2, v5, v6

    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilIntBuffer_:[I

    return-object v5

    :cond_1
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v5, v5

    if-lt v0, v5, :cond_2

    invoke-static {p4, v0}, Landroid/icu/impl/UCharacterName;->add([IC)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    and-int/lit16 v6, v0, 0xff

    aget-char v4, v5, v6

    const v5, 0xfffe

    if-ne v4, v5, :cond_3

    shl-int/lit8 v5, v0, 0x8

    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v7, p1, v2

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    int-to-char v0, v5

    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    aget-char v4, v5, v0

    add-int/lit8 v2, v2, 0x1

    :cond_3
    const v5, 0xffff

    if-ne v4, v5, :cond_4

    invoke-static {p4, v0}, Landroid/icu/impl/UCharacterName;->add([IC)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    aget-byte v3, p3, v0

    if-nez v3, :cond_5

    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v7, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v7, p0, Landroid/icu/impl/UCharacterName;->m_tokenstring_:[B

    invoke-static {v5, v7, v4}, Landroid/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I

    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-static {p4, v5}, Landroid/icu/impl/UCharacterName;->add([ILjava/lang/StringBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    int-to-byte v3, v5

    monitor-exit v6

    aput-byte v3, p3, v0

    :cond_5
    add-int/2addr v1, v3

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private static contains([IC)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    ushr-int/lit8 v2, p1, 0x5

    aget v2, p0, v2

    and-int/lit8 v3, p1, 0x1f

    shl-int v3, v0, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private convert([ILandroid/icu/text/UnicodeSet;)V
    .locals 2

    invoke-virtual {p2}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    invoke-direct {p0}, Landroid/icu/impl/UCharacterName;->initNameSetsLengths()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xff

    :goto_0
    if-lez v0, :cond_2

    invoke-static {p1, v0}, Landroid/icu/impl/UCharacterName;->contains([IC)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_1
    add-int/lit8 v1, v0, -0x1

    int-to-char v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getAlgName(II)Ljava/lang/String;
    .locals 5

    if-eqz p2, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/icu/impl/UCharacterName$AlgorithmName;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    aget-object v1, v1, v0

    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, v3}, Landroid/icu/impl/UCharacterName$AlgorithmName;->appendName(ILjava/lang/StringBuffer;)V

    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    monitor-exit v2

    :cond_3
    const/4 v1, 0x0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getCodepointMSB(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x5

    return v0
.end method

.method private static getExtendedChar(Ljava/lang/String;I)I
    .locals 10

    const/4 v9, -0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3c

    if-ne v7, v8, :cond_2

    const/4 v7, 0x2

    if-ne p1, v7, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3e

    if-ne v7, v8, :cond_1

    const/16 v7, 0x2d

    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    add-int/lit8 v5, v5, 0x1

    const/4 v4, -0x1

    :try_start_0
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int/lit8 v7, v5, -0x1

    const/4 v8, 0x1

    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    array-length v3, v7

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    sget-object v7, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v4}, Landroid/icu/impl/UCharacterName;->getType(I)I

    move-result v7

    if-ne v7, v2, :cond_1

    return v4

    :catch_0
    move-exception v0

    return v9

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v9

    :cond_2
    const/4 v7, -0x2

    return v7
.end method

.method private getGroupChar(I[CLjava/lang/String;I)I
    .locals 15

    const/4 v1, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v9, 0x0

    :goto_0
    const/16 v11, 0x20

    if-gt v9, v11, :cond_a

    const/4 v6, 0x0

    aget-char v4, p2, v9

    if-eqz p4, :cond_1

    const/4 v11, 0x2

    move/from16 v0, p4

    if-eq v0, v11, :cond_1

    const/4 v11, 0x4

    move/from16 v0, p4

    if-ne v0, v11, :cond_3

    const/4 v3, 0x2

    :cond_0
    :goto_1
    move/from16 v8, p1

    iget-object v11, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    const/16 v12, 0x3b

    move/from16 v0, p1

    invoke-static {v11, v0, v4, v12}, Landroid/icu/impl/UCharacterUtility;->skipByteSubString([BIIB)I

    move-result v11

    add-int p1, p1, v11

    sub-int v11, p1, v8

    sub-int/2addr v4, v11

    add-int/lit8 v3, v3, -0x1

    if-gtz v3, :cond_0

    :cond_1
    const/4 v2, 0x0

    move v7, v6

    :goto_2
    if-ge v2, v4, :cond_7

    const/4 v11, -0x1

    if-eq v7, v11, :cond_7

    if-ge v7, v5, :cond_7

    iget-object v11, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v12, p1, v2

    aget-byte v1, v11, v12

    add-int/lit8 v2, v2, 0x1

    iget-object v11, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v11, v11

    if-lt v1, v11, :cond_4

    add-int/lit8 v6, v7, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    and-int/lit16 v12, v1, 0xff

    if-eq v11, v12, :cond_2

    const/4 v6, -0x1

    :cond_2
    :goto_3
    move v7, v6

    goto :goto_2

    :cond_3
    move/from16 v3, p4

    goto :goto_1

    :cond_4
    iget-object v11, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    and-int/lit16 v12, v1, 0xff

    aget-char v10, v11, v12

    const v11, 0xfffe

    if-ne v10, v11, :cond_5

    iget-object v11, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    shl-int/lit8 v12, v1, 0x8

    iget-object v13, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v14, p1, v2

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v12, v13

    aget-char v10, v11, v12

    add-int/lit8 v2, v2, 0x1

    :cond_5
    const v11, 0xffff

    if-ne v10, v11, :cond_6

    add-int/lit8 v6, v7, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    and-int/lit16 v12, v1, 0xff

    if-eq v11, v12, :cond_2

    const/4 v6, -0x1

    goto :goto_3

    :cond_6
    iget-object v11, p0, Landroid/icu/impl/UCharacterName;->m_tokenstring_:[B

    move-object/from16 v0, p3

    invoke-static {v0, v11, v7, v10}, Landroid/icu/impl/UCharacterUtility;->compareNullTermByteSubString(Ljava/lang/String;[BII)I

    move-result v6

    goto :goto_3

    :cond_7
    if-ne v5, v7, :cond_9

    if-eq v2, v4, :cond_8

    iget-object v11, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v12, p1, v2

    aget-byte v11, v11, v12

    const/16 v12, 0x3b

    if-ne v11, v12, :cond_9

    :cond_8
    return v9

    :cond_9
    add-int p1, p1, v4

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v11, -0x1

    return v11
.end method

.method private declared-synchronized getGroupChar(Ljava/lang/String;I)I
    .locals 6

    const/4 v5, -0x1

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v3, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_groupoffsets_:[C

    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_grouplengths_:[C

    invoke-virtual {p0, v0, v3, v4}, Landroid/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    move-result v2

    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_grouplengths_:[C

    invoke-direct {p0, v2, v3, p1, p2}, Landroid/icu/impl/UCharacterName;->getGroupChar(I[CLjava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_0

    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    iget v4, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    mul-int/2addr v4, v0

    aget-char v3, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v3, v1

    monitor-exit p0

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v5

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public static getGroupLimit(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x5

    add-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public static getGroupMin(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x5

    return v0
.end method

.method public static getGroupMinFromCodepoint(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x20

    return v0
.end method

.method public static getGroupOffset(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method private static getType(I)I
    .locals 2

    invoke-static {p0}, Landroid/icu/impl/UCharacterUtility;->isNonCharacter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1e

    return v1

    :cond_0
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    const v1, 0xdbff

    if-gt p0, v1, :cond_2

    const/16 v0, 0x1f

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v0, 0x20

    goto :goto_0
.end method

.method private initNameSetsLengths()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v2, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    if-lez v2, :cond_0

    return v5

    :cond_0
    const-string/jumbo v0, "0123456789ABCDEF<>-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Landroid/icu/impl/UCharacterName;->add([IC)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4}, Landroid/icu/impl/UCharacterName;->addAlgorithmName(I)I

    move-result v2

    iput v2, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    iget v2, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    invoke-direct {p0, v2}, Landroid/icu/impl/UCharacterName;->addExtendedName(I)I

    move-result v2

    iput v2, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    iget v2, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    invoke-direct {p0, v2}, Landroid/icu/impl/UCharacterName;->addGroupName(I)V

    return v5
.end method


# virtual methods
.method public getAlgorithmEnd(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/icu/impl/UCharacterName$AlgorithmName;->-get0(Landroid/icu/impl/UCharacterName$AlgorithmName;)I

    move-result v0

    return v0
.end method

.method public getAlgorithmLength()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    array-length v0, v0

    return v0
.end method

.method public getAlgorithmName(II)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    aget-object v1, v1, p1

    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2, v3}, Landroid/icu/impl/UCharacterName$AlgorithmName;->appendName(ILjava/lang/StringBuffer;)V

    iget-object v1, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getAlgorithmStart(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroid/icu/impl/UCharacterName$AlgorithmName;->-get1(Landroid/icu/impl/UCharacterName$AlgorithmName;)I

    move-result v0

    return v0
.end method

.method public getCharFromName(ILjava/lang/String;)I
    .locals 7

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    if-ge p1, v3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return v5

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/icu/impl/UCharacterName;->getExtendedChar(Ljava/lang/String;I)I

    move-result v1

    if-lt v1, v5, :cond_2

    return v1

    :cond_2
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_3

    if-ne p1, v6, :cond_6

    :cond_3
    const/4 v0, 0x0

    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    array-length v0, v3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_6

    iget-object v3, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/icu/impl/UCharacterName$AlgorithmName;->getChar(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    return v1

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    if-ne p1, v6, :cond_8

    invoke-direct {p0, v2, v4}, Landroid/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_7

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Landroid/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I

    move-result v1

    :cond_7
    :goto_1
    return v1

    :cond_8
    invoke-direct {p0, v2, p1}, Landroid/icu/impl/UCharacterName;->getGroupChar(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1
.end method

.method public getCharNameCharacters(Landroid/icu/text/UnicodeSet;)V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_nameSet_:[I

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/UCharacterName;->convert([ILandroid/icu/text/UnicodeSet;)V

    return-void
.end method

.method public getExtendedName(I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/icu/impl/UCharacterName;->getName(II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterName;->getExtendedOr10Name(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExtendedOr10Name(I)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/icu/impl/UCharacterName;->getType(I)I

    move-result v2

    sget-object v4, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    array-length v4, v4

    if-lt v2, v4, :cond_0

    const-string/jumbo v1, "unknown"

    :goto_0
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/16 v6, 0x3c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/16 v6, 0x2d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v3, v4, 0x4

    :goto_1
    if-lez v3, :cond_1

    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/16 v6, 0x30

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    sget-object v4, Landroid/icu/impl/UCharacterName;->TYPE_NAMES_:[Ljava/lang/String;

    aget-object v1, v4, v2

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    const/16 v6, 0x3e

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit v5

    return-object v1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getGroup(I)I
    .locals 5

    iget v0, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    invoke-static {p1}, Landroid/icu/impl/UCharacterName;->getCodepointMSB(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_1

    add-int v4, v3, v0

    shr-int/lit8 v1, v4, 0x1

    invoke-virtual {p0, v1}, Landroid/icu/impl/UCharacterName;->getGroupMSB(I)I

    move-result v4

    if-ge v2, v4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public getGroupLengths(I[C[C)I
    .locals 12

    const v11, 0xffff

    const/16 v10, 0x20

    const/4 v9, 0x0

    const v2, 0xffff

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget v6, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    mul-int/2addr p1, v6

    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    add-int/lit8 v7, p1, 0x1

    aget-char v6, v6, v7

    iget-object v7, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    add-int/lit8 v8, p1, 0x2

    aget-char v7, v7, v8

    invoke-static {v6, v7}, Landroid/icu/impl/UCharacterUtility;->toInt(CC)I

    move-result v5

    aput-char v9, p2, v9

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v10, :cond_4

    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    aget-byte v0, v6, v5

    const/4 v4, 0x4

    :goto_1
    if-ltz v4, :cond_3

    shr-int v6, v0, v4

    and-int/lit8 v6, v6, 0xf

    int-to-byte v3, v6

    if-ne v2, v11, :cond_0

    const/16 v6, 0xb

    if-le v3, v6, :cond_0

    add-int/lit8 v6, v3, -0xc

    shl-int/lit8 v6, v6, 0x4

    int-to-char v2, v6

    :goto_2
    add-int/lit8 v4, v4, -0x4

    goto :goto_1

    :cond_0
    if-eq v2, v11, :cond_2

    or-int v6, v2, v3

    add-int/lit8 v6, v6, 0xc

    int-to-char v6, v6

    aput-char v6, p3, v1

    :goto_3
    if-ge v1, v10, :cond_1

    add-int/lit8 v6, v1, 0x1

    aget-char v7, p2, v1

    aget-char v8, p3, v1

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, p2, v6

    :cond_1
    const v2, 0xffff

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    int-to-char v6, v3

    aput-char v6, p3, v1

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return v5
.end method

.method public getGroupMSB(I)I
    .locals 2

    iget v0, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    if-lt p1, v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    iget v1, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    mul-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public declared-synchronized getGroupName(II)Ljava/lang/String;
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/icu/impl/UCharacterName;->getCodepointMSB(I)I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterName;->getGroup(I)I

    move-result v0

    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    iget v5, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    mul-int/2addr v5, v0

    aget-char v4, v4, v5

    if-ne v2, v4, :cond_0

    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_groupoffsets_:[C

    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_grouplengths_:[C

    invoke-virtual {p0, v0, v4, v5}, Landroid/icu/impl/UCharacterName;->getGroupLengths(I[C[C)I

    move-result v1

    and-int/lit8 v3, p1, 0x1f

    iget-object v4, p0, Landroid/icu/impl/UCharacterName;->m_groupoffsets_:[C

    aget-char v4, v4, v3

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_grouplengths_:[C

    aget-char v5, v5, v3

    invoke-virtual {p0, v4, v5, p2}, Landroid/icu/impl/UCharacterName;->getGroupName(III)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit p0

    return-object v4

    :cond_0
    const/4 v4, 0x0

    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getGroupName(III)Ljava/lang/String;
    .locals 10

    if-eqz p3, :cond_2

    const/4 v5, 0x2

    if-eq p3, v5, :cond_2

    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v5, v5

    const/16 v6, 0x3b

    if-ge v6, v5, :cond_0

    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    const/16 v6, 0x3b

    aget-char v5, v5, v6

    const v6, 0xffff

    if-ne v5, v6, :cond_5

    :cond_0
    const/4 v5, 0x4

    if-ne p3, v5, :cond_4

    const/4 v1, 0x2

    :cond_1
    :goto_0
    move v3, p1

    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    const/16 v6, 0x3b

    invoke-static {v5, p1, p2, v6}, Landroid/icu/impl/UCharacterUtility;->skipByteSubString([BIIB)I

    move-result v5

    add-int/2addr p1, v5

    sub-int v5, p1, v3

    sub-int/2addr p2, v5

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    :cond_2
    :goto_1
    iget-object v6, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v7, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_3

    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v7, p1, v2

    aget-byte v0, v5, v7

    add-int/lit8 v2, v2, 0x1

    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    array-length v5, v5

    if-lt v0, v5, :cond_7

    const/16 v5, 0x3b

    if-ne v0, v5, :cond_6

    :cond_3
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lez v5, :cond_b

    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit v6

    return-object v5

    :cond_4
    move v1, p3

    goto :goto_0

    :cond_5
    const/4 p2, 0x0

    goto :goto_1

    :cond_6
    :try_start_1
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_7
    :try_start_2
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    and-int/lit16 v7, v0, 0xff

    aget-char v4, v5, v7

    const v5, 0xfffe

    if-ne v4, v5, :cond_8

    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    shl-int/lit8 v7, v0, 0x8

    iget-object v8, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    add-int v9, p1, v2

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    aget-char v4, v5, v7

    add-int/lit8 v2, v2, 0x1

    :cond_8
    const v5, 0xffff

    if-ne v4, v5, :cond_a

    const/16 v5, 0x3b

    if-ne v0, v5, :cond_9

    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x2

    if-ne p3, v5, :cond_3

    goto :goto_2

    :cond_9
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    and-int/lit16 v7, v0, 0xff

    int-to-char v7, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_a
    iget-object v5, p0, Landroid/icu/impl/UCharacterName;->m_utilStringBuffer_:Ljava/lang/StringBuffer;

    iget-object v7, p0, Landroid/icu/impl/UCharacterName;->m_tokenstring_:[B

    invoke-static {v5, v7, v4}, Landroid/icu/impl/UCharacterUtility;->getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_b
    monitor-exit v6

    const/4 v5, 0x0

    return-object v5
.end method

.method public getISOCommentCharacters(Landroid/icu/text/UnicodeSet;)V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UCharacterName;->m_ISOCommentSet_:[I

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/UCharacterName;->convert([ILandroid/icu/text/UnicodeSet;)V

    return-void
.end method

.method public getMaxCharNameLength()I
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/UCharacterName;->initNameSetsLengths()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/icu/impl/UCharacterName;->m_maxNameLength_:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxISOCommentLength()I
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/UCharacterName;->initNameSetsLengths()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/icu/impl/UCharacterName;->m_maxISOCommentLength_:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getName(II)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    const v1, 0x10ffff

    if-le p1, v1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    const/4 v1, 0x4

    if-gt p2, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/UCharacterName;->getAlgName(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterName;->getExtendedName(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/UCharacterName;->getGroupName(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method setAlgorithm([Landroid/icu/impl/UCharacterName$AlgorithmName;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/icu/impl/UCharacterName;->m_algorithm_:[Landroid/icu/impl/UCharacterName$AlgorithmName;

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method setGroup([C[B)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    iput-object p1, p0, Landroid/icu/impl/UCharacterName;->m_groupinfo_:[C

    iput-object p2, p0, Landroid/icu/impl/UCharacterName;->m_groupstring_:[B

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method setGroupCountSize(II)Z
    .locals 1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    return v0

    :cond_1
    iput p1, p0, Landroid/icu/impl/UCharacterName;->m_groupcount_:I

    iput p2, p0, Landroid/icu/impl/UCharacterName;->m_groupsize_:I

    const/4 v0, 0x1

    return v0
.end method

.method setToken([C[B)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    iput-object p1, p0, Landroid/icu/impl/UCharacterName;->m_tokentable_:[C

    iput-object p2, p0, Landroid/icu/impl/UCharacterName;->m_tokenstring_:[B

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
