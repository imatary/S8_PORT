.class public Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;
.super Lcom/sec/android/gallery3d/app/TabActivityState;
.source "NearbyViewState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$NearbyItemClickListener;
    }
.end annotation


# static fields
.field private static final MSG_REMOVED_DEIVCES:I = 0x2

.field private static final MSG_UPDATE_DEIVCES:I = 0x1

.field private static final REMOVED_DEIVCES_MSG_DELAY:I = 0xc8

.field private static final SUPPORT_NEARBY_DEVICE_MENU:Z

.field private static final TAG:Ljava/lang/String; = "NearbyViewState"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private final mDeviceIconDownloadHandler:Landroid/os/Handler;

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private final mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;

.field private final mNearbyDevicesObserver:Landroid/database/ContentObserver;

.field private mNearbyViewLayout:Landroid/view/ViewGroup;

.field private mRootView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportNearbyDeviceMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->SUPPORT_NEARBY_DEVICE_MENU:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$1;-><init>(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mNearbyDevicesObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$2;-><init>(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mDeviceIconDownloadHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$3;-><init>(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->updateNearbyItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->startTimeViewState()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->selectItem(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private adjustLayout()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mNearbyViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarSize(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mNearbyViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->calItemTitleViewWidth()V

    return-void
.end method

.method private getNearbyViewLayout()Landroid/view/ViewGroup;
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0400d3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mRootView:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    return-object v1
.end method

.method private initView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mNearbyViewLayout:Landroid/view/ViewGroup;

    const v1, 0x7f1201f8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$NearbyItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$NearbyItemClickListener;-><init>(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private selectItem(I)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "6002"

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;

    invoke-virtual {v6, p1}, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v0, v3

    check-cast v0, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;->getMediaSetPath()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "NearbyViewState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "nearby Selected : mediaSetPath = [ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v7, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v7, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALL:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "is_refresh"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v6

    const-class v7, Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-virtual {v6, v7, v1}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "NearbyViewState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IndexOutOfBoundsException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "NearbyViewState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "selectItem() : ignore selected item, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " list adapter size is changed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private startTimeViewState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState$4;-><init>(Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateNearbyItems()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    const-string/jumbo v9, "nearby"

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/data/DataManager;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    if-nez v6, :cond_1

    move-object v2, v7

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->getNearbyDeviceSet()Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;

    move-result-object v5

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->getNearbyContext()Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v4

    sget-object v8, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v4, v8}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getCheckedDeviceList(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string/jumbo v8, "NearbyViewState"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateNearbyItems : length ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_2

    move-object v2, v7

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    const/4 v8, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/allshare/Device;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mDeviceIconDownloadHandler:Landroid/os/Handler;

    invoke-static {v8, v5, v7, v9}, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;->createNearByItem(ILcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;Lcom/samsung/android/allshare/Device;Landroid/os/Handler;)Lcom/sec/samsung/gallery/drawer/DrawerItem;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/drawer/DrawerItemNearby;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getSAScreenId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "601"

    return-object v0
.end method

.method public isTabEnabledActivityState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBackPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1080"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->SUPPORT_NEARBY_DEVICE_MENU:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v1, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/TabActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->adjustLayout()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "NearbyViewState onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-nez v0, :cond_0

    const-string/jumbo v0, "NearbyViewState"

    const-string/jumbo v1, "mActivity is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->hidePreDisplayScreen()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    new-instance v0, Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mContentResolver:Landroid/content/ContentResolver;

    sget-boolean v0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->SUPPORT_NEARBY_DEVICE_MENU:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->initSpinner()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1200d5

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mRootView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->getNearbyViewLayout()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mNearbyViewLayout:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->initView()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "NearbyViewState onCreate End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "NearbyViewState onPause Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mNearbyDevicesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mNearbyViewLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mNearbyViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "NearbyViewState onPause End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method protected onResume()V
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    const-string/jumbo v3, "Gallery_Performance"

    const-string/jumbo v4, "NearbyViewState onResume Start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "NearbyViewState"

    const-string/jumbo v4, "onResume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onResume()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->setCurrentClusterType(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3, v8}, Lcom/sec/android/gallery3d/app/GalleryApp;->setIsPhotoPage(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_NEARBY:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    sget-boolean v3, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->SUPPORT_NEARBY_DEVICE_MENU:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v4, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v4, v5}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "nearby://nearby"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mNearbyDevicesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v3, v8}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    :cond_0
    new-instance v3, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->updateNearbyItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;->setItems(Ljava/util/List;)V

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mNearbyViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mRootView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mNearbyViewLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/NearbyMediaSetAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->adjustLayout()V

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;->onResume()V

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    const-string/jumbo v3, "Gallery_Performance"

    const-string/jumbo v4, "NearbyViewState onResume End"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v4, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v4, v5}, Lcom/sec/samsung/gallery/view/nearbyview/NearbyActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
