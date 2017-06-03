.class public Llibcore/util/HexEncoding;
.super Ljava/lang/Object;
.source "HexEncoding.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Llibcore/util/HexEncoding;->HEX_DIGITS:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([CZ)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v7, 0x0

    array-length v6, p0

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v3, v6, 0x2

    new-array v2, v3, [B

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v6, p0

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    invoke-static {p0, v0}, Llibcore/util/HexEncoding;->toDigit([CI)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v2, v7

    const/4 v0, 0x1

    :cond_0
    array-length v1, p0

    move v5, v4

    :goto_0
    if-ge v0, v1, :cond_2

    add-int/lit8 v4, v5, 0x1

    invoke-static {p0, v0}, Llibcore/util/HexEncoding;->toDigit([CI)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v0, 0x1

    invoke-static {p0, v7}, Llibcore/util/HexEncoding;->toDigit([CI)I

    move-result v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    add-int/lit8 v0, v0, 0x2

    move v5, v4

    goto :goto_0

    :cond_1
    array-length v6, p0

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid input length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    return-object v2
.end method

.method public static encode([B)[C
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Llibcore/util/HexEncoding;->encode([BII)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)[C
    .locals 7

    mul-int/lit8 v4, p2, 0x2

    new-array v2, v4, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v4, p1, v1

    aget-byte v0, p0, v4

    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Llibcore/util/HexEncoding;->HEX_DIGITS:[C

    ushr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    aput-char v4, v2, v3

    add-int/lit8 v4, v3, 0x1

    sget-object v5, Llibcore/util/HexEncoding;->HEX_DIGITS:[C

    and-int/lit8 v6, v0, 0xf

    aget-char v5, v5, v6

    aput-char v5, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static toDigit([CI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    aget-char v0, p0, p1

    const/16 v1, 0x30

    if-gt v1, v0, :cond_0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x30

    return v1

    :cond_0
    const/16 v1, 0x61

    if-gt v1, v0, :cond_1

    const/16 v1, 0x66

    if-gt v0, v1, :cond_1

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v1, v1, 0xa

    return v1

    :cond_1
    const/16 v1, 0x41

    if-gt v1, v0, :cond_2

    const/16 v1, 0x46

    if-gt v0, v1, :cond_2

    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v1, v1, 0xa

    return v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal char: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, p0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at offset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
