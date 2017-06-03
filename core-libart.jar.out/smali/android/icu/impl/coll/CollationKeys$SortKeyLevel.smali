.class final Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;
.super Ljava/lang/Object;
.source "CollationKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/coll/CollationKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SortKeyLevel"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final INITIAL_CAPACITY:I = 0x28


# instance fields
.field buffer:[B

.field len:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x28

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    return-void
.end method

.method private ensureCapacity(I)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    array-length v3, v3

    mul-int/lit8 v1, v3, 0x2

    iget v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    mul-int/lit8 v4, p1, 0x2

    add-int v0, v3, v4

    if-ge v1, v0, :cond_0

    move v1, v0

    :cond_0
    const/16 v3, 0xc8

    if-ge v1, v3, :cond_1

    const/16 v1, 0xc8

    :cond_1
    new-array v2, v1, [B

    iget-object v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    iput-object v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method appendByte(I)V
    .locals 3

    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    iget-object v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->ensureCapacity(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    :cond_1
    return-void
.end method

.method appendReverseWeight16(I)V
    .locals 6

    const/4 v3, 0x0

    sget-boolean v4, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    const v4, 0xffff

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_1
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v1, v3

    int-to-byte v2, p1

    if-nez v2, :cond_4

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/2addr v3, v0

    iget-object v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    array-length v4, v4

    if-le v3, v4, :cond_2

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->ensureCapacity(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    if-nez v2, :cond_5

    iget-object v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aput-byte v1, v3, v4

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aput-byte v2, v3, v4

    iget-object v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v4, v4, 0x1

    aput-byte v1, v3, v4

    iget v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    goto :goto_1
.end method

.method appendTo(Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    iget v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, v2, v3

    if-ne v2, v0, :cond_0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;->Append([BI)V

    return-void
.end method

.method appendWeight16(I)V
    .locals 6

    const/4 v3, 0x0

    sget-boolean v4, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    const v4, 0xffff

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_1
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v1, v3

    int-to-byte v2, p1

    if-nez v2, :cond_4

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/2addr v3, v0

    iget-object v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    array-length v4, v4

    if-le v3, v4, :cond_2

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->ensureCapacity(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aput-byte v1, v3, v4

    if-eqz v2, :cond_3

    iget-object v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aput-byte v2, v3, v4

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x2

    goto :goto_0
.end method

.method appendWeight32(J)V
    .locals 11

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-boolean v2, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v2, p1, v6

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    new-array v1, v2, [B

    const/16 v2, 0x18

    ushr-long v6, p1, v2

    long-to-int v2, v6

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    const/16 v2, 0x10

    ushr-long v6, p1, v2

    long-to-int v2, v6

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    const/16 v2, 0x8

    ushr-long v6, p1, v2

    long-to-int v2, v6

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v1, v9

    aget-byte v2, v1, v3

    if-nez v2, :cond_4

    const/4 v0, 0x1

    :goto_1
    iget v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/2addr v2, v0

    iget-object v5, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    array-length v5, v5

    if-le v2, v5, :cond_2

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->ensureCapacity(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v5, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aget-byte v4, v1, v4

    aput-byte v4, v2, v5

    aget-byte v2, v1, v3

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aget-byte v3, v1, v3

    aput-byte v3, v2, v4

    aget-byte v2, v1, v8

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aget-byte v4, v1, v8

    aput-byte v4, v2, v3

    aget-byte v2, v1, v9

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    iget v3, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    aget-byte v4, v1, v9

    aput-byte v4, v2, v3

    :cond_3
    return-void

    :cond_4
    aget-byte v2, v1, v8

    if-nez v2, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_5
    aget-byte v2, v1, v9

    if-nez v2, :cond_6

    const/4 v0, 0x3

    goto :goto_1

    :cond_6
    const/4 v0, 0x4

    goto :goto_1
.end method

.method data()[B
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    return-object v0
.end method

.method getAt(I)B
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->buffer:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method length()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/coll/CollationKeys$SortKeyLevel;->len:I

    return v0
.end method
