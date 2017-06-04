.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;
.super Ljava/lang/Object;
.source "GlComposeEventObject.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->initChilds(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    move-result-object v1

    iput-boolean v5, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isDecorVisibile:Z

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekBarPosX:F
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convX(I)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)F

    move-result v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollSideMargin:F

    sub-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)F

    move-result v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollSideMargin:F

    sub-float v0, v1, v2

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mThumbPosY:F
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollSideMargin:F

    sub-float/2addr v2, v3

    add-float/2addr v2, v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPositionGradient:F
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)F

    move-result v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2302(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;I)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mMaxCount:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)I

    move-result v2

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mMaxCount:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2302(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;I)I

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPrevPos:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)I

    move-result v2

    if-le v1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    move-result-object v3

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setBitmapToCanvas(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;)V
    invoke-static {v2, v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)I

    move-result v2

    iput v2, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->position:I

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFadeOutAnimSeekThumb:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFadeOutAnimSeekThumb:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->isAnimationVisible:I
    invoke-static {v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$502(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;I)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFadeOutAnimSeekThumb:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    :cond_3
    const/4 v1, 0x1

    return v1

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekBarPosX:F
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convX(I)F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    neg-float v2, v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollSideMargin:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    neg-float v1, v1

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)F

    move-result v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollSideMargin:F

    add-float v0, v1, v2

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekBarPosX:F
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convX(I)F

    move-result v2

    add-float v0, v1, v2

    goto/16 :goto_0
.end method

.method public onPress(Lcom/sec/android/gallery3d/glcore/GlObject;IIII)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollEnabled:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setFocused(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getDX(I)F

    move-result v1

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekBarPosX:F
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1902(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;F)F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFadeOutAnimSeekThumb:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFadeOutAnimSeekThumb:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->isAnimationVisible:I
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$502(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;I)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFadeOutAnimSeekThumb:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    return v3
.end method

.method public onRelease(Lcom/sec/android/gallery3d/glcore/GlObject;IIII)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollEnabled:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getDX(I)F

    move-result v1

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekBarPosX:F
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1902(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;F)F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekEnabled:Z
    invoke-static {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$302(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v1

    const-wide/16 v6, 0x5dc

    move v4, v3

    move v5, v3

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    return v2
.end method
