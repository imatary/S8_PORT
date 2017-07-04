.class Lcom/sec/android/gallery3d/glcore/GlObject$1;
.super Ljava/lang/Object;
.source "GlObject.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlMovementDetector$GlMoveDetectorListener;


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

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()Z
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$300(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$300(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$100(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;->onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->onClicked()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    return v0
.end method

.method public onGenericMotionTouch(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$700(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$700(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$100(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;->onGenericMotionCancel(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$700(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$700(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$100(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;->onGenericMotionEnter(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongClick(II)Z
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$400(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$400(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$100(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;->onLongClick(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$500(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    return v0
.end method

.method public onMouseWheelScale(ZII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMove(II)Z
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$000(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$000(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$100(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;->onMove(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlObject;->onMoved(II)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    return v0
.end method

.method public onMultiSelectEnter(II)Z
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$600(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$600(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$100(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, v3}, Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;->onMultiSelectEnter(Lcom/sec/android/gallery3d/glcore/GlObject;IIZ)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    return v0
.end method

.method public onMultiSelectMove(II)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$600(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$600(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$100(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;->onMultiSelectMove(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onMultiSelectRelease(II)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$600(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$600(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$100(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlObject$GlMultiSelectListener;->onMultiSelectRelease(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public onPress(IIII)Z
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$000(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$000(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$100(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;->onPress(Lcom/sec/android/gallery3d/glcore/GlObject;IIII)Z

    move-result v0

    or-int/2addr v0, v6

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/glcore/GlObject;->onPressed(IIII)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    return v0
.end method

.method public onRelease(IIII)Z
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$000(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$000(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$100(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;->onRelease(Lcom/sec/android/gallery3d/glcore/GlObject;IIII)Z

    move-result v0

    or-int/2addr v0, v6

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/glcore/GlObject;->onReleased(IIII)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    return v0
.end method

.method public onScroll(IIII)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlObject;->onMoved(II)Z

    move-result v0

    return v0
.end method

.method public onSecondaryClick(IIII)Z
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$200(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlSecondaryClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$200(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject$GlSecondaryClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->this$0:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-static {v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->access$100(Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v2

    invoke-interface {v1, v2, p3, p4}, Lcom/sec/android/gallery3d/glcore/GlObject$GlSecondaryClickListener;->onClick(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlObject$1;->handled:Z

    return v0
.end method
