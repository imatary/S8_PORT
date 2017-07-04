.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;
.super Ljava/lang/Object;
.source "GlComposeView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHoverEnter(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v4, "GlComposeView"

    const-string/jumbo v7, "onHover: Enter"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v4

    if-ge p3, v4, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v4, p1

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAlbumTitleText()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    move v2, v5

    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2302(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    if-eqz v2, :cond_2

    int-to-float v7, p3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getCenterY()F

    move-result v4

    invoke-virtual {p1, v5}, Lcom/sec/android/gallery3d/glcore/GlObject;->getHeight(Z)F

    move-result v8

    sub-float v8, v4, v8

    move-object v4, p1

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAlbumTitleHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v8

    cmpl-float v4, v7, v4

    if-gtz v4, :cond_0

    int-to-float v7, p2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getCenterX()F

    move-result v8

    move-object v4, p1

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAlbumTitleTextWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    sub-float v4, v8, v4

    cmpg-float v4, v7, v4

    if-ltz v4, :cond_0

    int-to-float v7, p2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlObject;->getCenterX()F

    move-result v8

    move-object v4, p1

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAlbumTitleTextWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    add-float/2addr v4, v8

    cmpl-float v4, v7, v4

    if-gtz v4, :cond_0

    :cond_2
    move-object v4, p1

    check-cast v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v4}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isRunning()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->isQuickScrollEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_6
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isAlbumPickerMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    const/4 v7, 0x3

    if-eq v4, v7, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    const/4 v7, 0x4

    if-eq v4, v7, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isFromInsideGallery(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->isHoveringIconPenSelect()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)I

    move-result v4

    if-ne v4, v5, :cond_8

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v6, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    invoke-virtual {v4, p1, v6, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->requestStart(Lcom/sec/android/gallery3d/glcore/GlObject;Lcom/sec/android/gallery3d/data/MediaObject;IZ)V

    :goto_2
    move v6, v5

    goto/16 :goto_0

    :cond_7
    move v2, v6

    goto/16 :goto_1

    :cond_8
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v6, v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v6

    invoke-virtual {v4, p1, v6, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->requestStart(Lcom/sec/android/gallery3d/glcore/GlObject;Lcom/sec/android/gallery3d/data/MediaObject;IZ)V

    goto :goto_2
.end method

.method public onHoverExit(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 3

    const/4 v0, 0x1

    const-string/jumbo v1, "GlComposeView"

    const-string/jumbo v2, "onHover: Exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "GlComposeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mHoverCtrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->exitFromHoverView(Z)V

    goto :goto_0
.end method

.method public onHoverMove(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2302(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$11;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->isIdleState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
