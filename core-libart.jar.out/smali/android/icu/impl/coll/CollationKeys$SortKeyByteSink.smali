.class public abstract Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;
.super Ljava/lang/Object;
.source "CollationKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SortKeyByteSink"
.end annotation


# instance fields
.field private appended_:I

.field protected buffer_:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    iput-object p1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    return-void
.end method


# virtual methods
.method public Append(I)V
    .locals 3

    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    iget-object v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Resize(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    :cond_1
    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    return-void
.end method

.method public Append([BI)V
    .locals 4

    const/4 v3, 0x0

    if-lez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    iget v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    add-int/2addr v2, p2

    iput v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    iget-object v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    array-length v2, v2

    sub-int v0, v2, v1

    if-gt p2, v0, :cond_2

    iget-object v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    invoke-static {p1, v3, v2, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p1, v3, p2, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->AppendBeyondCapacity([BIII)V

    goto :goto_0
.end method

.method protected abstract AppendBeyondCapacity([BIII)V
.end method

.method public GetRemainingCapacity()I
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    array-length v0, v0

    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public NumberOfBytesAppended()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    return v0
.end method

.method public Overflowed()Z
    .locals 2

    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    iget-object v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract Resize(II)Z
.end method

.method public setBufferAndAppended([BI)V
    .locals 0

    iput-object p1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    iput p2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    return-void
.end method
