.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;
.super Ljava/lang/Object;
.source "GlComposeView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onMoved(II)Z

    move-result v0

    return v0
.end method

.method public onPress(Lcom/sec/android/gallery3d/glcore/GlObject;IIII)Z
    .locals 6

    const/4 v5, -0x1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isListAlbumViewSwipeAnimRunning()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsReorderFinished:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    if-ne v3, v2, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-boolean v2, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mReorderIconPressed:Z

    iget-object v2, p1, Lcom/sec/android/gallery3d/glcore/GlObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    const-string/jumbo v2, "GlComposeView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reorder icon press : index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", album index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mLongClickedObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2, v5, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onPressed(II)Z

    move-result v2

    goto :goto_0
.end method

.method public onRelease(Lcom/sec/android/gallery3d/glcore/GlObject;IIII)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mReorderIconPressed:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollEnabled:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFocusReorderObj:Lcom/sec/android/gallery3d/glcore/GlObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFocusReorderObj:Lcom/sec/android/gallery3d/glcore/GlObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setBorderVisible(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mFocusReorderObj:Lcom/sec/android/gallery3d/glcore/GlObject;
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->access$2802(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$37;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onReleased(IIII)Z

    move-result v0

    return v0
.end method
