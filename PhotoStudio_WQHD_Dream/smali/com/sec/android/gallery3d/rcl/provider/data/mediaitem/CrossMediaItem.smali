.class public abstract Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;
.super Ljava/lang/Object;
.source "CrossMediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem$MediaItemFactory;
    }
.end annotation


# static fields
.field public static final CLOUD_ONLY_ITEM:I = 0x2

.field public static final DATA_SOURCE_LOCAL:I = 0x10

.field public static final DATA_SOURCE_NONE:I = 0x20

.field public static final MAX_IMAGE_SIZE:I = 0x1194

.field public static final MEDIA_ALL:I = 0x3

.field public static final MEDIA_IMAGE:I = 0x1

.field public static final MEDIA_NONE:I = 0x4

.field public static final MEDIA_VIDEO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CrossLocalVideo"

.field public static final THUBMNAIL_RESOLUTION_HIGH:I = 0x1

.field public static final THUBMNAIL_RESOLUTION_LOW:I = 0x3

.field public static final THUBMNAIL_RESOLUTION_MEDIUM:I = 0x2

.field private static mThumbSizeHigh:I

.field private static mThumbSizeLow:I

.field private static mThumbSizeMedium:I


# instance fields
.field protected CLOUD_IMAGE_BASE_URI:Landroid/net/Uri;

.field protected CLOUD_VIDEO_BASE_URI:Landroid/net/Uri;

.field protected mBrokenPictureThumbnail:Landroid/graphics/Bitmap;

.field protected mBrokenVideoThumbnail:Landroid/graphics/Bitmap;

.field protected mCloudId:I

.field protected mCloudIsAvailableThumb:I

.field protected mContext:Landroid/content/Context;

.field protected mDataSourceType:I

.field protected mDateModified:J

.field protected mFilePath:Ljava/lang/String;

.field protected mFileSize:I

.field protected mIsBroken:Z

.field protected mIsCloud:I

.field protected mIsThumbExist:Z

.field protected mMediaId:I

.field protected mMediaType:I

.field protected mMimeType:Ljava/lang/String;

.field protected mOrientation:I

.field protected mResource:Landroid/content/res/Resources;

.field protected mThumbFilePath:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa8

    sput v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mThumbSizeLow:I

    const/16 v0, 0x1d8

    sput v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mThumbSizeMedium:I

    const/16 v0, 0x280

    sput v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mThumbSizeHigh:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;II)V
    .locals 3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mDataSourceType:I

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mIsBroken:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mIsThumbExist:Z

    iput v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mFileSize:I

    iput v1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mMediaId:I

    iput v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mCloudId:I

    iput v1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mMediaType:I

    iput v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mOrientation:I

    iput v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mIsCloud:I

    iput v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mCloudIsAvailableThumb:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mDateModified:J

    iput-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mFilePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mThumbFilePath:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mMimeType:Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mBrokenVideoThumbnail:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mBrokenPictureThumbnail:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Images;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->CLOUD_IMAGE_BASE_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Videos;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->CLOUD_VIDEO_BASE_URI:Landroid/net/Uri;

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mMediaType:I

    iput p3, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mDataSourceType:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mResource:Landroid/content/res/Resources;

    return-void
.end method

.method private static getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    return-object v0
.end method

