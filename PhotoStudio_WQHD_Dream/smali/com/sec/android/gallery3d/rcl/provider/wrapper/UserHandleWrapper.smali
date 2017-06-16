.class public Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;
.super Ljava/lang/Object;
.source "UserHandleWrapper.java"


# static fields
.field public static USER_CURRENT:I

.field private static userHandleWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;


# instance fields
.field private userHandleInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/UserHandleInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;->userHandleWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;->userHandleInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/UserHandleInterface;

    invoke-static {p1}, Lcom/sec/android/gallery3d/rcl/provider/util/PlatformChecker;->isSemAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lsec/android/gallery3d/rcl/provider/selibrary/SemUserHandleWrapper;

    invoke-direct {v0}, Lsec/android/gallery3d/rcl/provider/selibrary/SemUserHandleWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;->userHandleInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/UserHandleInterface;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlUserHandleWrapper;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlUserHandleWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;->userHandleInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/UserHandleInterface;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;->userHandleWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;->userHandleWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;->userHandleWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;

    sget v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;->USER_CURRENT:I

    sput v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;->USER_CURRENT:I

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;->userHandleWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;
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
.method public myUserId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UserHandleWrapper;->userHandleInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/UserHandleInterface;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/rcl/provider/libinterface/UserHandleInterface;->myUserId()I

    move-result v0

    return v0
.end method
