.class public final Landroid/icu/util/CompactByteArray;
.super Ljava/lang/Object;
.source "CompactByteArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BLOCKCOUNT:I = 0x80

.field private static final BLOCKMASK:I = 0x7f

.field private static final BLOCKSHIFT:I = 0x7

.field private static final INDEXCOUNT:I = 0x200

.field private static final INDEXSHIFT:I = 0x9

.field public static final UNICODECOUNT:I = 0x10000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field defaultValue:B

.field private hashes:[I

.field private indices:[C

.field private isCompact:Z

.field private values:[B


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/util/CompactByteArray;-><init>(B)V

    return-void
.end method

.method public constructor <init>(B)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v2, 0x10000

    const/4 v4, 0x0

    const/16 v3, 0x200

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v2, [B

    iput-object v1, p0, Landroid/icu/util/CompactByteArray;->values:[B

    new-array v1, v3, [C

    iput-object v1, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    new-array v1, v3, [I

    iput-object v1, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->values:[B

    aput-byte p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    shl-int/lit8 v2, v0, 0x7

    int-to-char v2, v2

    aput-char v2, v1, v0

    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v4, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    iput-byte p1, p0, Landroid/icu/util/CompactByteArray;->defaultValue:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Landroid/icu/impl/Utility;->RLEStringToCharArray(Ljava/lang/String;)[C

    move-result-object v0

    invoke-static {p2}, Landroid/icu/impl/Utility;->RLEStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/CompactByteArray;-><init>([C[B)V

    return-void
.end method

.method public constructor <init>([C[B)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v3, 0x200

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

    add-int/lit16 v2, v2, 0x80

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
    iput-object p1, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    iput-object p2, p0, Landroid/icu/util/CompactByteArray;->values:[B

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    return-void
.end method

.method static final arrayRegionMatches([BI[BII)Z
    .locals 5

    add-int v2, p1, p4

    sub-int v0, p3, p1

    move v1, p1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-byte v3, p0, v1

    add-int v4, v1, v0

    aget-byte v4, p2, v4

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

    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    aget v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private expand()V
    .locals 6

    const/high16 v4, 0x10000

    const/16 v5, 0x200

    iget-boolean v3, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    if-eqz v3, :cond_2

    new-array v3, v5, [I

    iput-object v3, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    new-array v1, v4, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    int-to-char v3, v0

    invoke-virtual {p0, v3}, Landroid/icu/util/CompactByteArray;->elementAt(C)B

    move-result v2

    aput-byte v2, v1, v0

    shr-int/lit8 v3, v0, 0x7

    invoke-direct {p0, v3, v2}, Landroid/icu/util/CompactByteArray;->touchBlock(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    iget-object v3, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    shl-int/lit8 v4, v0, 0x7

    int-to-char v4, v4

    aput-char v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/icu/util/CompactByteArray;->values:[B

    iput-object v1, p0, Landroid/icu/util/CompactByteArray;->values:[B

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    :cond_2
    return-void
.end method

.method private final touchBlock(II)V
    .locals 3

    iget-object v0, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

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

    check-cast v1, Landroid/icu/util/CompactByteArray;

    iget-object v2, p0, Landroid/icu/util/CompactByteArray;->values:[B

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, v1, Landroid/icu/util/CompactByteArray;->values:[B

    iget-object v2, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    iput-object v2, v1, Landroid/icu/util/CompactByteArray;->indices:[C

    iget-object v2, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Landroid/icu/util/CompactByteArray;->hashes:[I
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

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/util/CompactByteArray;->compact(Z)V

    return-void
.end method

.method public compact(Z)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v13, 0x80

    const/4 v12, 0x0

    const v11, 0xffff

    iget-boolean v9, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    if-nez v9, :cond_5

    const/4 v5, 0x0

    const/4 v1, 0x0

    const v2, 0xffff

    const/4 v0, 0x0

    :goto_0
    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    array-length v9, v9

    if-ge v0, v9, :cond_4

    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    aput-char v11, v9, v0

    invoke-direct {p0, v0}, Landroid/icu/util/CompactByteArray;->blockTouched(I)Z

    move-result v8

    if-nez v8, :cond_1

    if-eq v2, v11, :cond_1

    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    aput-char v2, v9, v0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit16 v1, v1, 0x80

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_2

    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    aget v9, v9, v0

    iget-object v10, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    aget v10, v10, v3

    if-ne v9, v10, :cond_3

    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->values:[B

    iget-object v10, p0, Landroid/icu/util/CompactByteArray;->values:[B

    invoke-static {v9, v1, v10, v4, v13}, Landroid/icu/util/CompactByteArray;->arrayRegionMatches([BI[BII)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    int-to-char v10, v4

    aput-char v10, v9, v0

    :cond_2
    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    aget-char v9, v9, v0

    if-ne v9, v11, :cond_0

    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->values:[B

    iget-object v10, p0, Landroid/icu/util/CompactByteArray;->values:[B

    invoke-static {v9, v1, v10, v4, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    int-to-char v10, v4

    aput-char v10, v9, v0

    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    iget-object v10, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    aget v10, v10, v0

    aput v10, v9, v3

    add-int/lit8 v5, v5, 0x1

    if-nez v8, :cond_0

    int-to-char v2, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit16 v4, v4, 0x80

    goto :goto_2

    :cond_4
    mul-int/lit16 v6, v5, 0x80

    new-array v7, v6, [B

    iget-object v9, p0, Landroid/icu/util/CompactByteArray;->values:[B

    invoke-static {v9, v12, v7, v12, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    iput-object v7, p0, Landroid/icu/util/CompactByteArray;->values:[B

    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    const/4 v9, 0x0

    iput-object v9, p0, Landroid/icu/util/CompactByteArray;->hashes:[I

    :cond_5
    return-void
.end method

.method public elementAt(C)B
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/util/CompactByteArray;->values:[B

    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    shr-int/lit8 v2, p1, 0x7

    aget-char v1, v1, v2

    const v2, 0xffff

    and-int/2addr v1, v2

    and-int/lit8 v2, p1, 0x7f

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    return v0
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

    check-cast v1, Landroid/icu/util/CompactByteArray;

    const/4 v0, 0x0

    :goto_0
    const/high16 v2, 0x10000

    if-ge v0, v2, :cond_4

    int-to-char v2, v0

    invoke-virtual {p0, v2}, Landroid/icu/util/CompactByteArray;->elementAt(C)B

    move-result v2

    int-to-char v3, v0

    invoke-virtual {v1, v3}, Landroid/icu/util/CompactByteArray;->elementAt(C)B

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

    iget-object v0, p0, Landroid/icu/util/CompactByteArray;->indices:[C

    return-object v0
.end method

.method public getValueArray()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/icu/util/CompactByteArray;->values:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/icu/util/CompactByteArray;->values:[B

    array-length v3, v3

    div-int/lit8 v3, v3, 0x10

    const/4 v4, 0x3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/icu/util/CompactByteArray;->values:[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    mul-int/lit8 v3, v2, 0x25

    iget-object v4, p0, Landroid/icu/util/CompactByteArray;->values:[B

    aget-byte v4, v4, v0

    add-int v2, v3, v4

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public setElementAt(CB)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/icu/util/CompactByteArray;->expand()V

    :cond_0
    iget-object v0, p0, Landroid/icu/util/CompactByteArray;->values:[B

    aput-byte p2, v0, p1

    shr-int/lit8 v0, p1, 0x7

    invoke-direct {p0, v0, p2}, Landroid/icu/util/CompactByteArray;->touchBlock(II)V

    return-void
.end method

.method public setElementAt(CCB)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v1, p0, Landroid/icu/util/CompactByteArray;->isCompact:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/icu/util/CompactByteArray;->expand()V

    :cond_0
    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_1

    iget-object v1, p0, Landroid/icu/util/CompactByteArray;->values:[B

    aput-byte p3, v1, v0

    shr-int/lit8 v1, v0, 0x7

    invoke-direct {p0, v1, p3}, Landroid/icu/util/CompactByteArray;->touchBlock(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
