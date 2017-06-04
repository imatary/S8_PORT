.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$1;
.super Ljava/lang/Object;
.source "GlComposeObject.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->touch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    move-result-object v0

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->cancelAnim()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mAnimationTouch:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$ThumbTouchAnimation;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 0

    return-void
.end method
