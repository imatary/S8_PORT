.class public Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ShowRenameDialogCmd.java"

# interfaces
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final TAG:Ljava/lang/String; = "ShowRenameDialogCmd"


# instance fields
.field private isEvent:Z

.field private mAfterAlbumBucketId:I

.field private mAfterAlbumName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsUpsideAlbum:Z

.field private mNeedExitSelectionMode:Z

.field private mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

.field private mSelectedItem:Lcom/sec/android/gallery3d/data/MediaObject;

.field private mTopSetPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mAfterAlbumBucketId:I

    return-void
.end method

.method private dismissDialog()V
    .locals 2

    const-string/jumbo v0, "ShowRenameDialogCmd"

    const-string/jumbo v1, "dismissDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->dismissMediaRenameDialog()V

    :cond_0
    return-void
.end method

.method private showDialog()V
    .locals 3

    const-string/jumbo v0, "ShowRenameDialogCmd"

    const-string/jumbo v1, "showDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mSelectedItem:Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mSelectedItem:Lcom/sec/android/gallery3d/data/MediaObject;

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mSelectedItem:Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "ShowRenameDialogCmd"

    const-string/jumbo v1, "item not exists! hide dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/sec/samsung/gallery/view/common/RenameDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mSelectedItem:Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/common/RenameDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->isEvent:Z

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->setEvent(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->addObserver(Ljava/util/Observer;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mAfterAlbumName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mAfterAlbumName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mSelectedItem:Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mSelectedItem:Lcom/sec/android/gallery3d/data/MediaObject;

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mAfterAlbumName:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mSelectedItem:Lcom/sec/android/gallery3d/data/MediaObject;

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->isMoreAlbum()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mIsUpsideAlbum:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mSelectedItem:Lcom/sec/android/gallery3d/data/MediaObject;

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mAfterAlbumBucketId:I

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mTopSetPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->setTopSetPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mAfterAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->setCurrentName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mSelectedItem:Lcom/sec/android/gallery3d/data/MediaObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->setCurrentItem(Lcom/sec/android/gallery3d/data/MediaObject;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->showMediaRenameDialog()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mNeedExitSelectionMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->setExitSelectionMode(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mSelectedItem:Lcom/sec/android/gallery3d/data/MediaObject;

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mAfterAlbumName:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mSelectedItem:Lcom/sec/android/gallery3d/data/MediaObject;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x3

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mNeedExitSelectionMode:Z

    const/4 v2, 0x4

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->isEvent:Z

    const/4 v2, 0x5

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mTopSetPath:Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mAfterAlbumName:Ljava/lang/String;

    const-string/jumbo v2, "ShowRenameDialogCmd"

    const-string/jumbo v3, "execute ShowRenameDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/common/RenameDialog;->dismissMediaRenameDialog()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mRenameDialog:Lcom/sec/samsung/gallery/view/common/RenameDialog;

    :cond_0
    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->showDialog()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->dismissDialog()V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v5

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_RENAME_MEDIA:I

    if-ne v5, v6, :cond_1

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mSelectedItem:Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v5, v5, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mSelectedItem:Lcom/sec/android/gallery3d/data/MediaObject;

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mContext:Landroid/content/Context;

    const v6, 0x7f0a048b

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const-string/jumbo v5, "ShowRenameDialogCmd"

    const-string/jumbo v6, "Unable to rename album. folder path is not correct"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mContext:Landroid/content/Context;

    aput-object v5, v4, v7

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mTopSetPath:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v2, v4, v5

    const/4 v5, 0x4

    iget v6, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mAfterAlbumBucketId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mIsUpsideAlbum:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowRenameDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v5

    const-string/jumbo v6, "RENAME_ALBUM_OR_FILE"

    invoke-virtual {v5, v6, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method
