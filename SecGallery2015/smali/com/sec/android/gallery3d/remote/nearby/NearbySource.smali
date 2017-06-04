.class public Lcom/sec/android/gallery3d/remote/nearby/NearbySource;
.super Lcom/sec/android/gallery3d/remote/RemoteMediaSource;
.source "NearbySource.java"


# static fields
.field private static final NEARBY_DEVICE:I = 0x1

.field private static final NEARBY_DEVICESET:I = 0x0

.field private static final NEARBY_ITEM:I = 0x2

.field public static final PATH:Ljava/lang/String; = "/nearby"

.field public static final PATH_PREFIX:Ljava/lang/String; = "nearby"

.field public static final SCHEME:Ljava/lang/String; = "nearby"

.field private static final TAG:Ljava/lang/String; = "NearbySource"


# instance fields
.field private final mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

.field private final mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

.field private final mNearbyContext:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

.field private mNearbyDeviceSet:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 3

    const-string/jumbo v0, "nearby"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/gallery3d/remote/RemoteMediaSource;-><init>(Ljava/lang/String;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    const-string/jumbo v0, "NearbySource"

    const-string/jumbo v1, "Nearby Source Create!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/nearby"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/nearby/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/nearby/item/*/*"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    new-instance v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->mNearbyContext:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->mNearbyContext:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/data/PathMatcher;->match(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    :pswitch_1
    const-string/jumbo v1, "NearbySource"

    const-string/jumbo v2, "Create Media Object : DeviceSet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->mNearbyContext:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    invoke-direct {v1, p1, v2, v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->mNearbyDeviceSet:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->mNearbyDeviceSet:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getDevice(Ljava/lang/String;)Lcom/samsung/android/allshare/Device;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v1, p1, v2, v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/samsung/android/allshare/Device;)V

    goto :goto_1

    :cond_0
    const-string/jumbo v1, "NearbySource"

    const-string/jumbo v2, "can\'t get device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getNearbyContext()Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->mNearbyContext:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    return-object v0
.end method

.method public getNearbyDeviceSet()Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->mNearbyDeviceSet:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    const-string/jumbo v1, "/nearby"

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->mNearbyDeviceSet:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->mNearbyDeviceSet:Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceSet;

    return-object v1
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->mNearbyContext:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->pause()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->mNearbyContext:Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->resume()V

    return-void
.end method
