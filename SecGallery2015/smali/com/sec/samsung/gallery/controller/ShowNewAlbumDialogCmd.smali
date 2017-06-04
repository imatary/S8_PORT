.class public Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ShowNewAlbumDialogCmd.java"

# interfaces
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final TAG:Ljava/lang/String; = "ShowNewAlbumDialogCmd"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNewAlbumDialog:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

.field private mOperationType:I

.field private mSLinkManager:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

.field private mStoragePath:Ljava/lang/String;

.field private mTgtPathStr:Ljava/lang/String;

.field private mTopSetPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mStoragePath:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mOperationType:I

    return-void
.end method

.method private checkMediaFolder(Ljava/lang/String;)Z
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    aput-object v5, v2, v11

    const-string/jumbo v5, "substr(_data, 0, length(_data)-length(_display_name)) as dir_path"

    aput-object v5, v2, v10

    const-string/jumbo v3, "dir_path = ? COLLATE NOCASE"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v11

    const/4 v9, 0x0

    :goto_0
    if-gt v9, v10, :cond_2

    const/4 v7, 0x0

    if-nez v9, :cond_0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_1
    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "ShowNewAlbumDialogCmd"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-lez v5, :cond_1

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v5, v10

    :goto_2
    return v5

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_1
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v5, "ShowNewAlbumDialogCmd"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_3

    :catchall_0
    move-exception v5

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v5

    :cond_2
    move v5, v11

    goto :goto_2
.end method

.method private checkNewAlbumExisted(Ljava/lang/String;)Z
    .locals 7

    const v6, 0x7f0a047f

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string/jumbo v4, "ShowNewAlbumDialogCmd"

    const-string/jumbo v5, "Album name is empty!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a02b1

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a02ba

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/gallery3d/util/MediaSetUtils;->DEFAULT_NEW_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mTgtPathStr:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mStoragePath:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mStoragePath:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    invoke-static {}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->getStorageForNewAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->checkUseSDCard(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "ShowNewAlbumDialogCmd"

    const-string/jumbo v5, "SDCard not exist!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/sec/android/gallery3d/util/MediaSetUtils;->REMOVABLE_SD_DIR_PATH:Ljava/lang/String;

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mTgtPathStr:Ljava/lang/String;

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mTgtPathStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mTgtPathStr:Ljava/lang/String;

    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mTgtPathStr:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "ShowNewAlbumDialogCmd"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "File is exist already! create directory fail! ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0171

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "ShowNewAlbumDialogCmd"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "ShowNewAlbumDialogCmd"

    const-string/jumbo v5, "Directory don\'t have write permission! []"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->checkMediaFolder(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "ShowNewAlbumDialogCmd"

    const-string/jumbo v5, "Media directory exist! []"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mContext:Landroid/content/Context;

    const v5, 0x7f0a003a

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private dismissDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mNewAlbumDialog:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mNewAlbumDialog:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->dismissDialog()V

    :cond_0
    return-void
.end method

.method private downloadViaSLinkFramework(Ljava/lang/String;)V
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mSLinkManager:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v3, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mOperationType:I

    sget v5, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v2, p1, v3}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getModalDownloadIntent(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ShowNewAlbumDialogCmd"

    const-string/jumbo v3, "Activity Not Found !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mNewAlbumDialog:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mNewAlbumDialog:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->getNewAlbumDialogIsReady()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->dismissDialog()V

    new-instance v0, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mStoragePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mNewAlbumDialog:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mNewAlbumDialog:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->addObserver(Ljava/util/Observer;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mNewAlbumDialog:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    iget v1, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mOperationType:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->setOperationType(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mNewAlbumDialog:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->showNewAlbumDialog()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mNewAlbumDialog:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->setCurrentName(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v1, v3

    check-cast v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    check-cast v3, Landroid/content/Context;

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mOperationType:I

    array-length v3, v1

    if-le v3, v4, :cond_0

    aget-object v3, v1, v4

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mTopSetPath:Ljava/lang/String;

    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mStoragePath:Ljava/lang/String;

    array-length v3, v1

    if-le v3, v5, :cond_1

    aget-object v3, v1, v5

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mStoragePath:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x0

    array-length v3, v1

    if-le v3, v6, :cond_2

    aget-object v0, v1, v6

    check-cast v0, Ljava/lang/String;

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/android/gallery3d/util/MediaSetUtils;->DEFAULT_NEW_ALBUM_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mTgtPathStr:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mSLinkManager:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    if-eqz v2, :cond_3

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->showDialog(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->dismissDialog()V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v5

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_CREATE_NEW_ALBUM:I

    if-ne v5, v6, :cond_2

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->checkNewAlbumExisted(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mNewAlbumDialog:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    invoke-virtual {v5, v7}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->setDialogDismiss(Z)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mNewAlbumDialog:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->getOperationType()I

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mOperationType:I

    iget v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mOperationType:I

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mOperationType:I

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mOperationType:I

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SECRETBOX:I

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mOperationType:I

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_COLLECT_EVENT_ALBUM:I

    if-ne v5, v6, :cond_4

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getNewAlbumSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mTopSetPath:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->isSlinkPath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Ljava/util/List;)V

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mTopSetPath:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->isSlinkPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mTgtPathStr:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->downloadViaSLinkFramework(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v5, 0x4

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mContext:Landroid/content/Context;

    aput-object v5, v3, v8

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mTgtPathStr:Ljava/lang/String;

    aput-object v5, v3, v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v9

    const/4 v5, 0x3

    iget v6, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mOperationType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v5

    const-string/jumbo v6, "SHOW_NEW_ALBUM_COPY_MOVE_DIALOG"

    invoke-virtual {v5, v6, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-array v3, v9, [Ljava/lang/Object;

    aput-object v1, v3, v8

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mTgtPathStr:Ljava/lang/String;

    aput-object v5, v3, v7

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->NewAlbumUsingPickMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v5

    const-string/jumbo v6, "NEW_ALBUM_CREATE"

    invoke-virtual {v5, v6, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v5

    const-string/jumbo v6, "START_NEW_ALBUM_MODE"

    invoke-virtual {v5, v6, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/ShowNewAlbumDialogCmd;->mNewAlbumDialog:Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/view/common/CreateAlbumDialog;->setDialogDismiss(Z)V

    goto :goto_0
.end method
