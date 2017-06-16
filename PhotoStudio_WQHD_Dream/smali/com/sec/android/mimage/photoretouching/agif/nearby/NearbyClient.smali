.class public Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;
.super Ljava/lang/Object;
.source "NearbyClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;,
        Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayInfo;
    }
.end annotation


# static fields
.field public static final NEARBY_CACHE_PREFIX:Ljava/lang/String; = "nearby_cache"

.field private static final TAG:Ljava/lang/String; = "PEDIT_NearbyClient"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeviceChangedListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/mimage/photoretouching/agif/nearby/OnDeviceChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

.field private mDeviceListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private mDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/allshare/Device;",
            ">;"
        }
    .end annotation
.end field

.field private mIsViewerShowRequested:Z

.field private mPlayInfo:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayInfo;

.field private mPlayerThread:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;

.field private mServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

.field private mUseAsf:Z

.field private mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

.field private mViewerOnPlaying:Z

.field private mWeakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewerOnPlaying:Z

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mUseAsf:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mWeakActivity:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDeviceChangedListenerRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$1;-><init>(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDeviceListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)Lcom/samsung/android/allshare/media/ImageViewer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->refreshDeviceList()V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;Lcom/samsung/android/allshare/media/ImageViewer;)Lcom/samsung/android/allshare/media/ImageViewer;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->startAllShareFrameworkService()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mPlayInfo:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewerOnPlaying:Z

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mIsViewerShowRequested:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mPlayerThread:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mUseAsf:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mUseAsf:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)Lcom/samsung/android/allshare/media/MediaServiceProvider;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;Lcom/samsung/android/allshare/media/MediaServiceProvider;)Lcom/samsung/android/allshare/media/MediaServiceProvider;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mServiceProvider:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;Lcom/samsung/android/allshare/media/MediaDeviceFinder;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDeviceListener:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object v0
.end method

.method private playImage(Lcom/samsung/android/allshare/media/ImageViewer;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayInfo;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayInfo;-><init>(Lcom/samsung/android/allshare/media/ImageViewer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mPlayInfo:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayInfo;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mPlayerThread:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mPlayerThread:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;-><init>(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$1;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mPlayerThread:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mPlayerThread:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mIsViewerShowRequested:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mPlayerThread:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mPlayerThread:Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$PlayerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private refreshDeviceList()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->refresh()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceDomain;->LOCAL_NETWORK:Lcom/samsung/android/allshare/Device$DeviceDomain;

    sget-object v3, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceDomain;Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->refresh()V

    goto :goto_0
.end method

.method private startAllShareFrameworkService()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$5;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$5;-><init>(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)V

    const-string v3, "com.samsung.android.allshare.media"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/allshare/ServiceConnector;->createServiceProvider(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private stopPlayer()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/media/ImageViewer;->getViewerState()Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->STOPPED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/media/ImageViewer;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public changePlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    invoke-virtual {v3}, Lcom/samsung/android/allshare/media/ImageViewer;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const v3, 0x7f07006b

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->disconnectWithPlayDevice()V

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {p0, v3}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->getCheckedDeviceList(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/allshare/media/ImageViewer;

    :cond_6
    if-eqz v2, :cond_0

    new-instance v3, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$2;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$2;-><init>(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/allshare/media/ImageViewer;->setEventListener(Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerEventListener;)V

    new-instance v3, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$3;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$3;-><init>(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/allshare/media/ImageViewer;->setResponseListener(Lcom/samsung/android/allshare/media/ImageViewer$IImageViewerResponseListener;)V

    invoke-direct {p0, v2, p3}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->playImage(Lcom/samsung/android/allshare/media/ImageViewer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disconnectWithPlayDevice()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->stopPlayer()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewerOnPlaying:Z

    return-void
.end method

.method public getCheckedDeviceList(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/Device$DeviceType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/allshare/Device;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDevices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Device;

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getDeviceType()Lcom/samsung/android/allshare/Device$DeviceType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method

.method public getDisplayDeviceList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerItem;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->getCheckedDeviceList(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    return-object v7

    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/allshare/Device;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerItem;

    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerItem;-><init>(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getOnPlayingPlayer()Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerItem;
    .locals 7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewerOnPlaying:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerItem;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/media/ImageViewer;->getIcon()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/media/ImageViewer;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    invoke-virtual {v4}, Lcom/samsung/android/allshare/media/ImageViewer;->getID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/agif/nearby/ChangePlayerItem;-><init>(Landroid/net/Uri;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public isOnPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewerOnPlaying:Z

    return v0
.end method

.method public prepareItem(Ljava/lang/String;)Lcom/samsung/android/allshare/Item;
    .locals 3

    const-string v1, "image/*"

    const/4 v0, 0x0

    new-instance v2, Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    invoke-direct {v2, p1, v1}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object v0

    return-object v0
.end method

.method public refresh()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDeviceFinder:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->startAllShareFrameworkService()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->refreshDeviceList()V

    goto :goto_0
.end method

.method public refreshChangePlayerDialogRef()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDeviceChangedListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/agif/nearby/OnDeviceChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/OnDeviceChangedListener;->onDeviceChanged()V

    :cond_0
    return-void
.end method

.method public setOnDeviceChangedListener(Lcom/sec/android/mimage/photoretouching/agif/nearby/OnDeviceChangedListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mDeviceChangedListenerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public showDialogDisconnected(Ljava/lang/String;)V
    .locals 4

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewerOnPlaying:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/media/ImageViewer;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewer:Lcom/samsung/android/allshare/media/ImageViewer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mViewerOnPlaying:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;->mWeakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070102

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07006c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070197

    new-instance v3, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$4;

    invoke-direct {v3, p0}, Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient$4;-><init>(Lcom/sec/android/mimage/photoretouching/agif/nearby/NearbyClient;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
