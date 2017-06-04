.class public Lcom/sec/android/gallery3d/crop/AgifImageCropResult;
.super Lcom/sec/android/gallery3d/crop/CropResult;
.source "AgifImageCropResult.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AgifImageCropResult"


# instance fields
.field private final mGifCropper:Lcom/sec/android/gallery3d/crop/GifCropper;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/CropImage;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/crop/CropResult;-><init>(Lcom/sec/android/gallery3d/app/CropImage;)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/CropImage;->getGifCropper()Lcom/sec/android/gallery3d/crop/GifCropper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/crop/AgifImageCropResult;->mGifCropper:Lcom/sec/android/gallery3d/crop/GifCropper;

    return-void
.end method

.method private saveCroppedAgifToUri(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/net/Uri;)Z
    .locals 5

    invoke-virtual {p0, p2}, Lcom/sec/android/gallery3d/crop/AgifImageCropResult;->makeFolderForOutput(Landroid/net/Uri;)V

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/crop/AgifImageCropResult;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const/4 v1, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/crop/AgifImageCropResult;->mGifCropper:Lcom/sec/android/gallery3d/crop/GifCropper;

    iget-object v4, p0, Lcom/sec/android/gallery3d/crop/AgifImageCropResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/crop/GifCropper;->getCroppedAGifFileOS(Landroid/net/Uri;)Ljava/io/FileInputStream;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/crop/AgifImageCropResult;->mGifCropper:Lcom/sec/android/gallery3d/crop/GifCropper;

    invoke-virtual {v3, p1, v1, v2}, Lcom/sec/android/gallery3d/crop/GifCropper;->saveCropedAgifToOutputStream(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/io/FileInputStream;Ljava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    :try_start_2
    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return v3

    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AgifImageCropResult"

    const-string/jumbo v4, "cannot write output"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setResultIntent(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Intent;Landroid/graphics/Rect;)Landroid/content/Intent;
    .locals 3

    iget-object v2, p0, Lcom/sec/android/gallery3d/crop/AgifImageCropResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "output"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/gallery3d/crop/AgifImageCropResult;->saveCroppedAgifToUri(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p2, 0x0

    :goto_0
    return-object p2

    :cond_0
    const-string/jumbo v2, "output"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "gif"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
