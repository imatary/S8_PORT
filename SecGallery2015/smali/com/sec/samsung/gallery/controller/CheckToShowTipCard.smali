.class public Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "CheckToShowTipCard.java"

# interfaces
.implements Lorg/puremvc/java/multicore/interfaces/ICommand;


# static fields
.field private static final CHROME_PACKAGE:Ljava/lang/String; = "com.android.chrome"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private checkCloudTipCardStatus()Z
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getNeedToShowCloudTipCard()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "is_cloud_tipcard_checked_pref"

    invoke-static {v2, v3, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "CHECK_TO_SHOW_CLOUD_TIP_CARD"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mContext:Landroid/content/Context;

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getNeedToShowCloudTipCard()Z

    move-result v1

    goto :goto_0
.end method

.method private checkPictureFrameTipCardStatus()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getNeedToShowPictureFrameTipCard()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "is_picture_frame_tipcard_checked_pref"

    invoke-static {v2, v3, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.widget.pictureframe"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "CHECK_TO_SHOW_PICTURE_FRAME_TIP_CARD"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mContext:Landroid/content/Context;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getNeedToShowPictureFrameTipCard()Z

    move-result v1

    goto :goto_0
.end method

.method private checkTipCard()V
    .locals 2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->checkToShowGoToURLTipCard()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->checkCloudTipCardStatus()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->checkToShowSecureFolderTipCard()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->checkPictureFrameTipCardStatus()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->checkVideoAppTipCardStatus()Z

    goto :goto_0
.end method

.method private checkToShowGoToURLTipCard()Z
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getNeedToShowGoToUrlTipCard()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "is_go_to_url_tip_card_checked_pref"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGoToURL:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v0, v4, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setNeedToShowGoToUrlTipCard(Z)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getNeedToShowGoToUrlTipCard()Z

    move-result v1

    goto :goto_0
.end method

.method private checkToShowSecureFolderTipCard()Z
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getNeedToShowSecureFolderTipCard()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "is_secure_folder_tipcard_checked_pref"

    invoke-static {v2, v3, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "CHECK_TO_SHOW_SECURE_FOLDER_TIP_CARD"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mContext:Landroid/content/Context;

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getNeedToShowSecureFolderTipCard()Z

    move-result v1

    goto :goto_0
.end method

.method private checkVideoAppTipCardStatus()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getNeedToShowVideoAppTipCard()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "is_video_app_tipcard_checked_pref"

    invoke-static {v2, v3, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVideoAppTipCard:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.videolist"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "CHECK_TO_SHOW_VIDEO_APP_TIP_CARD"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mContext:Landroid/content/Context;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getNeedToShowVideoAppTipCard()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 3

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->checkTipCard()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CheckToShowTipCard;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "CHECK_TO_SHOW_TIP_CARD_FINISHED"

    invoke-virtual {v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    return-void
.end method
