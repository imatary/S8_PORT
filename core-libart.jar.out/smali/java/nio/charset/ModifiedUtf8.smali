.class public Ljava/nio/charset/ModifiedUtf8;
.super Ljava/lang/Object;
.source "ModifiedUtf8.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countBytes(Ljava/lang/String;Z)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    const-wide/16 v8, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x80

    if-ge v0, v5, :cond_1

    add-long/2addr v2, v8

    if-nez v0, :cond_0

    add-long/2addr v2, v8

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v5, 0x800

    if-ge v0, v5, :cond_2

    const-wide/16 v6, 0x2

    add-long/2addr v2, v6

    goto :goto_1

    :cond_2
    const-wide/16 v6, 0x3

    add-long/2addr v2, v6

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    const-wide/32 v6, 0xffff

    cmp-long v5, v2, v6

    if-lez v5, :cond_4

    new-instance v5, Ljava/io/UTFDataFormatException;

    const-string/jumbo v6, "Size of the encoded string doesn\'t fit in two bytes"

    invoke-direct {v5, v6}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    return-wide v2
.end method

.method public static decode([B[CII)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    const/4 v5, 0x0

    const/16 v4, 0x80

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Illegal arguments: offset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". Length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/4 v2, 0x0

    add-int v1, p2, p3

    :goto_0
    if-ge p2, v1, :cond_a

    aget-byte v3, p0, p2

    and-int/lit16 v0, v3, 0xff

    add-int/lit8 p2, p2, 0x1

    if-ge v0, v4, :cond_2

    int-to-char v3, v0

    aput-char v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v3, 0xc0

    if-gt v3, v0, :cond_5

    const/16 v3, 0xe0

    if-ge v0, v3, :cond_5

    and-int/lit8 v3, v0, 0x1f

    shl-int/lit8 v0, v3, 0x6

    if-ne p2, v1, :cond_3

    new-instance v3, Ljava/io/UTFDataFormatException;

    const-string/jumbo v4, "unexpected end of input"

    invoke-direct {v3, v4}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    aget-byte v3, p0, p2

    and-int/lit16 v3, v3, 0xc0

    if-eq v3, v4, :cond_4

    new-instance v3, Ljava/io/UTFDataFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bad second byte at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    aget-byte v3, p0, p2

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v0

    int-to-char v3, v3

    aput-char v3, p1, v2

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/16 v3, 0xf0

    if-ge v0, v3, :cond_9

    and-int/lit8 v3, v0, 0x1f

    shl-int/lit8 v0, v3, 0xc

    add-int/lit8 v3, p2, 0x1

    if-lt v3, v1, :cond_6

    new-instance v3, Ljava/io/UTFDataFormatException;

    const-string/jumbo v4, "unexpected end of input"

    invoke-direct {v3, v4}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    aget-byte v3, p0, p2

    and-int/lit16 v3, v3, 0xc0

    if-eq v3, v4, :cond_7

    new-instance v3, Ljava/io/UTFDataFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bad second byte at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    aget-byte v3, p0, p2

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v0, v3

    add-int/lit8 p2, p2, 0x1

    aget-byte v3, p0, p2

    and-int/lit16 v3, v3, 0xc0

    if-eq v3, v4, :cond_8

    new-instance v3, Ljava/io/UTFDataFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bad third byte at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    aget-byte v3, p0, p2

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v0

    int-to-char v3, v3

    aput-char v3, p1, v2

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance v3, Ljava/io/UTFDataFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid UTF8 byte "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    invoke-static {p1, v5, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static encode([BILjava/lang/String;)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v1, 0x0

    move v2, p1

    :goto_0
    if-ge v1, v3, :cond_3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x80

    if-ge v0, v4, :cond_1

    if-nez v0, :cond_0

    add-int/lit8 p1, v2, 0x1

    const/16 v4, -0x40

    aput-byte v4, p0, v2

    add-int/lit8 v2, p1, 0x1

    const/16 v4, -0x80

    aput-byte v4, p0, p1

    move p1, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, p1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, v2, 0x1

    int-to-byte v4, v0

    aput-byte v4, p0, v2

    goto :goto_1

    :cond_1
    const/16 v4, 0x800

    if-ge v0, v4, :cond_2

    add-int/lit8 p1, v2, 0x1

    ushr-int/lit8 v4, v0, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, p0, v2

    add-int/lit8 v2, p1, 0x1

    and-int/lit8 v4, v0, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    move p1, v2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, v2, 0x1

    ushr-int/lit8 v4, v0, 0xc

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, p0, v2

    add-int/lit8 v2, p1, 0x1

    ushr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    add-int/lit8 p1, v2, 0x1

    and-int/lit8 v4, v0, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, v2

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static encode(Ljava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    const/4 v6, 0x1

    invoke-static {p0, v6}, Ljava/nio/charset/ModifiedUtf8;->countBytes(Ljava/lang/String;Z)J

    move-result-wide v2

    long-to-int v1, v2

    add-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    const/4 v1, 0x2

    invoke-static {v0, v1, p0}, Ljava/nio/charset/ModifiedUtf8;->encode([BILjava/lang/String;)V

    const/16 v1, 0x8

    ushr-long v4, v2, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    const/4 v4, 0x0

    aput-byte v1, v0, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    return-object v0
.end method
