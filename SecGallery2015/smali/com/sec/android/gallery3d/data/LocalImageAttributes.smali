.class public Lcom/sec/android/gallery3d/data/LocalImageAttributes;
.super Ljava/lang/Object;
.source "LocalImageAttributes.java"


# static fields
.field public static final COLUMN_SEF_FILE_SUB_TYPE:Ljava/lang/String; = "sef_file_sub_type"

.field public static final COLUMN_SEF_FILE_TYPE:Ljava/lang/String; = "sef_file_type"

.field private static final DNG_IMAGE_MIME_TYPE:Ljava/lang/String; = "image/x-adobe-dng"

.field private static final FEATURE_TAG_SHOT:Z

.field private static final FEATURE_USE_360_CONTENTS:Z

.field private static final FEATURE_USE_FLIP_PHOTO:Z

.field private static final FEATURE_USE_QURAM_DECODER:Z

.field public static final SEF_FILE_TYPE_360_2D_IMAGE:I = 0xa50

.field public static final SEF_FILE_TYPE_3DTOUR:I = 0x850

.field public static final SEF_FILE_TYPE_ANIMATEDGIF:I = 0x960

.field public static final SEF_FILE_TYPE_BESTFACE:I = 0x832

.field public static final SEF_FILE_TYPE_BESTPHOTO_L:I = 0x831

.field public static final SEF_FILE_TYPE_BESTPHOTO_M:I = 0x1

.field public static final SEF_FILE_TYPE_DRAMASHOT:I = 0x834

.field public static final SEF_FILE_TYPE_ERASER:I = 0x833

.field public static final SEF_FILE_TYPE_FLIPPHOTO:I = 0xa20

.field public static final SEF_FILE_TYPE_FRONTSELFIE:I = 0x910

.field public static final SEF_FILE_TYPE_INTERVALSHOT:I = 0x980

.field public static final SEF_FILE_TYPE_MOTION_PHOTO:I = 0xa30

.field public static final SEF_FILE_TYPE_NONE:I = -0x1

.field public static final SEF_FILE_TYPE_PANORAMA:I = 0x8e0

.field public static final SEF_FILE_TYPE_PICMOTION:I = 0x835

.field public static final SEF_FILE_TYPE_REARSELFIE:I = 0x900

.field public static final SEF_FILE_TYPE_SELECTIVE_FOCUS:I = 0x840

.field public static final SEF_FILE_TYPE_SEQUENCE:I = 0x870

.field public static final SEF_FILE_TYPE_SHOT_N_MORE:I = 0x830

.field public static final SEF_FILE_TYPE_SOUNDSHOT:I = 0x800

.field public static final SEF_FILE_TYPE_SURROUNDSHOT:I = 0x950

.field private static final SEF_FILE_TYPE_TAGSHOT:I = 0x990

.field public static final SEF_FILE_TYPE_VIRTUALSHOT:I = 0x8d0

.field public static final SEF_FILE_TYPE_WIDESELFIE:I = 0x970

.field private static final TAG:Ljava/lang/String; = "LocalImageAttributes"


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

.field private final mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseShareTagImage:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->FEATURE_TAG_SHOT:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->Support360Contents:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->FEATURE_USE_360_CONTENTS:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFlipPhoto:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->FEATURE_USE_FLIP_PHOTO:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseQuramDecoder:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->FEATURE_USE_QURAM_DECODER:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method

