.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$2;
.super Ljava/lang/Object;
.source "GlComposeEventObject.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->hideSeekBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isDecorVisibile:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->updateDecorView(Lcom/sec/android/gallery3d/glcore/GlView;)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->isDecorSet:Z
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$902(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->isAnimationVisible:I
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->isAnimationVisible:I
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$502(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;I)I

    iget-object v0, p1, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlObject;->setVisibility(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->mObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    return-void
.end method

.method public onAnimationStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekEnabled:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    const/4 v1, 0x1

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->isAnimationVisible:I
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$502(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;I)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    :cond_0
    return-void
.end method
