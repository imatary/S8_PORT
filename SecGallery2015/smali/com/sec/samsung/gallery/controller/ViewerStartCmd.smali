.class public Lcom/sec/samsung/gallery/controller/ViewerStartCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "ViewerStartCmd.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final KEY_ABSOLUTE_PATH:Ljava/lang/String; = "AbsolutePath"

.field private static final KEY_FROM_USB_DATA_BACKUP_APP:Ljava/lang/String; = "from-usbBackup"

.field private static final TAG:Ljava/lang/String; = "ViewerStartCmd"


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/ViewerStartCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;
    .locals 5

    const-string/jumbo v2, "ViewerStartCmd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findPathByUri() : uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.cmh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;->UNION_SOURCE_ONLY:Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;->LOCAL_SOURCE_ONLY:Lcom/sec/android/gallery3d/data/LibraryDataManager$SourceType;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_1
.end method

.method private getContentType(Landroid/app/Activity;Landroid/content/Intent;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    if-nez p2, :cond_1

    move-object v1, v3

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "ViewerStartCmd"

    const-string/jumbo v5, "Failed to get intent content type!"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    goto :goto_0
.end method

.method private getMediaItemFromUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;Z)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_0
.end method

.method private getMediaSetPath(Landroid/content/Intent;)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string/jumbo v5, "smartmanager"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v5, "storagetype"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v5, "query_uri"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    move-object v3, v5

    :goto_0
    if-nez v3, :cond_0

    if-eqz v1, :cond_4

    :cond_0
    if-nez v4, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/allinone/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/allinone/local/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/allinone/ext/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "KEY_MEDIA_SET_PATH"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private getUriWithUserId(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 11

    const-string/jumbo v8, "from-Camera"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-nez v1, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {}, Lcom/sec/samsung/gallery/lib/factory/UserHandleWrapper;->myUserId()I

    move-result v2

    const/4 v6, -0x1

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedUserInfo()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    :cond_0
    :goto_0
    if-eq v2, v6, :cond_1

    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getFilePathFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v8, "content://"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    :cond_1
    return-object v5

    :catch_0
    move-exception v0

    const-string/jumbo v8, "ViewerStartCmd"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "invalid user id"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startViewState(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ViewerStartCmd"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 20

    invoke-interface/range {p1 .. p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/Object;

    move-object/from16 v13, v16

    check-cast v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    aget-object v16, v13, v16

    check-cast v16, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v16, 0x1

    aget-object v6, v13, v16

    check-cast v6, Landroid/content/Intent;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->getContentType(Landroid/app/Activity;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v16, "view_item"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v3, :cond_3

    const-string/jumbo v16, "ViewerStartCmd"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Content Type : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Landroid/content/Intent;

    const-string/jumbo v19, "android.intent.action.DELETE"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setResult(ILandroid/content/Intent;)V

    const-string/jumbo v16, "ViewerStartCmd"

    const-string/jumbo v17, "execute : Activity.RESULT_CANCELED, Intent.ACTION_DELETE"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a02e3

    invoke-static/range {v16 .. v17}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto :goto_0

    :cond_3
    const-string/jumbo v16, "useUriList"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    const-string/jumbo v16, "isFromCrossPicker"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const-string/jumbo v16, "from-Camera"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string/jumbo v16, "activity-transition-VI"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v16, "isKeepBrightness"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    const-string/jumbo v16, "KEY_IS_FROM_GALLERY_NOTIFCATION_VIEW"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setFromCamera(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v16, v0

    const-string/jumbo v17, "from-myfiles"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setFromMyFiles(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v16, v0

    const-string/jumbo v17, "from-sw"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setLaunchFromSetupWidzard(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setFromCrossPicker(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setActivityTransitionVI(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setEnableKeepBrightness(Z)V

    invoke-static {v6}, Lcom/sec/android/gallery3d/sconnect/SConnectUtil;->isSConnectIntent(Landroid/content/Intent;)Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->handleSConnect(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v6}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->isSLinkIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->handleSLink(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->handleUriList(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v16, "vnd.android.cursor.dir"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->handleCursorDirBaseType(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    if-eqz v14, :cond_a

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v14}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isExist(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-nez v16, :cond_8

    const-string/jumbo v16, "ViewerStartCmd"

    const-string/jumbo v17, "GalleryUtils.isExist() returns false"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a02e3

    invoke-static/range {v16 .. v17}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->startAlbumViewState()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isMmsUri(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_9

    if-eqz v4, :cond_a

    const-string/jumbo v16, "thread_id"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setFromMMS(Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4, v14}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->handleMmsView(Landroid/content/Intent;Landroid/os/Bundle;Landroid/net/Uri;)V

    goto/16 :goto_0

    :cond_a
    sget-object v16, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAFWMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v16 .. v16}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v16

    if-nez v16, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->getUriWithUserId(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v14

    :cond_b
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "content://downloads/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v14}, Lcom/sec/android/gallery3d/util/GalleryUtils;->convertToMediaProviderUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_c

    move-object v14, v12

    :cond_c
    if-eqz v8, :cond_e

    const-string/jumbo v16, "KEY_MEDIA_ITEM_PATH"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v10

    :goto_1
    if-nez v10, :cond_f

    const-string/jumbo v16, "ViewerStartCmd"

    const-string/jumbo v17, "itemPath is null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    const v17, 0x7f0a02e3

    invoke-static/range {v16 .. v17}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    if-eqz v9, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    new-instance v18, Landroid/content/Intent;

    const-string/jumbo v19, "android.intent.action.DELETE"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setResult(ILandroid/content/Intent;)V

    const-string/jumbo v16, "ViewerStartCmd"

    const-string/jumbo v17, "execute : Activity.RESULT_CANCELED, Intent.ACTION_DELETE"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v10

    goto :goto_1

    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14, v10}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->startDetailViewState(Landroid/content/Intent;Landroid/net/Uri;Lcom/sec/android/gallery3d/data/Path;)V

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v16, v0

    const/16 v17, -0x1

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setResult(I)V

    goto/16 :goto_0
.end method

.method handleCursorDirBaseType(Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v4, "mediaTypes"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "mediaTypes"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_1

    const-string/jumbo v4, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    const-class v4, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0, v4, v1}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->startViewState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v4, Lcom/sec/android/gallery3d/app/GalleryActivity;

    iput-boolean v7, v4, Lcom/sec/android/gallery3d/app/GalleryActivity;->mNeedFirstUpOfDetailView:Z

    const-class v4, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0, v4, v1}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->startViewState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method handleMmsView(Landroid/content/Intent;Landroid/os/Bundle;Landroid/net/Uri;)V
    .locals 9

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_1

    const-string/jumbo v6, "thread_id"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "thread_id"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v6, "trunk_position"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v6, "KEY_MEDIA_SET_PATH"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/uri/mediaset/thread/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p3, v7}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string/jumbo v6, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v6, "KEY_ITEM_POSITION"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v6, "KEY_IS_FROM_MESSAGE"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v6, "ViewerStartCmd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Start Viewer from Message app : uri ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "], index ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v6, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0, v6, v0}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->startViewState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getMidFromMmsList(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v5, v7, v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getIndexFromMmsList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;J)I

    move-result v1

    const-string/jumbo v6, "KEY_MEDIA_SET_PATH"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/uri/mediaset/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method handleSConnect(Landroid/content/Intent;)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-static {p1}, Lcom/sec/android/gallery3d/sconnect/SConnectUtil;->getUris(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const/16 v9, 0x40

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v8, "keep_uri_list_order"

    invoke-virtual {p1, v8, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v8, "KEY_MEDIA_SET_PATH"

    const-string/jumbo v9, "/uriList"

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "android.intent.extra.STREAM"

    invoke-virtual {v2, v8, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v8, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "KEY_IS_FROM_QUICK_CONNECT"

    invoke-virtual {v2, v8, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v8, "keep_uri_list_order"

    invoke-virtual {v2, v8, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v8, "keep_uri_list_order"

    invoke-virtual {p1, v8, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-class v8, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0, v8, v2}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->startViewState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method handleSLink(Landroid/content/Intent;)V
    .locals 14

    const/4 v11, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x1

    const/4 v1, -0x1

    :try_start_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7}, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/samsung/android/sdk/samsunglink/SlinkViewerUtils;->getCursorFromViewIntent(Landroid/content/Intent;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    const-string/jumbo v7, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string/jumbo v7, "device_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v7, "KEY_MEDIA_SET_PATH"

    const-string/jumbo v8, "/slink/viewer"

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "KEY_MEDIA_ITEM_PATH"

    const-string/jumbo v8, "/slink/%d/%d"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "KEY_ITEM_POSITION"

    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v7

    const-string/jumbo v8, "/slink/viewer"

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/remote/slink/SLinkViewAlbum;

    invoke-virtual {v6, v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkViewAlbum;->init(Landroid/database/Cursor;)V

    const-string/jumbo v7, "ViewerStartCmd"

    const-string/jumbo v8, "multiple devices"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "ViewerStartCmd"

    const-string/jumbo v8, "media set path : /slink/viewer"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "ViewerStartCmd"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "media item path : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/slink/%d/%d"

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "ViewerStartCmd"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "item position : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v7, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0, v7, v3}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->startViewState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v7, "ViewerStartCmd"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method handleUriList(Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v6, "uriListData"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const-string/jumbo v6, "KEY_ITEM_POSITION"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    const-string/jumbo v6, "KEY_MEDIA_SET_PATH"

    const-string/jumbo v7, "/uriList"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "android.intent.extra.STREAM"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v6, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "from-Camera"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v6, "is_from_camera"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const-string/jumbo v6, "keep_uri_list_order"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v6, "keep_uri_list_order"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-class v6, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-direct {p0, v6, v0}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->startViewState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method startAlbumViewState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/controller/ViewerStartCmd$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/ViewerStartCmd;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method startDetailViewState(Landroid/content/Intent;Landroid/net/Uri;Lcom/sec/android/gallery3d/data/Path;)V
    .locals 34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->getContentType(Landroid/app/Activity;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v30, "view_item"

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    const-string/jumbo v30, "SingleItemOnly"

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    const-string/jumbo v30, "isFromGallery"

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromCrossPicker()Z

    move-result v14

    invoke-direct/range {p0 .. p1}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->getMediaSetPath(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v30, "from-Camera"

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    const-string/jumbo v30, "from-myfiles"

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    const-string/jumbo v30, "from-usbBackup"

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    const-string/jumbo v30, "smartmanager"

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    const-string/jumbo v30, "uri"

    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_0

    if-eqz v21, :cond_0

    const-string/jumbo v30, "allinone"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_0

    const-string/jumbo v30, "ViewerStartCmd"

    const-string/jumbo v31, "Item sent in intent not found"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v30, v0

    const v31, 0x7f0a02e3

    invoke-static/range {v30 .. v31}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    :cond_0
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_1

    if-nez v10, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "content://rcs/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_1

    const-string/jumbo v30, "KEY_ITEM_RCS"

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    if-eqz v10, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v30

    if-nez v30, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCoverMode(Landroid/app/Activity;)Z

    move-result v30

    if-nez v30, :cond_7

    sget-object v30, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHierarchicalUpButton:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v30 .. v30}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v30

    if-eqz v30, :cond_7

    sget-object v30, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v30 .. v30}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v30

    if-eqz v30, :cond_7

    const-string/jumbo v30, "/timeall/cluster/{/combo/{/local/item/all,/scloud/all,}}/quick_view"

    invoke-static/range {v30 .. v30}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    :goto_0
    const/16 v26, 0x0

    if-eqz v17, :cond_a

    const-string/jumbo v30, "KEY_MEDIA_SET_PATH"

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setIsInViewMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromCamera()Z

    move-result v30

    if-nez v30, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromMyFiles()Z

    move-result v30

    if-eqz v30, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v30, v0

    sget-object v31, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    :cond_4
    const-string/jumbo v30, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v30, "mime-type"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v30, "view-mode"

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v30, "Quick_Time"

    const-wide/16 v32, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v24

    const-string/jumbo v30, "Quick_Time"

    move-object/from16 v0, v30

    move-wide/from16 v1, v24

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->getMediaItemFromUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/LocalImage;

    move/from16 v30, v0

    if-nez v30, :cond_5

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    move/from16 v30, v0

    if-eqz v30, :cond_6

    :cond_5
    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v6

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v12

    const-wide/16 v30, 0x0

    cmp-long v30, v12, v30

    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v0, v6, v12, v13}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotUriList(Landroid/content/ContentResolver;IJ)Ljava/util/ArrayList;

    move-result-object v29

    if-eqz v29, :cond_6

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v30

    if-nez v30, :cond_6

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v28

    const-string/jumbo v30, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isFromCamera()Z

    move-result v30

    if-eqz v30, :cond_d

    const-string/jumbo v30, "in_camera_roll"

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v30, "is_from_camera"

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_2
    const-class v30, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v8}, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->startViewState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void

    :cond_7
    if-eqz v11, :cond_9

    const-string/jumbo v30, "AbsolutePath"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    const-string/jumbo v30, "AbsolutePath"

    move-object/from16 v0, v30

    invoke-virtual {v8, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/MediaItem;

    move/from16 v30, v0

    if-eqz v30, :cond_9

    check-cast v22, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    if-eqz v4, :cond_9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/sec/android/gallery3d/data/Path;->removeObject()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getDefaultSetOf(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    goto/16 :goto_0

    :cond_a
    if-nez v18, :cond_b

    if-nez v23, :cond_b

    if-eqz v5, :cond_b

    const-string/jumbo v30, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v26, v5

    :cond_b
    if-eqz v21, :cond_c

    const-string/jumbo v30, "KEY_MEDIA_SET_PATH"

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v21 .. v21}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v26

    :cond_c
    if-eqz v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v20

    check-cast v20, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v20, :cond_2

    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setUpButtonVisible(Z)V

    goto/16 :goto_1

    :cond_d
    if-nez v14, :cond_e

    if-eqz v16, :cond_f

    :cond_e
    const-string/jumbo v30, "expansion_detail_view"

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/controller/ViewerStartCmd;->mCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setUpButtonVisible(Z)V

    goto/16 :goto_2
.end method
