.class Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$10;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "VisualSearchViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-direct {p0, p2, p3}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private handleExitSelectionMode(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->exitSelectionMode()V

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$3500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->cancelDeleteAnimation()V

    :cond_1
    return-void
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 6

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v5, "EXIT_SELECTION_MODE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "COMPLETE_CREATE_NEW_EVENT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$3200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v2

    instance-of v3, v2, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$10;->handleExitSelectionMode(Lorg/puremvc/java/multicore/interfaces/INotification;)V

    goto :goto_1

    :pswitch_1
    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->exitSelectionMode()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$3300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/util/AddItemToChannel;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    new-instance v4, Lcom/sec/samsung/gallery/util/AddItemToChannel;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$3400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sec/samsung/gallery/util/AddItemToChannel;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;
    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$3302(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Lcom/sec/samsung/gallery/util/AddItemToChannel;)Lcom/sec/samsung/gallery/util/AddItemToChannel;

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$10;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$3300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/util/AddItemToChannel;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->startChannelViewMode(I)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5855d642 -> :sswitch_1
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

    const-string/jumbo v2, "COMPLETE_CREATE_NEW_EVENT"

    aput-object v2, v0, v1

    return-object v0
.end method
