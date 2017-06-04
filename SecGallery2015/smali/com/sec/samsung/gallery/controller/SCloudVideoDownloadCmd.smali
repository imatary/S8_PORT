.class public Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "SCloudVideoDownloadCmd.java"

# interfaces
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SCloudVideoDownloadCmd"


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

.field private mSCloudVideoDownloadTask:Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;)Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;)Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private cancelTask()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->mSCloudVideoDownloadTask:Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->mSCloudVideoDownloadTask:Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->mSCloudVideoDownloadTask:Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v5, v8

    check-cast v5, [Ljava/lang/Object;

    aget-object v8, v5, v9

    check-cast v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v8, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aget-object v7, v5, v10

    check-cast v7, Ljava/lang/String;

    aget-object v0, v5, v11

    check-cast v0, Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v2, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f0a02b7

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8, v6}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v8, "SCloudVideoDownloadCmd"

    const-string/jumbo v9, "Unable to download cloud video. network is not connected"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez v3, :cond_1

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v7, v4, v9

    aput-object v0, v4, v10

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v8, Lcom/sec/samsung/gallery/core/Event;->EVENT_NETWORK_WARNING:I

    invoke-virtual {v1, v8}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v9, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$1;

    invoke-direct {v9, p0, v1}, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;Lcom/sec/samsung/gallery/core/Event;)V

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->cancelTask()V

    new-instance v8, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;

    invoke-direct {v8, p0, v7, v0}, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;-><init>(Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->mSCloudVideoDownloadTask:Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->mSCloudVideoDownloadTask:Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;

    new-array v9, v9, [Ljava/lang/Void;

    invoke-virtual {v8, v9}, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x0

    move-object v1, p2

    check-cast v1, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v5

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_NETWORK_WARNING:I

    if-ne v5, v6, :cond_0

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v5, "SCloudVideoDownloadCmd"

    const-string/jumbo v6, "SCloud video download confirmed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    aget-object v4, v2, v7

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v0, v2, v5

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->cancelTask()V

    new-instance v5, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;

    invoke-direct {v5, p0, v4, v0}, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;-><init>(Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->mSCloudVideoDownloadTask:Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->mSCloudVideoDownloadTask:Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;

    new-array v6, v7, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$SCloudVideoDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v6, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$2;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd$2;-><init>(Lcom/sec/samsung/gallery/controller/SCloudVideoDownloadCmd;)V

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v5, "SCloudVideoDownloadCmd"

    const-string/jumbo v6, "SCloud video download cancelled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
