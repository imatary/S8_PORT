.class Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private isDown:Z

.field final synthetic this$0:Lcom/sec/android/gallery3d/ui/SlotView;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/ui/SlotView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/ui/SlotView;Lcom/sec/android/gallery3d/ui/SlotView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;-><init>(Lcom/sec/android/gallery3d/ui/SlotView;)V

    return-void
.end method

.method private cancelDown()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/SlotView;->access$1200(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/SlotView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/SlotView$Listener;->onUp()V

    goto :goto_0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    sub-float v0, v6, v7

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    sub-float v1, v6, v7

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/SlotView;->access$1200(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/SlotView$Listener;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v7}, Lcom/sec/android/gallery3d/ui/SlotView;->access$1000(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-lez v6, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/SlotView;->access$900(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v2

    if-nez v2, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v3, p3

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v6}, Lcom/sec/android/gallery3d/ui/SlotView;->access$1300(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/ScrollerHelper;

    move-result-object v6

    neg-float v7, v3

    float-to-int v7, v7

    invoke-virtual {v6, v7, v5, v2}, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->fling(III)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/SlotView;->access$1400(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/SlotView;->access$1400(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/gallery3d/ui/UserInteractionListener;->onUserInteractionBegin()V

    :cond_2
    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/SlotView;->access$1700(Lcom/sec/android/gallery3d/ui/SlotView;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SlotView;->lockRendering()V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/SlotView;->access$900(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/SlotView;->access$1200(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/SlotView$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/gallery3d/ui/SlotView$Listener;->onLongTap(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SlotView;->unlockRendering()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SlotView;->unlockRendering()V

    throw v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown()V

    move v0, p3

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/SlotView;->access$1300(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/ScrollerHelper;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/SlotView;->access$900(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->startScroll(III)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/SlotView;->access$1500(Lcom/sec/android/gallery3d/ui/SlotView;)I

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/SlotView;->access$1600(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/Paper;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/Paper;->overScroll(F)V

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/SlotView;->access$1200(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/SlotView$Listener;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/sec/android/gallery3d/ui/SlotView$Listener;->onScrollOverDistance(IF)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SlotView;->invalidate()V

    const/4 v2, 0x1

    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SlotView;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/SlotView;->access$900(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->isDown:Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/ui/SlotView;->access$1200(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/SlotView$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/SlotView$Listener;->onDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    :cond_4
    throw v2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->cancelDown()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/SlotView;->access$1700(Lcom/sec/android/gallery3d/ui/SlotView;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/SlotView;->access$900(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;->this$0:Lcom/sec/android/gallery3d/ui/SlotView;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/SlotView;->access$1200(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/SlotView$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/gallery3d/ui/SlotView$Listener;->onSingleTapUp(I)V

    goto :goto_0
.end method
