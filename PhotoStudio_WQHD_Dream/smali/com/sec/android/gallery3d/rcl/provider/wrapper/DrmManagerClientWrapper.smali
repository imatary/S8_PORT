.class public Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;
.super Ljava/lang/Object;
.source "DrmManagerClientWrapper.java"


# static fields
.field private static drmManagerClientWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;


# instance fields
.field private drmManagerClientInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/DrmManagerClientInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;->drmManagerClientWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;->drmManagerClientInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/DrmManagerClientInterface;

    invoke-static {p1}, Lcom/sec/android/gallery3d/rcl/provider/util/PlatformChecker;->isSemAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lsec/android/gallery3d/rcl/provider/selibrary/SemDrmManagerClientWrapper;

    invoke-direct {v0}, Lsec/android/gallery3d/rcl/provider/selibrary/SemDrmManagerClientWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;->drmManagerClientInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/DrmManagerClientInterface;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlDrmManagerClientWrapper;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlDrmManagerClientWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;->drmManagerClientInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/DrmManagerClientInterface;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;->drmManagerClientWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;->drmManagerClientWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;->drmManagerClientWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public releaseDrm(Landroid/drm/DrmManagerClient;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DrmManagerClientWrapper;->drmManagerClientInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/DrmManagerClientInterface;

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/rcl/provider/libinterface/DrmManagerClientInterface;->releaseDrm(Landroid/drm/DrmManagerClient;)V

    return-void
.end method
