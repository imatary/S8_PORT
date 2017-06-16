.class public Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;
.super Ljava/lang/Object;
.source "SpenWrapper.java"


# static fields
.field private static sPenWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;


# instance fields
.field private sPenInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/SpenInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;->sPenWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;->sPenInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/SpenInterface;

    invoke-static {p1}, Lcom/sec/android/gallery3d/rcl/provider/util/PlatformChecker;->isSemAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lsec/android/gallery3d/rcl/provider/selibrary/SemSpenWrapper;

    invoke-direct {v0}, Lsec/android/gallery3d/rcl/provider/selibrary/SemSpenWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;->sPenInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/SpenInterface;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlSpenWrapper;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlSpenWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;->sPenInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/SpenInterface;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;->sPenWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;->sPenWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;->sPenWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;
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
.method public setIcon(Landroid/widget/GridView;Landroid/content/Context;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/SpenWrapper;->sPenInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/SpenInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/rcl/provider/libinterface/SpenInterface;->setIcon(Landroid/widget/GridView;Landroid/content/Context;I)V

    return-void
.end method
