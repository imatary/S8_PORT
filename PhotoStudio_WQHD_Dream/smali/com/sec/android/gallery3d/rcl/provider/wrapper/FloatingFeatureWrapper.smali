.class public Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;
.super Ljava/lang/Object;
.source "FloatingFeatureWrapper.java"


# static fields
.field private static floatingFeatureWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;


# instance fields
.field private floatingFeatureInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/FloatingFeatureInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;->floatingFeatureWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;->floatingFeatureInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/FloatingFeatureInterface;

    invoke-static {p1}, Lcom/sec/android/gallery3d/rcl/provider/util/PlatformChecker;->isSemAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lsec/android/gallery3d/rcl/provider/selibrary/SemFloatingFeatureWrapper;

    invoke-direct {v0}, Lsec/android/gallery3d/rcl/provider/selibrary/SemFloatingFeatureWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;->floatingFeatureInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/FloatingFeatureInterface;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlFloatingFeatureWrapper;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlFloatingFeatureWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;->floatingFeatureInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/FloatingFeatureInterface;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;->floatingFeatureWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;->floatingFeatureWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;->floatingFeatureWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;
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
.method public getEnableStatus(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/FloatingFeatureWrapper;->floatingFeatureInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/FloatingFeatureInterface;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/gallery3d/rcl/provider/libinterface/FloatingFeatureInterface;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
