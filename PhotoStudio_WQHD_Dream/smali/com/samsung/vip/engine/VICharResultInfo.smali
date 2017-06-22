.class public Lcom/samsung/vip/engine/VICharResultInfo;
.super Ljava/lang/Object;
.source "VICharResultInfo.java"


# instance fields
.field private mChars:[C

.field private mIndexList:[I

.field private mNumOfPoints:[I


# direct methods
.method public constructor <init>([C[I[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mChars:[C

    iput-object v0, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mNumOfPoints:[I

    iput-object v0, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mIndexList:[I

    iput-object p1, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mChars:[C

    iput-object p2, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mNumOfPoints:[I

    iput-object p3, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mIndexList:[I

    return-void
.end method


# virtual methods
.method public getChar(I)C
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mChars:[C

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mChars:[C

    aget-char v0, v0, p1

    goto :goto_0
.end method

.method public getCharNum()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mChars:[C

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mChars:[C

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mChars:[C

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEndIndexOfPoint(I)I
    .locals 3

    const/4 v0, -0x1

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mChars:[C

    array-length v1, v1

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mIndexList:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mIndexList:[I

    array-length v1, v1

    iget-object v2, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mChars:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mIndexList:[I

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEndIndexOfStroke(I)I
    .locals 3

    const/4 v0, -0x1

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mChars:[C

    array-length v1, v1

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mIndexList:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mIndexList:[I

    array-length v1, v1

    iget-object v2, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mChars:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mIndexList:[I

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getPointNumber(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mNumOfPoints:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mNumOfPoints:[I

    array-length v0, v0

    if-lez v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mNumOfPoints:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mNumOfPoints:[I

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStartIndexOfPoint(I)I
    .locals 3

    const/4 v0, -0x1

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mChars:[C

    array-length v1, v1

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mIndexList:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mIndexList:[I

    array-length v1, v1

    iget-object v2, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mChars:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mIndexList:[I

    mul-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getStartIndexOfStroke(I)I
    .locals 3

    const/4 v0, -0x1

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mChars:[C

    array-length v1, v1

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mIndexList:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mIndexList:[I

    array-length v1, v1

    iget-object v2, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mChars:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/vip/engine/VICharResultInfo;->mIndexList:[I

    mul-int/lit8 v1, p1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method
