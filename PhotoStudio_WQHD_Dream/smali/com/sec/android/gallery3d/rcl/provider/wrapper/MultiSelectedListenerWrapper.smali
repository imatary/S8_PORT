.class public Lcom/sec/android/gallery3d/rcl/provider/wrapper/MultiSelectedListenerWrapper;
.super Ljava/lang/Object;
.source "MultiSelectedListenerWrapper.java"


# static fields
.field private static multiSelectedListenerWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/MultiSelectedListenerWrapper;


# instance fields
.field private MultiSelectedListenerCallbackInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/MultiSelectedListenerWrapper;->multiSelectedListenerWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/MultiSelectedListenerWrapper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/MultiSelectedListenerWrapper;->MultiSelectedListenerCallbackInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;

    invoke-static {p1}, Lcom/sec/android/gallery3d/rcl/provider/util/PlatformChecker;->isSemAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;

    invoke-direct {v0}, Lsec/android/gallery3d/rcl/provider/selibrary/SemMultiSelectListenerWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/MultiSelectedListenerWrapper;->MultiSelectedListenerCallbackInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlMultiSelectListenerWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/MultiSelectedListenerWrapper;->MultiSelectedListenerCallbackInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/MultiSelectedListenerWrapper;
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/rcl/provider/wrapper/MultiSelectedListenerWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/MultiSelectedListenerWrapper;->multiSelectedListenerWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/MultiSelectedListenerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/MultiSelectedListenerWrapper;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/MultiSelectedListenerWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/MultiSelectedListenerWrapper;->multiSelectedListenerWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/MultiSelectedListenerWrapper;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/MultiSelectedListenerWrapper;->multiSelectedListenerWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/MultiSelectedListenerWrapper;
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
.method public setMultiSelectedListener(Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/MultiSelectedListenerWrapper;->MultiSelectedListenerCallbackInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;->setMultiSelectedListener(Landroid/widget/GridView;Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;)V

    return-void
.end method
