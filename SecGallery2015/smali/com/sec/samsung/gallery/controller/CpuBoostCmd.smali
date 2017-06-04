.class public Lcom/sec/samsung/gallery/controller/CpuBoostCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "CpuBoostCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;
    }
.end annotation


# static fields
.field private static final CPUBOOST_DEMAND_FREQUENCY_KHZ:I = 0x16e360

.field private static final TAG:Ljava/lang/String; = "CpuBoostCmd"


# instance fields
.field private mBusBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

.field private mCpuBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mCpuBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iput-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mBusBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    return-void
.end method

.method private boostCpu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mCpuBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mCpuBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->getSupportedFrequency()[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mCpuBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    sget-object v1, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->ACTION_GALLERY_TOUCH:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->acquire(Ljava/lang/String;)V

    const-string/jumbo v0, "CpuBoostCmd"

    const-string/jumbo v1, "Boost CPU Clock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mBusBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mBusBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    sget-object v1, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->ACTION_GALLERY_TOUCH:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->acquire(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private boostCpuCancel()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mCpuBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mCpuBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->getSupportedFrequency()[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mCpuBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    sget-object v1, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->ACTION_GALLERY_TOUCH_TAIL:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->acquire(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mBusBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mBusBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    sget-object v1, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->ACTION_GALLERY_TOUCH_TAIL:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->acquire(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private boostRelease()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mCpuBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mCpuBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->release()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mBusBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mBusBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->release()V

    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, 0x0

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;-><init>()V

    invoke-interface {v1, p1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mCpuBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mCpuBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const-string/jumbo v3, "com.sec.android.gallery3d"

    sget v4, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->TYPE_CPU_MIN:I

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->createInstance(Ljava/lang/String;IJ)V

    invoke-interface {v1, p1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mBusBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mBusBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const-string/jumbo v3, "com.sec.android.gallery3d"

    sget v4, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->TYPE_BUS_MIN:I

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->createInstance(Ljava/lang/String;IJ)V

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mCpuBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    sget-object v3, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->ACTION_GALLERY_TOUCH:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mBusBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    sget-object v3, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->ACTION_GALLERY_TOUCH:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CpuBoostCmd"

    const-string/jumbo v3, "multi_select_init Err"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private multi_select_boostCpu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mCpuBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mCpuBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->getSupportedFrequency()[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mCpuBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->acquire(I)V

    const-string/jumbo v0, "CpuBoostCmd"

    const-string/jumbo v1, "Boost CPU Clock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private multi_select_init(Landroid/content/Context;)V
    .locals 8

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;-><init>()V

    invoke-interface {v1, p1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mCpuBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mCpuBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const-string/jumbo v3, "com.sec.android.gallery3d"

    sget v4, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->TYPE_CPU_MIN:I

    const-wide/16 v6, 0x0

    invoke-interface {v2, v3, v4, v6, v7}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->createInstance(Ljava/lang/String;IJ)V

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mCpuBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->getSupportedFrequency()[I

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mCpuBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const-string/jumbo v3, "CPU"

    iget-object v4, p0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->mCpuBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const-wide v6, 0x3fe6666666666666L    # 0.7

    invoke-interface {v4, v6, v7}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->getApproximateFrequencyByPercentOfMaximum(D)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->addExtraOption(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CpuBoostCmd"

    const-string/jumbo v3, "multi_select_init Err"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v1, v2, v3

    check-cast v1, Landroid/content/Context;

    const/4 v3, 0x1

    aget-object v0, v2, v3

    check-cast v0, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    sget-object v3, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->INITIALIZE:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    if-ne v0, v3, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->init(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->BOOST_CPU:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    if-ne v0, v3, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->boostCpu()V

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->BOOST_CPU_CANCEL:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    if-ne v0, v3, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->boostCpuCancel()V

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->BOOST_RELEASE:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    if-ne v0, v3, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->boostRelease()V

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->MULTI_SELECT_INITIALIZE:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    if-ne v0, v3, :cond_5

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->multi_select_init(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;->MULTI_SELECT_BOOST_CPU:Lcom/sec/samsung/gallery/controller/CpuBoostCmd$CpuBoostCmdType;

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/CpuBoostCmd;->multi_select_boostCpu()V

    goto :goto_0
.end method
