.class public Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;
.super Ljava/lang/Object;
.source "UtilsWrapper.java"


# static fields
.field private static utilsWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;


# instance fields
.field private utilsInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/UtilsInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;->utilsWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;->utilsInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/UtilsInterface;

    invoke-static {p1}, Lcom/sec/android/gallery3d/rcl/provider/util/PlatformChecker;->isSemAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lsec/android/gallery3d/rcl/provider/selibrary/SemUtilsWrapper;

    invoke-direct {v0}, Lsec/android/gallery3d/rcl/provider/selibrary/SemUtilsWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;->utilsInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/UtilsInterface;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlUtilsWrapper;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/rcl/provider/sdllibrary/SdlUtilsWrapper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;->utilsInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/UtilsInterface;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;
    .locals 2

    const-class v1, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;->utilsWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;->utilsWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;->utilsWrapper:Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;
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
.method public getBuildVersion()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;->utilsInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/UtilsInterface;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/rcl/provider/libinterface/UtilsInterface;->getBuildVersion()I

    move-result v0

    return v0
.end method

.method public isUltraSavingMode(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;->utilsInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/UtilsInterface;

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/rcl/provider/libinterface/UtilsInterface;->isUltraSavingMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setEnableFluidScroll(Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;->utilsInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/UtilsInterface;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/gallery3d/rcl/provider/libinterface/UtilsInterface;->setEnableFluidScroll(Landroid/widget/GridView;Z)V

    return-void
.end method

.method public setEnableGoToTop(Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/wrapper/UtilsWrapper;->utilsInterface:Lcom/sec/android/gallery3d/rcl/provider/libinterface/UtilsInterface;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/gallery3d/rcl/provider/libinterface/UtilsInterface;->setEnableGoToTop(Landroid/widget/GridView;Z)V

    return-void
.end method
