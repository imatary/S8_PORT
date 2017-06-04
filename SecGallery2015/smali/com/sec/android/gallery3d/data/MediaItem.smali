.class public abstract Lcom/sec/android/gallery3d/data/MediaItem;
.super Lcom/sec/android/gallery3d/data/MediaObject;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;,
        Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;,
        Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_BYTESBUFFER_SIZE:I = 0x50

.field private static final ATTRIBUTE_BYTESBUFFE_POOL_SIZE:I = 0x7

.field public static final ATTR_360_CONTENT:J = 0x8000000L

.field public static final ATTR_3DMPO:J = 0x2L

.field public static final ATTR_3DPANORAMA:J = 0x8L

.field public static final ATTR_3DTOUR:J = 0x400L

.field public static final ATTR_AGIF:J = 0x20L

.field public static final ATTR_BESTFACE:J = 0x2000L

.field public static final ATTR_BESTPHOTO:J = 0x1000L

.field public static final ATTR_BURSTSHOT:J = 0x200L

.field public static final ATTR_DEFAULT:J = 0x0L

.field public static final ATTR_DNG_IMAGE:J = 0x20000000L

.field public static final ATTR_DRAMASHOT:J = 0x8000L

.field public static final ATTR_ENVIRONMENT_TAG:J = 0x400000L

.field public static final ATTR_ERASER:J = 0x4000L

.field public static final ATTR_FLIPPHOTO:J = 0x4000000L

.field public static final ATTR_GOLFSHOT:J = 0x80L

.field public static final ATTR_MAGICSHOT:J = 0x800L

.field public static final ATTR_MOTION_PHOTO:J = 0x2000000L

.field public static final ATTR_OUTOFFOCUS:J = 0x20000L

.field public static final ATTR_PANORAMA:J = 0x200000L

.field public static final ATTR_PICMOTION:J = 0x10000L

.field public static final ATTR_SELFIE:J = 0x800000L

.field public static final ATTR_SEQUENCE:J = 0x40000L

.field public static final ATTR_SOUND_SCENE:J = 0x10L

.field public static final ATTR_SPANORAMA:J = 0x4L

.field public static final ATTR_SURROUNDSHOT:J = 0x40000000L

.field public static final ATTR_VIRTUALSHOT:J = 0x100000L

.field public static final CASE_DELETE:I = 0x1

.field public static final CASE_NONE:I = 0x0

.field public static final CASE_REMOVE_TAG:I = 0x3

.field public static final INVALID_LATLNG:D = 0.0

.field public static final ITEM_TYPE_CONFIRMED:I = 0x1

.field public static final ITEM_TYPE_NULL:I = -0x1

.field public static final ITEM_TYPE_UNCONFIRMED:I = 0x0

.field private static final LARGE_BYTESBUFFER_SIZE:I = 0xc8000

.field private static final LARGE_BYTESBUFFE_POOL_SIZE:I = 0x1

.field private static final MICRO_BYTESBUFFER_SIZE:I = 0x50000

.field private static final MICRO_BYTESBUFFE_POOL_SIZE:I = 0x7

.field public static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final MINIMUM_VIDEO_SIZE:I = 0x280

.field public static final NEED_LOAD_FACE_POSITION:I = -0x1

.field public static final NO_FACE_POSITION:I = -0x2

.field public static final SUB_ATTR_MOTION_PANORAMA:J = 0x1000000L

.field public static final SUB_ATTR_SELF_MOTION_PANORAMA:J = 0x10000000L

.field public static final TYPE_ATTRIBUTE:I = 0x7

.field public static final TYPE_CROPTHUMBNAIL:I = 0x5

.field public static final TYPE_LARGE_WIDGET_THUMBNAIL:I = 0x6

.field public static final TYPE_MICROTHUMBNAIL:I = 0x2

.field public static final TYPE_MINI_MICROTHUMBNAIL:I = 0x3

.field public static final TYPE_NANOTHUMBNAIL:I = 0x4

.field public static final TYPE_THUMBNAIL:I = 0x1

.field private static final sAttributeBufferPool:Lcom/sec/android/gallery3d/data/BytesBufferPool;

.field private static final sLargeThumbBufferPool:Lcom/sec/android/gallery3d/data/BytesBufferPool;

