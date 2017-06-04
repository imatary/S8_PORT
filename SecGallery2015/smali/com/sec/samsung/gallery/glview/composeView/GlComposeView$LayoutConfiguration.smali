.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;
.super Ljava/lang/Object;
.source "GlComposeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutConfiguration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    return-void
.end method


# virtual methods
.method setLevel(IZF)V
    .locals 11

    const/16 v2, 0x20

    const/4 v7, 0x2

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCount:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$6000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)I

    move-result v1

    if-lt p1, v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCount:I
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$6000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)I

    move-result v1

    add-int/lit8 p1, v1, -0x1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryTimeUtils;->setSmartClusterZoomMode(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->resetCount()V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPosCtrl(I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;I)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move-result-object v8

    if-eqz p2, :cond_8

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlNext:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
    invoke-static {v1, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5902(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v8, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->initEnv(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;)V

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->initComponents()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-nez v1, :cond_c

    move v1, v9

    :goto_2
    invoke-virtual {v8, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetAttributes(Z)V

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetCount()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlNext:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->setReferCtrl(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->resetPosition()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseListAlbumView:Z

    if-eqz v1, :cond_3

    if-eqz p2, :cond_d

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAlbumTitleVisible:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlNext:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->isListAlbumLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setReorderIconVisibility(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-boolean v3, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAlbumTitleVisible:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iput-boolean v9, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mIsEnableAlbumTitleFadeAnim:Z

    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    cmpl-float v1, v1, v10

    if-eqz v1, :cond_f

    move v1, v9

    :goto_4
    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setEnableHoverScroll(Z)V
    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$6400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    new-instance v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    invoke-direct {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;-><init>()V

    iput-object v2, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;->checkNotDisplayDecoViewOnScale()Z

    move-result v0

    if-nez p2, :cond_10

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setToCurrentCtrl()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnStatusChangedListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnStatusChangedListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSplitViewExpanded:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$6500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v3, v9

    :cond_5
    invoke-interface {v1, v9, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;->onStatusChange(III)V

    :cond_6
    :goto_5
    return-void

    :cond_7
    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->insertSALogWhenPinchZoom(I)V
    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$6100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getLogExtraForStatus()Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$6200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getLogExtra()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getStatusExtra(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLogForStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getLogExtra()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setZoomLevel(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUseSmartClustering:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    if-ne v1, v9, :cond_9

    if-eq p1, v7, :cond_b

    :cond_9
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    if-ne v1, v7, :cond_a

    if-eq p1, v9, :cond_b

    :cond_a
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->refreshAlbumSet()V

    :cond_b
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-object v8, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput p1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrlCurrent:I

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->changeThumbSizeType(I)V
    invoke-static {v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$6300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;I)V

    goto/16 :goto_1

    :cond_c
    move v1, v3

    goto/16 :goto_2

    :cond_d
    cmpl-float v1, p3, v10

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAlbumTitleVisibility(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setReorderIconVisibility(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-boolean v9, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAlbumTitleVisible:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iput-boolean v3, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mIsEnableAlbumTitleFadeAnim:Z

    goto/16 :goto_3

    :cond_e
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->hasMessage(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-boolean v9, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAlbumTitleVisible:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iput-boolean v3, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mIsEnableAlbumTitleFadeAnim:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$LayoutConfiguration;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const-wide/16 v6, 0x32

    move v4, v3

    move v5, v3

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    goto/16 :goto_3

    :cond_f
    move v1, v3

    goto/16 :goto_4

    :cond_10
    if-eqz v0, :cond_11

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v1

    if-nez v1, :cond_11

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setToCurrentCtrl()V

    invoke-virtual {v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setDecoviewsVisibility(Z)V

    goto/16 :goto_5

    :cond_11
    if-eqz v0, :cond_12

    cmpl-float v1, p3, v10

    if-nez v1, :cond_12

    invoke-virtual {v8, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setDecoviewsVisibility(Z)V

    goto/16 :goto_5

    :cond_12
    invoke-virtual {v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setDecoviewsVisibility(Z)V

    goto/16 :goto_5
.end method
