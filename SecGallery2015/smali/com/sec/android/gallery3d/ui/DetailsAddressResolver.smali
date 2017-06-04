.class public Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;,
        Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DetailsAddressResolver"


# instance fields
.field private mAddress:Landroid/location/Address;

.field private mAddressLookupJob:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->mAppContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;)Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->mAppContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->mAddressLookupJob:Lcom/sec/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;Landroid/location/Address;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->updateLocation(Landroid/location/Address;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateLocation(Landroid/location/Address;)V
    .locals 7

    const/4 v6, 0x0

    if-eqz p1, :cond_9

    const-string/jumbo v4, "Location"

    const-string/jumbo v5, "address is not null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->mAppContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0446

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->mAddress:Landroid/location/Address;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ""

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v4

    if-gt v2, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v2}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_3
    const/16 v4, 0x9

    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual {p1}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-virtual {p1}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-virtual {p1}, Landroid/location/Address;->getPremises()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-virtual {p1}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    invoke-virtual {p1}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v2, 0x0

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_7

    aget-object v4, v3, v2

    if-eqz v4, :cond_4

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    aget-object v4, v3, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;->onAddressAvailable(Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void

    :cond_9
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->mAddress:Landroid/location/Address;

    goto :goto_3
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->mAddressLookupJob:Lcom/sec/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->mAddressLookupJob:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->mAddressLookupJob:Lcom/sec/android/gallery3d/util/Future;

    :cond_0
    return-void
.end method

.method public getAddress()Landroid/location/Address;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->mAddress:Landroid/location/Address;

    return-object v0
.end method

.method public resolveAddress([DLcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->mListener:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->mAppContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v2

    new-instance v3, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressLookupJob;-><init>(Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;[D)V

    new-instance v4, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$1;

    invoke-direct {v4, p0}, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$1;-><init>(Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;)V

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/DetailsAddressResolver;->mAddressLookupJob:Lcom/sec/android/gallery3d/util/Future;

    :try_start_0
    const-string/jumbo v2, "(%f,%f)"

    const/4 v3, 0x0

    aget-wide v4, p1, v3

    const/4 v3, 0x1

    aget-wide v6, p1, v3

    invoke-static {v2, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DetailsAddressResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NullPointerException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
