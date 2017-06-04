.class Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$10;
.super Ljava/lang/Object;
.source "GlHoverController.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$10;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHoverEnter(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$10;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarClicked:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$10;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onHoverExit(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$10;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->exitFromHoverView(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$10;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarEnabled:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$900(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$10;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabel:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$10;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLabel:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :cond_0
    return v2
.end method

.method public onHoverMove(Lcom/sec/android/gallery3d/glcore/GlObject;II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
