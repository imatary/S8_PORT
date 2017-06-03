.class public Landroid/icu/impl/PropsVectors;
.super Ljava/lang/Object;
.source "PropsVectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/PropsVectors$CompactHandler;,
        Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;,
        Landroid/icu/impl/PropsVectors$DefaultGetFoldingOffset;
    }
.end annotation


# static fields
.field public static final ERROR_VALUE_CP:I = 0x110001

.field public static final FIRST_SPECIAL_CP:I = 0x110000

.field public static final INITIAL_ROWS:I = 0x1000

.field public static final INITIAL_VALUE_CP:I = 0x110000

.field public static final MAX_CP:I = 0x110001

.field public static final MAX_ROWS:I = 0x110002

.field public static final MEDIUM_ROWS:I = 0x10000


# instance fields
.field private columns:I

.field private isCompacted:Z

.field private maxRows:I

.field private prevRow:I

.field private rows:I

.field private v:[I


# direct methods
.method static synthetic -get0(Landroid/icu/impl/PropsVectors;)I
    .locals 1

    iget v0, p0, Landroid/icu/impl/PropsVectors;->columns:I

    return v0
.end method

.method static synthetic -get1(Landroid/icu/impl/PropsVectors;)[I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    return-object v0
.end method

.method public constructor <init>(I)V
    .locals 6

    const/16 v5, 0x1000

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ge p1, v4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "numOfColumns need to be no less than 1; but it is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    add-int/lit8 v2, p1, 0x2

    iput v2, p0, Landroid/icu/impl/PropsVectors;->columns:I

    iget v2, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/lit16 v2, v2, 0x1000

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/icu/impl/PropsVectors;->v:[I

    iput v5, p0, Landroid/icu/impl/PropsVectors;->maxRows:I

    const/4 v2, 0x3

    iput v2, p0, Landroid/icu/impl/PropsVectors;->rows:I

    iput v3, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    iput-boolean v3, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    iget-object v2, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aput v3, v2, v3

    iget-object v2, p0, Landroid/icu/impl/PropsVectors;->v:[I

    const/high16 v3, 0x110000

    aput v3, v2, v4

    iget v1, p0, Landroid/icu/impl/PropsVectors;->columns:I

    const/high16 v0, 0x110000

    :goto_0
    const v2, 0x110001

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aput v0, v2, v1

    iget-object v2, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v0, 0x1

    aput v4, v2, v3

    iget v2, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private areElementsSame(I[III)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    iget-object v1, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int v2, p1, v0

    aget v1, v1, v2

    add-int v2, p3, v0

    aget v2, p2, v2

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

.method private findRow(I)I
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget v4, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    iget v5, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int v0, v4, v5

    iget-object v4, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aget v4, v4, v0

    if-lt p1, v4, :cond_4

    iget-object v4, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    if-ge p1, v4, :cond_0

    return v0

    :cond_0
    iget v4, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v0, v4

    iget-object v4, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    if-ge p1, v4, :cond_1

    iget v4, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    return v0

    :cond_1
    iget v4, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v0, v4

    iget-object v4, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    if-ge p1, v4, :cond_2

    iget v4, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    return v0

    :cond_2
    iget-object v4, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    sub-int v4, p1, v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_5

    iget v4, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    :cond_3
    iget v4, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    iget v4, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v0, v4

    iget-object v4, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    if-ge p1, v4, :cond_3

    return v0

    :cond_4
    iget-object v4, p0, Landroid/icu/impl/PropsVectors;->v:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-ge p1, v4, :cond_5

    iput v6, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    return v6

    :cond_5
    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v1, p0, Landroid/icu/impl/PropsVectors;->rows:I

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_8

    add-int v4, v3, v1

    div-int/lit8 v2, v4, 0x2

    iget v4, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int v0, v4, v2

    iget-object v4, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aget v4, v4, v0

    if-ge p1, v4, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v4, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    if-ge p1, v4, :cond_7

    iput v2, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    return v0

    :cond_7
    move v3, v2

    goto :goto_0

    :cond_8
    iput v3, p0, Landroid/icu/impl/PropsVectors;->prevRow:I

    iget v4, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int v0, v3, v4

    return v0
.end method


# virtual methods
.method public compact(Landroid/icu/impl/PropsVectors$CompactHandler;)V
    .locals 11

    const/high16 v10, 0x110000

    iget-boolean v7, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-eqz v7, :cond_0

    return-void

    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    iget v7, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/lit8 v6, v7, -0x2

    iget v7, p0, Landroid/icu/impl/PropsVectors;->rows:I

    new-array v2, v7, [Ljava/lang/Integer;

    const/4 v1, 0x0

    :goto_0
    iget v7, p0, Landroid/icu/impl/PropsVectors;->rows:I

    if-ge v1, v7, :cond_1

    iget v7, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v7, Landroid/icu/impl/PropsVectors$1;

    invoke-direct {v7, p0}, Landroid/icu/impl/PropsVectors$1;-><init>(Landroid/icu/impl/PropsVectors;)V

    invoke-static {v2, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    neg-int v0, v6

    const/4 v1, 0x0

    :goto_1
    iget v7, p0, Landroid/icu/impl/PropsVectors;->rows:I

    if-ge v1, v7, :cond_5

    iget-object v7, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aget-object v8, v2, v1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget v4, v7, v8

    if-ltz v0, :cond_3

    aget-object v7, v2, v1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    iget-object v8, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v9, v1, -0x1

    aget-object v9, v2, v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    invoke-direct {p0, v7, v8, v9, v6}, Landroid/icu/impl/PropsVectors;->areElementsSame(I[III)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_2
    if-ne v4, v10, :cond_4

    invoke-interface {p1, v0}, Landroid/icu/impl/PropsVectors$CompactHandler;->setRowIndexForInitialValue(I)V

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v0, v6

    goto :goto_2

    :cond_4
    const v7, 0x110001

    if-ne v4, v7, :cond_2

    invoke-interface {p1, v0}, Landroid/icu/impl/PropsVectors$CompactHandler;->setRowIndexForErrorValue(I)V

    goto :goto_3

    :cond_5
    add-int/2addr v0, v6

    invoke-interface {p1, v0}, Landroid/icu/impl/PropsVectors$CompactHandler;->startRealValues(I)V

    new-array v5, v0, [I

    neg-int v0, v6

    const/4 v1, 0x0

    :goto_4
    iget v7, p0, Landroid/icu/impl/PropsVectors;->rows:I

    if-ge v1, v7, :cond_8

    iget-object v7, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aget-object v8, v2, v1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget v4, v7, v8

    iget-object v7, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aget-object v8, v2, v1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    aget v3, v7, v8

    if-ltz v0, :cond_7

    aget-object v7, v2, v1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-direct {p0, v7, v5, v0, v6}, Landroid/icu/impl/PropsVectors;->areElementsSame(I[III)Z

    move-result v7

    if-eqz v7, :cond_7

    :goto_5
    if-ge v4, v10, :cond_6

    add-int/lit8 v7, v3, -0x1

    invoke-interface {p1, v4, v7, v0}, Landroid/icu/impl/PropsVectors$CompactHandler;->setRowIndexForRange(III)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    add-int/2addr v0, v6

    iget-object v7, p0, Landroid/icu/impl/PropsVectors;->v:[I

    aget-object v8, v2, v1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    invoke-static {v7, v8, v5, v0, v6}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_5

    :cond_8
    iput-object v5, p0, Landroid/icu/impl/PropsVectors;->v:[I

    div-int v7, v0, v6

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/icu/impl/PropsVectors;->rows:I

    return-void
.end method

.method public compactToTrieWithRowIndexes()Landroid/icu/impl/IntTrie;
    .locals 5

    new-instance v0, Landroid/icu/impl/PVecToTrieCompactHandler;

    invoke-direct {v0}, Landroid/icu/impl/PVecToTrieCompactHandler;-><init>()V

    invoke-virtual {p0, v0}, Landroid/icu/impl/PropsVectors;->compact(Landroid/icu/impl/PropsVectors$CompactHandler;)V

    iget-object v1, v0, Landroid/icu/impl/PVecToTrieCompactHandler;->builder:Landroid/icu/impl/IntTrieBuilder;

    new-instance v2, Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;

    iget-object v3, v0, Landroid/icu/impl/PVecToTrieCompactHandler;->builder:Landroid/icu/impl/IntTrieBuilder;

    invoke-direct {v2, v3}, Landroid/icu/impl/PropsVectors$DefaultGetFoldedValue;-><init>(Landroid/icu/impl/IntTrieBuilder;)V

    new-instance v3, Landroid/icu/impl/PropsVectors$DefaultGetFoldingOffset;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/icu/impl/PropsVectors$DefaultGetFoldingOffset;-><init>(Landroid/icu/impl/PropsVectors$DefaultGetFoldingOffset;)V

    invoke-virtual {v1, v2, v3}, Landroid/icu/impl/IntTrieBuilder;->serialize(Landroid/icu/impl/TrieBuilder$DataManipulate;Landroid/icu/impl/Trie$DataManipulate;)Landroid/icu/impl/IntTrie;

    move-result-object v1

    return-object v1
.end method

.method public getCompactedArray()[I
    .locals 2

    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Illegal Invocation of the method before compact()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    return-object v0
.end method

.method public getCompactedColumns()I
    .locals 2

    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Illegal Invocation of the method before compact()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method public getCompactedRows()I
    .locals 2

    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Illegal Invocation of the method before compact()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/icu/impl/PropsVectors;->rows:I

    return v0
.end method

.method public getRow(I)[I
    .locals 5

    const/4 v4, 0x0

    iget-boolean v1, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Illegal Invocation of the method after compact()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-ltz p1, :cond_1

    iget v1, p0, Landroid/icu/impl/PropsVectors;->rows:I

    if-le p1, v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "rowIndex out of bound!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v1, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/lit8 v1, v1, -0x2

    new-array v0, v1, [I

    iget-object v1, p0, Landroid/icu/impl/PropsVectors;->v:[I

    iget v2, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/lit8 v3, v3, -0x2

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    return-object v0
.end method

.method public getRowEnd(I)I
    .locals 2

    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Illegal Invocation of the method after compact()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Landroid/icu/impl/PropsVectors;->rows:I

    if-le p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rowIndex out of bound!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    iget v1, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getRowStart(I)I
    .locals 2

    iget-boolean v0, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Illegal Invocation of the method after compact()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Landroid/icu/impl/PropsVectors;->rows:I

    if-le p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rowIndex out of bound!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/icu/impl/PropsVectors;->v:[I

    iget v1, p0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public getValue(II)I
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-nez v1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    return v2

    :cond_1
    const v1, 0x110001

    if-gt p1, v1, :cond_0

    if-ltz p2, :cond_0

    iget v1, p0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/lit8 v1, v1, -0x2

    if-ge p2, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/icu/impl/PropsVectors;->findRow(I)I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v2, v0, 0x2

    add-int/2addr v2, p2

    aget v1, v1, v2

    return v1
.end method

.method public setValue(IIIII)V
    .locals 16

    if-ltz p1, :cond_0

    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11

    :cond_1
    const v11, 0x110001

    move/from16 v0, p2

    if-gt v0, v11, :cond_0

    if-ltz p3, :cond_0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/lit8 v11, v11, -0x2

    move/from16 v0, p3

    if-ge v0, v11, :cond_0

    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/icu/impl/PropsVectors;->isCompacted:Z

    if-eqz v11, :cond_2

    new-instance v11, Ljava/lang/IllegalStateException;

    const-string/jumbo v12, "Shouldn\'t be called aftercompact()!"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_2
    add-int/lit8 v5, p2, 0x1

    add-int/lit8 p3, p3, 0x2

    and-int p4, p4, p5

    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/PropsVectors;->findRow(I)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/icu/impl/PropsVectors;->findRow(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    aget v11, v11, v3

    move/from16 v0, p1

    if-eq v0, v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int v12, v3, p3

    aget v11, v11, v12

    and-int v11, v11, p5

    move/from16 v0, p4

    if-eq v0, v11, :cond_a

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v12, v4, 0x1

    aget v11, v11, v12

    if-eq v5, v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int v12, v4, p3

    aget v11, v11, v12

    and-int v11, v11, p5

    move/from16 v0, p4

    if-eq v0, v11, :cond_b

    const/4 v9, 0x1

    :goto_1
    if-nez v8, :cond_3

    if-eqz v9, :cond_9

    :cond_3
    const/4 v7, 0x0

    if-eqz v8, :cond_4

    const/4 v7, 0x1

    :cond_4
    if-eqz v9, :cond_5

    add-int/lit8 v7, v7, 0x1

    :cond_5
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/PropsVectors;->rows:I

    add-int/2addr v11, v7

    move-object/from16 v0, p0

    iget v12, v0, Landroid/icu/impl/PropsVectors;->maxRows:I

    if-le v11, v12, :cond_6

    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/PropsVectors;->maxRows:I

    const/high16 v12, 0x10000

    if-ge v11, v12, :cond_c

    const/high16 v6, 0x10000

    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr v11, v6

    new-array v10, v11, [I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/icu/impl/PropsVectors;->rows:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr v12, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v11, v13, v10, v14, v12}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/icu/impl/PropsVectors;->v:[I

    move-object/from16 v0, p0

    iput v6, v0, Landroid/icu/impl/PropsVectors;->maxRows:I

    :cond_6
    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/PropsVectors;->rows:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v12, v4

    sub-int v2, v11, v12

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v12, v4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v14, v7, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/icu/impl/PropsVectors;->columns:I

    mul-int/2addr v14, v15

    add-int/2addr v14, v4

    invoke-static {v11, v12, v13, v14, v2}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_7
    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/PropsVectors;->rows:I

    add-int/2addr v11, v7

    move-object/from16 v0, p0

    iput v11, v0, Landroid/icu/impl/PropsVectors;->rows:I

    if-eqz v8, :cond_8

    sub-int v11, v4, v3

    move-object/from16 v0, p0

    iget v12, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int v2, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/PropsVectors;->v:[I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v13, v3

    invoke-static {v11, v3, v12, v13, v2}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v4, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v12, v3, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/impl/PropsVectors;->v:[I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v14, v3

    aput p1, v13, v14

    aput p1, v11, v12

    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v3, v11

    :cond_8
    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/PropsVectors;->v:[I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v13, v4

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/impl/PropsVectors;->columns:I

    invoke-static {v11, v4, v12, v13, v14}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    add-int/lit8 v12, v4, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/impl/PropsVectors;->v:[I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v14, v4

    aput v5, v13, v14

    aput v5, v11, v12

    :cond_9
    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/PropsVectors;->columns:I

    div-int v11, v4, v11

    move-object/from16 v0, p0

    iput v11, v0, Landroid/icu/impl/PropsVectors;->prevRow:I

    add-int v3, v3, p3

    add-int v4, v4, p3

    move/from16 v0, p5

    not-int v0, v0

    move/from16 p5, v0

    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/PropsVectors;->v:[I

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/icu/impl/PropsVectors;->v:[I

    aget v12, v12, v3

    and-int v12, v12, p5

    or-int v12, v12, p4

    aput v12, v11, v3

    if-ne v3, v4, :cond_e

    return-void

    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/PropsVectors;->maxRows:I

    const v12, 0x110002

    if-ge v11, v12, :cond_d

    const v6, 0x110002

    goto/16 :goto_2

    :cond_d
    new-instance v11, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v12, "MAX_ROWS exceeded! Increase it to a higher valuein the implementation"

    invoke-direct {v11, v12}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_e
    move-object/from16 v0, p0

    iget v11, v0, Landroid/icu/impl/PropsVectors;->columns:I

    add-int/2addr v3, v11

    goto :goto_3
.end method
