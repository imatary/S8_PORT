.class public Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;
.super Ljava/lang/Object;
.source "ScreenSharingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager$Connection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenSharingManager"

.field private static final UID_DELIMITER:Ljava/lang/String; = "uuid:"

.field private static volatile mInstance:Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;

.field private static mResumeRequest:Z


# instance fields
.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mResumeRequest:Z

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    return-void
.end method

.method private getFindDeviceKey(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "uuid:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mInstance:Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    sput-object v0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mInstance:Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mInstance:Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    const-string/jumbo v2, "nearby"

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->getNearbyContext()Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    goto :goto_0
.end method

.method public static getResumeReuest()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mResumeRequest:Z

    return v0
.end method

.method public static releaseInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mInstance:Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;

    return-void
.end method

.method public static setResumeRequest(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mResumeRequest:Z

    return-void
.end method


# virtual methods
.method public setScreenSharingMedia(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object p2, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-void
.end method

.method public startDLNAConnection(Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    const-string/jumbo v2, "ScreenSharingManager"

    const-string/jumbo v3, "startDLNAConnection: ipAddr is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->getFindDeviceKey(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-virtual {v2, p1, v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getSelectDisplayDeviceId(Ljava/lang/String;I)Lcom/samsung/android/allshare/Device;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v2, "ScreenSharingManager"

    const-string/jumbo v3, "startDLNAConnection: selectDeviceId is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryId()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->changePlayer(ILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/data/MediaSet;)V

    const-string/jumbo v2, "ScreenSharingManager"

    const-string/jumbo v3, "startDLNAConnection:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startDLNADisconnection(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    const-string/jumbo v2, "ScreenSharingManager"

    const-string/jumbo v3, "startDLNAConnection: ipAddr is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->getFindDeviceKey(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-virtual {v2, p1, v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->getSelectDisplayDeviceId(Ljava/lang/String;I)Lcom/samsung/android/allshare/Device;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v2, "ScreenSharingManager"

    const-string/jumbo v3, "startDLNADisconnection: selectDeviceId is null "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/ScreenSharingManager;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->disconnectWithPlayDevice()V

    goto :goto_0
.end method
