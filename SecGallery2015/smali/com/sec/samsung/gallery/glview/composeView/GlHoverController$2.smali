.class Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$2;
.super Ljava/lang/Object;
.source "GlHoverController.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->initActionBarListeners()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "GSPH"

    const-string/jumbo v5, "Share via"

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isASoundSceneFileSelected(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/golf/GolfMgr;->isGolfFileSelected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/Play3DTourCmd;->isSelected3DTour(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/PlayInteractiveShotCmd;->isVirtualShotFileSelected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-array v1, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v8

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    const-string/jumbo v4, "SHOW_IMAGE_VIDEO_CONVERSION_DIALOG"

    invoke-virtual {v3, v4, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v3, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$1702(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;Z)Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-virtual {v3, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->exitFromHoverView(Z)V

    return v6

    :cond_1
    new-array v1, v9, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v6

    aput-object v10, v1, v8

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v3, v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    const-string/jumbo v4, "CHECK_CHANNEL_ITEM_NEED_TO_DOWNLOAD"

    invoke-virtual {v3, v4, v10}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$2;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-static {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    const-string/jumbo v4, "SHOW_SHARE_DIALOG"

    invoke-virtual {v3, v4, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
