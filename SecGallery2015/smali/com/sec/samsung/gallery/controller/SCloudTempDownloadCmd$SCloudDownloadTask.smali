.class Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;
.super Landroid/os/AsyncTask;
.source "SCloudTempDownloadCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SCloudDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/net/Uri;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/ProgressDialog;

.field private final mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mType:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

.field final synthetic this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object p3, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->mType:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    return-void
.end method

.method private getContentUriFromFileUri(Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/String;

    aput-object v2, v8, v5

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->requestScanFile(Landroid/content/Context;[Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_0
    const/4 v7, 0x5

    if-ge v4, v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v7}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/sec/samsung/gallery/util/FileUtil;->getImageContentUriFromFileUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v8, 0xc8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v7, "SCloudTempDownload"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "InterruptedException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->hideProgressDialog()V

    if-nez v0, :cond_1

    :goto_1
    return v5

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v6

    goto :goto_1
.end method

.method private getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private hideProgressDialog()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->mDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SCloudTempDownload"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveAsNewBurstShot(Landroid/net/Uri;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v1, "Burst_Shot_Info"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->deleteSEFData(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-static {v1, v2, v4, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "EXIT_BURST_SHOT_SELECTION_MODE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private showProgressDialog()V
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->mDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0340

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private startAGIFEditor(Landroid/net/Uri;)V
    .locals 3

    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "START_AGIF_EDITOR"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private startMotionPanoramaViewer(Landroid/net/Uri;)V
    .locals 5

    :try_start_0
    const-string/jumbo v3, "SCloudTempDownload"

    const-string/jumbo v4, "play interactive shot image"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryActivity;->disableFinishingAtSecureLock()V

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.app.motionpanoramaviewer"

    const-string/jumbo v4, "com.samsung.android.app.motionpanoramaviewer.ViewerActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    const v4, 0x7f0a0077

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const-string/jumbo v3, "SCloudTempDownload"

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startMotionPhotoViewer(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string/jumbo v3, "SCloudTempDownload"

    const-string/jumbo v4, "play motion photo image"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryActivity;->disableFinishingAtSecureLock()V

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.sec.android.app.apex"

    const-string/jumbo v4, "com.sec.android.app.apex.player.PlayerActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v3, "content_path"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    const v4, 0x7f0a0029

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const-string/jumbo v3, "SCloudTempDownload"

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startOutOfFocusViewer(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/controller/PlayOutOfFocus;->startOutOfFocusImage(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Ljava/lang/String;)V

    return-void
.end method

.method private startSelfMotionPanoramaViewer(Landroid/net/Uri;)V
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "PLAY_SELF_MOTION_PANAROMA"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->DOWNLOAD_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$000()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->getOriginalFilePath(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->DOWNLOAD_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SCloudTempDownload"

    const-string/jumbo v2, "SCloud server path is null so change it to download path"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    const-string/jumbo v1, "SCloudTempDownload"

    const-string/jumbo v2, "Request scloud original download start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->mType:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    sget-object v2, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_BURST_SHOT:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getServerId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->downloadByServerId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    const-string/jumbo v2, "SCloudTempDownload"

    const-string/jumbo v3, "Request scloud original download end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getServerId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->downloadByServerId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    const-string/jumbo v2, "SCloudTempDownload"

    const-string/jumbo v3, "Request scloud original download end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string/jumbo v2, "SCloudTempDownload"

    const-string/jumbo v3, "Request scloud original download end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->mType:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    sget-object v4, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_EDIT:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->mType:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    sget-object v4, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_MOTION_PANORAMA:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->mType:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    sget-object v4, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_MOTION_PHOTO:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->mType:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    sget-object v4, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_SELF_MOTION_PANORAMA:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    if-eq v3, v4, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->hideProgressDialog()V

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$1;->$SwitchMap$com$sec$samsung$gallery$controller$SCloudTempDownloadCmd$DownloadCmdType:[I

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->mType:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    const-string/jumbo v3, "SCloudTempDownload"

    const-string/jumbo v4, "Unmatched download type"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->getContentUriFromFileUri(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$300(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mNeedEditorResult:Z
    invoke-static {v5}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$200(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Z

    move-result v5

    invoke-virtual {v3, p1, v4, v5}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->imageEdit(Ljava/util/ArrayList;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->startAGIFEditor(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    const v4, 0x7f0a045d

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->saveAsNewBurstShot(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->getContentUriFromFileUri(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->startMotionPanoramaViewer(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->getContentUriFromFileUri(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-direct {p0, v3, v0}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->startMotionPhotoViewer(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->getContentUriFromFileUri(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->startSelfMotionPanoramaViewer(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->startOutOfFocusViewer(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$300(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v4}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->start360ImageEditor(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->getContentUriFromFileUri(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {v4, v0, v3}, Lcom/sec/samsung/gallery/controller/PlayInteractiveShotCmd;->startInteractiveShotViewer(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->this$0:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;

    # getter for: Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    const v4, 0x7f0a0480

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const-string/jumbo v3, "SCloudTempDownload"

    const-string/jumbo v4, "Download failed empty or null uris"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->showProgressDialog()V

    return-void
.end method
