.class Lcom/sec/android/gallery3d/glcore/GlLayer$2;
.super Ljava/lang/Object;
.source "GlLayer.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$GlHoverMoveDetectorListener;


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

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getListScrollMode()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;

    # invokes: Lcom/sec/android/gallery3d/glcore/GlLayer;->getHoverListScrollMode()I
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->access$300(Lcom/sec/android/gallery3d/glcore/GlLayer;)I

    move-result v0

    return v0
.end method

.method public onMove(III)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;

    # getter for: Lcom/sec/android/gallery3d/glcore/GlLayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->access$200(Lcom/sec/android/gallery3d/glcore/GlLayer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v0, v1, p3}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setHoveringIconTo(Landroid/content/Context;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onMoved(II)Z

    move-result v0

    return v0
.end method

.method public onPress(II)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;

    # getter for: Lcom/sec/android/gallery3d/glcore/GlLayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->access$200(Lcom/sec/android/gallery3d/glcore/GlLayer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setHoveringIconToDefault(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onPressed(II)Z

    move-result v0

    return v0
.end method

.method public onRelease(IIII)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;

    # getter for: Lcom/sec/android/gallery3d/glcore/GlLayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/GlLayer;->access$200(Lcom/sec/android/gallery3d/glcore/GlLayer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlLayer$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setHoveringIconToDefault(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlLayer$2;->this$0:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/glcore/GlLayer;->onReleased(IIII)Z

    move-result v0

    return v0
.end method
