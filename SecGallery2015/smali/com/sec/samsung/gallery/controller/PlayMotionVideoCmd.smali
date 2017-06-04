.class public Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "PlayMotionVideoCmd.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;,
        Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$MotionCmdType;
    }
.end annotation


# static fields
.field private static final MOTIN_VIEWER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.app.slowmotion"

.field private static final MOTIN_VIEWER_SIMPLE_CLASS_NAME:Ljava/lang/String; = "com.samsung.app.slowmotion.slowmotionactivity.SlowMotionActivity"

.field private static final TAG:Ljava/lang/String; = "PlayMotionVideoCmd"

.field private static mPlayUriTask:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mPlayUriTask:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->sendResponseIfPlaySuccess()V

    return-void
.end method

.method public static cancelTask()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mPlayUriTask:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mPlayUriTask:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mPlayUriTask:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;

    return-void
.end method

.method private launchMotionPlayer(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$MotionCmdType;)V
    .locals 6

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "PlayMotionVideoCmd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "launchMotionPlayer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryActivity;->disableFinishingAtSecureLock()V

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.app.slowmotion"

    const-string/jumbo v4, "com.samsung.app.slowmotion.slowmotionactivity.SlowMotionActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "uri"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v3, "key_recorded_mode"

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$MotionCmdType;->ordinal()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "original_path"

    invoke-static {p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->getOriginalFilePath(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->sendResponseIfPlaySuccess()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0077

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private sendResponseIfPlaySuccess()V
    .locals 6

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "CrossVideoPlayer"

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0578

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    move-object v6, v9

    check-cast v6, [Ljava/lang/Object;

    aget-object v9, v6, v11

    check-cast v9, Landroid/content/Context;

    iput-object v9, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mContext:Landroid/content/Context;

    aget-object v4, v6, v12

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    aget-object v0, v6, v13

    check-cast v0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$MotionCmdType;

    instance-of v9, v4, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;

    if-nez v9, :cond_1

    instance-of v9, v4, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;

    if-eqz v9, :cond_4

    :cond_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v2, :cond_2

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mContext:Landroid/content/Context;

    const v10, 0x7f0a02b7

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mContext:Landroid/content/Context;

    invoke-static {v9, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v9, "PlayMotionVideoCmd"

    const-string/jumbo v10, "Unable to play motion cloud video. network is not connected"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "network_warning_play_pref"

    invoke-static {v9, v10, v11}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_3

    new-array v5, v13, [Ljava/lang/Object;

    aput-object v4, v5, v11

    aput-object v0, v5, v12

    invoke-static {}, Lcom/sec/samsung/gallery/core/Event$Builder;->create()Lcom/sec/samsung/gallery/core/Event;

    move-result-object v1

    sget v9, Lcom/sec/samsung/gallery/core/Event;->EVENT_NETWORK_WARNING:I

    invoke-virtual {v1, v9}, Lcom/sec/samsung/gallery/core/Event;->setType(I)Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v1, v5}, Lcom/sec/samsung/gallery/core/Event;->setData(Ljava/lang/Object;)Lcom/sec/samsung/gallery/core/Event;

    new-instance v9, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    iget-object v10, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v1}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;-><init>(Landroid/content/Context;Lcom/sec/samsung/gallery/core/Event;)V

    iput-object v9, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    invoke-virtual {v9, p0}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->addObserver(Ljava/util/Observer;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->showDialog()V

    iget-object v9, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "network_warning_play_pref"

    invoke-static {v9, v10, v12}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->cancelTask()V

    new-instance v9, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;

    invoke-direct {v9, p0, v4, v0}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;-><init>(Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$MotionCmdType;)V

    sput-object v9, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mPlayUriTask:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;

    sget-object v9, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mPlayUriTask:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;

    new-array v10, v11, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    invoke-direct {p0, v4, v0}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->launchMotionPlayer(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$MotionCmdType;)V

    goto/16 :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x0

    move-object v1, p2

    check-cast v1, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v5

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_NETWORK_WARNING:I

    if-ne v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, [Ljava/lang/Object;

    aget-object v2, v3, v7

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v5, 0x1

    aget-object v0, v3, v5

    check-cast v0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$MotionCmdType;

    invoke-static {}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->cancelTask()V

    new-instance v5, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;

    invoke-direct {v5, p0, v2, v0}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;-><init>(Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$MotionCmdType;)V

    sput-object v5, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mPlayUriTask:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;

    sget-object v5, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mPlayUriTask:Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;

    new-array v6, v7, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd$PlayUriTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/PlayMotionVideoCmd;->mNetworkWarningDialog:Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/common/NetworkWarningDialog;->dismissDialog()V

    :cond_1
    return-void
.end method
