.class Lcom/sec/samsung/gallery/view/eventview/EventViewState$1;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "EventViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/eventview/EventViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-direct {p0, p2, p3}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 6

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "MEDIA_EJECT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$100(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$200(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$400(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    new-instance v5, Lcom/sec/samsung/gallery/view/eventview/EventViewState$1$1;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$1$1;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState$1;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v4, "EXIT_SELECTION_MODE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$500(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v4, v0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$600(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    new-instance v5, Lcom/sec/samsung/gallery/view/eventview/EventViewState$1$2;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$1$2;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState$1;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->cancelDeleteAnimation()V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "COMPLETE_CREATE_NEW_EVENT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->doScroll(F)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->refreshLayout()V

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "DELETE_ANIM_START"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->copyCurrentActive(Z)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v4, "REFRESH_LAYOUT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$1;->this$0:Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    # getter for: Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;
    invoke-static {v4}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->access$700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->refreshLayout()V

    goto/16 :goto_0
.end method

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "MEDIA_EJECT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "COMPLETE_CREATE_NEW_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "DELETE_ANIM_START"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "REFRESH_LAYOUT"

    aput-object v2, v0, v1

    return-object v0
.end method
