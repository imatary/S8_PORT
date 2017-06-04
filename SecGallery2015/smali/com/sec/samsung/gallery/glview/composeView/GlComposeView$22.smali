.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;
.super Ljava/lang/Object;
.source "GlComposeView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isReachedBoundary()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->getReachedBoundary()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->getReachedBoundary()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPenEnter(Landroid/graphics/PointF;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventSecondViewMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbMultiSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

    move-result-object v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;->onMultiSelectEnter(Lcom/sec/android/gallery3d/glcore/GlObject;IIZ)Z

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPenSelectCtrl()Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    move-result-object v1

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4602(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->cpuBoostInit()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->initAttribute()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnPenSelectionListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->setPenSelectionListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->setPosCtrl(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->setStartPoint(Landroid/graphics/PointF;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getFirstVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {v0, p1, v4, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->searchObject(Landroid/graphics/PointF;Landroid/graphics/Rect;II)Z

    goto :goto_0
.end method

.method public onPenMove(Landroid/graphics/PointF;Landroid/graphics/Rect;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventSecondViewMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbMultiSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p1, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;->onMultiSelectMove(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePenSelectInPickMode:Z

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPenSelectionBox()Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    move-result-object v3

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4802(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsDisplayedPenSelectionBox:Z
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->cpuBoost()V
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setExpansionMode(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsDisplayedPenSelectionBox:Z
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$5002(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->requestStart(Landroid/graphics/Rect;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectionBox:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->changeBackgroundSize(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onPenSelect(Landroid/graphics/PointF;Landroid/graphics/Rect;)Z
    .locals 5

    const/4 v0, 0x1

    const/16 v4, 0x8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventSecondViewMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerThumbMultiSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p1, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;->onMultiSelectRelease(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePenSelectInPickMode:Z

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlHandler;->hasMessage(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->isQuickScrollEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v4, v3, v1, v1}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPenSelectCtrl()Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;
    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    move-result-object v3

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;
    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4602(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->setEndPoint(Landroid/graphics/PointF;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->setDirection()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPenSelectCtrl:Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getFirstVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getLastVisiblePosition()I

    move-result v4

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectController;->searchObject(Landroid/graphics/PointF;Landroid/graphics/Rect;II)Z

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v1, v1, v1}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$22;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->cpuBoostRelease()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    goto/16 :goto_0
.end method
