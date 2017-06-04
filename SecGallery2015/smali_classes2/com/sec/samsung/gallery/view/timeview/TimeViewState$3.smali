.class Lcom/sec/samsung/gallery/view/timeview/TimeViewState$3;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "TimeViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-direct {p0, p2, p3}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 8

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "EXIT_SELECTION_MODE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$2300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    instance-of v5, v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # invokes: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->exitSelectionMode()V
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$2400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$2500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->cancelDeleteAnimation()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$2600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->runQueueIdleTimer()V

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "DELETE_ANIM_START"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$2700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$2800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->copyCurrentActive()V

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "COMPLETE_CREATE_NEW_EVENT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # invokes: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->exitSelectionMode()V
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$1200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$2900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/util/AddItemToChannel;

    move-result-object v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    new-instance v6, Lcom/sec/samsung/gallery/util/AddItemToChannel;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v7}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$3000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sec/samsung/gallery/util/AddItemToChannel;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;
    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$2902(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Lcom/sec/samsung/gallery/util/AddItemToChannel;)Lcom/sec/samsung/gallery/util/AddItemToChannel;

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$3;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    # getter for: Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$2900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/util/AddItemToChannel;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->startChannelViewMode(I)V

    goto :goto_0
.end method

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "DELETE_ANIM_START"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "COMPLETE_CREATE_NEW_EVENT"

    aput-object v2, v0, v1

    return-object v0
.end method
