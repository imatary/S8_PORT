.class public Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;
.super Ljava/lang/Object;
.source "SystemPropertiesWrapper.java"


# static fields
.field private static systemPropertiesWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;


# instance fields
.field private systemPropertiesInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/SystemPropertiesInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;->systemPropertiesWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;->systemPropertiesInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/SystemPropertiesInterface;

    invoke-static {p1}, Lcom/sec/android/gallery3d/rcl/provider/util/PlatformChecker;->isSemAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lsec/android/gallery3d/rcl/provider/selibrary/SemSystemPropertiesWrapper;

    invoke-direct {v0}, Lsec/android/gallery3d/rcl/provider/selibrary/SemSystemPropertiesWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;->systemPropertiesInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/SystemPropertiesInterface;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlSystemPropertiesWrapper;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlSystemPropertiesWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;->systemPropertiesInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/SystemPropertiesInterface;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;->systemPropertiesWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;->systemPropertiesWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;->systemPropertiesWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;
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
.method public getCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;->systemPropertiesInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/SystemPropertiesInterface;

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/rcl/provider/libinterface/SystemPropertiesInterface;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSalesCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SystemPropertiesWrapper;->systemPropertiesInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/SystemPropertiesInterface;

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/rcl/provider/libinterface/SystemPropertiesInterface;->getSalesCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
