.class public Lcom/sec/samsung/gallery/controller/CheckToShowCloudTipCard;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "CheckToShowCloudTipCard.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# instance fields
.field private mCloudTipCard:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private changeCloudTipCardState()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CheckToShowCloudTipCard;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "is_cloud_tipcard_checked_pref"

    invoke-static {v1, v2, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CheckToShowCloudTipCard;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/controller/CheckToShowCloudTipCard;->mCloudTipCard:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CheckToShowCloudTipCard;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->isSCloudContentSyncOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CheckToShowCloudTipCard;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->samsungAccountExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CheckToShowCloudTipCard;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "is_cloud_tipcard_checked_pref"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setNeedToShowCloudTipCard(Z)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/samsung/gallery/controller/CheckToShowCloudTipCard;->mCloudTipCard:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CheckToShowCloudTipCard;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->isSCloudContentSyncOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CheckToShowCloudTipCard;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->samsungAccountExist(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setNeedToShowCloudTipCard(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CheckToShowCloudTipCard;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "is_cloud_tipcard_checked_pref"

    invoke-static {v1, v2, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setNeedToShowCloudTipCard(Z)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 2

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/CheckToShowCloudTipCard;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/controller/CheckToShowCloudTipCard;->mCloudTipCard:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CheckToShowCloudTipCard;->changeCloudTipCardState()V

    return-void
.end method