.method private readAttributFromByteBuffer(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z
    .locals 10

    const-wide/16 v8, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v1, p1, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    if-gtz v1, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p1, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->length:I

    if-ge v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    :goto_2
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p1, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v5, p1, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    add-int/2addr v5, v0

    aget-byte v1, v1, v5

    if-eqz v1, :cond_1

    move v1, v2

    :goto_3
    iput-boolean v1, v4, Lcom/sec/android/gallery3d/data/MediaItem;->is3dpanorama:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v4, 0x8

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-boolean v6, v6, Lcom/sec/android/gallery3d/data/MediaItem;->is3dpanorama:Z

    invoke-virtual {v1, v4, v5, v6}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    goto :goto_2

    :cond_1
    move v1, v3

    goto :goto_3

    :pswitch_2
    iget-object v1, p1, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->data:[B

    iget v4, p1, Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;->offset:I

    add-int/2addr v4, v0

    aget-byte v1, v1, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1, v8, v9, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1, v8, v9, v2}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private udpatePhotonoteN3DPanoramaAttribute()V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/Panorama3DUtil;->check3DPanorama(Ljava/io/RandomAccessFile;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/sec/android/gallery3d/data/MediaItem;->is3dpanorama:Z

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v4, 0x8

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-boolean v6, v6, Lcom/sec/android/gallery3d/data/MediaItem;->is3dpanorama:Z

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, v2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    const-string/jumbo v3, "LocalImageAttributes"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FileNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private update3DMPOAttribute()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v2, 0x2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->isMpoSupported(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    return-void
.end method

.method private updateDngImageAttribute()V
    .locals 4

    const-wide/32 v2, 0x20000000

    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->FEATURE_USE_QURAM_DECODER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "image/x-adobe-dng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "dng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->parseMetadata(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    :cond_0
    return-void
.end method

.method private updateFlipPhotoAttribute()V
    .locals 4

    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->FEATURE_USE_FLIP_PHOTO:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v2, 0x4000000

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/android/gallery3d/data/MediaItem;->isFlipPhoto:Z

    goto :goto_0
.end method

.method private updateGolfAttribute()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->isGolf()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->setGolf(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v2, 0x80

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getGolf()Z

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    return-void
.end method

.method private updatePendingAttribute()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v2, 0x20

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/gallery3d/data/MediaItem;->setPendingAttribute(JZ)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v2, 0x200

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/gallery3d/data/MediaItem;->setPendingAttribute(JZ)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/gallery3d/data/MediaItem;->setPendingAttribute(JZ)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/gallery3d/data/MediaItem;->setPendingAttribute(JZ)V

    return-void
.end method

.method private updateSeffileAttribute()V
    .locals 12

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getSefFileType()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getSefFileSubType()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->isBestImage()Z

    move-result v0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v6, 0x10

    const/16 v3, 0x800

    if-ne v2, v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v6, v7, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v6, 0x400

    const/16 v3, 0x850

    if-ne v2, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v6, v7, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v6, 0x800

    const/16 v3, 0x830

    if-ne v2, v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v4, v6, v7, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    sget-boolean v3, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->FEATURE_USE_360_CONTENTS:Z

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v6, 0x8000000

    const/16 v3, 0xa50

    if-ne v2, v3, :cond_5

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v4, v6, v7, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    :goto_4
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v6, 0x1000

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_7

    if-nez v0, :cond_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/16 v3, 0x831

    if-ne v2, v3, :cond_7

    :cond_0
    const/4 v3, 0x1

    :goto_5
    invoke-virtual {v4, v6, v7, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setSubAttribute(JZ)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v6, 0x2000

    const/16 v3, 0x832

    if-ne v2, v3, :cond_8

    const/4 v3, 0x1

    :goto_6
    invoke-virtual {v4, v6, v7, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v6, 0x4000

    const/16 v3, 0x833

    if-ne v2, v3, :cond_9

    const/4 v3, 0x1

    :goto_7
    invoke-virtual {v4, v6, v7, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v6, 0x8000

    const/16 v3, 0x834

    if-ne v2, v3, :cond_a

    const/4 v3, 0x1

    :goto_8
    invoke-virtual {v4, v6, v7, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v6, 0x10000

    const/16 v3, 0x835

    if-ne v2, v3, :cond_b

    const/4 v3, 0x1

    :goto_9
    invoke-virtual {v4, v6, v7, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v6, 0x20000

    const/16 v3, 0x840

    if-ne v2, v3, :cond_c

    const/4 v3, 0x1

    :goto_a
    invoke-virtual {v4, v6, v7, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v6, 0x40000

    const/16 v3, 0x870

    if-ne v2, v3, :cond_d

    const/4 v3, 0x1

    :goto_b
    invoke-virtual {v4, v6, v7, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v6, 0x200000

    const/16 v3, 0x8e0

    if-ne v2, v3, :cond_e

    const/4 v3, 0x1

    :goto_c
    invoke-virtual {v4, v6, v7, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v6, 0x40000000

    const/16 v3, 0x950

    if-ne v2, v3, :cond_f

    const/4 v3, 0x1

    :goto_d
    invoke-virtual {v4, v6, v7, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v6, 0x1000000

    const/4 v3, 0x1

    if-ne v1, v3, :cond_10

    const/4 v3, 0x1

    :goto_e
    invoke-virtual {v4, v6, v7, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setSubAttribute(JZ)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v6, 0x2000000

    const/16 v3, 0xa30

    if-ne v2, v3, :cond_11

    const/4 v3, 0x1

    :goto_f
    invoke-virtual {v4, v6, v7, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v6, 0x100000

    const/16 v3, 0x8d0

    if-ne v2, v3, :cond_12

    const/4 v3, 0x1

    :goto_10
    invoke-virtual {v4, v6, v7, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v6, 0x10000000

    const/4 v3, 0x1

    if-ne v1, v3, :cond_13

    const/4 v3, 0x1

    :goto_11
    invoke-virtual {v4, v6, v7, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setSubAttribute(JZ)V

    sget-boolean v3, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->FEATURE_TAG_SHOT:Z

    if-eqz v3, :cond_15

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v6, 0x400000

    const/16 v3, 0x990

    if-ne v2, v3, :cond_14

    const/4 v3, 0x1

    :goto_12
    invoke-virtual {v4, v6, v7, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    :goto_13
    sget-boolean v3, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->FEATURE_USE_FLIP_PHOTO:Z

    if-eqz v3, :cond_17

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v6, 0x4000000

    const/16 v3, 0xa20

    if-ne v2, v3, :cond_16

    const/4 v3, 0x1

    :goto_14
    invoke-virtual {v4, v6, v7, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    :goto_15
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v6, 0x800000

    const/16 v3, 0x970

    if-eq v2, v3, :cond_1

    const/16 v3, 0x980

    if-eq v2, v3, :cond_1

    const/16 v3, 0x910

    if-eq v2, v3, :cond_1

    const/16 v3, 0x900

    if-ne v2, v3, :cond_18

    :cond_1
    const/4 v3, 0x1

    :goto_16
    invoke-virtual {v4, v6, v7, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    return-void

    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_6
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v4, 0x8000000

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    goto/16 :goto_4

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_6

    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_8

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_9

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_a

    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_b

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_c

    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_e

    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_f

    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_10

    :cond_13
    const/4 v3, 0x0

    goto :goto_11

    :cond_14
    const/4 v3, 0x0

    goto :goto_12

    :cond_15
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v4, 0x400000

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    goto :goto_13

    :cond_16
    const/4 v3, 0x0

    goto :goto_14

    :cond_17
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v4, 0x4000000

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    goto :goto_15

    :cond_18
    const/4 v3, 0x0

    goto :goto_16
.end method

.method private updateSphericalMosaicAttribute()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getSphericalMosaic()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v4, 0x8

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getSphericalMosaic()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v4, v5, v0}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v2, v3, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private writeAttributeToByteBuffer()Ljava/nio/ByteBuffer;
    .locals 13

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v10, 0x10

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v10, 0x20

    invoke-virtual {v7, v10, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v6, 0x0

    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v7, 0x0

    :try_start_1
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-boolean v10, v10, Lcom/sec/android/gallery3d/data/MediaItem;->is3dpanorama:Z

    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v3

    if-eqz v4, :cond_0

    if-eqz v9, :cond_3

    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    if-eqz v9, :cond_6

    :try_start_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_1
    if-eqz v3, :cond_8

    array-length v7, v3

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_2
    return-object v6

    :catch_0
    move-exception v10

    :try_start_5
    invoke-virtual {v8, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v7

    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v8

    move-object v9, v7

    move-object v7, v8

    :goto_3
    if-eqz v5, :cond_2

    if-eqz v9, :cond_7

    :try_start_7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_2
    :goto_4
    :try_start_8
    throw v7
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v0

    const-string/jumbo v7, "LocalImageAttributes"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IOException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :try_start_9
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v7

    goto :goto_3

    :catch_3
    move-exception v7

    :try_start_a
    throw v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v8

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    :goto_5
    if-eqz v4, :cond_4

    if-eqz v8, :cond_5

    :try_start_b
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_4
    :goto_6
    :try_start_c
    throw v7

    :catch_4
    move-exception v10

    invoke-virtual {v8, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_5
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_6

    :catch_5
    move-exception v8

    :try_start_d
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_1

    :catch_6
    move-exception v8

    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_4

    :cond_8
    const-string/jumbo v7, "LocalImageAttributes"

    const-string/jumbo v8, "writeAttributeToByteBuffer() metadataarray is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_3
    move-exception v7

    move-object v8, v9

    goto :goto_5
.end method


# virtual methods
.method updateAttributes()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->resetPendingAttribute()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->updateGolfAttribute()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->update3DMPOAttribute()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->updatePendingAttribute()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->updateSeffileAttribute()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->updateSphericalMosaicAttribute()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->updateFlipPhotoAttribute()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->updateDngImageAttribute()V

    :cond_0
    return-void
.end method

.method updateFileAccessAttribute()V
    .locals 15

    const-wide/16 v6, 0x20

    const/4 v4, 0x7

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, v1, Lcom/sec/android/gallery3d/data/MediaItem;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, v1, Lcom/sec/android/gallery3d/data/MediaItem;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getImageCacheService()Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/gallery3d/data/MediaItem;->getAttributeBytesBufferPool()Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->get()Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;

    move-result-object v5

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, v1, Lcom/sec/android/gallery3d/data/MediaItem;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateModifiedInSec()J

    move-result-wide v2

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->getImageData(Lcom/sec/android/gallery3d/data/Path;JILcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_0

    :try_start_0
    invoke-direct {p0, v5}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->readAttributFromByteBuffer(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/data/MediaItem;->getAttributeBytesBufferPool()Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    if-eqz v12, :cond_1

    if-nez v13, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->udpatePhotonoteN3DPanoramaAttribute()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->isAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v2

    invoke-virtual {v1, v6, v7, v2}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->writeAttributeToByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    if-eqz v14, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v7, v1, Lcom/sec/android/gallery3d/data/MediaItem;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateModifiedInSec()J

    move-result-wide v8

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    move-object v6, v0

    move v10, v4

    invoke-interface/range {v6 .. v11}, Lcom/sec/android/gallery3d/data/ImageCacheServiceInterface;->putImageData(Lcom/sec/android/gallery3d/data/Path;JI[B)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/sec/android/gallery3d/data/MediaItem;->getAttributeBytesBufferPool()Lcom/sec/android/gallery3d/data/BytesBufferPool;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/data/BytesBufferPool;->recycle(Lcom/sec/android/gallery3d/data/BytesBufferPool$BytesBuffer;)V

    throw v1

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->udpatePhotonoteN3DPanoramaAttribute()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->isAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v2

    invoke-virtual {v1, v6, v7, v2}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    goto :goto_0
.end method

.method updateSoundShotAttribute()V
    .locals 4

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSoundScene:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/controller/SoundScene;->isSoundScene(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->setSoundScene(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v2, 0x10

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->mImageItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->isSoundScene()Z

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->setAttribute(JZ)V

    goto :goto_0
.end method
