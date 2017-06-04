.class public Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;
.super Ljava/lang/Object;
.source "SlinkLruImageCache.java"

# interfaces
.implements Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkImageCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyComponentCallbacks;,
        Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyLruCache;,
        Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$OnDatabaseValidityReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCache:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyLruCache;

.field private final mComponentCallbacksListener:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyComponentCallbacks;

.field private final mContext:Landroid/content/Context;

.field private final mMinTrimMemoryLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyLruCache;

    invoke-direct {v0, p2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->mCache:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyLruCache;

    iput p3, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->mMinTrimMemoryLevel:I

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$OnDatabaseValidityReceiver;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$OnDatabaseValidityReceiver;-><init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.android.sdk.samsunglink.VersionChanged"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    if-ltz p3, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyComponentCallbacks;

    invoke-direct {v0, p0, v4}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyComponentCallbacks;-><init>(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyComponentCallbacks;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->mComponentCallbacksListener:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyComponentCallbacks;

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->mComponentCallbacksListener:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :goto_0
    return-void

    :cond_0
    iput-object v4, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->mComponentCallbacksListener:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyComponentCallbacks;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyLruCache;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->mCache:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyLruCache;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->mMinTrimMemoryLevel:I

    return v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Landroid/content/Context;FI)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;
    .locals 6

    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-lez v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "maxPercentageOfMemory must be between 0 and 1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v3

    :goto_1
    mul-int/lit16 v4, v3, 0x400

    mul-int/lit16 v4, v4, 0x400

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v2, v4

    new-instance v4, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;

    invoke-direct {v4, p0, v2, p2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;-><init>(Landroid/content/Context;II)V

    return-object v4

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v3

    goto :goto_1
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->mCache:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyLruCache;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyLruCache;->evictAll()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public destroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->clearCache()V

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->mComponentCallbacksListener:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyComponentCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->mComponentCallbacksListener:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    return-void
.end method

.method public getBitmapInfo(Ljava/lang/String;)Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->mCache:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyLruCache;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;

    return-object v0
.end method

.method public putBitmapInfo(Ljava/lang/String;Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkBitmapInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache;->mCache:Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyLruCache;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/samsunglink/imageloader/SlinkLruImageCache$MyLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
