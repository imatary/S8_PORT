.class public Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;
.super Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup;
.source "DrawerGroupDefaultExpansion.java"


# static fields
.field static final CHECK_ALL:I = 0x2

.field static final CHECK_EXPAND_MENU_ITEMS:I = 0x1

.field static final CHECK_LOCAL_RELATED:I = 0x0

.field private static final MSG_ADD_NOTIFY_DATA_SET_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DrwerGrpDfaultExpansion"


# instance fields
.field private mCategoriesVisible:Z

.field private mChannelCount:I

.field private mChannelVisible:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mDefaultExpansionGroup:Lcom/sec/samsung/gallery/drawer/Group;

.field private mEventAlbumVisible:Z

.field private mExistLocalContents:Z

.field private mFavouritesVisible:Z

.field private mGroupUpdateHandler:Landroid/os/Handler;

.field private final mHandler:Landroid/os/Handler;

.field private mMtpVisible:Z

.field private mUpdateThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/drawer/IDrawerCallback;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/drawer/IDrawerCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mDefaultExpansionGroup:Lcom/sec/samsung/gallery/drawer/Group;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mEventAlbumVisible:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mChannelVisible:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mCategoriesVisible:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mFavouritesVisible:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mExistLocalContents:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mMtpVisible:Z

    new-instance v0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$1;-><init>(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->DEFAULT_EXPANSION:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->groupType:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->updateDefaultExpansionItem()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mGroupUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->checkLocalRelatedItem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->checkFavoritesItem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->checkChannelItem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->checkDeviceItem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkChannelItem()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->getEventCount()I

    move-result v1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCountIconInSpinner:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getNewEventCount(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mChannelCount:I

    iget v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mChannelCount:I

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private checkDeviceItem()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "mtpMode"

    invoke-static {v2, v3, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mMtpVisible:Z

    if-eq v0, v2, :cond_0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mMtpVisible:Z

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private checkFavoritesItem()Z
    .locals 12

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "is_favorite=1 and is_hide != 1"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "content://media/external/file"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "DrwerGrpDfaultExpansion"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v10, 0x1

    :cond_0
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mFavouritesVisible:Z

    if-eq v0, v10, :cond_1

    iput-boolean v10, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mFavouritesVisible:Z

    const/4 v7, 0x1

    :cond_1
    return v7

    :cond_2
    const-string/jumbo v0, "is_favorite=1"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "DrwerGrpDfaultExpansion"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private checkLocalRelatedItem()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isExistLocalContents(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mExistLocalContents:Z

    if-eq v2, v0, :cond_0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mExistLocalContents:Z

    const/4 v1, 0x1

    :cond_0
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCategoryView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mCategoriesVisible:Z

    :cond_1
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mEventAlbumVisible:Z

    :cond_2
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mChannelVisible:Z

    :cond_3
    return v1
.end method

.method private setGroupUpdateHandler()V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mGroupUpdateHandler:Landroid/os/Handler;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mUpdateThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_1

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "UpdateDrawerGroupDefaultExpansionThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mUpdateThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "looper is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DrwerGrpDfaultExpansion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Thread is already started."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$3;

    invoke-direct {v2, p0, v1}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$3;-><init>(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mGroupUpdateHandler:Landroid/os/Handler;

    :cond_3
    return-void
.end method

.method private updateCategoriesItem()V
    .locals 5

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCategoryView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mCategoriesVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mDefaultExpansionGroup:Lcom/sec/samsung/gallery/drawer/Group;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->groupType:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v1

    const v2, 0x7f0a0440

    const v3, 0x7f0201be

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FILTER:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;->createDefaultExpansionItem(IIILcom/sec/samsung/gallery/core/TabTagType;)Lcom/sec/samsung/gallery/drawer/DrawerItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/drawer/Group;->addChild(Lcom/sec/samsung/gallery/drawer/DrawerItem;)V

    :cond_0
    return-void
.end method

.method private updateChannelItem()V
    .locals 5

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mChannelVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mDefaultExpansionGroup:Lcom/sec/samsung/gallery/drawer/Group;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->groupType:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v1

    const v2, 0x7f0a0441

    const v3, 0x7f0201bc

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;->createDefaultExpansionItem(IIILcom/sec/samsung/gallery/core/TabTagType;)Lcom/sec/samsung/gallery/drawer/DrawerItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/drawer/Group;->addChild(Lcom/sec/samsung/gallery/drawer/DrawerItem;)V

    :cond_0
    return-void
.end method

.method private updateDefaultExpansionItem()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mDefaultExpansionGroup:Lcom/sec/samsung/gallery/drawer/Group;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/Group;->removeChildren()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->updateEventItem()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->updateChannelItem()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->updateCategoriesItem()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->updateFavouritesItem()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->updateDeviceItem()V

    :cond_0
    return-void
.end method

.method private updateDeviceItem()V
    .locals 6

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "mtpMode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "mtpDeviceName"

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadStringKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mMtpVisible:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mDefaultExpansionGroup:Lcom/sec/samsung/gallery/drawer/Group;

    iget-object v3, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->groupType:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v3

    const v4, 0x7f0201be

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v3, v0, v4, v5}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;->createDefaultExpansionItem(ILjava/lang/String;ILcom/sec/samsung/gallery/core/TabTagType;)Lcom/sec/samsung/gallery/drawer/DrawerItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/drawer/Group;->addChild(Lcom/sec/samsung/gallery/drawer/DrawerItem;)V

    :cond_0
    return-void
.end method

.method private updateEventItem()V
    .locals 5

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mEventAlbumVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mDefaultExpansionGroup:Lcom/sec/samsung/gallery/drawer/Group;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->groupType:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v1

    const v2, 0x7f0a0441

    const v3, 0x7f0201bc

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;->createDefaultExpansionItem(IIILcom/sec/samsung/gallery/core/TabTagType;)Lcom/sec/samsung/gallery/drawer/DrawerItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/drawer/Group;->addChild(Lcom/sec/samsung/gallery/drawer/DrawerItem;)V

    :cond_0
    return-void
.end method

.method private updateFavouritesItem()V
    .locals 5

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFavoriteInCategory:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mFavouritesVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mDefaultExpansionGroup:Lcom/sec/samsung/gallery/drawer/Group;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->groupType:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;->ordinal()I

    move-result v1

    const v2, 0x7f0a0442

    const v3, 0x7f0201bd

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FAVORITES:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/drawer/DrawerItemDefaultExpansion;->createDefaultExpansionItem(IIILcom/sec/samsung/gallery/core/TabTagType;)Lcom/sec/samsung/gallery/drawer/DrawerItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/drawer/Group;->addChild(Lcom/sec/samsung/gallery/drawer/DrawerItem;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getEventCount()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mChannelCount:I

    return v0
.end method

.method public getGroup()Lcom/sec/samsung/gallery/drawer/Group;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mDefaultExpansionGroup:Lcom/sec/samsung/gallery/drawer/Group;

    return-object v0
.end method

.method public initialize()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->updateDefaultExpansionGroup(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mCallback:Lcom/sec/samsung/gallery/drawer/IDrawerCallback;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/drawer/IDrawerCallback;->onUpdate()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mUpdateThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mUpdateThread:Landroid/os/HandlerThread;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mGroupUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mGroupUpdateHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public updateDefaultExpansionGroup(I)V
    .locals 3

    const-string/jumbo v0, "DrwerGrpDfaultExpansion"

    const-string/jumbo v1, "drawer updateViewByExGroup+"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->setGroupUpdateHandler()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mDefaultExpansionGroup:Lcom/sec/samsung/gallery/drawer/Group;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/drawer/Group;

    iget-object v1, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->groupType:Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/drawer/Group;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/drawer/AbstractDrawerGroup$DrawerGroupType;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mDefaultExpansionGroup:Lcom/sec/samsung/gallery/drawer/Group;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->updateChannelItem()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion$2;-><init>(Lcom/sec/samsung/gallery/drawer/DrawerGroupDefaultExpansion;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