.method public static setThumbnailSize(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/gallery3d/rcl/provider/R$dimen;->thumbnail_resolution_amount_low:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mThumbSizeLow:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/gallery3d/rcl/provider/R$dimen;->thumbnail_resolution_amount_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mThumbSizeMedium:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/gallery3d/rcl/provider/R$dimen;->thumbnail_resolution_amount_high:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mThumbSizeHigh:I

    return-void
.end method


# virtual methods
.method protected decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->isNOS()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "CrossLocalVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method protected getBrokenPictureThumbnail(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->isNOS()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v0, Lcom/sec/android/gallery3d/rcl/provider/R$drawable;->thumbnail_error:I

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mBrokenPictureThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mBrokenPictureThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mBrokenPictureThumbnail:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mBrokenPictureThumbnail:Landroid/graphics/Bitmap;

    return-object v1

    :cond_2
    sget v0, Lcom/sec/android/gallery3d/rcl/provider/R$drawable;->thumbnail_image_error:I

    goto :goto_0
.end method

.method protected getBrokenVideoThumbnail(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->isNOS()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v0, Lcom/sec/android/gallery3d/rcl/provider/R$drawable;->thumbnail_error:I

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mBrokenVideoThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mBrokenVideoThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mBrokenVideoThumbnail:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mBrokenVideoThumbnail:Landroid/graphics/Bitmap;

    return-object v1

    :cond_2
    sget v0, Lcom/sec/android/gallery3d/rcl/provider/R$drawable;->thumbnail_video_error:I

    goto :goto_0
.end method

.method public getCloudId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mCloudId:I

    return v0
.end method

.method public getCloudIsAvailableThumb()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mCloudIsAvailableThumb:I

    return v0
.end method

.method protected getCloudThumbnail(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget v3, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mCloudId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->getThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v3, "CrossLocalVideo"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract getContentUri()Landroid/net/Uri;
.end method

.method public getDataSourceType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mDataSourceType:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mFileSize:I

    return v0
.end method

.method public getIsCloud()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mIsCloud:I

    return v0
.end method

.method public getMediaId()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getIsCloud()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mCloudId:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mMediaId:I

    goto :goto_0
.end method

.method public getMediaType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mMediaType:I

    return v0
.end method

.method protected getResizedThumbnail(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    move-object v0, p1

    iget v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mOrientation:I

    if-eqz v2, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mOrientation:I

    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0, p2, v6}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xff

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->makeTransparent(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected getThumbBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12

    const/16 v11, 0x1194

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v9, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getThumbnailSize(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    div-float v6, v9, v10

    if-ge v3, v11, :cond_0

    if-lt v4, v11, :cond_1

    :cond_0
    iget-object v9, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1

    move v1, v7

    :goto_0
    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->isPanoramaImage(II)Z

    move-result v2

    const/high16 v9, 0x3f800000    # 1.0f

    div-float/2addr v9, v6

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v5, v10

    if-nez v2, :cond_9

    if-gt v5, v7, :cond_2

    const/4 v5, 0x1

    :goto_1
    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    return-object v7

    :cond_1
    move v1, v8

    goto :goto_0

    :cond_2
    const/4 v9, 0x4

    if-gt v5, v9, :cond_3

    if-nez v1, :cond_3

    const/4 v5, 0x2

    goto :goto_1

    :cond_3
    const/16 v9, 0x8

    if-gt v5, v9, :cond_4

    if-nez v1, :cond_4

    const/4 v5, 0x4

    goto :goto_1

    :cond_4
    const/16 v9, 0x10

    if-gt v5, v9, :cond_5

    if-nez v1, :cond_5

    const/4 v5, 0x6

    goto :goto_1

    :cond_5
    const/16 v9, 0x20

    if-gt v5, v9, :cond_6

    if-nez v1, :cond_6

    const/16 v5, 0x8

    goto :goto_1

    :cond_6
    const/16 v9, 0x30

    if-gt v5, v9, :cond_7

    if-nez v1, :cond_7

    const/16 v5, 0xc

    goto :goto_1

    :cond_7
    const/16 v9, 0x40

    if-gt v5, v9, :cond_8

    if-nez v1, :cond_8

    invoke-static {v5}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v5

    goto :goto_1

    :cond_8
    div-int/lit8 v9, v5, 0x8

    mul-int/lit8 v5, v9, 0x8

    goto :goto_1

    :cond_9
    if-gt v5, v7, :cond_a

    const/4 v5, 0x1

    goto :goto_1

    :cond_a
    const/16 v9, 0x1e

    if-gt v5, v9, :cond_b

    const/4 v5, 0x4

    goto :goto_1

    :cond_b
    const/16 v5, 0x8

    goto :goto_1
.end method

.method public getThumbFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mThumbFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getThumbnail(III)Landroid/graphics/Bitmap;
.end method

.method public abstract getThumbnailFromCache(I)Landroid/graphics/Bitmap;
.end method

.method public getThumbnailSize(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    sget v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mThumbSizeLow:I

    :goto_0
    return v0

    :pswitch_0
    sget v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mThumbSizeLow:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mThumbSizeMedium:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mThumbSizeHigh:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getmMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public isBroken()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mIsBroken:Z

    return v0
.end method

.method public isDrm()Z
    .locals 3

    iget v1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mIsCloud:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mThumbFilePath:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->isDrm(Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public isThumbExist()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mIsThumbExist:Z

    return v0
.end method

.method protected makeTransparent(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const/high16 v5, -0x1000000

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v0, p1, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v3
.end method

.method protected resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 12

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ne v7, v1, :cond_0

    if-gt v3, p2, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float v9, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {p1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->getConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v9

    invoke-static {p2, p2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int v9, p2, v8

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-int v10, p2, v2

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v4, Landroid/graphics/Paint;

    const/4 v9, 0x6

    invoke-direct {v4, v9}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, p1, v9, v10, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p1, v6

    goto :goto_0
.end method

.method public setBroken(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mIsBroken:Z

    return-void
.end method

.method public setCloudId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mCloudId:I

    return-void
.end method

.method public setCloudIsAvailableThumb(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mCloudIsAvailableThumb:I

    return-void
.end method

.method public setDateModified(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mDateModified:J

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mFileSize:I

    return-void
.end method

.method public setIsCloud(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mIsCloud:I

    return-void
.end method

.method public setMediaId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mMediaId:I

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mOrientation:I

    return-void
.end method

.method public setThumbExist(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mIsThumbExist:Z

    return-void
.end method

.method public setThumbFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mThumbFilePath:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->mTitle:Ljava/lang/String;

    return-void
.end method
