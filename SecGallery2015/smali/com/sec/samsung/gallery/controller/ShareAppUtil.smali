.class Lcom/sec/samsung/gallery/controller/ShareAppUtil;
.super Ljava/lang/Object;
.source "ShareAppUtil.java"


# static fields
.field private static final ACTIVITY_INFO_NAME_BT:Ljava/lang/String; = "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

.field private static final ACTIVITY_INFO_NAME_FACEBOOK:Ljava/lang/String; = "com.facebook.katana.activity.composer.ImplicitShareIntentHandler"

.field private static final ACTIVITY_INFO_NAME_FLIP_BOARD:Ljava/lang/String; = "flipboard.activities.ComposeActivity"

.field private static final ACTIVITY_INFO_NAME_GROUP_CAST_SESSION:Ljava/lang/String; = "com.samsung.groupcast.sessioncreator.SessionCreatorActivity"

.field private static final ACTIVITY_INFO_NAME_GROUP_CAST_STARTER:Ljava/lang/String; = "com.samsung.groupcast.start.StartActivityForExternalApp"

.field private static final ACTIVITY_INFO_NAME_SECURE_FOLDER_STORE:Ljava/lang/String; = "com.sec.knox.switcher.B2CStoreFilesActivity"

.field private static final ACTIVITY_INFO_NAME_SECURE_FOLDER_SWITCH:Ljava/lang/String; = "com.sec.knox.switcher.SwitchSfActivity"

.field private static final ACTIVITY_INFO_NAME_WIFI_DIRECT:Ljava/lang/String; = "com.sec.android.app.FileShareClient.DeviceSelectActivity"

.field private static final APP_DEFAULT_MIME_TYPE:Ljava/lang/String; = "application/octet-stream"

.field private static final PACKAGE_QUICK_CONNECT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ShareAppUtil"

.field private static final USE_LINKSHARE_DATA_SENDER:Z


# instance fields
.field private isImageNotCached:Z

.field private mContext:Landroid/content/Context;

.field private final mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

.field private mIsSCloudItemExist:Z

.field private mIsSCloudVideoExist:Z

.field private mIsShareInteractivePanorama:Z

.field private mIsShareMotionPanorama:Z

.field private mMimeType:Ljava/lang/String;

.field private final mOnlyLinkShareData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private final mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

.field private mTypeBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.samsung.android.oneconnect"

    :goto_0
    sput-object v0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->PACKAGE_QUICK_CONNECT:Ljava/lang/String;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLinkShareDataSender:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->USE_LINKSHARE_DATA_SENDER:Z

    return-void

    :cond_0
    const-string/jumbo v0, "com.samsung.android.qconnect"

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mMimeType:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mContext:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->isImageNotCached:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mIsShareInteractivePanorama:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mIsShareMotionPanorama:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mIsSCloudItemExist:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mIsSCloudVideoExist:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mContext:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mOnlyLinkShareData:Ljava/util/ArrayList;

    return-void
.end method

