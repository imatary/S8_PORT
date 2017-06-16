.class public Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;
.super Ljava/lang/Object;
.source "PrivateModeManagerWrapper.java"


# static fields
.field private static privateModeManagerWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;


# instance fields
.field private privateModeManagerInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/PrivateModeManagerInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;->privateModeManagerWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;->privateModeManagerInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/PrivateModeManagerInterface;

    invoke-static {p1}, Lcom/sec/android/gallery3d/rcl/provider/util/PlatformChecker;->isSemAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lsec/android/gallery3d/rcl/provider/selibrary/SemPrivateModeManagerWrapper;

    invoke-direct {v0}, Lsec/android/gallery3d/rcl/provider/selibrary/SemPrivateModeManagerWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;->privateModeManagerInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/PrivateModeManagerInterface;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlPrivateModeManagerWrapper;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlPrivateModeManagerWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;->privateModeManagerInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/PrivateModeManagerInterface;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;->privateModeManagerWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;->privateModeManagerWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;->privateModeManagerWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;
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
.method public getPrivateStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/PrivateModeManagerWrapper;->privateModeManagerInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/PrivateModeManagerInterface;

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/rcl/provider/libinterface/PrivateModeManagerInterface;->getPrivateStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
