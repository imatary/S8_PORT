.class public final Landroid/icu/util/BytesTrie$Entry;
.super Ljava/lang/Object;
.source "BytesTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/BytesTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field private bytes:[B

.field private length:I

.field public value:I


# direct methods
.method static synthetic -get0(Landroid/icu/util/BytesTrie$Entry;)I
    .locals 1

    iget v0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/icu/util/BytesTrie$Entry;[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/BytesTrie$Entry;->append([BII)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/icu/util/BytesTrie$Entry;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/util/BytesTrie$Entry;->append(B)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/icu/util/BytesTrie$Entry;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/util/BytesTrie$Entry;->truncateString(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    return-void
.end method

.method synthetic constructor <init>(ILandroid/icu/util/BytesTrie$Entry;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/icu/util/BytesTrie$Entry;-><init>(I)V

    return-void
.end method

.method private append(B)V
    .locals 3

    iget v0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/util/BytesTrie$Entry;->ensureCapacity(I)V

    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    iget v1, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    aput-byte p1, v0, v1

    return-void
.end method

.method private append([BII)V
    .locals 2

    iget v0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Landroid/icu/util/BytesTrie$Entry;->ensureCapacity(I)V

    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    iget v1, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    array-length v1, v1

    if-ge v1, p1, :cond_0

    iget-object v1, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v2, p1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v0, v1, [B

    iget-object v1, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    iget v2, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    iput-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    :cond_0
    return-void
.end method

.method private truncateString(I)V
    .locals 0

    iput p1, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    return-void
.end method


# virtual methods
.method public byteAt(I)B
    .locals 1

    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public bytesAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    iget v1, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bytesLength()I
    .locals 1

    iget v0, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    return v0
.end method

.method public copyBytesTo([BI)V
    .locals 3

    iget-object v0, p0, Landroid/icu/util/BytesTrie$Entry;->bytes:[B

    iget v1, p0, Landroid/icu/util/BytesTrie$Entry;->length:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method
