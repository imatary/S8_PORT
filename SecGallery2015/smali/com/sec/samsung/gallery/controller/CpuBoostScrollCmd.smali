.class public Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "CpuBoostScrollCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd$CpuBoostScrollCmdType;
    }
.end annotation


# static fields
.field private static final BOOST_TIMEOUT:I = 0x12c

.field private static final CPUBOOST_MIN_FREQUENCY_1GHZ:I = 0xfd200

.field private static final CPU_BOOST_MIN_FREQUENCY_FOR_GRACE_Q:I = 0x122a00

.field private static final MSG_ACQUIRE:I = 0x0

.field private static final MSG_RELEASE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CpuBoostScrollCmd"


# instance fields
.field private mBoostThread:Landroid/os/HandlerThread;

.field private mDVFSHelper:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

.field private mDVFSHelperBUS:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

.field private mDVFSHelperCore:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

.field private mDVFSHelperGPU:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

.field private mDVFSHelperScroll:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

.field private mHandler:Landroid/os/Handler;

.field private mIsFirst:Z

.field private final mIsNOS:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelper:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperGPU:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperBUS:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperCore:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperScroll:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mIsFirst:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mIsNOS:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->boostCpu()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->boostRelease()V

    return-void
.end method

.method private boostCpu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperScroll:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperScroll:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const/16 v1, 0x12c

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->acquire(I)V

    const-string/jumbo v0, "CpuBoostScrollCmd"

    const-string/jumbo v1, "mDVFSHelperScroll acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelper:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelper:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->acquire()V

    const-string/jumbo v0, "CpuBoostScrollCmd"

    const-string/jumbo v1, "Scroll Boost CPU Clock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperGPU:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperGPU:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->acquire()V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperBUS:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperBUS:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->acquire()V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperCore:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperCore:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->acquire()V

    :cond_4
    return-void
.end method

.method private boostRelease()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperScroll:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperScroll:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->release()V

    const-string/jumbo v0, "CpuBoostScrollCmd"

    const-string/jumbo v1, "mDVFSHelperScroll Release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelper:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelper:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->release()V

    const-string/jumbo v0, "CpuBoostScrollCmd"

    const-string/jumbo v1, "Scroll Boost Release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperGPU:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperGPU:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->release()V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperBUS:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperBUS:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->release()V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperCore:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperCore:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->release()V

    :cond_4
    return-void
.end method

.method private initBoostThread()V
    .locals 3

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "CpuBoostThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mBoostThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mBoostThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mBoostThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "CpuBoostScrollCmd"

    const-string/jumbo v2, "looper is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd$1;

    invoke-direct {v1, p0, v0}, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd$1;-><init>(Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initDVFSHelper(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;-><init>()V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mIsNOS:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperScroll:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-nez v1, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperScroll:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperScroll:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    sget-object v2, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->ACTION_LISTVIEW_SCROLL:Ljava/lang/String;

    sget v3, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->TYPE_HINT:I

    invoke-interface {v1, v2, v3, v6, v7}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->createInstance(Ljava/lang/String;IJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelper:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelper:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const-string/jumbo v2, "GALLERY_LIST_SCROLL"

    sget v3, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->TYPE_CPU_MIN:I

    invoke-interface {v1, v2, v3, v6, v7}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->createInstance(Ljava/lang/String;IJ)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCPUMinFreq1GHz:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelper:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const-string/jumbo v2, "CPU"

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelper:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const v4, 0xfd200

    invoke-interface {v3, v4}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->getApproximateFrequency(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->addExtraOption(Ljava/lang/String;I)V

    :goto_1
    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperGPU:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperGPU:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const-string/jumbo v2, "GALLERY_LIST_SCROLL_GPU"

    sget v3, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->TYPE_GPU_MIN:I

    invoke-interface {v1, v2, v3, v6, v7}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->createInstance(Ljava/lang/String;IJ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperGPU:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    sget-object v2, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->ACTION_LISTVIEW_SCROLL:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperBUS:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperBUS:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const-string/jumbo v2, "GALLERY_LIST_SCROLL_BUS"

    sget v3, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->TYPE_BUS_MIN:I

    invoke-interface {v1, v2, v3, v6, v7}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->createInstance(Ljava/lang/String;IJ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperBUS:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    sget-object v2, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->ACTION_LISTVIEW_SCROLL:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    sget v1, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperCore:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperCore:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const-string/jumbo v2, "GALLERY_LIST_SCROLL_CORE"

    sget v3, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->TYPE_CPU_CORE_NUM_MIN:I

    invoke-interface {v1, v2, v3, v6, v7}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->createInstance(Ljava/lang/String;IJ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelperCore:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const-string/jumbo v2, "CORE_NUM"

    sget v3, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    invoke-interface {v1, v2, v3}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->addExtraOption(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCPUClockForGraceQ:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelper:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const-string/jumbo v2, "CPU"

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelper:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const v4, 0x122a00

    invoke-interface {v3, v4}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->getApproximateFrequency(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->addExtraOption(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mDVFSHelper:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    sget-object v2, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->ACTION_LISTVIEW_SCROLL:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private quitBoostThread()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mBoostThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mBoostThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    aget-object v1, v2, v4

    check-cast v1, Landroid/content/Context;

    aget-object v0, v2, v5

    check-cast v0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd$CpuBoostScrollCmdType;

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mIsFirst:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->initDVFSHelper(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->initBoostThread()V

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mIsFirst:Z

    :cond_0
    sget-object v3, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd$CpuBoostScrollCmdType;->BOOST_CPU:Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd$CpuBoostScrollCmdType;

    if-ne v0, v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v3, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd$CpuBoostScrollCmdType;->BOOST_RELEASE:Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd$CpuBoostScrollCmdType;

    if-ne v0, v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd$CpuBoostScrollCmdType;->BOOST_DESTROY:Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd$CpuBoostScrollCmdType;

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CpuBoostScrollCmd;->quitBoostThread()V

    goto :goto_0
.end method
