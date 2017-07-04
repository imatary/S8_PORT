.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;
.super Ljava/lang/Object;
.source "GlComposeView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiSelectEnter(Lcom/sec/android/gallery3d/glcore/GlObject;IIZ)Z
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isDragAnimRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isScaleAnimRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isOnScaling()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v7

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v5, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->createMultiSelector(Z)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1002(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setMutiSelector(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelectionBufferVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getSelectionBufferLayoutHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v4, v0

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getTabViewHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->updateScreen(FFFFFLandroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->start(IILcom/sec/android/gallery3d/glcore/GlObject;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4102(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Z)Z

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    move v0, v7

    goto/16 :goto_0
.end method

.method public onMultiSelectMove(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->isFromPenSelection()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getSearchObj(II)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    move-result-object v3

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-virtual {v3, v4, v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->update(FFLcom/sec/android/gallery3d/glcore/GlObject;)V

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->isScrollable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->getScrollSpeed()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setScrollSpeed(F)V

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->select(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    :goto_2
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    move-result-object v3

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-virtual {v3, v4, v5, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->update(FFLcom/sec/android/gallery3d/glcore/GlObject;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4102(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Z)Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->select(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->isScrollable()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->getScrollSpeed()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->startScroll(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4102(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Z)Z

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->select(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    goto :goto_2
.end method

.method public onMultiSelectRelease(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "TSMD"

    const-string/jumbo v4, "Taphold Drag"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isScaleAnimRunning()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isOnScaling()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3, v1, v1, v1}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;->stop()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setMutiSelector(Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshLayout()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$4102(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$1002(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;)Lcom/sec/samsung/gallery/glview/composeView/GlAbsMultiSelector;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$20;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSATopScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1076"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0
.end method
