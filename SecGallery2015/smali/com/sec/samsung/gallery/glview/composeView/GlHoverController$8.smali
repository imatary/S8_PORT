.class Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$8;
.super Ljava/lang/Object;
.source "GlHoverController.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$8;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPress(Lcom/sec/android/gallery3d/glcore/GlObject;IIII)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$8;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public onRelease(Lcom/sec/android/gallery3d/glcore/GlObject;IIII)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$8;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mTotalCount:I
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    int-to-long v0, p2

    const-wide/16 v2, -0x50

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$8;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4, v4, v4}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :goto_0
    return v5

    :cond_0
    int-to-long v0, p2

    const-wide/16 v2, 0x50

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$8;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4, v4, v4}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$8;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->exitFromHoverView(Z)V

    goto :goto_0
.end method
