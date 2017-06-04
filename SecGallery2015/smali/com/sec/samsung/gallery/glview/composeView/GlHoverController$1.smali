.class Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;
.super Lcom/sec/android/gallery3d/glcore/GlHandler;
.source "GlHoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$OnHoverControlListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/glcore/GlHandler;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    return-void
.end method


# virtual methods
.method public onMessage(ILjava/lang/Object;III)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v2, 0x6

    const/4 v3, 0x0

    const-string/jumbo v1, "GlHoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onMessage msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v7, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsExit:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsExit:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/sec/android/gallery3d/glcore/GlHandler;->hasMessage(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sec/android/gallery3d/glcore/GlHandler;->hasMessage(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v3, v3}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsSet:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$300(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->prepareSetAnimation()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->hasMessage(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsAlbumTitleView:Z
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$600(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v3, v3}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->prepareItemAnimation()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$500(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v1

    const-wide/16 v6, 0x1f4

    move v4, v3

    move v5, v3

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    goto :goto_0

    :cond_7
    if-ne p1, v8, :cond_a

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getGlRoot()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getToolType()I

    move-result v1

    if-eq v1, v7, :cond_8

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarEnabled:Z
    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$902(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;Z)Z

    :goto_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->startShowAnimation()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "AIRV"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->setActionBarEnabled()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$1000(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V

    goto :goto_2

    :cond_a
    if-ne p1, v6, :cond_c

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeAllMessage()V

    if-ne p3, v7, :cond_b

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->checkRemoveHoverView()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V

    :goto_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getGlRoot()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setHoveringIconToDefault(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->removeHoverView(Z)V
    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$1300(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;Z)V

    goto :goto_3

    :cond_c
    const/4 v1, 0x4

    if-ne p1, v1, :cond_d

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    const/16 v2, -0x9

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->prepareNextSet(I)V
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->exitFromHoverViewWithDelay()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x5

    if-ne p1, v1, :cond_e

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    const/16 v2, 0x9

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->prepareNextSet(I)V
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # invokes: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->exitFromHoverViewWithDelay()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$1500(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)V

    goto/16 :goto_0

    :cond_e
    if-ne p1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$1;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$800(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getGlRoot()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->setHoveringIconToMoreIcon(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_0
.end method
