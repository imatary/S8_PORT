.class Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/UriImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mType:I

.field final synthetic this$0:Lcom/sec/android/gallery3d/data/UriImage;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/UriImage;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    # invokes: Lcom/sec/android/gallery3d/data/UriImage;->prepareInputFile(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Z
    invoke-static {v4, p1}, Lcom/sec/android/gallery3d/data/UriImage;->access$100(Lcom/sec/android/gallery3d/data/UriImage;Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "UriImage"

    const-string/jumbo v5, "prepareInputFile(jc) return false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/UriImage;->isGolf()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "file"

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    # getter for: Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/sec/android/gallery3d/data/UriImage;->access$400(Lcom/sec/android/gallery3d/data/UriImage;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/sec/android/gallery3d/golf/GolfMgr;

    invoke-direct {v4}, Lcom/sec/android/gallery3d/golf/GolfMgr;-><init>()V

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    # getter for: Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/sec/android/gallery3d/data/UriImage;->access$400(Lcom/sec/android/gallery3d/data/UriImage;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/golf/GolfMgr;->createThumbnails(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    # setter for: Lcom/sec/android/gallery3d/data/UriImage;->mWidth:I
    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/data/UriImage;->access$502(Lcom/sec/android/gallery3d/data/UriImage;I)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    # setter for: Lcom/sec/android/gallery3d/data/UriImage;->mHeight:I
    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/data/UriImage;->access$602(Lcom/sec/android/gallery3d/data/UriImage;I)I

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v2

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/UriImage;->isDrm()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/UriImage;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v1}, Lcom/sec/android/gallery3d/data/DecodeUtils;->requestDecode(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v0, :cond_8

    :cond_4
    if-nez v0, :cond_5

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    invoke-virtual {v4, v7}, Lcom/sec/android/gallery3d/data/UriImage;->setBroken(Z)V

    :cond_5
    const-string/jumbo v4, "UriImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bitmap is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". or jc is cancelled. mUri ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    # getter for: Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/sec/android/gallery3d/data/UriImage;->access$400(Lcom/sec/android/gallery3d/data/UriImage;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    # getter for: Lcom/sec/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v4}, Lcom/sec/android/gallery3d/data/UriImage;->access$300(Lcom/sec/android/gallery3d/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    # getter for: Lcom/sec/android/gallery3d/data/UriImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;
    invoke-static {v4}, Lcom/sec/android/gallery3d/data/UriImage;->access$200(Lcom/sec/android/gallery3d/data/UriImage;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    # getter for: Lcom/sec/android/gallery3d/data/UriImage;->mUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/sec/android/gallery3d/data/UriImage;->access$400(Lcom/sec/android/gallery3d/data/UriImage;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p1, v4, v5, v1, v2}, Lcom/sec/android/gallery3d/data/DecodeUtils;->requestDecode(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    # getter for: Lcom/sec/android/gallery3d/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v5}, Lcom/sec/android/gallery3d/data/UriImage;->access$300(Lcom/sec/android/gallery3d/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    invoke-static {p1, v5, v1, v2, v6}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_8
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/UriImage;->setBroken(Z)V

    iget v3, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    iget v3, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_9

    iget v3, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_a

    :cond_9
    invoke-static {v0, v2, v7}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    # setter for: Lcom/sec/android/gallery3d/data/UriImage;->mWidth:I
    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/data/UriImage;->access$502(Lcom/sec/android/gallery3d/data/UriImage;I)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriImage;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    # setter for: Lcom/sec/android/gallery3d/data/UriImage;->mHeight:I
    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/data/UriImage;->access$602(Lcom/sec/android/gallery3d/data/UriImage;I)I

    goto/16 :goto_0

    :cond_a
    iget v3, p0, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->mType:I

    if-ne v3, v7, :cond_b

    mul-int/lit8 v3, v2, 0x2

    invoke-static {v0, v3, v7}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_b
    invoke-static {v0, v2, v7}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/UriImage$BitmapJob;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
