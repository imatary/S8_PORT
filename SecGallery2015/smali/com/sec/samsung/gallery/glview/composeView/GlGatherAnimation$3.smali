.class Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$3;
.super Ljava/lang/Object;
.source "GlGatherAnimation.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mHeadObj:Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;

    move-result-object v2

    iget v0, v2, Lcom/sec/samsung/gallery/glview/composeView/GlTrailObject;->mIndex:I

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mOnDragListener:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$OnDragAnimListener;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->access$600(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$OnDragAnimListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mOnDragListener:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$OnDragAnimListener;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->access$600(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$OnDragAnimListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$OnDragAnimListener;->onDragAnimDone(I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->releaseDrag()V
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mIsMoveToAnimationRunning:Z
    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->access$402(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;Z)Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    iput-boolean v1, v2, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mMoveToAnimRunning:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mCurrentAnim:I
    invoke-static {v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->access$002(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;I)I

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onAnimationRepeat(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation$3;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;

    const/4 v1, 0x1

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->mIsMoveToAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;->access$402(Lcom/sec/samsung/gallery/glview/composeView/GlGatherAnimation;Z)Z

    return-void
.end method
