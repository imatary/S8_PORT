.class public final Landroid/icu/util/CompactCharArray;
.super Ljava/lang/Object;
.source "CompactCharArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final BLOCKCOUNT:I = 0x20

.field static final BLOCKMASK:I = 0x1f

.field public static final BLOCKSHIFT:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final INDEXCOUNT:I = 0x800

.field static final INDEXSHIFT:I = 0xb

.field public static final UNICODECOUNT:I = 0x10000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field defaultValue:C

.field private hashes:[I

.field private indices:[C

.field private isCompact:Z

.field private values:[C


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/util/CompactCharArray;-><init>(C)V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v2, 0x10000

    const/4 v4, 0x0

    const/16 v3, 0x800

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v2, [C

    iput-object v1, p0, Landroid/icu/util/CompactCharArray;->values:[C

    new-array v1, v3, [C

    iput-object v1, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    new-array v1, v3, [I

    iput-object v1, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->values:[C

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    shl-int/lit8 v2, v0, 0x5

    int-to-char v2, v2

    aput-char v2, v1, v0

    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v4, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    iput-char p1, p0, Landroid/icu/util/CompactCharArray;->defaultValue:C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/icu/impl/Utility;->RLEStringToCharArray(Ljava/lang/String;)[C

    move-result-object v0

    invoke-static {p2}, Landroid/icu/impl/Utility;->RLEStringToCharArray(Ljava/lang/String;)[C

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/CompactCharArray;-><init>([C[C)V

    return-void
.end method

.method public constructor <init>([C[C)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v3, 0x800

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v2, p1

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Index out of bounds."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    aget-char v1, p1, v0

    if-ltz v1, :cond_1

    array-length v2, p2

    add-int/lit8 v2, v2, 0x20

    if-lt v1, v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Index out of bounds."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput-object p1, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    iput-object p2, p0, Landroid/icu/util/CompactCharArray;->values:[C

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    return-void
.end method

.method private FindOverlappingPosition(I[CI)I
    .locals 3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    const/16 v0, 0x20

    add-int/lit8 v2, v1, 0x20

    if-le v2, p3, :cond_0

    sub-int v0, p3, v1

    :cond_0
    iget-object v2, p0, Landroid/icu/util/CompactCharArray;->values:[C

    invoke-static {v2, p1, p2, v1, v0}, Landroid/icu/util/CompactCharArray;->arrayRegionMatches([CI[CII)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p3
.end method

.method static final arrayRegionMatches([CI[CII)Z
    .locals 5

    add-int v2, p1, p4

    sub-int v0, p3, p1

    move v1, p1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-char v3, p0, v1

    add-int v4, v1, v0

    aget-char v4, p2, v4

    if-eq v3, v4, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method private final blockTouched(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    aget v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private expand()V
    .locals 5

    const/high16 v3, 0x10000

    const/16 v4, 0x800

    iget-boolean v2, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    if-eqz v2, :cond_2

    new-array v2, v4, [I

    iput-object v2, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    new-array v1, v3, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    int-to-char v2, v0

    invoke-virtual {p0, v2}, Landroid/icu/util/CompactCharArray;->elementAt(C)C

    move-result v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    iget-object v2, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    shl-int/lit8 v3, v0, 0x5

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/icu/util/CompactCharArray;->values:[C

    iput-object v1, p0, Landroid/icu/util/CompactCharArray;->values:[C

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    :cond_2
    return-void
.end method

.method private final touchBlock(II)V
    .locals 3

    iget-object v0, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    aget v1, v1, p1

    shl-int/lit8 v2, p2, 0x1

    add-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/CompactCharArray;

    iget-object v2, p0, Landroid/icu/util/CompactCharArray;->values:[C

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    iput-object v2, v1, Landroid/icu/util/CompactCharArray;->values:[C

    iget-object v2, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    iput-object v2, v1, Landroid/icu/util/CompactCharArray;->indices:[C

    iget-object v2, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Landroid/icu/util/CompactCharArray;->hashes:[I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public compact()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/util/CompactCharArray;->compact(Z)V

    return-void
.end method

.method public compact(Z)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v11, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    if-nez v11, :cond_9

    const/4 v2, 0x0

    const v3, 0xffff

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    const/high16 v11, 0x10000

    new-array v9, v11, [C

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v11, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    array-length v11, v11

    if-ge v1, v11, :cond_8

    iget-object v11, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    const v12, 0xffff

    aput-char v12, v11, v1

    invoke-direct {p0, v1}, Landroid/icu/util/CompactCharArray;->blockTouched(I)Z

    move-result v10

    if-nez v10, :cond_2

    const v11, 0xffff

    if-eq v3, v11, :cond_2

    iget-object v11, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    aput-char v3, v11, v1

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x20

    goto :goto_1

    :cond_1
    iget-object v9, p0, Landroid/icu/util/CompactCharArray;->values:[C

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_4

    iget-object v11, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    aget v11, v11, v1

    iget-object v12, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    aget v12, v12, v4

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Landroid/icu/util/CompactCharArray;->values:[C

    iget-object v12, p0, Landroid/icu/util/CompactCharArray;->values:[C

    const/16 v13, 0x20

    invoke-static {v11, v2, v12, v5, v13}, Landroid/icu/util/CompactCharArray;->arrayRegionMatches([CI[CII)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    iget-object v12, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    aget-char v12, v12, v4

    aput-char v12, v11, v1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x20

    goto :goto_3

    :cond_4
    iget-object v11, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    aget-char v11, v11, v1

    const v12, 0xffff

    if-ne v11, v12, :cond_0

    if-eqz p1, :cond_5

    invoke-direct {p0, v2, v9, v7}, Landroid/icu/util/CompactCharArray;->FindOverlappingPosition(I[CI)I

    move-result v0

    :goto_4
    add-int/lit8 v6, v0, 0x20

    if-le v6, v7, :cond_7

    move v4, v7

    :goto_5
    if-ge v4, v6, :cond_6

    iget-object v11, p0, Landroid/icu/util/CompactCharArray;->values:[C

    add-int v12, v2, v4

    sub-int/2addr v12, v0

    aget-char v11, v11, v12

    aput-char v11, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    move v0, v7

    goto :goto_4

    :cond_6
    move v7, v6

    :cond_7
    iget-object v11, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    int-to-char v12, v0

    aput-char v12, v11, v1

    if-nez v10, :cond_0

    int-to-char v3, v5

    goto :goto_2

    :cond_8
    new-array v8, v7, [C

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v11, v8, v12, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    iput-object v8, p0, Landroid/icu/util/CompactCharArray;->values:[C

    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    const/4 v11, 0x0

    iput-object v11, p0, Landroid/icu/util/CompactCharArray;->hashes:[I

    :cond_9
    return-void
.end method

.method public elementAt(C)C
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    shr-int/lit8 v2, p1, 0x5

    aget-char v1, v1, v2

    const v2, 0xffff

    and-int/2addr v1, v2

    and-int/lit8 v2, p1, 0x1f

    add-int v0, v1, v2

    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->values:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-char v1, p0, Landroid/icu/util/CompactCharArray;->defaultValue:C

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->values:[C

    aget-char v1, v1, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return v4

    :cond_0
    if-ne p0, p1, :cond_1

    return v5

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v4

    :cond_2
    move-object v1, p1

    check-cast v1, Landroid/icu/util/CompactCharArray;

    const/4 v0, 0x0

    :goto_0
    const/high16 v2, 0x10000

    if-ge v0, v2, :cond_4

    int-to-char v2, v0

    invoke-virtual {p0, v2}, Landroid/icu/util/CompactCharArray;->elementAt(C)C

    move-result v2

    int-to-char v3, v0

    invoke-virtual {v1, v3}, Landroid/icu/util/CompactCharArray;->elementAt(C)C

    move-result v3

    if-eq v2, v3, :cond_3

    return v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v5
.end method

.method public getIndexArray()[C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/util/CompactCharArray;->indices:[C

    return-object v0
.end method

.method public getValueArray()[C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/util/CompactCharArray;->values:[C

    return-object v0
.end method

.method public hashCode()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/icu/util/CompactCharArray;->values:[C

    array-length v3, v3

    div-int/lit8 v3, v3, 0x10

    const/4 v4, 0x3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/icu/util/CompactCharArray;->values:[C

    array-length v3, v3

    if-ge v0, v3, :cond_0

    mul-int/lit8 v3, v2, 0x25

    iget-object v4, p0, Landroid/icu/util/CompactCharArray;->values:[C

    aget-char v4, v4, v0

    add-int v2, v3, v4

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public setElementAt(CC)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/icu/util/CompactCharArray;->expand()V

    :cond_0
    iget-object v0, p0, Landroid/icu/util/CompactCharArray;->values:[C

    aput-char p2, v0, p1

    shr-int/lit8 v0, p1, 0x5

    invoke-direct {p0, v0, p2}, Landroid/icu/util/CompactCharArray;->touchBlock(II)V

    return-void
.end method

.method public setElementAt(CCC)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v1, p0, Landroid/icu/util/CompactCharArray;->isCompact:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/icu/util/CompactCharArray;->expand()V

    :cond_0
    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_1

    iget-object v1, p0, Landroid/icu/util/CompactCharArray;->values:[C

    aput-char p3, v1, v0

    shr-int/lit8 v1, v0, 0x5

    invoke-direct {p0, v1, p3}, Landroid/icu/util/CompactCharArray;->touchBlock(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
