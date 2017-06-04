.class Lcom/sec/samsung/gallery/glview/composeView/DefaultScrollConverter;
.super Ljava/lang/Object;
.source "DefaultScrollConverter.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/IScrollConverter;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScrollFromIndex(I[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F
    .locals 7

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    if-ltz p1, :cond_0

    array-length v5, p2

    if-lt v0, v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    aget-object v1, p2, v0

    iget v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    if-lez v5, :cond_0

    iget v4, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    div-int v3, v2, v4

    iget v4, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    int-to-float v5, v3

    iget v6, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemHG:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    goto :goto_0
.end method
