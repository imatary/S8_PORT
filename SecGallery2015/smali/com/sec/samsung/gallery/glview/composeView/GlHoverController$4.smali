.class Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$4;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/gallery3d/glcore/GlObject;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "GSPH"

    const-string/jumbo v4, "Delete"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mItemList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v5

    const/4 v2, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqObj:Lcom/sec/android/gallery3d/glcore/GlObject;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mReqObj:Lcom/sec/android/gallery3d/glcore/GlObject;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iput-boolean v5, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSelectState:Z

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # getter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$700(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "SHOW_DELETE_DIALOG"

    invoke-virtual {v2, v3, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    # setter for: Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->mIsActionBarClicked:Z
    invoke-static {v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->access$1702(Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;Z)Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController$4;->this$0:Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlHoverController;->exitFromHoverView(Z)V

    return v5
.end method
