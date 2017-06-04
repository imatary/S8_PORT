.class Lcom/sec/samsung/gallery/glview/composeView/DynamicScrollConverter;
.super Ljava/lang/Object;
.source "DynamicScrollConverter.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/IScrollConverter;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "DynamicScrollConverter"

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/DynamicScrollConverter;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getScrollFromIndex(I[Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;)F
    .locals 8

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v3

    if-ltz p1, :cond_0

    array-length v5, p2

    if-lt v0, v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    :try_start_0
    aget-object v2, p2, v0

    iget v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCol:I

    if-lez v5, :cond_0

    iget v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mScrlAccu:F

    iget-object v6, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mCy:[F

    aget v6, v6, v3

    add-float/2addr v5, v6

    iget-object v6, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$GroupInfo;->mItemH:[F

    aget v4, v6, v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    sub-float v4, v5, v4

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "DynamicScrollConverter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getScrollForIndex ArrayIndexOutOfBoundsException > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