.method private existCloudImages()Z
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v6

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_5

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaObject;

    if-nez v5, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v10, v5, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v10, :cond_4

    move-object v7, v5

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    invoke-virtual {v7, v9, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v2, :cond_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    instance-of v10, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    if-eqz v10, :cond_2

    :goto_2
    return v8

    :cond_4
    move-object v2, v5

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v10, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    if-eqz v10, :cond_0

    goto :goto_2

    :cond_5
    move v8, v9

    goto :goto_2
.end method

.method private getUriList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mTypeBits:I

    instance-of v2, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->getUriListFromAlbums(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->getUriListFromMedias(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method private getUriListFromAlbums(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v0, 0x0

    monitor-enter p1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v7, v4, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v7, :cond_0

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v7

    add-int/2addr v0, v7

    const/16 v7, 0x1f4

    if-le v0, v7, :cond_0

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-nez v7, :cond_0

    monitor-exit p1

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    if-eqz v7, :cond_3

    instance-of v7, v3, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaItemList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->getUriListFromMedias(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mStateManager:Lcom/sec/android/gallery3d/app/StateManager;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v7

    instance-of v7, v7, Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    if-eqz v7, :cond_3

    instance-of v7, v3, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-eqz v7, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->getUriListFromMedias(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_5
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private getUriListFromMedias(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mOnlyLinkShareData:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaObject;

    if-nez v7, :cond_1

    const-string/jumbo v11, "ShareAppUtil"

    const-string/jumbo v13, "mediaObject is null"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v11, "ShareAppUtil"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v10

    :cond_1
    :try_start_1
    instance-of v11, v7, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v11, :cond_2

    check-cast v7, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getValidSharedEventItem()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v7

    :cond_2
    instance-of v11, v7, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v11, :cond_c

    move-object v0, v7

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v11

    if-eqz v11, :cond_0

    :cond_3
    instance-of v11, v6, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;

    if-eqz v11, :cond_5

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getCacheStatus()I

    move-result v11

    if-eqz v11, :cond_4

    move-object v0, v6

    check-cast v0, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->getCachedPath()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_5

    :cond_4
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->isImageNotCached:Z

    goto :goto_0

    :cond_5
    sget-boolean v11, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->USE_LINKSHARE_DATA_SENDER:Z

    if-eqz v11, :cond_7

    instance-of v11, v6, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    if-eqz v11, :cond_7

    move-object v0, v6

    check-cast v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isCloudOnlyItem()Z

    move-result v11

    if-nez v11, :cond_6

    move-object v0, v6

    check-cast v0, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/UnionMediaItem;->isLocalCloudItem()Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v11, "cloud_server_id"

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getServerId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v11, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mOnlyLinkShareData:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    instance-of v11, v6, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-nez v11, :cond_8

    instance-of v11, v6, Lcom/sec/android/gallery3d/data/UnionSCloudItem;

    if-eqz v11, :cond_a

    :cond_8
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mIsSCloudItemExist:Z

    instance-of v11, v6, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;

    if-nez v11, :cond_9

    instance-of v11, v6, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;

    if-eqz v11, :cond_a

    :cond_9
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mIsSCloudVideoExist:Z

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mIsShareInteractivePanorama:Z

    if-nez v11, :cond_b

    const-wide/32 v14, 0x100000

    invoke-virtual {v6, v14, v15}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v11

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mIsShareInteractivePanorama:Z

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mIsShareMotionPanorama:Z

    if-nez v11, :cond_c

    const-wide/32 v14, 0x200000

    invoke-virtual {v6, v14, v15}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v11

    if-eqz v11, :cond_d

    const-wide/32 v14, 0x1000000

    invoke-virtual {v6, v14, v15}, Lcom/sec/android/gallery3d/data/MediaItem;->hasSubAttribute(J)Z

    move-result v11

    if-eqz v11, :cond_d

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mIsShareMotionPanorama:Z

    :cond_c
    instance-of v11, v7, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v11, :cond_e

    move-object v0, v7

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->isGolf()Z

    move-result v11

    if-eqz v11, :cond_e

    sget-object v11, Lcom/sec/android/gallery3d/golf/GolfMgr;->GOLF_TEMP_PATH:Ljava/lang/String;

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v11, v13, v14}, Lcom/sec/android/gallery3d/golf/GolfMgr;->getJpgTempFilePath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mTypeBits:I

    or-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mTypeBits:I

    goto/16 :goto_0

    :cond_d
    const/4 v11, 0x0

    goto :goto_2

    :cond_e
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    instance-of v11, v7, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v11, :cond_f

    move-object v0, v7

    check-cast v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getShareUri()Landroid/net/Uri;

    move-result-object v3

    :cond_f
    invoke-virtual {v3}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/sec/samsung/gallery/lib/factory/UserHandleWrapper;->myUserId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "@"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    :cond_10
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mTypeBits:I

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v13

    or-int/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mTypeBits:I

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mTypeBits:I

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->getMimeType(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mMimeType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method checkContentsType()I
    .locals 7

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaObject;

    if-nez v3, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v6

    if-ne v6, v5, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v5, 0x6

    :cond_2
    :goto_2
    return v5

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    if-nez v0, :cond_2

    const/4 v5, 0x4

    goto :goto_2
.end method

.method createFilterList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->existCloudImages()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "com.samsung.groupcast.sessioncreator.SessionCreatorActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "com.samsung.groupcast.start.StartActivityForExternalApp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "flipboard.activities.ComposeActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "com.sec.android.app.FileShareClient.DeviceSelectActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "com.facebook.katana.activity.composer.ImplicitShareIntentHandler"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mIsSCloudItemExist:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "com.sec.knox.switcher.SwitchSfActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "com.sec.knox.switcher.B2CStoreFilesActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method createIntentForShare(Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v4, :cond_1

    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mMimeType:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, "application/octet-stream"

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mMimeType:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "exit_on_sent"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0

    :cond_1
    const-string/jumbo v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0
.end method

.method existImageNotCached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->isImageNotCached:Z

    return v0
.end method

.method getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlyLinkShareData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mOnlyLinkShareData:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSelectedItemPathForSmartView()Lcom/sec/android/gallery3d/data/Path;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaObject;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method getSupportChangePlayer()Ljava/lang/Boolean;
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNearby:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isDisabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNearbyDMR:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isDisabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-eq v3, v1, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaObject;->getSupportedOperations()J

    move-result-wide v4

    const-wide v6, 0x80000000L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method getSupportPrint()Ljava/lang/Boolean;
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePrintMenuInActionbar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-eq v3, v1, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaObject;->getSupportedOperations()J

    move-result-wide v4

    const-wide/high16 v6, 0x1000000000000000L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method getSupportQuickConnect()Ljava/lang/Boolean;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsAFWMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->PACKAGE_QUICK_CONNECT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/PackagesMonitor;->checkPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method getSupportScreenMirroring()Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsMassModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseWfd:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isDisabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method getSupportScreenSharing()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseScreenSharing:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method getUriList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->getUriList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method isSCloudVideoExist()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mIsSCloudVideoExist:Z

    return v0
.end method

.method isShareInteractivePanorama()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mIsShareInteractivePanorama:Z

    return v0
.end method

.method isShareMotionPanorama()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/controller/ShareAppUtil;->mIsShareMotionPanorama:Z

    return v0
.end method
