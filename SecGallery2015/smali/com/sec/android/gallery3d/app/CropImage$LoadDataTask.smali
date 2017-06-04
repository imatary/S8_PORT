.class Lcom/sec/android/gallery3d/app/CropImage$LoadDataTask;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field final mItem:Lcom/sec/android/gallery3d/data/MediaItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/CropImage$LoadDataTask;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage$LoadDataTask;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/CropImage$LoadDataTask;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->requestLargeImage()Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v2, v3

    :goto_0
    return-object v2

    :cond_1
    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/util/ThreadPool$Job;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "CropImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/app/CropImage$LoadDataTask;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v0

    return-object v0
.end method
