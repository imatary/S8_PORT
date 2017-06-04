.class public Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;
.super Landroid/util/LruCache;
.source "SlideShowItemCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_LOCK:Ljava/lang/Object;

.field private static final MAX_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SlideShowItemCache"

.field private static mSlideShowItemCache:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;->CACHE_LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;->mSlideShowItemCache:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method

.method public static clear()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;->mSlideShowItemCache:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;->mSlideShowItemCache:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;->evictAll()V

    :cond_0
    const-string/jumbo v0, "SlideShowItemCache"

    const-string/jumbo v1, "clear"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static destroy()V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;->mSlideShowItemCache:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;->mSlideShowItemCache:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;->evictAll()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;->mSlideShowItemCache:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;

    const-string/jumbo v0, "SlideShowItemCache"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getCache()Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;->mSlideShowItemCache:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;-><init>(I)V

    sput-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;->mSlideShowItemCache:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;->mSlideShowItemCache:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
