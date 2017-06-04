.class Lcom/sec/samsung/gallery/view/detailview/DetailViewState$2;
.super Lcom/sec/android/gallery3d/ui/GLView;
.source "DetailViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/DetailViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mLockTouchEvent:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$700(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->mPhotoViewPre:Lcom/sec/android/gallery3d/ui/PhotoView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$400(Lcom/sec/samsung/gallery/view/detailview/DetailViewState;)Lcom/sec/android/gallery3d/ui/PhotoView;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected renderBackground(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 1

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->FEATURE_USE_BLACK_COLOR_FOR_TFT:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->TFT_BLACK_BACKGROUND_COLOR:[F
    invoke-static {}, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;->access$600()[F

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->clearBuffer([F)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->clearBuffer()V

    goto :goto_0
.end method
