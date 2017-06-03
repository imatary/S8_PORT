.class public final Landroid/icu/impl/coll/UVector32;
.super Ljava/lang/Object;
.source "UVector32.java"


# instance fields
.field private buffer:[I

.field private length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/UVector32;->length:I

    return-void
.end method

.method private ensureAppendCapacity()V
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Landroid/icu/impl/coll/UVector32;->length:I

    iget-object v3, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    array-length v3, v3

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    array-length v2, v2

    const v3, 0xffff

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    array-length v2, v2

    mul-int/lit8 v1, v2, 0x4

    :goto_0
    new-array v0, v1, [I

    iget-object v2, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    iget v3, p0, Landroid/icu/impl/coll/UVector32;->length:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    iput-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    array-length v2, v2

    mul-int/lit8 v1, v2, 0x2

    goto :goto_0
.end method


# virtual methods
.method public addElement(I)V
    .locals 3

    invoke-direct {p0}, Landroid/icu/impl/coll/UVector32;->ensureAppendCapacity()V

    iget-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    iget v1, p0, Landroid/icu/impl/coll/UVector32;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/UVector32;->length:I

    aput p1, v0, v1

    return-void
.end method

.method public elementAti(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    aget v0, v0, p1

    return v0
.end method

.method public getBuffer()[I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    return-object v0
.end method

.method public insertElementAt(II)V
    .locals 4

    invoke-direct {p0}, Landroid/icu/impl/coll/UVector32;->ensureAppendCapacity()V

    iget-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    iget-object v1, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    add-int/lit8 v2, p2, 0x1

    iget v3, p0, Landroid/icu/impl/coll/UVector32;->length:I

    sub-int/2addr v3, p2

    invoke-static {v0, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    aput p1, v0, p2

    iget v0, p0, Landroid/icu/impl/coll/UVector32;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/coll/UVector32;->length:I

    return-void
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/impl/coll/UVector32;->length:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public removeAllElements()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/UVector32;->length:I

    return-void
.end method

.method public setElementAt(II)V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/UVector32;->buffer:[I

    aput p1, v0, p2

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/coll/UVector32;->length:I

    return v0
.end method
