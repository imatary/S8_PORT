.class Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$13;
.super Ljava/lang/Object;
.source "GlHoverController.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$GlHoverLabelListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnter(II)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onExit()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$13;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeActionBar;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    return v2
.end method
