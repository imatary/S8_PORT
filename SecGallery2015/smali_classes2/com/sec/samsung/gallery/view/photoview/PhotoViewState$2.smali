.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$2;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "PhotoViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-direct {p0, p2, p3}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private handleExitSelectionMode(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 7

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iput-boolean v5, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mLockInSelectionMode:Z

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$500(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v4, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-nez v4, :cond_1

    instance-of v4, v2, Ljava/lang/Integer;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->exitSelectionMode()V

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$700(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$800(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->cancelDeleteAnimation()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    const/16 v4, 0x10

    if-ge v3, v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    invoke-static {v6, v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$600(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;Z)V

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->access$900(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->runQueueIdleTimer()V

    goto :goto_1
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 6

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "REFRESH_ACTIONBAR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$2;->handleExitSelectionMode(Lorg/puremvc/java/multicore/interfaces/INotification;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$2;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70d5fa87 -> :sswitch_1
        0x5ece09d7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public listNotificationInterests()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "REFRESH_ACTIONBAR"

    aput-object v2, v0, v1

    return-object v0
.end method
