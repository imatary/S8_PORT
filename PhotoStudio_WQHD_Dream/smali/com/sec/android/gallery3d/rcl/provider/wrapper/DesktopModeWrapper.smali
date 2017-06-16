.class public Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;
.super Ljava/lang/Object;
.source "DesktopModeWrapper.java"


# static fields
.field private static desktopModeWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;


# instance fields
.field private desktopModeInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/DesktopModeInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;->desktopModeWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;->desktopModeInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/DesktopModeInterface;

    invoke-static {p1}, Lcom/sec/android/gallery3d/rcl/provider/util/PlatformChecker;->isSemAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lsec/android/gallery3d/rcl/provider/selibrary/SemDesktopModeWrapper;

    invoke-direct {v0}, Lsec/android/gallery3d/rcl/provider/selibrary/SemDesktopModeWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;->desktopModeInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/DesktopModeInterface;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlDesktopModeWrapper;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlDesktopModeWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;->desktopModeInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/DesktopModeInterface;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;->desktopModeWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;->desktopModeWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;->desktopModeWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;
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
.method public isDesktopMode(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/DesktopModeWrapper;->desktopModeInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/DesktopModeInterface;

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/rcl/provider/libinterface/DesktopModeInterface;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
