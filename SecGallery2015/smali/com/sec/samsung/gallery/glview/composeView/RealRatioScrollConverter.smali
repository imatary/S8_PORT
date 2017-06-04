.class Lcom/sec/samsung/gallery/glview/composeView/RealRatioScrollConverter;
.super Ljava/lang/Object;
.source "RealRatioScrollConverter.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/IScrollConverter;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isFirstRowItem(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;II)Z
    .locals 1

    if-nez p2, :cond_0

    iget v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    if-le v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGroupInfoBoundaryAvailable(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;I)Z
    .locals 1

    iget v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    if-lez v0, :cond_0

    iget v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCount:I

    if-lt p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getScrollFromIndex(I[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F
    .locals 5

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    if-ltz p1, :cond_0

    array-length v4, p2

    if-lt v0, v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    aget-object v1, p2, v0

    invoke-direct {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/RealRatioScrollConverter;->isGroupInfoBoundaryAvailable(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v1, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/RealRatioScrollConverter;->isFirstRowItem(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;II)Z

    move-result v4

    if-nez v4, :cond_0

    iget v3, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v4, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    aget v4, v4, v2

    add-float/2addr v3, v4

    iget-object v4, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v4, v4, v2

    sub-float/2addr v3, v4

    goto :goto_0
.end method
