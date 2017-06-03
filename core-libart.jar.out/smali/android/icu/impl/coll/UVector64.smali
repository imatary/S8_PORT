.class public final Landroid/icu/impl/coll/UVector64;
.super Ljava/lang/Object;
.source "UVector64.java"


# instance fields
.field private buffer:[J

.field private length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/UVector64;->length:I

    return-void
.end method

.method private ensureAppendCapacity()V
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Landroid/icu/impl/coll/UVector64;->length:I

    iget-object v3, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    array-length v3, v3

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    array-length v2, v2

    const v3, 0xffff

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    array-length v2, v2

    mul-int/lit8 v1, v2, 0x4

    :goto_0
    new-array v0, v1, [J

    iget-object v2, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    iget v3, p0, Landroid/icu/impl/coll/UVector64;->length:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    iput-object v0, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    array-length v2, v2

    mul-int/lit8 v1, v2, 0x2

    goto :goto_0
.end method


# virtual methods
.method public addElement(J)V
    .locals 3

    invoke-direct {p0}, Landroid/icu/impl/coll/UVector64;->ensureAppendCapacity()V

    iget-object v0, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    iget v1, p0, Landroid/icu/impl/coll/UVector64;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/UVector64;->length:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public elementAti(I)J
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getBuffer()[J
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    return-object v0
.end method

.method public insertElementAt(JI)V
    .locals 5

    invoke-direct {p0}, Landroid/icu/impl/coll/UVector64;->ensureAppendCapacity()V

    iget-object v0, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    iget-object v1, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    add-int/lit8 v2, p3, 0x1

    iget v3, p0, Landroid/icu/impl/coll/UVector64;->length:I

    sub-int/2addr v3, p3

    invoke-static {v0, p3, v1, v2, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    iget-object v0, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    aput-wide p1, v0, p3

    iget v0, p0, Landroid/icu/impl/coll/UVector64;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/coll/UVector64;->length:I

    return-void
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/impl/coll/UVector64;->length:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public removeAllElements()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/UVector64;->length:I

    return-void
.end method

.method public setElementAt(JI)V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/UVector64;->buffer:[J

    aput-wide p1, v0, p3

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/coll/UVector64;->length:I

    return v0
.end method
