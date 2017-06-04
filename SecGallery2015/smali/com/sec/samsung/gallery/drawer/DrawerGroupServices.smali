.class public Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;
.super Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup;
.source "DrawerGroupServices.java"


# static fields
.field private static final MSG_CHECK_ACCOUNT:I = 0x1

.field private static final MSG_CHECK_ALL_ACCOUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DrawerGroupServices"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private final mHandler:Landroid/os/Handler;

.field private mIsDropBoxAccountActive:Z

.field private final mIsPickMode:Z

.field private final mNearbyDevicesObserver:Landroid/database/ContentObserver;

.field private mServicesGroup:Lcom/sec/samsung/gallery/drawer/Group;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/drawer/IDrawerCallback;Z)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/drawer/IDrawerCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mServicesGroup:Lcom/sec/samsung/gallery/drawer/Group;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mIsDropBoxAccountActive:Z

    new-instance v0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices$1;-><init>(Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices$2;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices$2;-><init>(Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mNearbyDevicesObserver:Landroid/database/ContentObserver;

    sget-object v0, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->SOCIAL_CLOUD:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->groupType:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mIsPickMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;Lcom/sec/samsung/gallery/core/ViewByFilterType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->checkAccount(Lcom/sec/samsung/gallery/core/ViewByFilterType;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->updateGroup()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->checkAccountAll(Z)V

    return-void
.end method

.method private addNearbyItem()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mServicesGroup:Lcom/sec/samsung/gallery/drawer/Group;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->groupType:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v1

    const v2, 0x7f0a0043

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;->createNearbyNormalItem(II)Lcom/sec/samsung/gallery/drawer/DrawerItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/drawer/Group;->addChild(Lcom/sec/samsung/gallery/drawer/DrawerItem;)V

    return-void
.end method

.method private addSocialCloudGroup(Lcom/sec/samsung/gallery/core/ViewByFilterType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->updateSocialCloudGroup(Lcom/sec/samsung/gallery/core/ViewByFilterType;)V

    return-void
.end method

.method private checkAccount(Lcom/sec/samsung/gallery/core/ViewByFilterType;)V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;->CLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->checkDropboxAccount(Z)V

    :cond_0
    return-void
.end method

.method private checkAccountAll(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->checkDropboxAccount(Z)V

    return-void
.end method

.method private checkDropboxAccount(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/cloud/CloudRefer;->isCloudSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/cloud/CloudRefer;->isCloudContentSyncOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mIsDropBoxAccountActive:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mIsDropBoxAccountActive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/cloud/CloudSource;->isCloudDataExist(Lcom/sec/android/gallery3d/app/GalleryApp;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mIsDropBoxAccountActive:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkNearbyItem()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    const-string/jumbo v6, "nearby"

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/data/DataManager;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->getNearbyContext()Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v5, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getCheckedDeviceList(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v5, "DrawerGroupServices"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "checkNearbyItem() : length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", bExist = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private sendMessageToCheckAccountAll()V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateGroup()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mServicesGroup:Lcom/sec/samsung/gallery/drawer/Group;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/samsung/gallery/drawer/Group;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->groupType:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/drawer/Group;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mServicesGroup:Lcom/sec/samsung/gallery/drawer/Group;

    :goto_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mIsDropBoxAccountActive:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/core/ViewByFilterType;->CLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->addSocialCloudGroup(Lcom/sec/samsung/gallery/core/ViewByFilterType;)V

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNearbyDMR:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mIsPickMode:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->updateNearbyItem()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mCallback:Lcom/sec/samsung/gallery/drawer/IDrawerCallback;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/drawer/IDrawerCallback;->onUpdate()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mServicesGroup:Lcom/sec/samsung/gallery/drawer/Group;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/Group;->removeChildren()V

    goto :goto_0
.end method

.method private updateNearbyItem()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->checkNearbyItem()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->addNearbyItem()V

    :cond_0
    return-void
.end method

.method private updateSocialCloudGroup(Lcom/sec/samsung/gallery/core/ViewByFilterType;)V
    .locals 4

    const v3, 0x7f0201bb

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->CLOUD:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseBaidu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->groupType:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v1

    const v2, 0x7f0a003f

    invoke-static {v1, v2, v3, p1}, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->createSocialCloudItem(IIILcom/sec/samsung/gallery/core/ViewByFilterType;)Lcom/sec/samsung/gallery/drawer/DrawerItem;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mServicesGroup:Lcom/sec/samsung/gallery/drawer/Group;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/drawer/Group;->addChild(Lcom/sec/samsung/gallery/drawer/DrawerItem;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->groupType:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v1

    const v2, 0x7f0a014b

    invoke-static {v1, v2, v3, p1}, Lcom/sec/samsung/gallery/drawer/DrawerItemSocialCloud;->createSocialCloudItem(IIILcom/sec/samsung/gallery/core/ViewByFilterType;)Lcom/sec/samsung/gallery/drawer/DrawerItem;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getGroupForServies()Lcom/sec/samsung/gallery/drawer/Group;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mServicesGroup:Lcom/sec/samsung/gallery/drawer/Group;

    return-object v0
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNearbyDMR:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mNearbyDevicesObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mNearbyDevicesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNearbyDMR:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "nearby://nearby"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->mNearbyDevicesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupServices;->sendMessageToCheckAccountAll()V

    return-void
.end method
