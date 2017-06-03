.class public final Landroid/icu/util/BytesTrieBuilder;
.super Landroid/icu/util/StringTrieBuilder;
.source "BytesTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private bytes:[B

.field private bytesLength:I

.field private final intBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/util/BytesTrieBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/util/BytesTrieBuilder;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    return-void
.end method

.method private buildBytes(Landroid/icu/util/StringTrieBuilder$Option;)V
    .locals 1

    iget-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    if-nez v0, :cond_0

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/util/StringTrieBuilder;->buildImpl(Landroid/icu/util/StringTrieBuilder$Option;)V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 6

    iget-object v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v2, v2

    if-le p1, v2, :cond_1

    iget-object v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v1, v2

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    if-le v1, p1, :cond_0

    new-array v0, v1, [B

    iget-object v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v3, v3

    iget v4, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v3, v4

    array-length v4, v0

    iget v5, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    iput-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    :cond_1
    return-void
.end method

.method private write([BI)I
    .locals 4

    iget v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    add-int v0, v1, p2

    invoke-direct {p0, v0}, Landroid/icu/util/BytesTrieBuilder;->ensureCapacity(I)V

    iput v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    iget-object v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v2, v2

    iget v3, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    return v1
.end method


# virtual methods
.method public add([BII)Landroid/icu/util/BytesTrieBuilder;
    .locals 1

    new-instance v0, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;

    invoke-direct {v0, p1, p2}, Landroid/icu/util/BytesTrieBuilder$BytesAsCharSequence;-><init>([BI)V

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/StringTrieBuilder;->addImpl(Ljava/lang/CharSequence;I)V

    return-object p0
.end method

.method public build(Landroid/icu/util/StringTrieBuilder$Option;)Landroid/icu/util/BytesTrie;
    .locals 4

    invoke-direct {p0, p1}, Landroid/icu/util/BytesTrieBuilder;->buildBytes(Landroid/icu/util/StringTrieBuilder$Option;)V

    new-instance v0, Landroid/icu/util/BytesTrie;

    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    iget-object v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v2, v2

    iget v3, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/icu/util/BytesTrie;-><init>([BI)V

    return-object v0
.end method

.method public buildByteBuffer(Landroid/icu/util/StringTrieBuilder$Option;)Ljava/nio/ByteBuffer;
    .locals 3

    invoke-direct {p0, p1}, Landroid/icu/util/BytesTrieBuilder;->buildBytes(Landroid/icu/util/StringTrieBuilder$Option;)V

    iget-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v1, v1

    iget v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public clear()Landroid/icu/util/BytesTrieBuilder;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/StringTrieBuilder;->clearImpl()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    return-object p0
.end method

.method protected getMaxBranchLinearSubNodeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x5

    return v0
.end method

.method protected getMaxLinearMatchLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    return v0
.end method

.method protected getMinLinearMatch()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    return v0
.end method

.method protected matchNodesCanHaveValues()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected write(I)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Landroid/icu/util/BytesTrieBuilder;->ensureCapacity(I)V

    iput v0, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    iget-object v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    iget-object v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v2, v2

    iget v3, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int/2addr v2, v3

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    iget v1, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    return v1
.end method

.method protected write(II)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v4, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    add-int v2, v4, p2

    invoke-direct {p0, v2}, Landroid/icu/util/BytesTrieBuilder;->ensureCapacity(I)V

    iput v2, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    array-length v4, v4

    iget v5, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int v0, v4, v5

    move v1, v0

    move v3, p1

    :goto_0
    if-lez p2, :cond_0

    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->bytes:[B

    add-int/lit8 v0, v1, 0x1

    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    add-int/lit8 p1, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 p2, p2, -0x1

    move v1, v0

    move v3, p1

    goto :goto_0

    :cond_0
    iget v4, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    return v4
.end method

.method protected writeDeltaTo(I)I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v3, p0, Landroid/icu/util/BytesTrieBuilder;->bytesLength:I

    sub-int v0, v3, p1

    sget-boolean v3, Landroid/icu/util/BytesTrieBuilder;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    if-ltz v0, :cond_0

    move v3, v4

    :goto_0
    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    const/16 v3, 0xbf

    if-gt v0, v3, :cond_2

    invoke-virtual {p0, v0}, Landroid/icu/util/BytesTrieBuilder;->write(I)I

    move-result v3

    return v3

    :cond_2
    const/16 v3, 0x2fff

    if-gt v0, v3, :cond_3

    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v4, v0, 0x8

    add-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    const/4 v1, 0x1

    :goto_1
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    add-int/lit8 v2, v1, 0x1

    int-to-byte v4, v0

    aput-byte v4, v3, v1

    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    invoke-direct {p0, v3, v2}, Landroid/icu/util/BytesTrieBuilder;->write([BI)I

    move-result v3

    return v3

    :cond_3
    const v3, 0xdffff

    if-gt v0, v3, :cond_4

    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v6, v0, 0x10

    add-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    const/4 v1, 0x2

    :goto_2
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    goto :goto_1

    :cond_4
    const v3, 0xffffff

    if-gt v0, v3, :cond_5

    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    const/4 v6, -0x2

    aput-byte v6, v3, v5

    const/4 v1, 0x3

    :goto_3
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v5, v0, 0x10

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    goto :goto_2

    :cond_5
    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    const/4 v6, -0x1

    aput-byte v6, v3, v5

    iget-object v3, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v5, v0, 0x18

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v1, 0x4

    goto :goto_3
.end method

.method protected writeValueAndFinal(IZ)I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz p1, :cond_1

    const/16 v4, 0x40

    if-gt p1, v4, :cond_1

    add-int/lit8 v4, p1, 0x10

    shl-int/lit8 v4, v4, 0x1

    if-eqz p2, :cond_0

    :goto_0
    or-int/2addr v2, v4

    invoke-virtual {p0, v2}, Landroid/icu/util/BytesTrieBuilder;->write(I)I

    move-result v2

    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ltz p1, :cond_2

    const v4, 0xffffff

    if-le p1, v4, :cond_3

    :cond_2
    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    const/16 v5, 0x7f

    aput-byte v5, v4, v3

    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v5, p1, 0x18

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v5, p1, 0x10

    int-to-byte v5, v5

    const/4 v6, 0x2

    aput-byte v5, v4, v6

    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v5, p1, 0x8

    int-to-byte v5, v5

    const/4 v6, 0x3

    aput-byte v5, v4, v6

    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    int-to-byte v5, p1

    const/4 v6, 0x4

    aput-byte v5, v4, v6

    const/4 v0, 0x5

    :goto_1
    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    iget-object v5, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    aget-byte v5, v5, v3

    shl-int/lit8 v5, v5, 0x1

    if-eqz p2, :cond_6

    :goto_2
    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v4, v3

    iget-object v2, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    invoke-direct {p0, v2, v0}, Landroid/icu/util/BytesTrieBuilder;->write([BI)I

    move-result v2

    return v2

    :cond_3
    const/16 v4, 0x1aff

    if-gt p1, v4, :cond_4

    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v5, p1, 0x8

    add-int/lit8 v5, v5, 0x51

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    :goto_3
    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v5, p1

    aput-byte v5, v4, v0

    move v0, v1

    goto :goto_1

    :cond_4
    const v4, 0x11ffff

    if-gt p1, v4, :cond_5

    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v5, p1, 0x10

    add-int/lit8 v5, v5, 0x6c

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    :goto_4
    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v5, p1, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    move v0, v1

    goto :goto_3

    :cond_5
    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    const/16 v5, 0x7e

    aput-byte v5, v4, v3

    iget-object v4, p0, Landroid/icu/util/BytesTrieBuilder;->intBytes:[B

    shr-int/lit8 v5, p1, 0x10

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    const/4 v0, 0x2

    goto :goto_4

    :cond_6
    move v2, v3

    goto :goto_2
.end method

.method protected writeValueAndType(ZII)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p3}, Landroid/icu/util/BytesTrieBuilder;->write(I)I

    move-result v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/icu/util/BytesTrieBuilder;->writeValueAndFinal(IZ)I

    move-result v0

    :cond_0
    return v0
.end method