.field private static final sMicroThumbBufferPool:Lcom/sec/android/gallery3d/data/BytesBufferPool;

.field private static sMicrothumbnailTargetSize:I

.field private static sMiniMicroThumbnailTargetSize:I

.field private static sNanoThumbnailTargetSize:I

.field private static sThumbnailTargetSize:I

.field private static sVideoThumbnailTargetSize:I


# instance fields
.field protected faces:[Lcom/sec/android/gallery3d/data/Face;

.field is3dpanorama:Z

.field private isBroken:Z

.field isFlipPhoto:Z

.field isSceretBoxItem:Z

.field private mAttribute:J

.field private mAttributePending:J

.field mExistFile:Z

.field private mIsAGIF:Z

.field mIsFavorite:Z

.field mIsFromMessage:Z

.field private mIsSendedMessage:Z

.field private mNeedCloudOnlyThumb:Z

.field private mNeedDecorDraw:Z

.field private mParentSetPath:Lcom/sec/android/gallery3d/data/Path;

.field private mSubAttribute:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x7

    const/16 v3, 0x280

    new-instance v0, Lcom/sec/android/gallery3d/data/BytesBufferPool;

    const/high16 v1, 0x50000

    invoke-direct {v0, v4, v1}, Lcom/sec/android/gallery3d/data/BytesBufferPool;-><init>(II)V

    sput-object v0, Lcom/sec/android/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcom/sec/android/gallery3d/data/BytesBufferPool;

    new-instance v0, Lcom/sec/android/gallery3d/data/BytesBufferPool;

    const/4 v1, 0x1

    const v2, 0xc8000

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/BytesBufferPool;-><init>(II)V

    sput-object v0, Lcom/sec/android/gallery3d/data/MediaItem;->sLargeThumbBufferPool:Lcom/sec/android/gallery3d/data/BytesBufferPool;

    new-instance v0, Lcom/sec/android/gallery3d/data/BytesBufferPool;

    const/16 v1, 0x50

    invoke-direct {v0, v4, v1}, Lcom/sec/android/gallery3d/data/BytesBufferPool;-><init>(II)V

    sput-object v0, Lcom/sec/android/gallery3d/data/MediaItem;->sAttributeBufferPool:Lcom/sec/android/gallery3d/data/BytesBufferPool;

    sput v3, Lcom/sec/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    sput v3, Lcom/sec/android/gallery3d/data/MediaItem;->sVideoThumbnailTargetSize:I

    sput v3, Lcom/sec/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    const/16 v0, 0x140

    sput v0, Lcom/sec/android/gallery3d/data/MediaItem;->sMiniMicroThumbnailTargetSize:I

    const/16 v0, 0xa0

    sput v0, Lcom/sec/android/gallery3d/data/MediaItem;->sNanoThumbnailTargetSize:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;J)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/data/MediaObject;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mIsAGIF:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mNeedCloudOnlyThumb:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/MediaItem;->is3dpanorama:Z

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mAttribute:J

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mSubAttribute:J

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mAttributePending:J

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/MediaItem;->isSceretBoxItem:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mExistFile:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mIsFromMessage:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mIsSendedMessage:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/MediaItem;->isFlipPhoto:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mNeedDecorDraw:Z

    return-void
.end method

.method public static getAttributeBytesBufferPool()Lcom/sec/android/gallery3d/data/BytesBufferPool;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/data/MediaItem;->sAttributeBufferPool:Lcom/sec/android/gallery3d/data/BytesBufferPool;

    return-object v0
.end method

.method public static getBytesBufferPool(I)Lcom/sec/android/gallery3d/data/BytesBufferPool;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/data/MediaItem;->sLargeThumbBufferPool:Lcom/sec/android/gallery3d/data/BytesBufferPool;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/data/MediaItem;->sMicroThumbBufferPool:Lcom/sec/android/gallery3d/data/BytesBufferPool;

    goto :goto_0
.end method

