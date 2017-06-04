.class public Lcom/sec/samsung/gallery/util/BoostHelper;
.super Ljava/lang/Object;
.source "BoostHelper.java"


# static fields
.field private static final GALLERY_PACKAGE:Ljava/lang/String; = "com.sec.android.gallery3d"

.field private static final IS_NOS:Z

.field private static final TAG:Ljava/lang/String; = "BoostHelper"

.field private static sInstance:Lcom/sec/samsung/gallery/util/BoostHelper;


# instance fields
.field private mBusMinLock:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

.field private mCPUMinLock:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

.field private mCPUMinLockForAGIF:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

.field private final mContext:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private mCoreMinLock:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

.field private final mLibFactory:Lcom/sec/samsung/gallery/lib/factory/LibFactory;

.field private mTouchBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

.field private mTouchTailBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/util/BoostHelper;->IS_NOS:Z

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mContext:Lcom/sec/android/gallery3d/app/GalleryApp;

    new-instance v0, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mLibFactory:Lcom/sec/samsung/gallery/lib/factory/LibFactory;

    return-void
.end method

.method private getBusMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;
    .locals 6

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mBusMinLock:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mLibFactory:Lcom/sec/samsung/gallery/lib/factory/LibFactory;

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mContext:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mBusMinLock:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mBusMinLock:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const-string/jumbo v1, "com.sec.android.gallery3d"

    sget v2, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->TYPE_BUS_MIN:I

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->createInstance(Ljava/lang/String;IJ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mBusMinLock:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    return-object v0
.end method

.method private getCPUMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;
    .locals 6

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mCPUMinLock:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mLibFactory:Lcom/sec/samsung/gallery/lib/factory/LibFactory;

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mContext:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mCPUMinLock:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mCPUMinLock:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const-string/jumbo v1, "com.sec.android.gallery3d"

    sget v2, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->TYPE_CPU_MIN:I

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->createInstance(Ljava/lang/String;IJ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mCPUMinLock:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    return-object v0
.end method

.method private getCPUMinLockForAGIFPlay()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;
    .locals 6

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mCPUMinLockForAGIF:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mLibFactory:Lcom/sec/samsung/gallery/lib/factory/LibFactory;

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mContext:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iput-object v1, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mCPUMinLockForAGIF:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mCPUMinLockForAGIF:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const-string/jumbo v2, "com.sec.android.gallery3d"

    sget v3, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->TYPE_CPU_MIN:I

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->createInstance(Ljava/lang/String;IJ)V

    const v0, 0x16e360

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mCPUMinLockForAGIF:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const-string/jumbo v2, "CPU"

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getCPUMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v3

    const v4, 0x16e360

    invoke-interface {v3, v4}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->getApproximateFrequency(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->addExtraOption(Ljava/lang/String;I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mCPUMinLockForAGIF:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    return-object v1
.end method

.method private getCoreMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;
    .locals 6

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mCoreMinLock:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mLibFactory:Lcom/sec/samsung/gallery/lib/factory/LibFactory;

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mContext:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mCoreMinLock:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mCoreMinLock:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    const-string/jumbo v1, "com.sec.android.gallery3d"

    sget v2, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->TYPE_CPU_CORE_NUM_MIN:I

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->createInstance(Ljava/lang/String;IJ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mCoreMinLock:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    return-object v0
.end method

.method public static getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/samsung/gallery/util/BoostHelper;
    .locals 2

    const-class v1, Lcom/sec/samsung/gallery/util/BoostHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/util/BoostHelper;->sInstance:Lcom/sec/samsung/gallery/util/BoostHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/util/BoostHelper;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/util/BoostHelper;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;)V

    sput-object v0, Lcom/sec/samsung/gallery/util/BoostHelper;->sInstance:Lcom/sec/samsung/gallery/util/BoostHelper;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/sec/samsung/gallery/util/BoostHelper;->sInstance:Lcom/sec/samsung/gallery/util/BoostHelper;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getTouchBooster()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;
    .locals 6

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mTouchBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mLibFactory:Lcom/sec/samsung/gallery/lib/factory/LibFactory;

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mContext:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mTouchBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mTouchBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    sget-object v1, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->ACTION_GALLERY_TOUCH:Ljava/lang/String;

    sget v2, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->TYPE_HINT:I

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->createInstance(Ljava/lang/String;IJ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mTouchBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    return-object v0
.end method

.method private getTouchTailBooster()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;
    .locals 6

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mTouchTailBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mLibFactory:Lcom/sec/samsung/gallery/lib/factory/LibFactory;

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mContext:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mTouchTailBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mTouchTailBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    sget-object v1, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->ACTION_GALLERY_TOUCH_TAIL:Ljava/lang/String;

    sget v2, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->TYPE_HINT:I

    const-wide/16 v4, 0x0

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->createInstance(Ljava/lang/String;IJ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/BoostHelper;->mTouchTailBooster:Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    return-object v0
.end method

.method private setDVFSLock(IIII)V
    .locals 3

    if-lez p4, :cond_0

    const v0, 0x9c40

    if-le p4, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "BoostHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDVFSLock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getCPUMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->getSupportedFrequency()[I

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getCPUMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->cancelExtraOptions()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getCPUMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    const-string/jumbo v1, "CPU"

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getCPUMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->getApproximateFrequency(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->addExtraOption(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getCPUMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->acquire(I)V

    :cond_2
    if-lez p2, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getCoreMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->getSupportedCoreNum()[I

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getCoreMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->cancelExtraOptions()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getCoreMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    const-string/jumbo v1, "CORE_NUM"

    invoke-interface {v0, v1, p2}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->addExtraOption(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getCoreMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->acquire(I)V

    :cond_3
    if-lez p3, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getBusMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->getSupportedCoreNum()[I

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getBusMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->cancelExtraOptions()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getBusMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    const-string/jumbo v1, "BUS"

    invoke-interface {v0, v1, p3}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->addExtraOption(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getBusMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->acquire(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public acquireAGIFBoost()V
    .locals 3

    const/16 v0, 0x2710

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getCPUMinLockForAGIFPlay()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->acquire(I)V

    return-void
.end method

.method public acquireCameraSwitchingBoost()V
    .locals 4

    const v0, 0x1e8480

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x7d0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/samsung/gallery/util/BoostHelper;->setDVFSLock(IIII)V

    return-void
.end method

.method public acquireFlickBoost()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/util/BoostHelper;->acquireFlickBoost(I)V

    return-void
.end method

.method public acquireFlickBoost(I)V
    .locals 2

    sget-boolean v0, Lcom/sec/samsung/gallery/util/BoostHelper;->IS_NOS:Z

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getTouchBooster()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->acquire(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getTouchBooster()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->acquire()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getCPUMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->cancelExtraOptions()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getCPUMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->ACTION_GALLERY_TOUCH:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getCPUMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->ACTION_GALLERY_TOUCH:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->acquire(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getBusMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->cancelExtraOptions()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getBusMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->ACTION_GALLERY_TOUCH:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getBusMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->ACTION_GALLERY_TOUCH:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->acquire(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releaseAGIFBoost()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getCPUMinLockForAGIFPlay()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->release()V

    return-void
.end method

.method public releaseFlickBoost()V
    .locals 2

    sget-boolean v0, Lcom/sec/samsung/gallery/util/BoostHelper;->IS_NOS:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getTouchBooster()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->release()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getTouchTailBooster()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->acquire()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getCPUMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->release()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getBusMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->release()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getCPUMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->getSupportedFrequency()[I

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getCPUMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->ACTION_GALLERY_TOUCH_TAIL:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->acquire(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/BoostHelper;->getBusMinLock()Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/lib/factory/DvfsHelperFactory;->ACTION_GALLERY_TOUCH_TAIL:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/lib/libinterface/DvfsHelperInterface;->acquire(Ljava/lang/String;)V

    goto :goto_0
.end method
