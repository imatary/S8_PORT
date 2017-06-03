.class public Landroid/icu/util/ByteArrayWrapper;
.super Ljava/lang/Object;
.source "ByteArrayWrapper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/util/ByteArrayWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field public bytes:[B

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iput v0, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    iget v0, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    iget-object v0, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    iget v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p2, :cond_0

    array-length v0, p1

    if-gt p2, v0, :cond_0

    iput-object p1, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    iput p2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    return-void
.end method

.method private static final copyBytes([BI[BII)V
    .locals 3

    const/16 v2, 0x40

    if-ge p4, v2, :cond_0

    move v0, p1

    move v1, p3

    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_1

    aget-byte v2, p0, v0

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final append([BII)Landroid/icu/util/ByteArrayWrapper;
    .locals 3

    sub-int v0, p3, p2

    iget v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/icu/util/ByteArrayWrapper;->ensureCapacity(I)Landroid/icu/util/ByteArrayWrapper;

    iget-object v1, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    iget v2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    invoke-static {p1, p2, v1, v2, v0}, Landroid/icu/util/ByteArrayWrapper;->copyBytes([BI[BII)V

    iget v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    return-object p0
.end method

.method public compareTo(Landroid/icu/util/ByteArrayWrapper;)I
    .locals 4

    if-ne p0, p1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget v2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    iget v3, p1, Landroid/icu/util/ByteArrayWrapper;->size:I

    if-ge v2, v3, :cond_1

    iget v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v2, v2, v0

    iget-object v3, p1, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p1, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v2, v3

    return v2

    :cond_1
    iget v1, p1, Landroid/icu/util/ByteArrayWrapper;->size:I

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    iget v3, p1, Landroid/icu/util/ByteArrayWrapper;->size:I

    sub-int/2addr v2, v3

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/util/ByteArrayWrapper;

    invoke-virtual {p0, p1}, Landroid/icu/util/ByteArrayWrapper;->compareTo(Landroid/icu/util/ByteArrayWrapper;)I

    move-result v0

    return v0
.end method

.method public ensureCapacity(I)Landroid/icu/util/ByteArrayWrapper;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    array-length v1, v1

    if-ge v1, p1, :cond_1

    :cond_0
    new-array v0, p1, [B

    iget-object v1, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    iget v2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Landroid/icu/util/ByteArrayWrapper;->copyBytes([BI[BII)V

    iput-object v0, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    :cond_1
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_0

    return v7

    :cond_0
    if-nez p1, :cond_1

    return v6

    :cond_1
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/icu/util/ByteArrayWrapper;

    move-object v3, v0

    iget v4, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    iget v5, v3, Landroid/icu/util/ByteArrayWrapper;->size:I

    if-eq v4, v5, :cond_2

    return v6

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iget v4, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v4, v4, v2

    iget-object v5, v3, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v5, v5, v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v5, :cond_3

    return v6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v7

    :catch_0
    move-exception v1

    return v6
.end method

.method public hashCode()I
    .locals 4

    iget-object v2, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v1, 0x25

    iget-object v3, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final releaseBytes()[B
    .locals 2

    iget-object v0, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    return-object v0
.end method

.method public final set([BII)Landroid/icu/util/ByteArrayWrapper;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/util/ByteArrayWrapper;->append([BII)Landroid/icu/util/ByteArrayWrapper;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/icu/util/ByteArrayWrapper;->size:I

    if-ge v0, v2, :cond_1

    if-eqz v0, :cond_0

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Landroid/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
