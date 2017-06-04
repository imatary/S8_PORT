.class public Lcom/sec/samsung/gallery/controller/ShowNewAlbumCancelDialogCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ShowNewAlbumCancelDialogCmd.java"

# interfaces
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# instance fields
.field private mConfirmationDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private dismissNewAlbumCancelDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCancelDialogCmd;->mConfirmationDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCancelDialogCmd;->mConfirmationDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->dismissDialog()V

    :cond_0
    return-void
.end method

.method private showNewAlbumCancelDialog()V
    .locals 9

    const/4 v6, 0x1

    const v5, 0x7f0a018e

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_NEW_ALBUM_CANCEL:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCancelDialogCmd;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getTotalSelectedItems()I

    move-result v2

    if-ne v2, v6, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCancelDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCancelDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a029e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v3, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCancelDialogCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a011f

    invoke-direct {v3, v4, v5, v1, v0}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/sec/samsung/gallery/core/Event;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCancelDialogCmd;->mConfirmationDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCancelDialogCmd;->mConfirmationDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    invoke-virtual {v3, p0}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->addObserver(Ljava/util/Observer;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCancelDialogCmd;->mConfirmationDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->showDialog()V

    return-void

    :cond_0
    if-lez v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCancelDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCancelDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a02a8

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCancelDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 3

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCancelDialogCmd;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCancelDialogCmd;->dismissNewAlbumCancelDialog()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCancelDialogCmd;->showNewAlbumCancelDialog()V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5

    move-object v1, p2

    check-cast v1, Lcom/sec/samsung/gallery/core/Event;

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v3

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_NEW_ALBUM_CANCEL:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCancelDialogCmd;->mConfirmationDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCancelDialogCmd;->mConfirmationDialog:Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/dialog/ConfirmationDialog;->dismissDialog()V

    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumCancelDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    const-string/jumbo v4, "EXIT_NEW_ALBUM_MODE"

    invoke-virtual {v3, v4, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
