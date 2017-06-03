.class final Landroid/icu/impl/coll/CollationIterator$CEBuffer;
.super Ljava/lang/Object;
.source "CollationIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CEBuffer"
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x28


# instance fields
.field private buffer:[J

.field length:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    const/16 v0, 0x28

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    return-void
.end method


# virtual methods
.method append(J)V
    .locals 3

    iget v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    aput-wide p1, v0, v1

    return-void
.end method

.method appendUnsafe(J)V
    .locals 3

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    iget v1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    aput-wide p1, v0, v1

    return-void
.end method

.method ensureAppendCapacity(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    array-length v0, v2

    iget v2, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/2addr v2, p1

    if-gt v2, v0, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_1

    mul-int/lit8 v0, v0, 0x4

    :goto_0
    iget v2, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/2addr v2, p1

    if-lt v0, v2, :cond_0

    new-array v1, v0, [J

    iget-object v2, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    iget v3, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    iput-object v1, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    return-void

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method get(I)J
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method getCEs()[J
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    return-object v0
.end method

.method incLength()V
    .locals 2

    iget v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->ensureAppendCapacity(I)V

    :cond_0
    iget v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->length:I

    return-void
.end method

.method set(IJ)J
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/coll/CollationIterator$CEBuffer;->buffer:[J

    aput-wide p2, v0, p1

    return-wide p2
.end method
