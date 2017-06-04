.class public Lcom/sec/android/gallery3d/data/LocalCameraImage;
.super Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;
.source "LocalCameraImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/LocalCameraImage$DeleteOperation;,
        Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalLargeImageRequest;,
        Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;,
        Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;
    }
.end annotation


# static fields
.field private static final FEATURE_HAS_MOTION_PANAROMA:Z

.field private static final Feature3DPanoramaEnabled:Z

.field private static final FeatureSoundSceneEnabled:Z

.field private static final FeatureUseSecretBox:Z

.field private static final INDEX_BUCKET_ID:I = 0xa

.field static final INDEX_CAPTION:I = 0x1

.field static final INDEX_DATA:I = 0x8

.field private static final INDEX_DATE_ADDED:I = 0x6

.field private static final INDEX_DATE_MODIFIED:I = 0x7

.field private static final INDEX_DATE_TAKEN:I = 0x5

.field private static final INDEX_FAVORITE:I = 0x11

.field private static final INDEX_GROUP_ID:I = 0xe

.field private static final INDEX_HEIGHT:I = 0xd

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_IS_DRM:I = 0x12

.field private static final INDEX_LATITUDE:I = 0x3

.field private static final INDEX_LONGITUDE:I = 0x4

.field private static final INDEX_MIME_TYPE:I = 0x2

.field private static final INDEX_ORIENTATION:I = 0x9

.field private static final INDEX_SEF_FILE_SUB_TYPE:I = 0x13

.field private static final INDEX_SEF_FILE_TYPE:I = 0x10

.field private static final INDEX_SIZE:I = 0xb

.field private static final INDEX_SPHERICAL_MOSAIC:I = 0xf

.field private static final INDEX_WIDTH:I = 0xc

.field public static final ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final PROJECTION_STRING:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LocalCameraImage"


# instance fields
.field private isRotationSupoorted:Z

.field private isSupportedByRegionDecoder:Z

.field private mAttributes:Lcom/sec/android/gallery3d/data/LocalCameraImageAttributes;

.field private mIsDeleted:Z

.field private mIsRotateSearch:Z

.field private regionDecoderSupportedInitialized:Z

.field private rotation:I

.field private rotationSupportedInitialized:Z

.field public seffilesubtype:I

.field public seffiletype:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "/localcamera/image/item"

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    sput-object v1, Lcom/sec/android/gallery3d/data/LocalCameraImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->Use3DPanorama:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/gallery3d/data/LocalCameraImage;->Feature3DPanoramaEnabled:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/gallery3d/data/LocalCameraImage;->FeatureUseSecretBox:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSoundScene:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/gallery3d/data/LocalCameraImage;->FeatureSoundSceneEnabled:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v1, v4, :cond_1

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/sec/android/gallery3d/data/LocalCameraImage;->FEATURE_HAS_MOTION_PANAROMA:Z

    const/16 v1, 0x13

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string/jumbo v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "height"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "group_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "spherical_mosaic"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "sef_file_type"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "is_favorite"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "is_drm"

    aput-object v2, v0, v1

    sget-boolean v1, Lcom/sec/android/gallery3d/data/LocalCameraImage;->FEATURE_HAS_MOTION_PANAROMA:Z

    if-eqz v1, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const-string/jumbo v2, "sef_file_sub_type"

    aput-object v2, v0, v1

    :cond_0
    sput-object v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->PROJECTION:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/data/LocalCameraImage;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, ", "

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->mergeStrings([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/gallery3d/data/LocalCameraImage;->PROJECTION_STRING:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->updateWidthAndHeightProjection()V

    return-void

    :cond_1
    move v1, v3

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;I)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->nextVersionNumber()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5, p2}, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mIsDeleted:Z

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->rotationSupportedInitialized:Z

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->regionDecoderSupportedInitialized:Z

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mIsRotateSearch:Z

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    :try_start_0
    sget-object v4, Lcom/sec/android/gallery3d/data/LocalCameraImage;->PROJECTION:[Ljava/lang/String;

    invoke-static {v2, v3, v4, p3}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cursor invalid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v4, "LocalCameraImage"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_1
    :try_start_2
    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->loadFromCursor(Landroid/database/Cursor;)V

    new-instance v4, Lcom/sec/android/gallery3d/data/LocalCameraImageAttributes;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-direct {v4, v5, p0}, Lcom/sec/android/gallery3d/data/LocalCameraImageAttributes;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/LocalCameraImage;)V

    iput-object v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalCameraImageAttributes;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalCameraImageAttributes;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/LocalCameraImageAttributes;->updateAttributes()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v4
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Landroid/database/Cursor;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mIsDeleted:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->rotationSupportedInitialized:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->regionDecoderSupportedInitialized:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mIsRotateSearch:Z

    invoke-direct {p0, p3}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->loadFromCursor(Landroid/database/Cursor;)V

    new-instance v0, Lcom/sec/android/gallery3d/data/LocalCameraImageAttributes;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/gallery3d/data/LocalCameraImageAttributes;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/LocalCameraImage;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalCameraImageAttributes;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalCameraImageAttributes;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalCameraImageAttributes;->updateAttributes()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/data/LocalCameraImage;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isBurstShotImage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/LocalCameraImage;)Lcom/sec/android/gallery3d/data/LocalCameraImageAttributes;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->getLocalCameraImageAttributes()Lcom/sec/android/gallery3d/data/LocalCameraImageAttributes;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->FeatureSoundSceneEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/data/LocalCameraImage;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->getFaceCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/data/LocalCameraImage;)Landroid/graphics/RectF;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/gallery3d/data/LocalCameraImage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mIsDeleted:Z

    return p1
