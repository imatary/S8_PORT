.class Lcom/sec/android/gallery3d/app/GalleryActivity$LruCacheJob;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LruCacheJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/app/GalleryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$LruCacheJob;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/app/GalleryActivity;Lcom/sec/android/gallery3d/app/GalleryActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/GalleryActivity$LruCacheJob;-><init>(Lcom/sec/android/gallery3d/app/GalleryActivity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/app/GalleryActivity$LruCacheJob;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 6

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$LruCacheJob;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ImageCacheService;->getLruCacheManager()Lcom/sec/android/gallery3d/data/LruCacheManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/LruCacheManager;->isLruCacheCreated()Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "Gallery_Performance"

    const-string/jumbo v4, "LruCacheJob start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$LruCacheJob;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$LruCacheJob;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    const-string/jumbo v4, "timeViewColCnt"

    sget v5, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->COL_CNT_LEVEL_DEFAULT:I

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x3

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/app/GalleryActivity$LruCacheJob;->this$0:Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryActivity;->getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ImageCacheService;->getLruCacheManager()Lcom/sec/android/gallery3d/data/LruCacheManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/data/LruCacheManager;->createCache(I)Lcom/sec/android/gallery3d/data/LruImageCache;

    const-string/jumbo v3, "Gallery_Performance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LruCacheJob end. loaded type is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x0

    return-object v3

    :cond_2
    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v1, v3, :cond_3

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v1, v3, :cond_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method
