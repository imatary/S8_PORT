.class public Landroid/icu/impl/Trie2Writable;
.super Landroid/icu/impl/Trie2;
.source "Trie2Writable.java"


# static fields
.field private static final synthetic -android-icu-impl-Trie2$ValueWidthSwitchesValues:[I = null

.field static final synthetic -assertionsDisabled:Z

.field private static final UNEWTRIE2_DATA_0800_OFFSET:I = 0x880

.field private static final UNEWTRIE2_DATA_NULL_OFFSET:I = 0xc0

.field private static final UNEWTRIE2_DATA_START_OFFSET:I = 0x100

.field private static final UNEWTRIE2_INDEX_2_NULL_OFFSET:I = 0xa60

.field private static final UNEWTRIE2_INDEX_2_START_OFFSET:I = 0xaa0

.field private static final UNEWTRIE2_INITIAL_DATA_LENGTH:I = 0x4000

.field private static final UNEWTRIE2_MEDIUM_DATA_LENGTH:I = 0x20000

.field private static final UTRIE2_MAX_DATA_LENGTH:I = 0x3fffc

.field private static final UTRIE2_MAX_INDEX_LENGTH:I = 0xffff


# instance fields
.field private UTRIE2_DEBUG:Z

.field private data:[I

.field private dataCapacity:I

.field private firstFreeBlock:I

.field private index1:[I

.field private index2:[I

.field private index2Length:I

.field private index2NullOffset:I

.field private isCompacted:Z

.field private map:[I


# direct methods
.method private static synthetic -getandroid-icu-impl-Trie2$ValueWidthSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/impl/Trie2Writable;->-android-icu-impl-Trie2$ValueWidthSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/impl/Trie2Writable;->-android-icu-impl-Trie2$ValueWidthSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/impl/Trie2$ValueWidth;->values()[Landroid/icu/impl/Trie2$ValueWidth;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_32:Landroid/icu/impl/Trie2$ValueWidth;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Landroid/icu/impl/Trie2Writable;->-android-icu-impl-Trie2$ValueWidthSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/Trie2Writable;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/Trie2Writable;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/Trie2;-><init>()V

    const/16 v0, 0x220

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    const v0, 0x8aa0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    const v0, 0x8824

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Trie2Writable;->init(II)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/impl/Trie2;)V
    .locals 4

    invoke-direct {p0}, Landroid/icu/impl/Trie2;-><init>()V

    const/16 v2, 0x220

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    const v2, 0x8aa0

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    const v2, 0x8824

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    iget v2, p1, Landroid/icu/impl/Trie2;->initialValue:I

    iget v3, p1, Landroid/icu/impl/Trie2;->errorValue:I

    invoke-direct {p0, v2, v3}, Landroid/icu/impl/Trie2Writable;->init(II)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Trie2$Range;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroid/icu/impl/Trie2Writable;->setRange(Landroid/icu/impl/Trie2$Range;Z)Landroid/icu/impl/Trie2Writable;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private allocDataBlock(I)I
    .locals 8

    const/4 v7, 0x0

    iget v4, p0, Landroid/icu/impl/Trie2Writable;->firstFreeBlock:I

    if-eqz v4, :cond_0

    iget v1, p0, Landroid/icu/impl/Trie2Writable;->firstFreeBlock:I

    iget-object v4, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v5, v1, 0x5

    aget v4, v4, v5

    neg-int v4, v4

    iput v4, p0, Landroid/icu/impl/Trie2Writable;->firstFreeBlock:I

    :goto_0
    iget-object v4, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    iget-object v5, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    const/16 v6, 0x20

    invoke-static {v4, p1, v5, v1, v6}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v4, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v5, v1, 0x5

    aput v7, v4, v5

    return v1

    :cond_0
    iget v1, p0, Landroid/icu/impl/Trie2;->dataLength:I

    add-int/lit8 v3, v1, 0x20

    iget v4, p0, Landroid/icu/impl/Trie2Writable;->dataCapacity:I

    if-le v3, v4, :cond_1

    iget v4, p0, Landroid/icu/impl/Trie2Writable;->dataCapacity:I

    const/high16 v5, 0x20000

    if-ge v4, v5, :cond_2

    const/high16 v0, 0x20000

    :goto_1
    new-array v2, v0, [I

    iget-object v4, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    iget v5, p0, Landroid/icu/impl/Trie2;->dataLength:I

    invoke-static {v4, v7, v2, v7, v5}, Ljava/lang/System;->arraycopy([II[III)V

    iput-object v2, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    iput v0, p0, Landroid/icu/impl/Trie2Writable;->dataCapacity:I

    :cond_1
    iput v3, p0, Landroid/icu/impl/Trie2;->dataLength:I

    goto :goto_0

    :cond_2
    iget v4, p0, Landroid/icu/impl/Trie2Writable;->dataCapacity:I

    const v5, 0x110480

    if-ge v4, v5, :cond_3

    const v0, 0x110480

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Internal error in Trie2 creation."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private allocIndex2Block()I
    .locals 6

    iget v0, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    add-int/lit8 v1, v0, 0x40

    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    array-length v2, v2

    if-le v1, v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Internal error in Trie2 creation."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iput v1, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    iget v3, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    iget-object v4, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    const/16 v5, 0x40

    invoke-static {v2, v3, v4, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    return v0
.end method

.method private compactData()V
    .locals 17

    const/16 v7, 0xc0

    const/4 v10, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v12, 0xc0

    if-ge v10, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/Trie2Writable;->map:[I

    aput v10, v12, v3

    add-int/lit8 v10, v10, 0x20

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x40

    const/4 v1, 0x2

    const/16 v10, 0xc0

    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Landroid/icu/impl/Trie2;->dataLength:I

    if-ge v10, v12, :cond_c

    const/16 v12, 0x880

    if-ne v10, v12, :cond_1

    const/16 v2, 0x20

    const/4 v1, 0x1

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v13, v10, 0x5

    aget v12, v12, v13

    if-gtz v12, :cond_2

    add-int/2addr v10, v2

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v10, v2}, Landroid/icu/impl/Trie2Writable;->findSameDataBlock(III)I

    move-result v6

    if-ltz v6, :cond_4

    move v3, v1

    shr-int/lit8 v4, v10, 0x5

    move v5, v4

    :goto_2
    if-lez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/Trie2Writable;->map:[I

    add-int/lit8 v4, v5, 0x1

    aput v6, v12, v5

    add-int/lit8 v6, v6, 0x20

    add-int/lit8 v3, v3, -0x1

    move v5, v4

    goto :goto_2

    :cond_3
    add-int/2addr v10, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v9, v2, -0x4

    :goto_3
    if-lez v9, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/Trie2Writable;->data:[I

    sub-int v13, v7, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v10, v9}, Landroid/icu/impl/Trie2Writable;->equal_int([IIII)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_5
    if-gtz v9, :cond_6

    if-ge v7, v10, :cond_a

    :cond_6
    sub-int v6, v7, v9

    move v3, v1

    shr-int/lit8 v4, v10, 0x5

    move v5, v4

    :goto_4
    if-lez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/Trie2Writable;->map:[I

    add-int/lit8 v4, v5, 0x1

    aput v6, v12, v5

    add-int/lit8 v6, v6, 0x20

    add-int/lit8 v3, v3, -0x1

    move v5, v4

    goto :goto_4

    :cond_7
    add-int/lit8 v9, v9, -0x4

    goto :goto_3

    :cond_8
    add-int/2addr v10, v9

    sub-int v3, v2, v9

    move v8, v7

    move v11, v10

    :goto_5
    if-lez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/Trie2Writable;->data:[I

    add-int/lit8 v7, v8, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/impl/Trie2Writable;->data:[I

    add-int/lit8 v10, v11, 0x1

    aget v13, v13, v11

    aput v13, v12, v8

    add-int/lit8 v3, v3, -0x1

    move v8, v7

    move v11, v10

    goto :goto_5

    :cond_9
    move v7, v8

    move v10, v11

    goto/16 :goto_1

    :cond_a
    move v3, v1

    shr-int/lit8 v4, v10, 0x5

    move v5, v4

    :goto_6
    if-lez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/Trie2Writable;->map:[I

    add-int/lit8 v4, v5, 0x1

    aput v10, v12, v5

    add-int/lit8 v10, v10, 0x20

    add-int/lit8 v3, v3, -0x1

    move v5, v4

    goto :goto_6

    :cond_b
    move v7, v10

    goto/16 :goto_1

    :cond_c
    const/4 v3, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v12, v0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    if-ge v3, v12, :cond_e

    const/16 v12, 0x820

    if-ne v3, v12, :cond_d

    add-int/lit16 v3, v3, 0x240

    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/Trie2Writable;->index2:[I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/impl/Trie2Writable;->map:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/Trie2Writable;->index2:[I

    aget v14, v14, v3

    shr-int/lit8 v14, v14, 0x5

    aget v13, v13, v14

    aput v13, v12, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_e
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/Trie2Writable;->map:[I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    shr-int/lit8 v13, v13, 0x5

    aget v12, v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    move v8, v7

    :goto_8
    and-int/lit8 v12, v8, 0x3

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/Trie2Writable;->data:[I

    add-int/lit8 v7, v8, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/impl/Trie2;->initialValue:I

    aput v13, v12, v8

    move v8, v7

    goto :goto_8

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v12, :cond_10

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v13, "compacting UTrie2: count of 32-bit data words %d->%d\n"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/icu/impl/Trie2;->dataLength:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    invoke-virtual {v12, v13, v14}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_10
    move-object/from16 v0, p0

    iput v8, v0, Landroid/icu/impl/Trie2;->dataLength:I

    return-void
.end method

.method private compactIndex2()V
    .locals 12

    const/16 v8, 0x820

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v5, v8, :cond_0

    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    aput v5, v7, v0

    add-int/lit8 v5, v5, 0x40

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v7, p0, Landroid/icu/impl/Trie2;->highStart:I

    const/high16 v8, 0x10000

    sub-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0xb

    add-int/lit8 v7, v7, 0x20

    add-int/lit16 v2, v7, 0x820

    const/16 v5, 0xa60

    :goto_1
    iget v7, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    if-ge v5, v7, :cond_7

    invoke-direct {p0, v2, v5}, Landroid/icu/impl/Trie2Writable;->findSameIndex2Block(II)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v8, v5, 0x6

    aput v1, v7, v8

    add-int/lit8 v5, v5, 0x40

    goto :goto_1

    :cond_1
    const/16 v4, 0x3f

    :goto_2
    if-lez v4, :cond_2

    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    sub-int v8, v2, v4

    invoke-direct {p0, v7, v8, v5, v4}, Landroid/icu/impl/Trie2Writable;->equal_int([IIII)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    if-gtz v4, :cond_3

    if-ge v2, v5, :cond_6

    :cond_3
    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v8, v5, 0x6

    sub-int v9, v2, v4

    aput v9, v7, v8

    add-int/2addr v5, v4

    rsub-int/lit8 v0, v4, 0x40

    move v3, v2

    move v6, v5

    :goto_3
    if-lez v0, :cond_5

    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    add-int/lit8 v2, v3, 0x1

    iget-object v8, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    add-int/lit8 v5, v6, 0x1

    aget v8, v8, v6

    aput v8, v7, v3

    add-int/lit8 v0, v0, -0x1

    move v3, v2

    move v6, v5

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_5
    move v2, v3

    move v5, v6

    goto :goto_1

    :cond_6
    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v8, v5, 0x6

    aput v5, v7, v8

    add-int/lit8 v5, v5, 0x40

    move v2, v5

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_4
    const/16 v7, 0x220

    if-ge v0, v7, :cond_8

    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    iget-object v8, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    iget-object v9, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    aget v9, v9, v0

    shr-int/lit8 v9, v9, 0x6

    aget v8, v8, v9

    aput v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    iget v8, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    shr-int/lit8 v8, v8, 0x6

    aget v7, v7, v8

    iput v7, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    move v3, v2

    :goto_5
    and-int/lit8 v7, v3, 0x3

    if-eqz v7, :cond_9

    iget-object v7, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    add-int/lit8 v2, v3, 0x1

    const v8, 0x3fffc

    aput v8, v7, v3

    move v3, v2

    goto :goto_5

    :cond_9
    iget-boolean v7, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v7, :cond_a

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v8, "compacting UTrie2: count of 16-bit index-2 words %d->%d\n"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_a
    iput v3, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    return-void
.end method

.method private compactTrie()V
    .locals 12

    const/high16 v11, 0x10000

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const v3, 0x10ffff

    invoke-virtual {p0, v3}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/Trie2Writable;->findHighStart(I)I

    move-result v1

    add-int/lit16 v3, v1, 0x7ff

    and-int/lit16 v1, v3, -0x800

    const/high16 v3, 0x110000

    if-ne v1, v3, :cond_0

    iget v0, p0, Landroid/icu/impl/Trie2;->errorValue:I

    :cond_0
    iput v1, p0, Landroid/icu/impl/Trie2;->highStart:I

    iget-boolean v3, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "UTrie2: highStart U+%04x  highValue 0x%x  initialValue 0x%x\n"

    new-array v5, v10, [Ljava/lang/Object;

    iget v6, p0, Landroid/icu/impl/Trie2;->highStart:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, p0, Landroid/icu/impl/Trie2;->initialValue:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    :cond_1
    iget v3, p0, Landroid/icu/impl/Trie2;->highStart:I

    const/high16 v4, 0x110000

    if-ge v3, v4, :cond_2

    iget v3, p0, Landroid/icu/impl/Trie2;->highStart:I

    if-gt v3, v11, :cond_4

    const/high16 v2, 0x10000

    :goto_0
    iget v3, p0, Landroid/icu/impl/Trie2;->initialValue:I

    const v4, 0x10ffff

    invoke-virtual {p0, v2, v4, v3, v7}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    :cond_2
    invoke-direct {p0}, Landroid/icu/impl/Trie2Writable;->compactData()V

    iget v3, p0, Landroid/icu/impl/Trie2;->highStart:I

    if-le v3, v11, :cond_5

    invoke-direct {p0}, Landroid/icu/impl/Trie2Writable;->compactIndex2()V

    :cond_3
    :goto_1
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    iget v4, p0, Landroid/icu/impl/Trie2;->dataLength:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/icu/impl/Trie2;->dataLength:I

    aput v0, v3, v4

    :goto_2
    iget v3, p0, Landroid/icu/impl/Trie2;->dataLength:I

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    iget v4, p0, Landroid/icu/impl/Trie2;->dataLength:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/icu/impl/Trie2;->dataLength:I

    iget v5, p0, Landroid/icu/impl/Trie2;->initialValue:I

    aput v5, v3, v4

    goto :goto_2

    :cond_4
    iget v2, p0, Landroid/icu/impl/Trie2;->highStart:I

    goto :goto_0

    :cond_5
    iget-boolean v3, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v3, :cond_3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "UTrie2: highStart U+%04x  count of 16-bit index-2 words %d->%d\n"

    new-array v5, v10, [Ljava/lang/Object;

    iget v6, p0, Landroid/icu/impl/Trie2;->highStart:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/16 v6, 0x840

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v3, v4, v5}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    goto :goto_1

    :cond_6
    iput-boolean v7, p0, Landroid/icu/impl/Trie2Writable;->isCompacted:Z

    return-void
.end method

.method private equal_int([IIII)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    add-int v1, p2, v0

    aget v1, p1, v1

    add-int v2, p3, v0

    aget v2, p1, v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private fillBlock(IIIIIZ)V
    .locals 3

    add-int v1, p1, p3

    if-eqz p6, :cond_0

    add-int v0, p1, p2

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    aput p4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int v0, p1, p2

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    aget v2, v2, v0

    if-ne v2, p5, :cond_1

    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    aput p4, v2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private findHighStart(I)I
    .locals 12

    const/4 v11, 0x0

    iget v9, p0, Landroid/icu/impl/Trie2;->initialValue:I

    if-ne p1, v9, :cond_1

    iget v7, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    iget v6, p0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    :goto_0
    const/16 v2, 0x220

    const/high16 v1, 0x110000

    :cond_0
    :goto_1
    if-lez v1, :cond_a

    iget-object v9, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    add-int/lit8 v2, v2, -0x1

    aget v4, v9, v2

    if-ne v4, v7, :cond_2

    add-int/lit16 v1, v1, -0x800

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    const/4 v6, -0x1

    goto :goto_0

    :cond_2
    move v7, v4

    iget v9, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    if-ne v4, v9, :cond_4

    iget v9, p0, Landroid/icu/impl/Trie2;->initialValue:I

    if-eq p1, v9, :cond_3

    return v1

    :cond_3
    add-int/lit16 v1, v1, -0x800

    goto :goto_1

    :cond_4
    const/16 v3, 0x40

    :cond_5
    :goto_2
    if-lez v3, :cond_0

    iget-object v9, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    add-int/lit8 v3, v3, -0x1

    add-int v10, v4, v3

    aget v0, v9, v10

    if-ne v0, v6, :cond_6

    add-int/lit8 v1, v1, -0x20

    goto :goto_2

    :cond_6
    move v6, v0

    iget v9, p0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    if-ne v0, v9, :cond_8

    iget v9, p0, Landroid/icu/impl/Trie2;->initialValue:I

    if-eq p1, v9, :cond_7

    return v1

    :cond_7
    add-int/lit8 v1, v1, -0x20

    goto :goto_2

    :cond_8
    const/16 v5, 0x20

    :goto_3
    if-lez v5, :cond_5

    iget-object v9, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    add-int/lit8 v5, v5, -0x1

    add-int v10, v0, v5

    aget v8, v9, v10

    if-eq v8, p1, :cond_9

    return v1

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_a
    return v11
.end method

.method private findSameDataBlock(III)I
    .locals 2

    sub-int/2addr p1, p3

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    invoke-direct {p0, v1, v0, p2, p3}, Landroid/icu/impl/Trie2Writable;->equal_int([IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private findSameIndex2Block(II)I
    .locals 3

    add-int/lit8 p1, p1, -0x40

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    const/16 v2, 0x40

    invoke-direct {p0, v1, v0, p2, v2}, Landroid/icu/impl/Trie2Writable;->equal_int([IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private freeze(Landroid/icu/impl/Trie2;Landroid/icu/impl/Trie2$ValueWidth;)V
    .locals 11

    iget-boolean v8, p0, Landroid/icu/impl/Trie2Writable;->isCompacted:Z

    if-nez v8, :cond_0

    invoke-direct {p0}, Landroid/icu/impl/Trie2Writable;->compactTrie()V

    :cond_0
    iget v8, p0, Landroid/icu/impl/Trie2;->highStart:I

    const/high16 v9, 0x10000

    if-gt v8, v9, :cond_2

    const/16 v0, 0x840

    :goto_0
    sget-object v8, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    if-ne p2, v8, :cond_3

    move v1, v0

    :goto_1
    const v8, 0xffff

    if-gt v0, v8, :cond_1

    iget v8, p0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    add-int/2addr v8, v1

    const v9, 0xffff

    if-le v8, v9, :cond_4

    :cond_1
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v9, "Trie2 data is too large."

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    iget v0, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    add-int/lit16 v8, v1, 0x880

    const v9, 0xffff

    if-gt v8, v9, :cond_1

    iget v8, p0, Landroid/icu/impl/Trie2;->dataLength:I

    add-int/2addr v8, v1

    const v9, 0x3fffc

    if-gt v8, v9, :cond_1

    move v7, v0

    sget-object v8, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    if-ne p2, v8, :cond_5

    iget v8, p0, Landroid/icu/impl/Trie2;->dataLength:I

    add-int/2addr v7, v8

    :goto_2
    new-array v8, v7, [C

    iput-object v8, p1, Landroid/icu/impl/Trie2;->index:[C

    iput v0, p1, Landroid/icu/impl/Trie2;->indexLength:I

    iget v8, p0, Landroid/icu/impl/Trie2;->dataLength:I

    iput v8, p1, Landroid/icu/impl/Trie2;->dataLength:I

    iget v8, p0, Landroid/icu/impl/Trie2;->highStart:I

    const/high16 v9, 0x10000

    if-gt v8, v9, :cond_6

    const v8, 0xffff

    iput v8, p1, Landroid/icu/impl/Trie2;->index2NullOffset:I

    :goto_3
    iget v8, p0, Landroid/icu/impl/Trie2;->initialValue:I

    iput v8, p1, Landroid/icu/impl/Trie2;->initialValue:I

    iget v8, p0, Landroid/icu/impl/Trie2;->errorValue:I

    iput v8, p1, Landroid/icu/impl/Trie2;->errorValue:I

    iget v8, p0, Landroid/icu/impl/Trie2;->highStart:I

    iput v8, p1, Landroid/icu/impl/Trie2;->highStart:I

    iget v8, p0, Landroid/icu/impl/Trie2;->dataLength:I

    add-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x4

    iput v8, p1, Landroid/icu/impl/Trie2;->highValueIndex:I

    iget v8, p0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    add-int/2addr v8, v1

    iput v8, p1, Landroid/icu/impl/Trie2;->dataNullOffset:I

    new-instance v8, Landroid/icu/impl/Trie2$UTrie2Header;

    invoke-direct {v8}, Landroid/icu/impl/Trie2$UTrie2Header;-><init>()V

    iput-object v8, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget-object v8, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    const v9, 0x54726932

    iput v9, v8, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    iget-object v9, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    sget-object v8, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    if-ne p2, v8, :cond_7

    const/4 v8, 0x0

    :goto_4
    iput v8, v9, Landroid/icu/impl/Trie2$UTrie2Header;->options:I

    iget-object v8, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v9, p1, Landroid/icu/impl/Trie2;->indexLength:I

    iput v9, v8, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    iget-object v8, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v9, p1, Landroid/icu/impl/Trie2;->dataLength:I

    shr-int/lit8 v9, v9, 0x2

    iput v9, v8, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedDataLength:I

    iget-object v8, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v9, p1, Landroid/icu/impl/Trie2;->index2NullOffset:I

    iput v9, v8, Landroid/icu/impl/Trie2$UTrie2Header;->index2NullOffset:I

    iget-object v8, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v9, p1, Landroid/icu/impl/Trie2;->dataNullOffset:I

    iput v9, v8, Landroid/icu/impl/Trie2$UTrie2Header;->dataNullOffset:I

    iget-object v8, p1, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v9, p1, Landroid/icu/impl/Trie2;->highStart:I

    shr-int/lit8 v9, v9, 0xb

    iput v9, v8, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedHighStart:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, v2

    :goto_5
    const/16 v8, 0x820

    if-ge v4, v8, :cond_8

    iget-object v8, p1, Landroid/icu/impl/Trie2;->index:[C

    add-int/lit8 v2, v3, 0x1

    iget-object v9, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    aget v9, v9, v4

    add-int/2addr v9, v1

    shr-int/lit8 v9, v9, 0x2

    int-to-char v9, v9

    aput-char v9, v8, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_5

    :cond_5
    iget v8, p0, Landroid/icu/impl/Trie2;->dataLength:I

    new-array v8, v8, [I

    iput-object v8, p1, Landroid/icu/impl/Trie2;->data32:[I

    goto/16 :goto_2

    :cond_6
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    add-int/lit8 v8, v8, 0x0

    iput v8, p1, Landroid/icu/impl/Trie2;->index2NullOffset:I

    goto :goto_3

    :cond_7
    const/4 v8, 0x1

    goto :goto_4

    :cond_8
    iget-boolean v8, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v8, :cond_9

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\n\nIndex2 for BMP limit is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    const/4 v4, 0x0

    :goto_6
    const/4 v8, 0x2

    if-ge v4, v8, :cond_a

    iget-object v8, p1, Landroid/icu/impl/Trie2;->index:[C

    add-int/lit8 v2, v3, 0x1

    add-int/lit16 v9, v1, 0x80

    int-to-char v9, v9

    aput-char v9, v8, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_6

    :cond_a
    :goto_7
    const/16 v8, 0x20

    if-ge v4, v8, :cond_b

    iget-object v8, p1, Landroid/icu/impl/Trie2;->index:[C

    add-int/lit8 v2, v3, 0x1

    iget-object v9, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    shl-int/lit8 v10, v4, 0x1

    aget v9, v9, v10

    add-int/2addr v9, v1

    int-to-char v9, v9

    aput-char v9, v8, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_7

    :cond_b
    iget-boolean v8, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v8, :cond_c

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Index2 for UTF-8 2byte values limit is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c
    iget v8, p0, Landroid/icu/impl/Trie2;->highStart:I

    const/high16 v9, 0x10000

    if-le v8, v9, :cond_14

    iget v8, p0, Landroid/icu/impl/Trie2;->highStart:I

    const/high16 v9, 0x10000

    sub-int/2addr v8, v9

    shr-int/lit8 v5, v8, 0xb

    add-int/lit16 v6, v5, 0x840

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v5, :cond_d

    iget-object v8, p1, Landroid/icu/impl/Trie2;->index:[C

    add-int/lit8 v2, v3, 0x1

    iget-object v9, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    add-int/lit8 v10, v4, 0x20

    aget v9, v9, v10

    add-int/lit8 v9, v9, 0x0

    int-to-char v9, v9

    aput-char v9, v8, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_8

    :cond_d
    iget-boolean v8, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v8, :cond_e

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Index 1 for supplementals, limit is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_e
    const/4 v4, 0x0

    move v2, v3

    :goto_9
    iget v8, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    sub-int/2addr v8, v6

    if-ge v4, v8, :cond_f

    iget-object v8, p1, Landroid/icu/impl/Trie2;->index:[C

    add-int/lit8 v3, v2, 0x1

    iget-object v9, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    add-int v10, v6, v4

    aget v9, v9, v10

    add-int/2addr v9, v1

    shr-int/lit8 v9, v9, 0x2

    int-to-char v9, v9

    aput-char v9, v8, v2

    add-int/lit8 v4, v4, 0x1

    move v2, v3

    goto :goto_9

    :cond_f
    iget-boolean v8, p0, Landroid/icu/impl/Trie2Writable;->UTRIE2_DEBUG:Z

    if-eqz v8, :cond_10

    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Index 2 for supplementals, limit is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_10
    :goto_a
    invoke-static {}, Landroid/icu/impl/Trie2Writable;->-getandroid-icu-impl-Trie2$ValueWidthSwitchesValues()[I

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    :cond_11
    return-void

    :pswitch_0
    sget-boolean v8, Landroid/icu/impl/Trie2Writable;->-assertionsDisabled:Z

    if-nez v8, :cond_13

    if-ne v2, v1, :cond_12

    const/4 v8, 0x1

    :goto_b
    if-nez v8, :cond_13

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_12
    const/4 v8, 0x0

    goto :goto_b

    :cond_13
    iput v2, p1, Landroid/icu/impl/Trie2;->data16:I

    const/4 v4, 0x0

    :goto_c
    iget v8, p0, Landroid/icu/impl/Trie2;->dataLength:I

    if-ge v4, v8, :cond_11

    iget-object v8, p1, Landroid/icu/impl/Trie2;->index:[C

    add-int/lit8 v3, v2, 0x1

    iget-object v9, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    aget v9, v9, v4

    int-to-char v9, v9

    aput-char v9, v8, v2

    add-int/lit8 v4, v4, 0x1

    move v2, v3

    goto :goto_c

    :pswitch_1
    const/4 v4, 0x0

    :goto_d
    iget v8, p0, Landroid/icu/impl/Trie2;->dataLength:I

    if-ge v4, v8, :cond_11

    iget-object v8, p1, Landroid/icu/impl/Trie2;->data32:[I

    iget-object v9, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    aget v9, v9, v4

    aput v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_14
    move v2, v3

    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private get(IZ)I
    .locals 5

    const v4, 0xdc00

    const v3, 0xd800

    iget v2, p0, Landroid/icu/impl/Trie2;->highStart:I

    if-lt p1, v2, :cond_2

    if-lt p1, v3, :cond_0

    if-lt p1, v4, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    iget v3, p0, Landroid/icu/impl/Trie2;->dataLength:I

    add-int/lit8 v3, v3, -0x4

    aget v2, v2, v3

    return v2

    :cond_1
    if-nez p2, :cond_0

    :cond_2
    if-lt p1, v3, :cond_3

    if-ge p1, v4, :cond_3

    if-eqz p2, :cond_3

    shr-int/lit8 v2, p1, 0x5

    add-int/lit16 v1, v2, 0x140

    :goto_0
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    aget v0, v2, v1

    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    and-int/lit8 v3, p1, 0x1f

    add-int/2addr v3, v0

    aget v2, v2, v3

    return v2

    :cond_3
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    shr-int/lit8 v3, p1, 0xb

    aget v2, v2, v3

    shr-int/lit8 v3, p1, 0x5

    and-int/lit8 v3, v3, 0x3f

    add-int v1, v2, v3

    goto :goto_0
.end method

.method private getDataBlock(IZ)I
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Trie2Writable;->getIndex2Block(IZ)I

    move-result v0

    shr-int/lit8 v3, p1, 0x5

    and-int/lit8 v3, v3, 0x3f

    add-int/2addr v0, v3

    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    aget v2, v3, v0

    invoke-direct {p0, v2}, Landroid/icu/impl/Trie2Writable;->isWritableBlock(I)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, v2}, Landroid/icu/impl/Trie2Writable;->allocDataBlock(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/Trie2Writable;->setIndex2Entry(II)V

    return v1
.end method

.method private getIndex2Block(IZ)I
    .locals 3

    const v2, 0xd800

    if-lt p1, v2, :cond_0

    const v2, 0xdc00

    if-ge p1, v2, :cond_0

    if-eqz p2, :cond_0

    const/16 v2, 0x800

    return v2

    :cond_0
    shr-int/lit8 v0, p1, 0xb

    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    aget v1, v2, v0

    iget v2, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Landroid/icu/impl/Trie2Writable;->allocIndex2Block()I

    move-result v1

    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    aput v1, v2, v0

    :cond_1
    return v1
.end method

.method private init(II)V
    .locals 10

    const/16 v9, 0x80

    const/16 v8, 0xa60

    const/16 v7, 0x100

    const/4 v5, 0x0

    const/16 v6, 0xc0

    iput p1, p0, Landroid/icu/impl/Trie2;->initialValue:I

    iput p2, p0, Landroid/icu/impl/Trie2;->errorValue:I

    const/high16 v3, 0x110000

    iput v3, p0, Landroid/icu/impl/Trie2;->highStart:I

    const/16 v3, 0x4000

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    const/16 v3, 0x4000

    iput v3, p0, Landroid/icu/impl/Trie2Writable;->dataCapacity:I

    iput p1, p0, Landroid/icu/impl/Trie2;->initialValue:I

    iput p2, p0, Landroid/icu/impl/Trie2;->errorValue:I

    const/high16 v3, 0x110000

    iput v3, p0, Landroid/icu/impl/Trie2;->highStart:I

    iput v5, p0, Landroid/icu/impl/Trie2Writable;->firstFreeBlock:I

    iput-boolean v5, p0, Landroid/icu/impl/Trie2Writable;->isCompacted:Z

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v9, :cond_0

    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    iget v4, p0, Landroid/icu/impl/Trie2;->initialValue:I

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v6, :cond_1

    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    iget v4, p0, Landroid/icu/impl/Trie2;->errorValue:I

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0xc0

    :goto_2
    if-ge v0, v7, :cond_2

    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    iget v4, p0, Landroid/icu/impl/Trie2;->initialValue:I

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iput v6, p0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    iput v7, p0, Landroid/icu/impl/Trie2;->dataLength:I

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v9, :cond_b

    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    aput v2, v3, v0

    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    const/4 v4, 0x1

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x20

    goto :goto_3

    :goto_4
    if-ge v2, v6, :cond_3

    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    aput v5, v3, v1

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v2, v2, 0x20

    move v1, v0

    goto :goto_4

    :cond_3
    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    add-int/lit8 v0, v1, 0x1

    const v4, 0x881d

    aput v4, v3, v1

    add-int/lit8 v2, v2, 0x20

    :goto_5
    if-ge v2, v7, :cond_4

    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x20

    goto :goto_5

    :cond_4
    const/4 v0, 0x4

    :goto_6
    const/16 v3, 0x820

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    aput v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_7
    const/16 v3, 0x240

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    add-int/lit16 v4, v0, 0x820

    const/4 v5, -0x1

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_8
    const/16 v3, 0x40

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    add-int/lit16 v4, v0, 0xa60

    aput v6, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_7
    iput v8, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    const/16 v3, 0xaa0

    iput v3, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_9
    const/16 v3, 0x20

    if-ge v0, v3, :cond_8

    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x40

    goto :goto_9

    :cond_8
    :goto_a
    const/16 v3, 0x220

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    aput v8, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_9
    const/16 v0, 0x80

    :goto_b
    const/16 v3, 0x800

    if-ge v0, v3, :cond_a

    iget v3, p0, Landroid/icu/impl/Trie2;->initialValue:I

    invoke-virtual {p0, v0, v3}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    add-int/lit8 v0, v0, 0x20

    goto :goto_b

    :cond_a
    return-void

    :cond_b
    move v1, v0

    goto :goto_4
.end method

.method private isInNullBlock(IZ)Z
    .locals 4

    int-to-char v2, p1

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    shr-int/lit8 v2, p1, 0x5

    add-int/lit16 v1, v2, 0x140

    :goto_0
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    aget v0, v2, v1

    iget v2, p0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    shr-int/lit8 v3, p1, 0xb

    aget v2, v2, v3

    shr-int/lit8 v3, p1, 0x5

    and-int/lit8 v3, v3, 0x3f

    add-int v1, v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isWritableBlock(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v3, p1, 0x5

    aget v2, v2, v3

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private releaseDataBlock(I)V
    .locals 3

    iget-object v0, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v1, p1, 0x5

    iget v2, p0, Landroid/icu/impl/Trie2Writable;->firstFreeBlock:I

    neg-int v2, v2

    aput v2, v0, v1

    iput p1, p0, Landroid/icu/impl/Trie2Writable;->firstFreeBlock:I

    return-void
.end method

.method private set(IZI)Landroid/icu/impl/Trie2Writable;
    .locals 3

    iget-boolean v1, p0, Landroid/icu/impl/Trie2Writable;->isCompacted:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/icu/impl/Trie2Writable;->uncompact()V

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/Trie2Writable;->getDataBlock(IZ)I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    and-int/lit8 v2, p1, 0x1f

    add-int/2addr v2, v0

    aput p3, v1, v2

    return-object p0
.end method

.method private setIndex2Entry(II)V
    .locals 4

    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v2, p2, 0x5

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    aget v0, v1, p1

    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->map:[I

    shr-int/lit8 v2, v0, 0x5

    aget v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    aput v3, v1, v2

    if-nez v3, :cond_0

    invoke-direct {p0, v0}, Landroid/icu/impl/Trie2Writable;->releaseDataBlock(I)V

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    aput p2, v1, p1

    return-void
.end method

.method private uncompact()V
    .locals 2

    new-instance v0, Landroid/icu/impl/Trie2Writable;

    invoke-direct {v0, p0}, Landroid/icu/impl/Trie2Writable;-><init>(Landroid/icu/impl/Trie2;)V

    iget-object v1, v0, Landroid/icu/impl/Trie2Writable;->index1:[I

    iput-object v1, p0, Landroid/icu/impl/Trie2Writable;->index1:[I

    iget-object v1, v0, Landroid/icu/impl/Trie2Writable;->index2:[I

    iput-object v1, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    iget-object v1, v0, Landroid/icu/impl/Trie2Writable;->data:[I

    iput-object v1, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    iget v1, v0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    iput v1, p0, Landroid/icu/impl/Trie2Writable;->index2Length:I

    iget v1, v0, Landroid/icu/impl/Trie2Writable;->dataCapacity:I

    iput v1, p0, Landroid/icu/impl/Trie2Writable;->dataCapacity:I

    iget-boolean v1, v0, Landroid/icu/impl/Trie2Writable;->isCompacted:Z

    iput-boolean v1, p0, Landroid/icu/impl/Trie2Writable;->isCompacted:Z

    iget-object v1, v0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iput-object v1, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget-object v1, v0, Landroid/icu/impl/Trie2;->index:[C

    iput-object v1, p0, Landroid/icu/impl/Trie2;->index:[C

    iget v1, v0, Landroid/icu/impl/Trie2;->data16:I

    iput v1, p0, Landroid/icu/impl/Trie2;->data16:I

    iget-object v1, v0, Landroid/icu/impl/Trie2;->data32:[I

    iput-object v1, p0, Landroid/icu/impl/Trie2;->data32:[I

    iget v1, v0, Landroid/icu/impl/Trie2;->indexLength:I

    iput v1, p0, Landroid/icu/impl/Trie2;->indexLength:I

    iget v1, v0, Landroid/icu/impl/Trie2;->dataLength:I

    iput v1, p0, Landroid/icu/impl/Trie2;->dataLength:I

    iget v1, v0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    iput v1, p0, Landroid/icu/impl/Trie2Writable;->index2NullOffset:I

    iget v1, v0, Landroid/icu/impl/Trie2;->initialValue:I

    iput v1, p0, Landroid/icu/impl/Trie2;->initialValue:I

    iget v1, v0, Landroid/icu/impl/Trie2;->errorValue:I

    iput v1, p0, Landroid/icu/impl/Trie2;->errorValue:I

    iget v1, v0, Landroid/icu/impl/Trie2;->highStart:I

    iput v1, p0, Landroid/icu/impl/Trie2;->highStart:I

    iget v1, v0, Landroid/icu/impl/Trie2;->highValueIndex:I

    iput v1, p0, Landroid/icu/impl/Trie2;->highValueIndex:I

    iget v1, v0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    iput v1, p0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    return-void
.end method

.method private writeBlock(II)V
    .locals 3

    add-int/lit8 v1, p1, 0x20

    move v0, p1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    add-int/lit8 p1, v0, 0x1

    aput p2, v2, v0

    move v0, p1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 1

    if-ltz p1, :cond_0

    const v0, 0x10ffff

    if-le p1, v0, :cond_1

    :cond_0
    iget v0, p0, Landroid/icu/impl/Trie2;->errorValue:I

    return v0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/Trie2Writable;->get(IZ)I

    move-result v0

    return v0
.end method

.method public getFromU16SingleLead(C)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/Trie2Writable;->get(IZ)I

    move-result v0

    return v0
.end method

.method public set(II)Landroid/icu/impl/Trie2Writable;
    .locals 2

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const v0, 0x10ffff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid code point."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/icu/impl/Trie2Writable;->set(IZI)Landroid/icu/impl/Trie2Writable;

    iput v1, p0, Landroid/icu/impl/Trie2;->fHash:I

    return-object p0
.end method

.method public setForLeadSurrogateCodeUnit(CI)Landroid/icu/impl/Trie2Writable;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/Trie2;->fHash:I

    invoke-direct {p0, p1, v0, p2}, Landroid/icu/impl/Trie2Writable;->set(IZI)Landroid/icu/impl/Trie2Writable;

    return-object p0
.end method

.method public setRange(IIIZ)Landroid/icu/impl/Trie2Writable;
    .locals 14

    const v1, 0x10ffff

    if-gt p1, v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid code point range."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const v1, 0x10ffff

    move/from16 v0, p2

    if-gt v0, v1, :cond_0

    if-ltz p2, :cond_0

    move/from16 v0, p2

    if-gt p1, v0, :cond_0

    if-nez p4, :cond_2

    iget v1, p0, Landroid/icu/impl/Trie2;->initialValue:I

    move/from16 v0, p3

    if-ne v0, v1, :cond_2

    return-object p0

    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/impl/Trie2;->fHash:I

    iget-boolean v1, p0, Landroid/icu/impl/Trie2Writable;->isCompacted:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Landroid/icu/impl/Trie2Writable;->uncompact()V

    :cond_3
    add-int/lit8 v9, p2, 0x1

    and-int/lit8 v1, p1, 0x1f

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/icu/impl/Trie2Writable;->getDataBlock(IZ)I

    move-result v2

    add-int/lit8 v1, p1, 0x20

    and-int/lit8 v10, v1, -0x20

    if-gt v10, v9, :cond_5

    and-int/lit8 v3, p1, 0x1f

    iget v6, p0, Landroid/icu/impl/Trie2;->initialValue:I

    const/16 v4, 0x20

    move-object v1, p0

    move/from16 v5, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/icu/impl/Trie2Writable;->fillBlock(IIIIIZ)V

    move p1, v10

    :cond_4
    and-int/lit8 v12, v9, 0x1f

    and-int/lit8 v9, v9, -0x20

    iget v1, p0, Landroid/icu/impl/Trie2;->initialValue:I

    move/from16 v0, p3

    if-ne v0, v1, :cond_6

    iget v11, p0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    :goto_0
    if-ge p1, v9, :cond_e

    const/4 v13, 0x0

    iget v1, p0, Landroid/icu/impl/Trie2;->initialValue:I

    move/from16 v0, p3

    if-ne v0, v1, :cond_7

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/icu/impl/Trie2Writable;->isInNullBlock(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 p1, p1, 0x20

    goto :goto_0

    :cond_5
    and-int/lit8 v3, p1, 0x1f

    and-int/lit8 v4, v9, 0x1f

    iget v6, p0, Landroid/icu/impl/Trie2;->initialValue:I

    move-object v1, p0

    move/from16 v5, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/icu/impl/Trie2Writable;->fillBlock(IIIIIZ)V

    return-object p0

    :cond_6
    const/4 v11, -0x1

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/icu/impl/Trie2Writable;->getIndex2Block(IZ)I

    move-result v8

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x3f

    add-int/2addr v8, v1

    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->index2:[I

    aget v2, v1, v8

    invoke-direct {p0, v2}, Landroid/icu/impl/Trie2Writable;->isWritableBlock(I)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz p4, :cond_a

    const/16 v1, 0x880

    if-lt v2, v1, :cond_a

    const/4 v13, 0x1

    :cond_8
    :goto_1
    if-eqz v13, :cond_9

    if-ltz v11, :cond_d

    invoke-direct {p0, v8, v11}, Landroid/icu/impl/Trie2Writable;->setIndex2Entry(II)V

    :cond_9
    :goto_2
    add-int/lit8 p1, p1, 0x20

    goto :goto_0

    :cond_a
    iget v6, p0, Landroid/icu/impl/Trie2;->initialValue:I

    const/4 v3, 0x0

    const/16 v4, 0x20

    move-object v1, p0

    move/from16 v5, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/icu/impl/Trie2Writable;->fillBlock(IIIIIZ)V

    goto :goto_1

    :cond_b
    iget-object v1, p0, Landroid/icu/impl/Trie2Writable;->data:[I

    aget v1, v1, v2

    move/from16 v0, p3

    if-eq v1, v0, :cond_8

    if-nez p4, :cond_c

    iget v1, p0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    if-ne v2, v1, :cond_8

    :cond_c
    const/4 v13, 0x1

    goto :goto_1

    :cond_d
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/icu/impl/Trie2Writable;->getDataBlock(IZ)I

    move-result v11

    move/from16 v0, p3

    invoke-direct {p0, v11, v0}, Landroid/icu/impl/Trie2Writable;->writeBlock(II)V

    goto :goto_2

    :cond_e
    if-lez v12, :cond_f

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/icu/impl/Trie2Writable;->getDataBlock(IZ)I

    move-result v2

    iget v6, p0, Landroid/icu/impl/Trie2;->initialValue:I

    const/4 v3, 0x0

    move-object v1, p0

    move v4, v12

    move/from16 v5, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/icu/impl/Trie2Writable;->fillBlock(IIIIIZ)V

    :cond_f
    return-object p0
.end method

.method public setRange(Landroid/icu/impl/Trie2$Range;Z)Landroid/icu/impl/Trie2Writable;
    .locals 4

    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/impl/Trie2;->fHash:I

    iget-boolean v1, p1, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-eqz v1, :cond_2

    iget v0, p1, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    :goto_0
    iget v1, p1, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    if-gt v0, v1, :cond_3

    if-nez p2, :cond_0

    int-to-char v1, v0

    invoke-virtual {p0, v1}, Landroid/icu/impl/Trie2Writable;->getFromU16SingleLead(C)I

    move-result v1

    iget v2, p0, Landroid/icu/impl/Trie2;->initialValue:I

    if-ne v1, v2, :cond_1

    :cond_0
    int-to-char v1, v0

    iget v2, p1, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-virtual {p0, v1, v2}, Landroid/icu/impl/Trie2Writable;->setForLeadSurrogateCodeUnit(CI)Landroid/icu/impl/Trie2Writable;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iget v2, p1, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    iget v3, p1, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-virtual {p0, v1, v2, v3, p2}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    :cond_3
    return-object p0
.end method

.method public toTrie2_16()Landroid/icu/impl/Trie2_16;
    .locals 2

    new-instance v0, Landroid/icu/impl/Trie2_16;

    invoke-direct {v0}, Landroid/icu/impl/Trie2_16;-><init>()V

    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/Trie2Writable;->freeze(Landroid/icu/impl/Trie2;Landroid/icu/impl/Trie2$ValueWidth;)V

    return-object v0
.end method

.method public toTrie2_32()Landroid/icu/impl/Trie2_32;
    .locals 2

    new-instance v0, Landroid/icu/impl/Trie2_32;

    invoke-direct {v0}, Landroid/icu/impl/Trie2_32;-><init>()V

    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_32:Landroid/icu/impl/Trie2$ValueWidth;

    invoke-direct {p0, v0, v1}, Landroid/icu/impl/Trie2Writable;->freeze(Landroid/icu/impl/Trie2;Landroid/icu/impl/Trie2$ValueWidth;)V

    return-object v0
.end method
