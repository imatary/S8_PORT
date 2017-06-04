.class Lcom/sec/android/gallery3d/glcore/GlLayer$1;
.super Ljava/lang/Object;
.source "GlLayer.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/glcore/GlLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;

    # invokes: Lcom/sec/android/gallery3d/glcore/GlLayer;->onClicked()Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->access$000(Lcom/sec/android/gallery3d/glcore/GlLayer;)Z

    move-result v0

    return v0
.end method

.method public onGenericMotionTouch(II)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onGenericMotionCancel()V

    const/4 v0, 0x1

    return v0
.end method

.method public onLongClick(II)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;

    # invokes: Lcom/sec/android/gallery3d/glcore/GlLayer;->onLongClicked(II)Z
    invoke-static {v0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->access$100(Lcom/sec/android/gallery3d/glcore/GlLayer;II)Z

    move-result v0

    return v0
.end method

.method public onMouseWheelScale(ZII)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onMouseWheelScaled(ZII)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onMoved(II)Z

    move-result v0

    return v0
.end method

.method public onMultiSelectEnter(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMultiSelectMove(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMultiSelectRelease(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPress(IIII)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onPressed(II)Z

    move-result v0

    return v0
.end method

.method public onRelease(IIII)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onReleased(IIII)Z

    move-result v0

    return v0
.end method

.method public onScroll(IIII)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onScrolled(IIII)Z

    move-result v0

    return v0
.end method

.method public onSecondaryClick(IIII)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onSecondaryClicked(II)Z

    move-result v0

    return v0
.end method
