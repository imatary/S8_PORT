.class Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;
.super Lorg/puremvc/java/multicore/patterns/mediator/Mediator;
.source "FilterViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/filterview/FilterViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-direct {p0, p2, p3}, Lorg/puremvc/java/multicore/patterns/mediator/Mediator;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleNotification(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "MEDIA_EJECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$000(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$100(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$200(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$400(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    new-instance v3, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1$1;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1$1;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "EXIT_SELECTION_MODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$000(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$500(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$600(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    new-instance v3, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1$2;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1$2;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "REFRESH_LAYOUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$700(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;->this$0:Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->access$700(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshLayout()V

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

    const-string/jumbo v2, "MEDIA_EJECT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "REFRESH_LAYOUT"

    aput-object v2, v0, v1

    return-object v0
.end method
