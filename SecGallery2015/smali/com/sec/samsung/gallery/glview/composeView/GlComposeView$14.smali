.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$14;
.super Ljava/lang/Object;
.source "GlComposeView.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v3}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isAnimForword()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v3}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->getObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    iget v3, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iget v3, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    if-ltz v0, :cond_0

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    invoke-interface {v3, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;->onItemClick(II)Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnEnlargeAnimListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnEnlargeAnimListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;

    invoke-interface {v3, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;->onEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnEnlargeAnimListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$14;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mOnEnlargeAnimListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;->onStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_0
    return-void
.end method