.method public static getTargetSize(I)I
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "should only request thumb/microthumb from cache"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget v0, Lcom/sec/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    :goto_0
    return v0

    :pswitch_1
    sget v0, Lcom/sec/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/sec/android/gallery3d/data/MediaItem;->sMiniMicroThumbnailTargetSize:I

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/sec/android/gallery3d/data/MediaItem;->sNanoThumbnailTargetSize:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getVideoTargetSize(I)I
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "should only request thumb/microthumb from cache"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget v0, Lcom/sec/android/gallery3d/data/MediaItem;->sVideoThumbnailTargetSize:I

    :goto_0
    return v0

    :pswitch_1
    sget v0, Lcom/sec/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/sec/android/gallery3d/data/MediaItem;->sMiniMicroThumbnailTargetSize:I

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/sec/android/gallery3d/data/MediaItem;->sNanoThumbnailTargetSize:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setThumbnailSizes(IF)V
    .locals 4

    const/16 v0, 0x280

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isOverWQHD(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_3

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getWqhdHeightPixels()I

    move-result v0

    if-le p0, v0, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getWqhdHeightPixels()I

    move-result p0

    :cond_1
    div-int/lit8 v0, p0, 0x2

    sput v0, Lcom/sec/android/gallery3d/data/MediaItem;->sVideoThumbnailTargetSize:I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLargeScreenNail:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    div-int/lit8 v0, p0, 0x8

    mul-int/lit8 v0, v0, 0x3

    sput v0, Lcom/sec/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    :goto_0
    div-int/lit8 v0, p0, 0x5

    sput v0, Lcom/sec/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    int-to-double v0, p0

    const-wide v2, 0x402d333333333333L    # 14.6

    div-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/sec/android/gallery3d/data/MediaItem;->sMiniMicroThumbnailTargetSize:I

    :goto_1
    div-int/lit8 v0, p0, 0x14

    sput v0, Lcom/sec/android/gallery3d/data/MediaItem;->sNanoThumbnailTargetSize:I

    const-string/jumbo v0, "Gallery_ThumbnailSize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sVideoThumbnailTargetSize ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/gallery3d/data/MediaItem;->sVideoThumbnailTargetSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Gallery_ThumbnailSize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sThumbnailTargetSize ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Gallery_ThumbnailSize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sMicrothumbnailTargetSize ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Gallery_ThumbnailSize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sMiniMicroThumbnailTargetSize ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/gallery3d/data/MediaItem;->sMiniMicroThumbnailTargetSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Gallery_ThumbnailSize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sNanoThumbnailTargetSize ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/gallery3d/data/MediaItem;->sNanoThumbnailTargetSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    div-int/lit8 v0, p0, 0x4

    sput v0, Lcom/sec/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    goto/16 :goto_0

    :cond_3
    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_6

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getHhdHeightPixels()I

    move-result v1

    if-le p0, v1, :cond_4

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getHhdHeightPixels()I

    move-result p0

    :cond_4
    div-int/lit8 v1, p0, 0x2

    if-le v1, v0, :cond_5

    div-int/lit8 v0, p0, 0x2

    :cond_5
    sput v0, Lcom/sec/android/gallery3d/data/MediaItem;->sVideoThumbnailTargetSize:I

    div-int/lit8 v0, p0, 0x2

    sput v0, Lcom/sec/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    div-int/lit8 v0, p0, 0x4

    sput v0, Lcom/sec/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    div-int/lit8 v0, p0, 0xa

    sput v0, Lcom/sec/android/gallery3d/data/MediaItem;->sMiniMicroThumbnailTargetSize:I

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getFhdHeightPixels()I

    move-result v0

    if-le p0, v0, :cond_7

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getFhdHeightPixels()I

    move-result p0

    :cond_7
    div-int/lit8 v0, p0, 0x2

    sput v0, Lcom/sec/android/gallery3d/data/MediaItem;->sVideoThumbnailTargetSize:I

    div-int/lit8 v0, p0, 0x3

    sput v0, Lcom/sec/android/gallery3d/data/MediaItem;->sThumbnailTargetSize:I

    int-to-double v0, p0

    const-wide v2, 0x4013333333333333L    # 4.8

    div-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lcom/sec/android/gallery3d/data/MediaItem;->sMicrothumbnailTargetSize:I

    div-int/lit8 v0, p0, 0xf

    sput v0, Lcom/sec/android/gallery3d/data/MediaItem;->sMiniMicroThumbnailTargetSize:I

    goto/16 :goto_1
.end method


# virtual methods
.method public download(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public getAgifMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mIsAGIF:Z

    return v0
.end method

.method public getArcHeight(Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    return v0
.end method

.method public getArcWidth(Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;)I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v0

    return v0
.end method

.method public getAttribute()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mAttribute:J

    return-wide v0
.end method

.method public getBucketId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCMHFileId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDRMInfo()Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDateInMs()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateModifiedInSec()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getFacePath(I)Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFaces()[Lcom/sec/android/gallery3d/data/Face;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getFullImageRotation()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    return v0
.end method

.method public getGolf()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getGroupId()J
.end method

.method public abstract getHeight()I
.end method

.method public getItemId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLatLong([D)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    aput-wide v2, p1, v0

    const/4 v0, 0x1

    aput-wide v2, p1, v0

    return-void
.end method

.method public getLatitude()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public getModifiedDateInSec()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentSetPath()Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mParentSetPath:Lcom/sec/android/gallery3d/data/Path;

    return-object v0
.end method

.method public getRecordingMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRotation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScreenNail()Lcom/sec/android/gallery3d/ui/ScreenNail;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSefFileSubType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSefFileType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSphericalMosaic()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSubAttribute()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mSubAttribute:J

    return-wide v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrlVendor()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getWidth()I
.end method

.method public hasAttribute(J)Z
    .locals 3

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mAttribute:J

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPendingAttribute(J)Z
    .locals 3

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mAttributePending:J

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubAttribute(J)Z
    .locals 3

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mSubAttribute:J

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is3DPanorama()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->is3dpanorama:Z

    return v0
.end method

.method public isBestImage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBroken()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken:Z

    return v0
.end method

.method public isDownloaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mExistFile:Z

    return v0
.end method

.method public isDrm()Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isFavorite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mIsFavorite:Z

    return v0
.end method

.method public isGolf()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNeedDecorDraw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mNeedDecorDraw:Z

    return v0
.end method

.method public isSendedMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mIsSendedMessage:Z

    return v0
.end method

.method public isSoundScene()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadFace()[Lcom/sec/android/gallery3d/data/Face;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public needCloudOnlyThumb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mNeedCloudOnlyThumb:Z

    return v0
.end method

.method public abstract requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public requestImage(ILcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;",
            ")",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    return-object v0
.end method

.method public abstract requestLargeImage()Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
            ">;"
        }
    .end annotation
.end method

.method public resetAgifMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mIsAGIF:Z

    return-void
.end method

.method public resetPendingAttribute()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mAttributePending:J

    return-void
.end method

.method public setAttribute(JZ)V
    .locals 5

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mAttribute:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mAttribute:J

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mAttribute:J

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mAttribute:J

    goto :goto_0
.end method

.method public setBroken(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken:Z

    return-void
.end method

.method public setDownloaded(Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mExistFile:Z

    return p1
.end method

.method public setGolf(Z)V
    .locals 0

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public setIsFavorite(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mIsFavorite:Z

    return-void
.end method

.method public setLatLong([D)V
    .locals 0

    return-void
.end method

.method public setNeedCloudOnlyThumb(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mNeedCloudOnlyThumb:Z

    return-void
.end method

.method public setNeedDecorDraw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mNeedDecorDraw:Z

    return-void
.end method

.method public setParentSetPath(Lcom/sec/android/gallery3d/data/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mParentSetPath:Lcom/sec/android/gallery3d/data/Path;

    return-void
.end method

.method public setPendingAttribute(JZ)V
    .locals 5

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mAttributePending:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mAttributePending:J

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mAttributePending:J

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mAttributePending:J

    goto :goto_0
.end method

.method public setSceretBoxItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/MediaItem;->isSceretBoxItem:Z

    return-void
.end method

.method public setSendedMessage(Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mIsSendedMessage:Z

    return p1
.end method

.method public setSoundScene(Z)V
    .locals 0

    return-void
.end method

.method public setSubAttribute(JZ)V
    .locals 5

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mSubAttribute:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mSubAttribute:J

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mSubAttribute:J

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/MediaItem;->mSubAttribute:J

    goto :goto_0
.end method
