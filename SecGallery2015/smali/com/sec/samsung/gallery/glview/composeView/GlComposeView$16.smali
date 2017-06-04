.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$16;
.super Ljava/lang/Object;
.source "GlComposeView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$16;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doSALogging()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$16;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$16;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "4714"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$16;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1008"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onLongClick(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$16;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isSlideAnimRunning()Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    instance-of v4, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$16;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setExpansionMode(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$16;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mClickable:Z
    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$16;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$16;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v4}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isRunning()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$16;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scaleAnimationForSelectionMode(Z)Z
    invoke-static {v4, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Z)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$16;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convertToViewPointX(Lcom/sec/android/gallery3d/glcore/GlObject;I)I
    invoke-static {v4, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/android/gallery3d/glcore/GlObject;I)I

    move-result v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$16;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convertToViewPointY(Lcom/sec/android/gallery3d/glcore/GlObject;I)I
    invoke-static {v4, p1, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$3800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/android/gallery3d/glcore/GlObject;I)I

    move-result v3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$16;->doSALogging()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$16;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->handleLongClick(III)Z

    goto :goto_0

    :cond_3
    instance-of v4, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v4, :cond_4

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    goto :goto_1

    :cond_4
    iget-object v4, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    goto :goto_1
.end method
