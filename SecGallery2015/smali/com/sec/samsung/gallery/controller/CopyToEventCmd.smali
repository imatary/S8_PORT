.class public Lcom/sec/samsung/gallery/controller/CopyToEventCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "CopyToEventCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# instance fields
.field private mAlbumListDialog:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private dismissAlbumListDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CopyToEventCmd;->mAlbumListDialog:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CopyToEventCmd;->mAlbumListDialog:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->dismissDialog()V

    :cond_0
    return-void
.end method

.method private showAlbumListDialog(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;)V
    .locals 2

    const v0, 0x7f0a0033

    new-instance v1, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;

    invoke-direct {v1, p1, p2}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/CopyToEventCmd;->mAlbumListDialog:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CopyToEventCmd;->mAlbumListDialog:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->setTitle(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CopyToEventCmd;->mAlbumListDialog:Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/common/EventAlbumChoiceDialog;->showDialog()V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 9

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v3, v7

    check-cast v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v1, v3, v7

    check-cast v1, Landroid/content/Context;

    const/4 v7, 0x1

    aget-object v5, v3, v7

    check-cast v5, Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v7, 0x2

    aget-object v7, v3, v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v0, 0x1

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v4

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CopyToEventCmd;->dismissAlbumListDialog()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v2, :cond_2

    instance-of v8, v2, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v8, :cond_1

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object v7, v1

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v7

    instance-of v7, v7, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-nez v7, :cond_4

    if-nez v0, :cond_4

    const v7, 0x7f0a049e

    invoke-static {v1, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1, v5}, Lcom/sec/samsung/gallery/controller/CopyToEventCmd;->showAlbumListDialog(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;)V

    goto :goto_0
.end method
