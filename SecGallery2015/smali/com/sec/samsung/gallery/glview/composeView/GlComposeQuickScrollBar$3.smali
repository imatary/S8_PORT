.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;
.super Ljava/lang/Object;
.source "GlComposeQuickScrollBar.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->initMoveListener()Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mCompView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field mSourceY:F

.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->mSourceY:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->mCompView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-void
.end method


# virtual methods
.method public onMove(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 9

    const/16 v2, 0x9

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->isQuickScrollEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->mSourceY:F

    int-to-float v3, p3

    add-float v0, v1, v3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->getTopMargin()F

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->mCompView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getMarginBtm()F

    move-result v3

    add-float/2addr v1, v3

    neg-float v1, v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->mCompView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightViewRatio:F

    div-float/2addr v1, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getQuickScrollBarHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float v8, v1, v3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    invoke-virtual {v1, v0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->calcScrollRatio(FF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->mCompView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->hasMessage(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->mCompView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v3, 0x2

    const-wide/16 v6, 0x0

    move v5, v4

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    :cond_0
    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method public onPress(Lcom/sec/android/gallery3d/glcore/GlObject;IIII)Z
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->updateScrollBarImage(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->mCompView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightSpace:F

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->getTopMargin()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->getHeight(Z)F

    move-result v2

    div-float/2addr v2, v4

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->mCompView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvY(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->mSourceY:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->mCompView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v1, v6}, Lcom/sec/android/gallery3d/glcore/GlHandler;->hasMessage(I)Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$QuickScrollBarObject;

    if-eqz v1, :cond_0

    invoke-virtual {p1, p4, p5}, Lcom/sec/android/gallery3d/glcore/GlObject;->checkPosIn(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1011"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "QSCR"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->mCompView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v1, v6, v3, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_0
    return v3
.end method

.method public onRelease(Lcom/sec/android/gallery3d/glcore/GlObject;IIII)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar;->updateScrollBarImage(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeQuickScrollBar$3;->mCompView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v1, 0x8

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    const/4 v0, 0x1

    return v0
.end method
