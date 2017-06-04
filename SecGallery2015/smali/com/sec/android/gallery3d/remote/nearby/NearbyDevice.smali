.class public Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;
.super Lcom/sec/android/gallery3d/remote/RemoteMediaSet;
.source "NearbyDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$flatBrowseStateListener;
    }
.end annotation


# static fields
.field public static final DEVICE_PATH_PREFIX:Ljava/lang/String; = "/nearby"

.field private static final TAG:Ljava/lang/String; = "NearbyDevice"


# instance fields
.field private mCoverItem:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;

.field private final mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private mDevice:Lcom/samsung/android/allshare/Device;

.field private mFlatBrowseCount:I

.field private mFlatBrowseStateListener:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$flatBrowseStateListener;

.field private final mFlatProviderConnection:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

.field private mIsFlatBrowseFinished:Z

.field private mIsFlatBrowseStarted:Z

.field private final mItemPath:Lcom/sec/android/gallery3d/data/Path;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/allshare/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mVideos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/allshare/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/samsung/android/allshare/Device;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/remote/RemoteMediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mVideos:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mIsFlatBrowseStarted:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mIsFlatBrowseFinished:Z

    iput v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mFlatBrowseCount:I

    new-instance v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$1;-><init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mFlatProviderConnection:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    iput-object p3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-interface {p2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nearby://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/nearby/item/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mFlatBrowseCount:I

    return p1
.end method

.method static synthetic access$004(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mFlatBrowseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mFlatBrowseCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mIsFlatBrowseStarted:Z

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mIsFlatBrowseFinished:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mVideos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDataVersion:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;)Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$flatBrowseStateListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mFlatBrowseStateListener:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$flatBrowseStateListener;

    return-object v0
.end method

.method private loadItems()V
    .locals 10

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDevice:Lcom/samsung/android/allshare/Device;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mIsFlatBrowseStarted:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mIsFlatBrowseFinished:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const-string/jumbo v6, "NearbyDevice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ignore flat browse : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "NearbyDevice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  isStarted : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mIsFlatBrowseStarted:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", isFinished"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mIsFlatBrowseFinished:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v6, "NearbyDevice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadItems for : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v8}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDevice:Lcom/samsung/android/allshare/Device;

    instance-of v6, v6, Lcom/samsung/android/allshare/media/Provider;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mVideos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->notifyContentChanged()V

    new-instance v3, Lcom/samsung/android/allshare/extension/FlatProvider;

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDevice:Lcom/samsung/android/allshare/Device;

    check-cast v6, Lcom/samsung/android/allshare/media/Provider;

    invoke-direct {v3, v6}, Lcom/samsung/android/allshare/extension/FlatProvider;-><init>(Lcom/samsung/android/allshare/media/Provider;)V

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->EnableNearbyVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_0
    const-string/jumbo v6, "NearbyDevice"

    const-string/jumbo v7, "Nearby: images and videos"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "com.samsung.android.allshare.extension.FlatProvider"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v6, "startFlatBrowse"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/util/ArrayList;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v0, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mFlatProviderConnection:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    aput-object v7, v0, v6

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "NearbyDevice"

    const-string/jumbo v7, "Exception: No API for nearby images and videos"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "NearbyDevice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/samsung/android/allshare/Item$MediaType;

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mFlatProviderConnection:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/allshare/extension/FlatProvider;->startFlatBrowse(Lcom/samsung/android/allshare/Item$MediaType;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v6, "NearbyDevice"

    const-string/jumbo v7, "Nearby: images"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/samsung/android/allshare/Item$MediaType;

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mFlatProviderConnection:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/allshare/extension/FlatProvider;->startFlatBrowse(Lcom/samsung/android/allshare/Item$MediaType;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v6, "NearbyDevice"

    const-string/jumbo v7, "mDevice instanceof Provider = [ false ]"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public clearItems()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mVideos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->notifyContentChanged()V

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mIsFlatBrowseStarted:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mIsFlatBrowseFinished:Z

    return-void
.end method

.method public getBucketId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mPath:Lcom/sec/android/gallery3d/data/Path;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 4

    invoke-super {p0}, Lcom/sec/android/gallery3d/remote/RemoteMediaSet;->getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mCoverItem:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/samsung/android/allshare/Device;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mCoverItem:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mCoverItem:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDevice:Lcom/samsung/android/allshare/Device;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeviceNic()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDevice:Lcom/samsung/android/allshare/Device;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getNIC()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mItems:Ljava/util/ArrayList;

    monitor-enter v10

    add-int v9, p1, p2

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->getMediaItemCount()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    move v3, p1

    :goto_0
    if-ge v3, v2, :cond_0

    :try_start_1
    iget-object v9, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Item;

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_1

    const-string/jumbo v9, "NearbyDevice"

    const-string/jumbo v11, "item uri is null! : "

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/lang/NullPointerException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "item uri null! : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", location : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Item;->getLocation()Landroid/location/Location;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v9, "NearbyDevice"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "IndexOutOfBoundsException : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v8

    :cond_1
    :try_start_3
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x2f

    const/16 v11, 0x5f

    invoke-virtual {v6, v9, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v9, v6}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v9, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v9, v0}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    if-nez v7, :cond_5

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->EnableNearbyVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Item;->getType()Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v9

    sget-object v11, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v9, v11}, Lcom/samsung/android/allshare/Item$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v7, Lcom/sec/android/gallery3d/remote/nearby/NearbyImage;

    iget-object v9, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-direct {v7, v0, v9, v4, v11}, Lcom/sec/android/gallery3d/remote/nearby/NearbyImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/Device;)V

    :goto_1
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/allshare/Item;->getType()Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v9

    sget-object v11, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v9, v11}, Lcom/samsung/android/allshare/Item$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v7, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;

    iget-object v9, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-direct {v7, v0, v9, v4, v11}, Lcom/sec/android/gallery3d/remote/nearby/NearbyVideo;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/Device;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v9, "NearbyDevice"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Wrong Type! type="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Item;->getType()Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v9

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v9

    :cond_4
    :try_start_5
    new-instance v7, Lcom/sec/android/gallery3d/remote/nearby/NearbyImage;

    iget-object v9, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v11, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-direct {v7, v0, v9, v4, v11}, Lcom/sec/android/gallery3d/remote/nearby/NearbyImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/Device;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v7, v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->updateContent(Lcom/samsung/android/allshare/Item;)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public getMediaItemCount()I
    .locals 3

    const-string/jumbo v0, "NearbyDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMediaItemCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDevice:Lcom/samsung/android/allshare/Device;

    if-nez v0, :cond_0

    const-string/jumbo v0, "NearbyDevice"

    const-string/jumbo v1, "getName : mDevice is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNearbyVideoItem(Landroid/net/Uri;Z)Lcom/samsung/android/allshare/Item;
    .locals 9

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mVideos:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    const-string/jumbo v6, "NearbyDevice"

    const-string/jumbo v7, "error: no nearby video"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v5

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mVideos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mVideos:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/allshare/Item;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v6, "NearbyDevice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "nearby video item uri is null: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mVideos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v0, v5

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mVideos:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/allshare/Item;

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mVideos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v0, v5

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mVideos:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/allshare/Item;

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v5, v4

    goto :goto_0
.end method

.method public getSupportedOperations()J
    .locals 4

    const-wide v0, 0x400000000000L

    const-wide v2, -0x200000000001L

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getTagType()Lcom/sec/samsung/gallery/core/TabTagType;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALL:Lcom/sec/samsung/gallery/core/TabTagType;

    return-object v0
.end method

.method public initFlatBrowseFlag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mIsFlatBrowseStarted:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mIsFlatBrowseFinished:Z

    return-void
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public refreshItem()V
    .locals 3

    const-string/jumbo v0, "NearbyDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshItem, mIsFlatBrowseStarted = [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mIsFlatBrowseStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mIsFlatBrowseStarted:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDataVersion:J

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->loadItems()V

    :cond_0
    return-void
.end method

.method public reload()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDataVersion:J

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->loadItems()V

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDataVersion:J

    return-wide v0
.end method

.method public setFlatBrowseStateListener(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$flatBrowseStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mFlatBrowseStateListener:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$flatBrowseStateListener;

    return-void
.end method

.method public update(Lcom/samsung/android/allshare/Device;)V
    .locals 3

    const-string/jumbo v0, "NearbyDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->mDevice:Lcom/samsung/android/allshare/Device;

    return-void
.end method
