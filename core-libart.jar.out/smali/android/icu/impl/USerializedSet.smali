.class public final Landroid/icu/impl/USerializedSet;
.super Ljava/lang/Object;
.source "USerializedSet.java"


# instance fields
.field private array:[C

.field private arrayOffset:I

.field private bmpLength:I

.field private length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    return-void
.end method


# virtual methods
.method public final contains(I)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x10ffff

    if-le p1, v5, :cond_0

    return v4

    :cond_0
    const v5, 0xffff

    if-gt p1, v5, :cond_3

    const/4 v1, 0x0

    :goto_0
    iget v5, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    if-ge v1, v5, :cond_1

    int-to-char v5, p1

    iget-object v6, p0, Landroid/icu/impl/USerializedSet;->array:[C

    aget-char v6, v6, v1

    if-lt v5, v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_2

    :goto_1
    return v3

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    shr-int/lit8 v5, p1, 0x10

    int-to-char v0, v5

    int-to-char v2, p1

    iget v1, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    :goto_2
    iget v5, p0, Landroid/icu/impl/USerializedSet;->length:I

    if-ge v1, v5, :cond_5

    iget-object v5, p0, Landroid/icu/impl/USerializedSet;->array:[C

    aget-char v5, v5, v1

    if-gt v0, v5, :cond_4

    iget-object v5, p0, Landroid/icu/impl/USerializedSet;->array:[C

    aget-char v5, v5, v1

    if-ne v0, v5, :cond_5

    iget-object v5, p0, Landroid/icu/impl/USerializedSet;->array:[C

    add-int/lit8 v6, v1, 0x1

    aget-char v5, v5, v6

    if-lt v2, v5, :cond_5

    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_5
    iget v5, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    add-int/2addr v5, v1

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6

    :goto_3
    return v3

    :cond_6
    move v3, v4

    goto :goto_3
.end method

.method public final countRanges()I
    .locals 3

    iget v0, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    iget v1, p0, Landroid/icu/impl/USerializedSet;->length:I

    iget v2, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final getRange(I[I)Z
    .locals 9

    const v8, 0x10ffff

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-gez p1, :cond_0

    return v7

    :cond_0
    iget-object v3, p0, Landroid/icu/impl/USerializedSet;->array:[C

    if-nez v3, :cond_1

    const/16 v3, 0x8

    new-array v3, v3, [C

    iput-object v3, p0, Landroid/icu/impl/USerializedSet;->array:[C

    :cond_1
    if-eqz p2, :cond_2

    array-length v3, p2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_3
    mul-int/lit8 p1, p1, 0x2

    iget v3, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    if-ge p1, v3, :cond_6

    iget-object v3, p0, Landroid/icu/impl/USerializedSet;->array:[C

    add-int/lit8 v1, p1, 0x1

    aget-char v3, v3, p1

    aput v3, p2, v7

    iget v3, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Landroid/icu/impl/USerializedSet;->array:[C

    aget-char v3, v3, v1

    add-int/lit8 v3, v3, -0x1

    aput v3, p2, v6

    :goto_0
    return v6

    :cond_4
    iget v3, p0, Landroid/icu/impl/USerializedSet;->length:I

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Landroid/icu/impl/USerializedSet;->array:[C

    aget-char v3, v3, v1

    shl-int/lit8 v3, v3, 0x10

    iget-object v4, p0, Landroid/icu/impl/USerializedSet;->array:[C

    add-int/lit8 v5, v1, 0x1

    aget-char v4, v4, v5

    or-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    aput v3, p2, v6

    goto :goto_0

    :cond_5
    aput v8, p2, v6

    goto :goto_0

    :cond_6
    iget v3, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    sub-int/2addr p1, v3

    mul-int/lit8 p1, p1, 0x2

    iget v3, p0, Landroid/icu/impl/USerializedSet;->length:I

    iget v4, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    sub-int v2, v3, v4

    if-ge p1, v2, :cond_8

    iget v3, p0, Landroid/icu/impl/USerializedSet;->arrayOffset:I

    iget v4, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    add-int v0, v3, v4

    iget-object v3, p0, Landroid/icu/impl/USerializedSet;->array:[C

    add-int v4, v0, p1

    aget-char v3, v3, v4

    shl-int/lit8 v3, v3, 0x10

    iget-object v4, p0, Landroid/icu/impl/USerializedSet;->array:[C

    add-int v5, v0, p1

    add-int/lit8 v5, v5, 0x1

    aget-char v4, v4, v5

    or-int/2addr v3, v4

    aput v3, p2, v7

    add-int/lit8 p1, p1, 0x2

    if-ge p1, v2, :cond_7

    iget-object v3, p0, Landroid/icu/impl/USerializedSet;->array:[C

    add-int v4, v0, p1

    aget-char v3, v3, v4

    shl-int/lit8 v3, v3, 0x10

    iget-object v4, p0, Landroid/icu/impl/USerializedSet;->array:[C

    add-int v5, v0, p1

    add-int/lit8 v5, v5, 0x1

    aget-char v4, v4, v5

    or-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    aput v3, p2, v6

    :goto_1
    return v6

    :cond_7
    aput v8, p2, v6

    goto :goto_1

    :cond_8
    return v7
.end method

.method public final getSet([CI)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/icu/impl/USerializedSet;->array:[C

    iput v4, p0, Landroid/icu/impl/USerializedSet;->length:I

    iput v4, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    iput v4, p0, Landroid/icu/impl/USerializedSet;->arrayOffset:I

    add-int/lit8 v0, p2, 0x1

    aget-char v1, p1, p2

    iput v1, p0, Landroid/icu/impl/USerializedSet;->length:I

    iget v1, p0, Landroid/icu/impl/USerializedSet;->length:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Landroid/icu/impl/USerializedSet;->length:I

    and-int/lit16 v1, v1, 0x7fff

    iput v1, p0, Landroid/icu/impl/USerializedSet;->length:I

    array-length v1, p1

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Landroid/icu/impl/USerializedSet;->length:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    iput v4, p0, Landroid/icu/impl/USerializedSet;->length:I

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_0
    add-int/lit8 p2, v0, 0x1

    aget-char v1, p1, v0

    iput v1, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    :goto_0
    iget v1, p0, Landroid/icu/impl/USerializedSet;->length:I

    new-array v1, v1, [C

    iput-object v1, p0, Landroid/icu/impl/USerializedSet;->array:[C

    iget-object v1, p0, Landroid/icu/impl/USerializedSet;->array:[C

    iget v2, p0, Landroid/icu/impl/USerializedSet;->length:I

    invoke-static {p1, p2, v1, v4, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    const/4 v1, 0x1

    return v1

    :cond_1
    array-length v1, p1

    iget v2, p0, Landroid/icu/impl/USerializedSet;->length:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    iput v4, p0, Landroid/icu/impl/USerializedSet;->length:I

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_2
    iget v1, p0, Landroid/icu/impl/USerializedSet;->length:I

    iput v1, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    move p2, v0

    goto :goto_0
.end method

.method public final setToOne(I)V
    .locals 7

    const/4 v6, 0x3

    const v5, 0xffff

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x10ffff

    if-ge v0, p1, :cond_0

    return-void

    :cond_0
    if-ge p1, v5, :cond_1

    iput v4, p0, Landroid/icu/impl/USerializedSet;->length:I

    iput v4, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    int-to-char v1, p1

    aput-char v1, v0, v2

    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    add-int/lit8 v1, p1, 0x1

    int-to-char v1, v1

    aput-char v1, v0, v3

    :goto_0
    return-void

    :cond_1
    if-ne p1, v5, :cond_2

    iput v3, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    iput v6, p0, Landroid/icu/impl/USerializedSet;->length:I

    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    aput-char v5, v0, v2

    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    aput-char v3, v0, v3

    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    aput-char v2, v0, v4

    goto :goto_0

    :cond_2
    const v0, 0x10ffff

    if-ge p1, v0, :cond_3

    iput v2, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/icu/impl/USerializedSet;->length:I

    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    shr-int/lit8 v1, p1, 0x10

    int-to-char v1, v1

    aput-char v1, v0, v2

    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    int-to-char v1, p1

    aput-char v1, v0, v3

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    shr-int/lit8 v1, p1, 0x10

    int-to-char v1, v1

    aput-char v1, v0, v4

    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    int-to-char v1, p1

    aput-char v1, v0, v6

    goto :goto_0

    :cond_3
    iput v2, p0, Landroid/icu/impl/USerializedSet;->bmpLength:I

    iput v4, p0, Landroid/icu/impl/USerializedSet;->length:I

    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    const/16 v1, 0x10

    aput-char v1, v0, v2

    iget-object v0, p0, Landroid/icu/impl/USerializedSet;->array:[C

    aput-char v5, v0, v3

    goto :goto_0
.end method
