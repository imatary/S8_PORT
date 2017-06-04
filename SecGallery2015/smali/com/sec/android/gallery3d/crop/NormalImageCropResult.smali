.class public Lcom/sec/android/gallery3d/crop/NormalImageCropResult;
.super Lcom/sec/android/gallery3d/crop/CropResult;
.source "NormalImageCropResult.java"


# static fields
.field private static final KEY_IS_CALLER_ID:Ljava/lang/String; = "is-caller-id"

.field private static final KEY_LATITUDE:Ljava/lang/String; = "latitude"

.field private static final KEY_LONGITUDE:Ljava/lang/String; = "longitude"

.field private static final KEY_OUTPUT_FORMAT:Ljava/lang/String; = "outputFormat"

.field private static final KEY_TAKENTIME:Ljava/lang/String; = "takenTime"

.field private static final TAG:Ljava/lang/String; = "NormalImageCropResult"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/CropImage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/crop/CropResult;-><init>(Lcom/sec/android/gallery3d/app/CropImage;)V

    return-void
.end method

.method private convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    const-string/jumbo v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method private static determineCompressFormat(Lcom/sec/android/gallery3d/data/MediaObject;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "JPEG"

    instance-of v2, p0, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_1

    check-cast p0, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v0, "PNG"

    :cond_1
    return-object v0
.end method

.method private static getCallerIdSavePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/tempCropPicture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFileExtension()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "outputFormat"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->determineCompressFormat(Lcom/sec/android/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string/jumbo v2, "png"

    :goto_1
    return-object v2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "jpg"

    goto :goto_1
.end method

.method private saveBitmapToOutputStream(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Lcom/sec/android/gallery3d/util/InterruptableOutputStream;

    invoke-direct {v1, p4}, Lcom/sec/android/gallery3d/util/InterruptableOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v2, Lcom/sec/android/gallery3d/crop/NormalImageCropResult$1;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/gallery3d/crop/NormalImageCropResult$1;-><init>(Lcom/sec/android/gallery3d/crop/NormalImageCropResult;Lcom/sec/android/gallery3d/util/InterruptableOutputStream;)V

    invoke-interface {p1, v2}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    const/16 v0, 0x64

    :try_start_0
    invoke-virtual {p2, p3, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "NormalImageCropResult"

    const-string/jumbo v3, "Bitmap write errror!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1, v4}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {p1, v4}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/sec/android/gallery3d/util/ThreadPool$CancelListener;)V

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method private saveBitmapToUri(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 4

    invoke-virtual {p0, p3}, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->makeFolderForOutput(Landroid/net/Uri;)V

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->saveBitmapToOutputStream(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :try_start_2
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return v2

    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v2
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "NormalImageCropResult"

    const-string/jumbo v3, "cannot write output"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private saveCallerId(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/CropImage;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    const-string/jumbo v7, "NormalImageCropResult"

    const-string/jumbo v8, "created file not exist: "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    :cond_1
    :goto_0
    return v5

    :catch_0
    move-exception v2

    const-string/jumbo v7, "NormalImageCropResult"

    const-string/jumbo v8, "fail to create new file: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v8, v6}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v8, v6}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0, p1, p2, v7, v4}, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->saveBitmapToOutputStream(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move v5, v6

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_1
    :try_start_3
    const-string/jumbo v7, "NormalImageCropResult"

    const-string/jumbo v8, "fail to save image: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move v5, v6

    goto :goto_0

    :catchall_0
    move-exception v6

    :goto_2
    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v6

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v3, v4

    goto :goto_1
.end method


# virtual methods
.method public setResultIntent(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Intent;Landroid/graphics/Rect;)Landroid/content/Intent;
    .locals 8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v5, "output"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iget-object v5, p0, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v5, p3}, Lcom/sec/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->mCroppedBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "is-caller-id"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->mCroppedBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/CropImage;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->getCallerIdSavePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v5, v6}, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->saveCallerId(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object p2, v4

    :goto_0
    return-object p2

    :cond_0
    const/4 v2, 0x0

    iget-boolean v5, p0, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->mCropForVideoCall:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->mCroppedBitmap:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->mVideoCallRW:I

    iget v7, p0, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->mVideoCallRH:I

    invoke-static {v5, v6, v7}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownForVideoCall(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    :goto_1
    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->saveBitmapToUri(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_3

    move-object p2, v4

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->mCroppedBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v4, v4, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v4, v4, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v4, :cond_5

    :cond_4
    const-string/jumbo v4, "takenTime"

    iget-object v5, p0, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v6

    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v4, "latitude"

    iget-object v5, p0, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string/jumbo v4, "longitude"

    iget-object v5, p0, Lcom/sec/android/gallery3d/crop/NormalImageCropResult;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getLongitude()D

    move-result-wide v6

    invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    :cond_5
    const-string/jumbo v4, "output"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method
