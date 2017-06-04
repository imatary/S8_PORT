.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$34;
.super Ljava/lang/Object;
.source "GlComposeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->showNoItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field final synthetic val$composeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$34;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$34;->val$composeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$34;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$34;->val$composeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getRecycleBinTextObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$34;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$34;->val$composeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getRecycleBinTextObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$34;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getNoItemVI()Lcom/sec/samsung/gallery/NoItemVI;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$34;->val$composeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/NoItemVI;->initialize(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    return-void
.end method
