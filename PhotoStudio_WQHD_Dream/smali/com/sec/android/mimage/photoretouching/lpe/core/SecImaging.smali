.class public Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;
.super Ljava/lang/Object;
.source "SecImaging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnSecImagingManagerListener:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;

.field private mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

.field private mSemFilterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterList:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;)Lcom/samsung/android/camera/filter/SemFilterManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;Lcom/samsung/android/camera/filter/SemFilterManager;)Lcom/samsung/android/camera/filter/SemFilterManager;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;)Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mOnSecImagingManagerListener:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;

    return-object v0
.end method


# virtual methods
.method public doProcess(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->processImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public doProcess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->processImage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public doProcess([III)[I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->processImage([III)[I

    move-result-object v0

    return-object v0
.end method

.method public getSupportedEffectFilter(I)Lcom/samsung/android/camera/filter/SemFilter;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/filter/SemFilter;

    goto :goto_0
.end method

.method public getSupportedEffectFilterCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportedEffectFilterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/filter/SemFilter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterList:Ljava/util/List;

    return-object v0
.end method

.method public initialize()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/camera/filter/SemFilterManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/filter/SemFilterManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$1;

    invoke-direct {v1, p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;)V

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camera/filter/SemFilterManager;->setFilterCallback(Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    invoke-direct {v0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    invoke-virtual {v0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->initialize()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/filter/SemFilterManager;->getAvailableFilters()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterList:Ljava/util/List;

    return-void
.end method

.method public initializeWithoutCallback()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/camera/filter/SemFilterManager;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/filter/SemFilterManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    invoke-direct {v0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    invoke-virtual {v0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->initialize()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/filter/SemFilterManager;->getAvailableFilters()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterList:Ljava/util/List;

    return-void
.end method

.method public release()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;

    invoke-virtual {v2, v5, v5}, Lcom/samsung/android/camera/filter/SemFilterManager;->setFilterCallback(Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterManagerCallback;Landroid/os/Handler;)V

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "finalize"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterManager:Lcom/samsung/android/camera/filter/SemFilterManager;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterList:Ljava/util/List;

    :cond_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    invoke-virtual {v2}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->release()V

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    :cond_2
    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mContext:Landroid/content/Context;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public setEffect(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEffectFilter(I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterBufferedProcessor:Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mSemFilterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/filter/SemFilter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/camera/filter/SemFilterBufferedProcessor;->setFilter(Lcom/samsung/android/camera/filter/SemFilter;)V

    return-void
.end method

.method public setOnSecImagingManagerListener(Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging;->mOnSecImagingManagerListener:Lcom/sec/android/mimage/photoretouching/lpe/core/SecImaging$OnSecImagingManagerListener;

    return-void
.end method
