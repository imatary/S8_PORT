.class public Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;
.super Lcom/sec/android/gallery3d/crop/CropResult;
.source "ReturnDataCropResult.java"


# static fields
.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_IS_MANUAL_FD:Ljava/lang/String; = "is-manual-fd"

.field private static final TAG:Ljava/lang/String; = "ReturnDataCropResult"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/CropImage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/crop/CropResult;-><init>(Lcom/sec/android/gallery3d/app/CropImage;)V

    return-void
.end method


# virtual methods
.method public setResultIntent(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/Intent;Landroid/graphics/Rect;)Landroid/content/Intent;
    .locals 11

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v5, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mCroppedBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mActivity:Lcom/sec/android/gallery3d/app/CropImage;

    invoke-virtual {v5, p3}, Lcom/sec/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mCroppedBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mCroppedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    iget-boolean v5, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mCropForVideoCall:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mCroppedBitmap:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mVideoCallRW:I

    iget v7, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mVideoCallRH:I

    invoke-static {v5, v6, v7}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownForVideoCall(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mCroppedBitmap:Landroid/graphics/Bitmap;

    :cond_1
    const v0, 0x19000

    const v2, 0x7d000

    const v1, 0x9c40

    iget-object v5, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "is-manual-fd"

    invoke-virtual {v5, v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    if-le v4, v1, :cond_3

    iget-object v5, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mCroppedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5, v1, v9}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownToPixels(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mCroppedBitmap:Landroid/graphics/Bitmap;

    :cond_2
    :goto_0
    const-string/jumbo v5, "data"

    iget-object v6, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mCroppedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p2

    :cond_3
    iget-boolean v5, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mCropForVideoCall:Z

    if-eqz v5, :cond_4

    if-le v4, v2, :cond_4

    iget-object v5, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mCroppedBitmap:Landroid/graphics/Bitmap;

    const v6, 0x1f400

    invoke-static {v5, v6, v9}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownToPixels(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mCroppedBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mCroppedBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    const-string/jumbo v5, "ReturnDataCropResult"

    const-string/jumbo v6, "Original bitmap size(%s) re-size(%s) video call"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget-object v8, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mCroppedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-le v4, v0, :cond_2

    iget-object v5, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mCroppedBitmap:Landroid/graphics/Bitmap;

    const/16 v6, 0x6400

    invoke-static {v5, v6, v9}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownToPixels(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mCroppedBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mCroppedBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    const-string/jumbo v5, "ReturnDataCropResult"

    const-string/jumbo v6, "Original bitmap size(%s) re-size(%s)"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget-object v8, p0, Lcom/sec/android/gallery3d/crop/ReturnDataCropResult;->mCroppedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
