.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$4;
.super Ljava/lang/Object;
.source "GlComposeEventObject.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v1

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->startAnim([Lcom/sec/android/gallery3d/glcore/GlCanvas;)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;[Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

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
