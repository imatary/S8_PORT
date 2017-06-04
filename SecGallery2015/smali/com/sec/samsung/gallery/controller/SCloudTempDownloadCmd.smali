.class public Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "SCloudTempDownloadCmd.java"

# interfaces
.implements Ljava/util/Observer;
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;,
        Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_PATH:Ljava/lang/String;

.field private static final SCAN_WAITING_COUNT:I = 0x5

.field private static final SCAN_WAITING_TIME_MILI:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "SCloudTempDownload"


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private mNeedEditorResult:Z

.field private mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->DOWNLOAD_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mNeedEditorResult:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->DOWNLOAD_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mNeedEditorResult:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-object v0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v4, v8

    check-cast v4, [Ljava/lang/Object;

    aget-object v8, v4, v10

    check-cast v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v8, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aget-object v1, v4, v9

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v7, v4, v12

    check-cast v7, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    sget-object v8, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_EDIT:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    if-ne v7, v8, :cond_0

    const/4 v8, 0x3

    aget-object v8, v4, v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mNeedEditorResult:Z

    :cond_0
    new-instance v8, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v11, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v8, v11}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v11, "network_warning_edit_pref"

    invoke-static {v8, v11, v10}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_2

    sget-object v8, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_EDIT:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    if-eq v7, v8, :cond_1

    sget-object v8, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_AGIF:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    if-eq v7, v8, :cond_1

    sget-object v8, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;->DOWNLOAD_360_CONTENTS:Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    if-ne v7, v8, :cond_2

    :cond_1
    move v2, v9

    :goto_0
    if-eqz v2, :cond_3

    new-array v3, v12, [Ljava/lang/Object;

    aput-object v1, v3, v10

    aput-object v7, v3, v9

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v0

    sget v8, Lcom/sec/samsung/gallery/core/Event;->EVENT_NETWORK_WARNING:I

    invoke-virtual {v0, v8}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    new-instance v8, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    iget-object v10, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v8, v10, v0}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;-><init>(Landroid/content/Context;Lcom/sec/samsung/gallery/core/Event;)V

    iput-object v8, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    invoke-virtual {v8, p0}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->addObserver(Ljava/util/Observer;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->showDialog()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v10, "network_warning_edit_pref"

    invoke-static {v8, v10, v9}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_1
    return-void

    :cond_2
    move v2, v10

    goto :goto_0

    :cond_3
    new-instance v6, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;

    invoke-direct {v6, p0, v1, v7}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;-><init>(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;)V

    new-array v8, v10, [Ljava/lang/Void;

    invoke-virtual {v6, v8}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f0a02b7

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v6

    sget v7, Lcom/sec/samsung/gallery/core/Event;->EVENT_NETWORK_WARNING:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    aget-object v1, v2, v8

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v6, 0x1

    aget-object v5, v2, v6

    check-cast v5, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;

    new-instance v4, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;

    invoke-direct {v4, p0, v1, v5}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;-><init>(Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$DownloadCmdType;)V

    new-array v6, v8, [Ljava/lang/Void;

    invoke-virtual {v4, v6}, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd$SCloudDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->dismissDialog()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/samsung/gallery/controller/SCloudTempDownloadCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    :cond_1
    return-void
.end method
