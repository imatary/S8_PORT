.class public Lcom/sec/android/multilock/ThumbnailInfo;
.super Ljava/lang/Object;
.source "ThumbnailInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/multilock/ThumbnailInfo$OnLoadFinishListener;,
        Lcom/sec/android/multilock/ThumbnailInfo$PreviewLoaderTask;,
        Lcom/sec/android/multilock/ThumbnailInfo$ThumbnailLoaderTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cropper2_ThumbnailInfo"


# instance fields
.field private mBlurBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mFilePath:Ljava/lang/String;

.field private mHeight:I

.field private mIndex:I

.field private mIsFromThemeStore:Z

.field private mIsPreviewLoaded:Z

.field private mIsSelected:Z

.field private mIsThumbnailLoaded:Z

.field private mPreviewBitmap:Landroid/graphics/Bitmap;

.field private mPreviewLoaderTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mRotation:I

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method static synthetic -wrap0(Lcom/sec/android/multilock/ThumbnailInfo;IZ)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/multilock/ThumbnailInfo;->decodePreview(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sec/android/multilock/ThumbnailInfo;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/multilock/ThumbnailInfo;->setPreview(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Utils;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mFilePath:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mIndex:I

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->isFromThemeStore()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mIsFromThemeStore:Z

    return-void
.end method

.method public static checkImageRotation(Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v2}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    :try_start_0
    invoke-virtual {v2, p0}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    sget v0, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "Cropper2_ThumbnailInfo"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private decodePreview(IZ)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    const-string/jumbo v0, "Cropper2_ThumbnailInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "decodePreview uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mHeight:I

    if-gtz v0, :cond_6

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean v1, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mFilePath:Ljava/lang/String;

    invoke-static {v0, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mWidth:I

    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mHeight:I

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/multilock/ThumbnailInfo;->checkImageRotation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mRotation:I

    :cond_1
    iget v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mRotation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/gallery3d/util/Utils;->isAttachedMobileKeyboard(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->getDisplayWidthPixels()I

    move-result v3

    :goto_2
    if-eqz v4, :cond_9

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->getDisplayHeightPixels()I

    move-result v4

    :goto_3
    if-eqz v0, :cond_a

    move v6, v4

    :goto_4
    if-eqz v0, :cond_b

    move v0, v3

    :goto_5
    const-string/jumbo v3, "Cropper2_ThumbnailInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "frameWidth = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "; frameHeight = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mWidth:I

    iget v4, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mHeight:I

    invoke-direct {p0, v6, v0, v3, v4}, Lcom/sec/android/multilock/ThumbnailInfo;->getWantRegion(IIII)Landroid/graphics/Rect;

    move-result-object v3

    int-to-float v4, p1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v4, v8

    invoke-static {v4}, Lcom/android/gallery3d/util/BitmapUtils;->computeSampleSize(F)I

    move-result v4

    iput v4, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v4, v8

    int-to-double v8, p1

    const-wide v10, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v8, v10

    double-to-int v8, v8

    if-ge v4, v8, :cond_2

    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_2
    iput-boolean v2, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const-string/jumbo v2, "Cropper2_ThumbnailInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "decode preview index = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mIndex:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "; wantRegion = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "; inSampleSize = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_f

    invoke-direct {p0}, Lcom/sec/android/multilock/ThumbnailInfo;->loadSecMMRegionDecoder()Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    move-result-object v2

    :goto_6
    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/sec/android/multilock/ThumbnailInfo;->loadGraphicRegionDecoder()Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_e

    :try_start_0
    invoke-interface {v2, v3, v7}, Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :try_start_1
    invoke-interface {v2}, Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    :goto_7
    if-nez v2, :cond_d

    const-string/jumbo v3, "Cropper2_ThumbnailInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "decode preview index = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mIndex:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " : decode region failed"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    iget-object v3, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mFilePath:Ljava/lang/String;

    invoke-static {v3, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {p0, v6, v0, v3, v4}, Lcom/sec/android/multilock/ThumbnailInfo;->getWantRegion(IIII)Landroid/graphics/Rect;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v2, v3, v4, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_8
    if-eqz v0, :cond_c

    int-to-float v2, p1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_5

    invoke-static {v0, v2, v1}, Lcom/android/gallery3d/util/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_5
    iget v2, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mRotation:I

    invoke-static {v0, v2, v1}, Lcom/android/gallery3d/util/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_6
    move v0, v2

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->getLcdWidthPixels()I

    move-result v3

    goto/16 :goto_2

    :cond_9
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->getLcdHeightPixels()I

    move-result v4

    goto/16 :goto_3

    :cond_a
    move v6, v3

    goto/16 :goto_4

    :cond_b
    move v0, v4

    goto/16 :goto_5

    :catch_0
    move-exception v2

    move-object v3, v5

    :goto_9
    const-string/jumbo v4, "Cropper2_ThumbnailInfo"

    const-string/jumbo v8, "Fail to decode region"

    invoke-static {v4, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    goto/16 :goto_7

    :catch_1
    move-exception v0

    const-string/jumbo v3, "Cropper2_ThumbnailInfo"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_8

    :cond_c
    return-object v5

    :catch_2
    move-exception v2

    goto :goto_9

    :cond_d
    move-object v0, v2

    goto :goto_8

    :cond_e
    move-object v2, v5

    goto/16 :goto_7

    :cond_f
    move-object v2, v5

    goto/16 :goto_6
.end method

.method private decodeThumbnail(I)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mHeight:I

    if-gtz v0, :cond_4

    :cond_0
    move v0, v4

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean v4, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mFilePath:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mWidth:I

    iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mHeight:I

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/multilock/ThumbnailInfo;->checkImageRotation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mRotation:I

    :cond_1
    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mFilePath:Ljava/lang/String;

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mFilePath:Ljava/lang/String;

    const-string/jumbo v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    new-instance v0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    if-nez v1, :cond_6

    int-to-float v0, p1

    iget v6, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mWidth:I

    iget v7, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v0, v6

    invoke-static {v0}, Lcom/android/gallery3d/util/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v0

    iput v0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v2, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mUri:Landroid/net/Uri;

    iget-boolean v6, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mIsFromThemeStore:Z

    invoke-static {v0, v2, v6}, Lcom/android/gallery3d/util/Utils;->regenerateInputStream(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    const/4 v0, 0x0

    :try_start_2
    invoke-static {v2, v0, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    if-nez v0, :cond_3

    :try_start_3
    iget-object v1, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mFilePath:Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    :cond_3
    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_2
    if-nez v0, :cond_5

    :goto_3
    return-object v3

    :cond_4
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_ThumbnailInfo"

    const-string/jumbo v6, "fail to get exif thumb"

    invoke-static {v1, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v0, "Cropper2_ThumbnailInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to get thumbnail from: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v0, "Cropper2_ThumbnailInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to find file to read thumbnail: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    :goto_4
    :try_start_4
    const-string/jumbo v5, "Cropper2_ThumbnailInfo"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_5
    move-object v0, v2

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v2, v3

    :goto_6
    :try_start_5
    const-string/jumbo v5, "Cropper2_ThumbnailInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v1

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_7
    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :cond_5
    iget v1, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mRotation:I

    invoke-static {v0, v1, p1, p1, v4}, Lcom/android/gallery3d/util/BitmapUtils;->resizeAndCropCenter(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_4

    :catch_8
    move-exception v1

    move-object v8, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_4

    :cond_6
    move-object v0, v1

    goto/16 :goto_2

    :cond_7
    move-object v1, v3

    goto/16 :goto_1
.end method

.method public static getBlackBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0
.end method

.method private getWantRegion(IIII)Landroid/graphics/Rect;
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    int-to-float v1, p3

    int-to-float v2, p4

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    int-to-float v0, p2

    int-to-float v1, p4

    div-float/2addr v0, v1

    int-to-float v1, p1

    div-float v0, v1, v0

    float-to-int v0, v0

    sub-int v1, p3, v0

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, p4, -0x1

    move v2, v3

    :goto_0
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    const-string/jumbo v0, "Cropper2_ThumbnailInfo"

    const-string/jumbo v1, "image size is 1x1 or wrong size : so we scale to frame size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, p1, -0x1

    add-int/lit8 v0, p2, -0x1

    move v2, v3

    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v3, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    :cond_1
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v0, v1

    int-to-float v1, p2

    div-float v0, v1, v0

    float-to-int v0, v0

    sub-int v1, p4, v0

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/lit8 v1, p3, -0x1

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method private loadGraphicRegionDecoder()Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mUri:Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mIsFromThemeStore:Z

    invoke-static {v0, v1, v3}, Lcom/android/gallery3d/util/Utils;->regenerateInputStream(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mFilePath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;->newInstance(Ljava/lang/String;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :cond_0
    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_0
    :try_start_2
    const-string/jumbo v3, "Cropper2_ThumbnailInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to load GraphicRegionDecoder for file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private loadSecMMRegionDecoder()Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mUri:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/android/gallery3d/util/Utils;->regenerateInputStream(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :cond_0
    :try_start_2
    const-string/jumbo v0, "Cropper2_ThumbnailInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cannot get input stream for uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mFilePath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->newInstance(Ljava/lang/String;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_0
    :try_start_3
    const-string/jumbo v3, "Cropper2_ThumbnailInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to load SecMMRegionDecoder for file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private setPreview(Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v4, 0x1

    if-nez p1, :cond_0

    const-string/jumbo v0, "Cropper2_ThumbnailInfo"

    const-string/jumbo v1, "setPreview bitmap = null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mPreviewBitmap:Landroid/graphics/Bitmap;

    iput-boolean v4, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mIsPreviewLoaded:Z

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43000000    # 128.0f

    div-float v0, v1, v0

    iget-object v1, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mPreviewBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/gallery3d/util/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41c80000    # 25.0f

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/util/BitmapUtils;->createBlurredImage(Landroid/content/Context;FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    iget-object v1, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mPreviewBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->setWallpaperPreview(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mIsSelected:Z

    return v0
.end method

.method public loadThumbnail()Z
    .locals 9

    const/4 v8, 0x1

    iget-boolean v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mIsThumbnailLoaded:Z

    if-eqz v0, :cond_0

    return v8

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x100

    invoke-direct {p0, v2}, Lcom/sec/android/multilock/ThumbnailInfo;->decodeThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string/jumbo v3, "Cropper2_ThumbnailInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadThumbnail index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " decode thumbnail time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    iput-boolean v8, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mIsThumbnailLoaded:Z

    iput-object v2, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mThumbnail:Landroid/graphics/Bitmap;

    return v8

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mIsPreviewLoaded:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Cropper2_ThumbnailInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onclick index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mIsPreviewLoaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;

    iget-object v1, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mPreviewBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/wallpapercropper2/MultiLockCropActivity;->setWallpaperPreview(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    const-string/jumbo v0, "Cropper2_ThumbnailInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onclick index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " start load preview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/multilock/ThumbnailInfo$PreviewLoaderTask;

    invoke-direct {v0}, Lcom/sec/android/multilock/ThumbnailInfo$PreviewLoaderTask;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/multilock/ThumbnailInfo$PreviewLoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mPreviewLoaderTask:Landroid/os/AsyncTask;

    return-void
.end method

.method public recycleData(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "Cropper2_ThumbnailInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recycleData index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mPreviewLoaderTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mPreviewLoaderTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mPreviewBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mBlurBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iput-boolean v4, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mIsPreviewLoaded:Z

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v3, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mThumbnail:Landroid/graphics/Bitmap;

    iput-boolean v4, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mIsThumbnailLoaded:Z

    :cond_3
    return-void
.end method

.method public setIsSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/multilock/ThumbnailInfo;->mIsSelected:Z

    return-void
.end method
