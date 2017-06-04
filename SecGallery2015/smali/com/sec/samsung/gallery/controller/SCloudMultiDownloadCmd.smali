.class public Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "SCloudMultiDownloadCmd.java"

# interfaces
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;,
        Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;
    }
.end annotation


# static fields
.field private static final CLOUD_FAIL:Z = false

.field private static final CLOUD_SUCCESS:Z = true

.field private static final DIALOG_STRING_MAP:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOWNLOAD_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SCloudMultiDownloadCmd"

.field private static final TOAST_STRING_MAP:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->DOWNLOAD_PATH:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->DIALOG_STRING_MAP:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->DIALOG_STRING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_ITEMS:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    const v2, 0x7f0a013b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->DIALOG_STRING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_IMAGES:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    const v2, 0x7f0a013a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->DIALOG_STRING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_VIDEOS:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    const v2, 0x7f0a013f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->DIALOG_STRING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_IMAGE:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    const v2, 0x7f0a0139

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->DIALOG_STRING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_VIDEO:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    const v2, 0x7f0a013e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->TOAST_STRING_MAP:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->TOAST_STRING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_ITEMS:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    const v2, 0x7f0a0232

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->TOAST_STRING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_IMAGES:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    const v2, 0x7f0a0210

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->TOAST_STRING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_VIDEOS:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    const v2, 0x7f0a04c8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->TOAST_STRING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_IMAGE:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    const v2, 0x7f0a0204

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->TOAST_STRING_MAP:Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;->DOWNLOAD_VIDEO:Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$DownloadCmdType;

    const v2, 0x7f0a04c1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->DOWNLOAD_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/LinkedHashMap;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->DIALOG_STRING_MAP:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/LinkedHashMap;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->TOAST_STRING_MAP:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method private getCloudItemList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v4}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v5, v3, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;

    if-nez v5, :cond_0

    instance-of v5, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-nez v5, :cond_0

    instance-of v5, v3, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v5, :cond_1

    :cond_0
    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v4, v7

    check-cast v4, [Ljava/lang/Object;

    aget-object v7, v4, v9

    check-cast v7, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v7, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->getCloudItemList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v10, "network_warning_edit_pref"

    invoke-static {v7, v10, v9}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1

    move v2, v8

    :goto_1
    if-eqz v2, :cond_2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v1, v3, v9

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v7, Lcom/sec/samsung/gallery/core/Event;->EVENT_NETWORK_WARNING:I

    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    new-instance v7, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v7, v9, v0}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;-><init>(Landroid/content/Context;Lcom/sec/samsung/gallery/core/Event;)V

    iput-object v7, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    invoke-virtual {v7, p0}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->addObserver(Ljava/util/Observer;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->showDialog()V

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v9, "network_warning_edit_pref"

    invoke-static {v7, v9, v8}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    move v2, v9

    goto :goto_1

    :cond_2
    new-instance v6, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v6, v7, v1}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/util/ArrayList;)V

    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v8, v9, [Ljava/lang/Void;

    invoke-virtual {v6, v7, v8}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a02b7

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v5

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_NETWORK_WARNING:I

    if-ne v5, v6, :cond_1

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    aget-object v1, v2, v7

    check-cast v1, Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v4, v5, v1}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/util/ArrayList;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v6, v7, [Ljava/lang/Void;

    invoke-virtual {v4, v5, v6}, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd$SCloudDownloadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->dismissDialog()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/samsung/gallery/controller/SCloudMultiDownloadCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    :cond_1
    return-void
.end method