.end method

.method private getFaceCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getFileInfo(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->filePath:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->width:I

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->height:I

    goto :goto_0
.end method

.method private getLocalCameraImageAttributes()Lcom/sec/android/gallery3d/data/LocalCameraImageAttributes;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalCameraImageAttributes;

    return-object v0
.end method

.method private getRectOfAllFaces()Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private isBurstShotImage(Ljava/lang/String;)Z
    .locals 13

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "count(*)"

    aput-object v3, v2, v1

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "LocalCameraImage"

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_0

    const-string/jumbo v1, "LocalCameraImage"

    const-string/jumbo v3, "query fail"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v12

    :cond_0
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    if-le v7, v11, :cond_1

    move v1, v11

    :goto_2
    move v12, v1

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_2
    const-string/jumbo v1, "LocalCameraImage"

    invoke-virtual {v10}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1

    :cond_1
    move v1, v12

    goto :goto_2
.end method

.method private isRotationSupoorted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->rotationSupportedInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isRotationSupoorted:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->rotationSupportedInitialized:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isRotationSupoorted:Z

    return v0
.end method

.method private isSupportedByRegionDecoder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->regionDecoderSupportedInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isSupportedByRegionDecoder:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->regionDecoderSupportedInitialized:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isSupportedByRegionDecoder:Z

    return v0
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->id:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->caption:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mimeType:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->latitude:D

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->longitude:D

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->dateTakenInMs:J

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->dateAddedInSec:J

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->dateModifiedInSec:J

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->filePath:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->rotation:I

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->bucketId:I

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->fileSize:J

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->width:I

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->height:I

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->groupId:J

    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->Feature3DPanoramaEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->sphericalMosaic:I

    :cond_0
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->seffiletype:I

    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->FEATURE_HAS_MOTION_PANAROMA:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->seffilesubtype:I

    :cond_1
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mIsFavorite:Z

    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v2, v1

    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isdrm:Z

    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->FeatureUseSecretBox:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->filePath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isSceretBoxItem:Z

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private setRotateForSearch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mIsRotateSearch:Z

    return-void
.end method

.method private static updateWidthAndHeightProjection()V
    .locals 3

    sget-object v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    sget-object v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string/jumbo v2, "height"

    aput-object v2, v0, v1

    return-void
.end method


# virtual methods
.method public copyBurstShotItem(Ljava/lang/String;J)Z
    .locals 8

    const/4 v5, 0x0

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->filePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/sec/samsung/gallery/util/QvBurstImageUtils;->getUniqueFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getResourceContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->filePath:Ljava/lang/String;

    invoke-static {v6, v7, p1, v1}, Lcom/sec/samsung/gallery/util/QvFileUtil;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    const-string/jumbo v7, "."

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "Burst_Shot_Info"

    invoke-static {v2, v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->deleteSEFData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->getContentValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string/jumbo v6, "_id"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v6, "group_id"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v6, "title"

    invoke-virtual {v4, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "_data"

    invoke-virtual {v4, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "bucket_id"

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "bucket_display_name"

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    :goto_0
    return v5

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 6

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mIsDeleted:Z

    if-eqz v0, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "_id"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->id:I

    new-instance v3, Lcom/sec/android/gallery3d/data/LocalCameraImage$DeleteOperation;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/gallery3d/data/LocalCameraImage$DeleteOperation;-><init>(Lcom/sec/android/gallery3d/data/LocalCameraImage;Lcom/sec/android/gallery3d/data/LocalCameraImage$1;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->addId(Landroid/net/Uri;Ljava/lang/String;ILcom/sec/android/gallery3d/data/dboperation/IOperation;)V

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method protected getContentValues()Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "_id"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->caption:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "mime_type"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "latitude"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v1, "longitude"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v1, "datetaken"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->dateTakenInMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "date_added"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->dateAddedInSec:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "date_modified"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->dateModifiedInSec:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "_data"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "orientation"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->rotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "bucket_id"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->bucketId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "_size"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->fileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "width"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "height"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "group_id"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->groupId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-boolean v1, Lcom/sec/android/gallery3d/data/LocalCameraImage;->Feature3DPanoramaEnabled:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "spherical_mosaic"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->sphericalMosaic:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string/jumbo v1, "sef_file_type"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->seffiletype:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-boolean v1, Lcom/sec/android/gallery3d/data/LocalCameraImage;->FEATURE_HAS_MOTION_PANAROMA:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "sef_file_sub_type"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->seffilesubtype:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string/jumbo v1, "is_drm"

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isdrm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public getDataVersion(I)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mDataVersion:J

    return-wide v0
.end method

.method public getDateModifiedInSec()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->dateModifiedInSec:J

    return-wide v0
.end method

.method public getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0xd

    const/16 v3, 0xc

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/LocalCameraMediaItem;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->dateTakenInMs:J

    invoke-static {v2, v4, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->width:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->height:I

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->getFileInfo(Z)V

    :cond_1
    const-string/jumbo v1, "image/jpeg"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x10

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->rotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/data/MediaDetails;->extractExifInfo(Lcom/sec/android/gallery3d/data/MediaDetails;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/gallery3d/data/MediaDetails;->replaceDetail(ILjava/lang/Object;)V

    :cond_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/sec/android/gallery3d/data/MediaDetails;->replaceDetail(ILjava/lang/Object;)V

    :cond_3
    :goto_0
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v1, 0xf

    const-string/jumbo v2, "%dx%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->height:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isDrm()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getDetails(Lcom/sec/android/gallery3d/data/MediaDetails;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v0

    :cond_4
    return-object v0

    :cond_5
    const/16 v1, 0x1f4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->caption:Ljava/lang/String;

    invoke-virtual {v0, v7, v1}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->latitude:D

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->longitude:D

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x9

    const/4 v2, 0x2

    new-array v2, v2, [D

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->latitude:D

    aput-wide v4, v2, v6

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->longitude:D

    aput-wide v4, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v1, 0xa

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :goto_1
    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->fileSize:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    const/16 v1, 0xe

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->fileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v9}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v9}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v9}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->height:I

    return v0
.end method

.method public getItemId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->id:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->longitude:D

    return-wide v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->rotation:I

    return v0
.end method

.method public getSefFileSubType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->seffilesubtype:I

    return v0
.end method

.method public getSefFileType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->seffiletype:I

    return v0
.end method

.method public getSphericalMosaic()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->sphericalMosaic:I

    return v0
.end method

.method public getSupportedOperations()J
    .locals 6

    const-wide v0, 0xc0e20008380062dL

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isRotationSupoorted()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    :cond_0
    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->groupId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const-wide v2, 0x80000000000L

    or-long/2addr v0, v2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isGolf()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isBroken()Z

    move-result v2

    if-nez v2, :cond_2

    const-wide v2, 0x2010000000L

    or-long/2addr v0, v2

    :cond_2
    sget-boolean v2, Lcom/sec/android/gallery3d/data/LocalCameraImage;->FeatureUseSecretBox:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isSceretBoxItem:Z

    if-eqz v2, :cond_a

    const-wide/32 v2, 0x20000000

    or-long/2addr v0, v2

    const-wide/32 v2, -0x40000001

    and-long/2addr v0, v2

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isGolf()Z

    move-result v2

    if-nez v2, :cond_4

    const-wide/high16 v2, 0x1000000000000000L

    or-long/2addr v0, v2

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isSupportedByRegionDecoder()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isFlipPhoto:Z

    if-nez v2, :cond_5

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    :cond_5
    sget-boolean v2, Lcom/sec/android/gallery3d/data/LocalCameraImage;->Feature3DPanoramaEnabled:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->is3DPanorama()Z

    move-result v2

    if-eqz v2, :cond_6

    const-wide v2, 0x4000000000L

    or-long/2addr v0, v2

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_9

    const-wide/16 v0, 0x401

    sget-boolean v2, Lcom/sec/android/gallery3d/data/LocalCameraImage;->FeatureUseSecretBox:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isSceretBoxItem:Z

    if-eqz v2, :cond_b

    const-wide/32 v2, 0x20000000

    or-long/2addr v0, v2

    const-wide/32 v2, -0x40000001

    and-long/2addr v0, v2

    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    iget-object v2, v2, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->mOriginalMime:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isFlipPhoto:Z

    if-nez v2, :cond_8

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    :cond_8
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    iget v2, v2, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->mDrmType:I

    sget v3, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->DRM2_TYPE_SD:I

    if-ne v2, v3, :cond_c

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    :cond_9
    :goto_2
    return-wide v0

    :cond_a
    const-wide/32 v2, 0x40000000

    or-long/2addr v0, v2

    const-wide/32 v2, -0x20000001

    and-long/2addr v0, v2

    goto :goto_0

    :cond_b
    const-wide/32 v2, 0x40000000

    or-long/2addr v0, v2

    const-wide/32 v2, -0x20000001

    and-long/2addr v0, v2

    goto :goto_1

    :cond_c
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    iget v2, v2, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->mDrmType:I

    sget v3, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->DRM2_TYPE_FL:I

    if-ne v2, v3, :cond_9

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    goto :goto_2
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->width:I

    return v0
.end method

.method public requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;->WITH_ATTRIBUTES:Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->requestImage(ILcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    return-object v0
.end method

.method public requestImage(ILcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 9
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

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->filePath:Ljava/lang/String;

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    :cond_0
    new-instance v1, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->dateModifiedInSec:J

    move v6, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalImageRequest;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)V

    return-object v1
.end method

.method public requestLargeImage()Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalLargeImageRequest;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    return-object v0
.end method

.method public rotate(I)V
    .locals 18

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->rotation:I

    add-int v12, v12, p1

    rem-int/lit16 v9, v12, 0x168

    if-gez v9, :cond_0

    add-int/lit16 v9, v9, 0x168

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mimeType:Ljava/lang/String;

    const-string/jumbo v13, "image/jpeg"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    new-instance v7, Lcom/sec/android/gallery3d/exif/ExifInterface;

    invoke-direct {v7}, Lcom/sec/android/gallery3d/exif/ExifInterface;-><init>()V

    sget v12, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {v9}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v13

    invoke-static {v13}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lcom/sec/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v10

    if-eqz v10, :cond_b

    :try_start_0
    new-instance v6, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->filePath:Ljava/lang/String;

    invoke-direct {v6, v12}, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->filePath:Ljava/lang/String;

    invoke-direct {v2, v12}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v12, "Orientation"

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v6, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;->gpsAltitude:Ljava/lang/String;

    if-eqz v12, :cond_1

    const-string/jumbo v12, "GPSAltitude"

    iget-object v13, v6, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;->gpsAltitude:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v12, v6, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;->gpsAltitudeRef:Ljava/lang/String;

    if-eqz v12, :cond_2

    const-string/jumbo v12, "GPSAltitudeRef"

    iget-object v13, v6, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;->gpsAltitudeRef:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v12, v6, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;->gpsDateStamp:Ljava/lang/String;

    if-eqz v12, :cond_3

    const-string/jumbo v12, "GPSDateStamp"

    iget-object v13, v6, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;->gpsDateStamp:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v12, v6, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;->dateTime:Ljava/lang/String;

    if-eqz v12, :cond_4

    const-string/jumbo v12, "DateTime"

    iget-object v13, v6, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;->dateTime:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v12, v6, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;->gpsLatitude:Ljava/lang/String;

    if-eqz v12, :cond_5

    const-string/jumbo v12, "GPSLatitude"

    iget-object v13, v6, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;->gpsLatitude:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v12, v6, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;->gpsLatitudeRef:Ljava/lang/String;

    if-eqz v12, :cond_6

    const-string/jumbo v12, "GPSLatitudeRef"

    iget-object v13, v6, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;->gpsLatitudeRef:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v12, v6, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;->gpsLongitude:Ljava/lang/String;

    if-eqz v12, :cond_7

    const-string/jumbo v12, "GPSLongitude"

    iget-object v13, v6, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;->gpsLongitude:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v12, v6, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;->gpsLongitudeRef:Ljava/lang/String;

    if-eqz v12, :cond_8

    const-string/jumbo v12, "GPSLongitudeRef"

    iget-object v13, v6, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;->gpsLongitudeRef:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v12, v6, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;->gpsProcessMethod:Ljava/lang/String;

    if-eqz v12, :cond_9

    const-string/jumbo v12, "GPSProcessingMethod"

    iget-object v13, v6, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;->gpsProcessMethod:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v12, v6, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;->gpsTimeStamp:Ljava/lang/String;

    if-eqz v12, :cond_a

    const-string/jumbo v12, "GPSTimeStamp"

    iget-object v13, v6, Lcom/sec/android/gallery3d/data/LocalCameraImage$ExifInformation;->gpsTimeStamp:Ljava/lang/String;

    invoke-virtual {v2, v12, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->filePath:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->fileSize:J

    const-string/jumbo v12, "_size"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->fileSize:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_b
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->filePath:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->fileSize:J

    const-string/jumbo v12, "_size"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->fileSize:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v12, "datetaken"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->dateTakenInMs:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v12, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v12, "orientation"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v12}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "_id=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->id:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v3, v11, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v12, "LocalCameraImage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Update row count ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mIsRotateSearch:Z

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iput v9, v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->rotation:I

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->nextVersionNumber()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mDataVersion:J

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->setRotateForSearch(Z)V

    :cond_c
    invoke-static {}, Lcom/sec/android/gallery3d/data/MediaObject;->setVersion()V

    :goto_0
    return-void

    :catch_0
    move-exception v4

    const-string/jumbo v12, "LocalCameraImage"

    const-string/jumbo v13, "cannot find file to set exif: "

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v5

    const-string/jumbo v12, "LocalCameraImage"

    const-string/jumbo v13, "cannot set exif data - write orientation"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v12}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getResourceContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f0a049e

    invoke-static {v12, v13}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 10

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v1, Lcom/sec/android/gallery3d/util/UpdateHelper;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/util/UpdateHelper;-><init>()V

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->id:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->id:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->caption:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->caption:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mimeType:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mimeType:Ljava/lang/String;

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->latitude:D

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->latitude:D

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->longitude:D

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->longitude:D

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->dateTakenInMs:J

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->dateTakenInMs:J

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->dateAddedInSec:J

    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->dateAddedInSec:J

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->dateModifiedInSec:J

    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->dateModifiedInSec:J

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->filePath:Ljava/lang/String;

    const/16 v5, 0x8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->filePath:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->rotation:I

    const/16 v5, 0x9

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->rotation:I

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->bucketId:I

    const/16 v5, 0xa

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->bucketId:I

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->fileSize:J

    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->fileSize:J

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->groupId:J

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isDrm()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->width:I

    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->height:I

    :cond_0
    sget-boolean v2, Lcom/sec/android/gallery3d/data/LocalCameraImage;->Feature3DPanoramaEnabled:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->sphericalMosaic:I

    const/16 v5, 0xf

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->sphericalMosaic:I

    :cond_1
    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->seffiletype:I

    const/16 v5, 0x10

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->seffiletype:I

    sget-boolean v2, Lcom/sec/android/gallery3d/data/LocalCameraImage;->FEATURE_HAS_MOTION_PANAROMA:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->seffilesubtype:I

    const/16 v5, 0x13

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->seffilesubtype:I

    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isdrm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v2, 0x12

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isdrm:Z

    const/16 v2, 0x11

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mIsFavorite:Z

    invoke-virtual {p0, v1, p1, v4}, Lcom/sec/android/gallery3d/data/LocalCameraImage;->isItemRenamed(Lcom/sec/android/gallery3d/util/UpdateHelper;Landroid/database/Cursor;Z)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v3

    :goto_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalCameraImageAttributes;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalCameraImageAttributes;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalCameraImageAttributes;->updateAttributes()V

    :cond_3
    return v0

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_1

    :cond_6
    move v0, v4

    goto :goto_2
.end method
