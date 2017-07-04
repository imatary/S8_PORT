.class Lcom/sec/android/gallery3d/glcore/GlObject$2;
.super Ljava/lang/Object;
.source "GlObject.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector$GlPenSelectDetectorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/glcore/GlObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field handled:Z

.field final synthetic this$0:Lcom/sec/android/gallery3d/glcore/GlObject;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isReachedBoundary()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$800(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$800(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;->isReachedBoundary()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMove(II)Z
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->handled:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$000(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->handled:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$000(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$100(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;->onMove(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->handled:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->handled:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlObject;->onMoved(II)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->handled:Z

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->handled:Z

    return v0
.end method

.method public onPenEnter(II)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$800(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$800(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, v2, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->getInstance(Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->getFirstPoint()Landroid/graphics/PointF;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;->onPenEnter(Landroid/graphics/PointF;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onPenMove(II)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$800(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$800(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, v2, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->getInstance(Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->getSecondPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v3, v3, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v3}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->getInstance(Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->getPenSelectRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;->onPenMove(Landroid/graphics/PointF;Landroid/graphics/Rect;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onPenSelect(II)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$800(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v2, v2, Lcom/sec/android/gallery3d/glcore/GlObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->getInstance(Lcom/sec/android/gallery3d/glcore/GlRootView;)Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$800(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->getSecondPoint()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlPenSelectDetector;->getPenSelectRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;->onPenSelect(Landroid/graphics/PointF;Landroid/graphics/Rect;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public onPress(II)Z
    .locals 7

    const/4 v4, -0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->handled:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$000(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->handled:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$000(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$100(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;->onPress(Lcom/sec/android/gallery3d/glcore/GlObject;IIII)Z

    move-result v0

    or-int/2addr v0, v6

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->handled:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->handled:Z

    return v0
.end method

.method public onRelease(IIII)Z
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->handled:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$000(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->handled:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$000(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$100(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;->onRelease(Lcom/sec/android/gallery3d/glcore/GlObject;IIII)Z

    move-result v0

    or-int/2addr v0, v6

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->handled:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->handled:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/glcore/GlObject;->onReleased(IIII)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->handled:Z

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$2;->handled:Z

    return v0
.end method
