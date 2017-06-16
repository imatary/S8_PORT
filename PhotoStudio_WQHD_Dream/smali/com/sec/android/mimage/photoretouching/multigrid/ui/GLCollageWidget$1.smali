.class Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$1;
.super Landroid/os/Handler;
.source "GLCollageWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;-><init>(Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "GlCollageWidget::handleMessage"

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setOrientationChange(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getCollageManager()Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateAspectRatio(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getCollageManager()Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->onConfigurationChanged()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getSelectedItem()Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getCollageManager()Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->showModifyPopUp()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->getCollageManager()Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/CollageManager;->updateAddImagePosition()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->requestRender()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget$1;->this$0:Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;

    # getter for: Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->mElement:Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;->access$000(Lcom/sec/android/mimage/photoretouching/multigrid/ui/GLCollageWidget;)Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/multigrid/data/CollageElement;->setOrientationChange(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
