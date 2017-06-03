.class public final Landroid/icu/impl/UCharacterUtility;
.super Ljava/lang/Object;
.source "UCharacterUtility.java"


# static fields
.field private static final NON_CHARACTER_MAX_3_1_:I = 0xfdef

.field private static final NON_CHARACTER_MIN_3_1_:I = 0xfdd0

.field private static final NON_CHARACTER_SUFFIX_MIN_3_0_:I = 0xfffe


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareNullTermByteSubString(Ljava/lang/String;[BII)I
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-eqz v0, :cond_0

    aget-byte v0, p1, p3

    add-int/lit8 p3, p3, 0x1

    if-nez v0, :cond_1

    :cond_0
    return p2

    :cond_1
    if-eq p2, v1, :cond_2

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int/lit16 v3, v0, 0xff

    int-to-char v3, v3

    if-eq v2, v3, :cond_3

    :cond_2
    const/4 v2, -0x1

    return v2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method static getNullTermByteSubString(Ljava/lang/StringBuffer;[BI)I
    .locals 2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    aget-byte v0, p1, p2

    if-eqz v0, :cond_0

    and-int/lit16 v1, v0, 0xff

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public static isNonCharacter(I)Z
    .locals 4

    const v3, 0xfffe

    const/4 v0, 0x1

    const/4 v1, 0x0

    and-int v2, p0, v3

    if-ne v2, v3, :cond_0

    return v0

    :cond_0
    const v2, 0xfdd0

    if-lt p0, v2, :cond_1

    const v2, 0xfdef

    if-gt p0, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static skipByteSubString([BIIB)I
    .locals 3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    aget-byte v0, p0, v2

    if-ne v0, p3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static skipNullTermByteSubString([BII)I
    .locals 2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    aget-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method static toInt(CC)I
    .locals 1

    shl-int/lit8 v0, p0, 0x10

    or-int/2addr v0, p1

    return v0
.end method
