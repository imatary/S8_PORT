.class public final Lcom/android/dex/Mutf8;
.super Ljava/lang/Object;
.source "Mutf8.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static countBytes(Ljava/lang/String;Z)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v0, :cond_0

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_0

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    :goto_1
    if-eqz p1, :cond_2

    const-wide/32 v6, 0xffff

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    new-instance v3, Ljava/io/UTFDataFormatException;

    const-string/jumbo v6, "String more than 65535 UTF bytes long"

    invoke-direct {v3, v6}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/16 v3, 0x7ff

    if-gt v0, v3, :cond_1

    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x3

    add-long/2addr v4, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-wide v4
.end method

.method public static decode(Lcom/android/dex/util/ByteInput;[C)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    const/4 v8, 0x0

    const/16 v7, 0x80

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-char v0, v5

    if-nez v0, :cond_0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1, v8, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    :cond_0
    aput-char v0, p1, v3

    if-ge v0, v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 v5, v0, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_3

    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v5

    and-int/lit16 v1, v5, 0xff

    and-int/lit16 v5, v1, 0xc0

    if-eq v5, v7, :cond_2

    new-instance v5, Ljava/io/UTFDataFormatException;

    const-string/jumbo v6, "bad second byte"

    invoke-direct {v5, v6}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v5, v0, 0x1f

    shl-int/lit8 v5, v5, 0x6

    and-int/lit8 v6, v1, 0x3f

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, p1, v3

    move v3, v4

    goto :goto_0

    :cond_3
    and-int/lit16 v5, v0, 0xf0

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_6

    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v5

    and-int/lit16 v1, v5, 0xff

    invoke-interface {p0}, Lcom/android/dex/util/ByteInput;->readByte()B

    move-result v5

    and-int/lit16 v2, v5, 0xff

    and-int/lit16 v5, v1, 0xc0

    if-ne v5, v7, :cond_4

    and-int/lit16 v5, v2, 0xc0

    if-eq v5, v7, :cond_5

    :cond_4
    new-instance v5, Ljava/io/UTFDataFormatException;

    const-string/jumbo v6, "bad second or third byte"

    invoke-direct {v5, v6}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v5, v0, 0xf

    shl-int/lit8 v5, v5, 0xc

    and-int/lit8 v6, v1, 0x3f

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    and-int/lit8 v6, v2, 0x3f

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, p1, v3

    move v3, v4

    goto :goto_0

    :cond_6
    new-instance v5, Ljava/io/UTFDataFormatException;

    const-string/jumbo v6, "bad byte"

    invoke-direct {v5, v6}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static encode([BILjava/lang/String;)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    move v3, p1

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v0, :cond_0

    const/16 v4, 0x7f

    if-gt v0, v4, :cond_0

    add-int/lit8 p1, v3, 0x1

    int-to-byte v4, v0

    aput-byte v4, p0, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, p1

    goto :goto_0

    :cond_0
    const/16 v4, 0x7ff

    if-gt v0, v4, :cond_1

    add-int/lit8 p1, v3, 0x1

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x1f

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v3, p1, 0x1

    and-int/lit8 v4, v0, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    move p1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 p1, v3, 0x1

    shr-int/lit8 v4, v0, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v3, p1, 0x1

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    add-int/lit8 p1, v3, 0x1

    and-int/lit8 v4, v0, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static encode(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/dex/Mutf8;->countBytes(Ljava/lang/String;Z)J

    move-result-wide v2

    long-to-int v1, v2

    new-array v0, v1, [B

    const/4 v2, 0x0

    invoke-static {v0, v2, p0}, Lcom/android/dex/Mutf8;->encode([BILjava/lang/String;)V

    return-object v0
.end method
