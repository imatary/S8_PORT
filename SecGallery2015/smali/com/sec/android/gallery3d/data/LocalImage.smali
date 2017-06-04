.class public Lcom/sec/android/gallery3d/data/LocalImage;
.super Lcom/sec/android/gallery3d/data/LocalMediaItem;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/LocalImage$DeleteFaceImageOperation;,
        Lcom/sec/android/gallery3d/data/LocalImage$DeleteOperation;,
        Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;,
        Lcom/sec/android/gallery3d/data/LocalImage$LocalImageRequest;,
        Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;
    }
.end annotation


# static fields
.field private static final FEATURE_3D_PANORAMA_ENABLED:Z

.field private static final FEATURE_FACE_THUMBNAIL_ENABLED:Z

.field private static final FEATURE_HAS_MOTION_PANAROMA:Z

.field private static final FEATURE_SOUND_SCENE_ENABLED:Z

.field private static final FEATURE_USE_CMH:Z

.field private static final FEATURE_USE_GO_TO_URL:Z

.field private static final FEATURE_USE_SECRET_BOX:Z

.field private static final IMAGE_URL_TABLE_URI:Ljava/lang/String; = "content://media/external/images/images_url"

.field private static final INDEX_BUCKET_ID:I = 0xa

.field public static final INDEX_CAPTION:I = 0x1

.field public static final INDEX_DATA:I = 0x8

.field private static final INDEX_DATE_ADDED:I = 0x6

.field private static final INDEX_DATE_MODIFIED:I = 0x7

.field private static final INDEX_DATE_TAKEN:I = 0x5

.field private static final INDEX_FAVORITE:I = 0x11

.field private static final INDEX_GROUP_ID:I = 0xe

.field private static final INDEX_HEIGHT:I = 0xd

.field private static final INDEX_ID:I = 0x0

.field static final INDEX_IS_DRM:I = 0x12

.field private static final INDEX_LATITUDE:I = 0x3

.field private static final INDEX_LONGITUDE:I = 0x4

.field private static final INDEX_MIME_TYPE:I = 0x2

.field private static final INDEX_ORIENTATION:I = 0x9

.field private static final INDEX_SEF_FILE_SUB_TYPE:I = 0x13

.field private static final INDEX_SEF_FILE_TYPE:I = 0x10

.field private static final INDEX_SIZE:I = 0xb

.field private static final INDEX_SPHERICAL_MOSAIC:I = 0xf

.field private static final INDEX_WIDTH:I = 0xc

.field private static final IS_TABLET:Z

.field public static final ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

.field public static final ITEM_PATH_STR:Ljava/lang/String; = "/local/image/item"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final PROJECTION_STRING:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LocalImage"


# instance fields
.field private facesRect:Landroid/graphics/RectF;

.field private isRotationSupported:Z

.field private isSoundScene:Z

.field private isSupportedByRegionDecoder:Z

.field private mArcHeight:I

.field private mArcWidth:I

.field private mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

.field private mFaceImagePath:Lcom/sec/android/gallery3d/data/Path;

.field private final mFaceImagePaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFacePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDeleted:Z

.field private mIsFaceInfoDeleted:Z

.field private mIsGolf:Z

.field private mIsRotateSearch:Z

.field private mSceneCropRectFs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private mSceneTagDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartCropRectFs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private regionDecoderSupportedInitialized:Z

.field private rotation:I

.field private rotationSupportedInitialized:Z

.field private sefFileSubType:I

.field public sefFileType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->Use3DPanorama:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_3D_PANORAMA_ENABLED:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceThumbnail:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_FACE_THUMBNAIL_ENABLED:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_USE_SECRET_BOX:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSoundScene:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_SOUND_SCENE_ENABLED:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_USE_CMH:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v1, v4, :cond_1

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_HAS_MOTION_PANAROMA:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/gallery3d/data/LocalImage;->IS_TABLET:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGoToURL:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_USE_GO_TO_URL:Z

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

    sget-boolean v1, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_HAS_MOTION_PANAROMA:Z

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
    sput-object v0, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v1, "/local/image/item"

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    sput-object v1, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

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

    sput-object v1, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION_STRING:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalImage;->updateWidthAndHeightProjection()V

    return-void

    :cond_1
    move v1, v3

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V
    .locals 10

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalImage;->nextVersionNumber()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3, p2}, Lcom/sec/android/gallery3d/data/LocalMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/app/GalleryApp;)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFaceImagePath:Lcom/sec/android/gallery3d/data/Path;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    iput v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mArcWidth:I

    iput v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mArcHeight:I

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFacePaths:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/LocalImage;->facesRect:Landroid/graphics/RectF;

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mSmartCropRectFs:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mSceneCropRectFs:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mSceneTagDatas:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsDeleted:Z

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsFaceInfoDeleted:Z

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsGolf:Z

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->rotationSupportedInitialized:Z

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->regionDecoderSupportedInitialized:Z

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsRotateSearch:Z

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->isSoundScene:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    invoke-static {v0, v9, v1, p3}, Lcom/sec/android/gallery3d/data/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cursor invalid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v1, "LocalImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const/4 v7, 0x0

    :goto_0
    sget-boolean v1, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_USE_GO_TO_URL:Z

    if-eqz v1, :cond_2

    :try_start_2
    const-string/jumbo v1, "content://media/external/images/images_url"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "image_url"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "vendor"

    aput-object v4, v2, v3

    const-string/jumbo v3, "image_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const-string/jumbo v6, "LocalImage"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mUrl:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mUrlVendor:Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p0, v7}, Lcom/sec/android/gallery3d/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V

    new-instance v1, Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v1, v2, p0}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/MediaItem;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->updateAttributes()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const/4 v7, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const/4 v7, 0x0

    throw v1

    :catch_1
    move-exception v8

    :try_start_4
    const-string/jumbo v1, "LocalImage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;II)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalImage;->nextVersionNumber()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3, p2}, Lcom/sec/android/gallery3d/data/LocalMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/app/GalleryApp;)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFaceImagePath:Lcom/sec/android/gallery3d/data/Path;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    iput v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mArcWidth:I

    iput v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mArcHeight:I

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFacePaths:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/LocalImage;->facesRect:Landroid/graphics/RectF;

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mSmartCropRectFs:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mSceneCropRectFs:Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mSceneTagDatas:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsDeleted:Z

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsFaceInfoDeleted:Z

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsGolf:Z

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->rotationSupportedInitialized:Z

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->regionDecoderSupportedInitialized:Z

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsRotateSearch:Z

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->isSoundScene:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const-string/jumbo v3, "images_event_album"

    sget-object v4, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    invoke-static {v2, v3, v4, p3, p4}, Lcom/sec/android/gallery3d/data/EventAlbum;->getItemCursor(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Ljava/lang/String;[Ljava/lang/String;II)Landroid/database/Cursor;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cursor invalid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v2, "LocalImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V

    new-instance v2, Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v2, v3, p0}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/MediaItem;)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->updateAttributes()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sec/android/gallery3d/data/LocalMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/app/GalleryApp;)V

    iput-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFaceImagePath:Lcom/sec/android/gallery3d/data/Path;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mArcWidth:I

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mArcHeight:I

    iput-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFacePaths:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->facesRect:Landroid/graphics/RectF;

    iput-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mSmartCropRectFs:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mSceneCropRectFs:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mSceneTagDatas:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsDeleted:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsFaceInfoDeleted:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsGolf:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->rotationSupportedInitialized:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->regionDecoderSupportedInitialized:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsRotateSearch:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->isSoundScene:Z

    invoke-virtual {p0, p3}, Lcom/sec/android/gallery3d/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V

    new-instance v0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/MediaItem;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->updateAttributes()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_FACE_THUMBNAIL_ENABLED:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/LocalImage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->loadRectOfAllFaces()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/data/LocalImage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->deleteDngFile()V

    return-void
.end method

.method static synthetic access$1202(Lcom/sec/android/gallery3d/data/LocalImage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsDeleted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/data/LocalImage;)Lcom/sec/android/gallery3d/data/LocalImageAttributes;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->getLocalImageAttributes()Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_SOUND_SCENE_ENABLED:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/data/LocalImage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->updateSoundShotAttribute()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/data/LocalImage;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->getFaceCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/data/LocalImage;Z)Landroid/graphics/RectF;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/LocalImage;->getRectOfAllFaces(Z)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_USE_CMH:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/data/LocalImage;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFacePaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/gallery3d/data/LocalImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFacePaths:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/data/LocalImage;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    return-object v0
.end method

.method private deleteDngFile()V
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ".jpg"

    const-string/jumbo v2, ".dng"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/FileUtil;->deleteFile(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getFaceCount()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/data/LocalImage;->getFaceCount(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0
.end method

.method public static getFaceCount(Landroid/content/ContentResolver;I)I
    .locals 11

    const/4 v10, 0x0

    const/4 v9, -0x1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v7, "com.samsung.cmh"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/external/file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "face_count"

    aput-object v3, v2, v0

    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_USE_CMH:Z

    if-eqz v0, :cond_3

    const-string/jumbo v3, "media_id=?"

    :goto_1
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const-string/jumbo v6, "LocalImage"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    :cond_0
    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_2
    return v9

    :cond_1
    :try_start_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceProvider:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v7, "com.sec.face.provider.FaceProvider"

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "media"

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "_id=?"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_2
    const-string/jumbo v0, "LocalImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private getFileInfo()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/LocalImage;->getFileInfo(Z)V

    return-void
.end method

.method private getFileInfo(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->isDrm()Z

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

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mArcWidth:I

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mArcHeight:I

    iput v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    goto :goto_0
.end method

.method private static getImageCropRectF(I)Landroid/graphics/RectF;
    .locals 1

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->getImageCropRectF(I)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method private getLocalImageAttributes()Lcom/sec/android/gallery3d/data/LocalImageAttributes;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    return-object v0
.end method

.method private getRectOfAllFaces(Z)Landroid/graphics/RectF;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/high16 v4, -0x40000000    # -2.0f

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->facesRect:Landroid/graphics/RectF;

    if-nez v2, :cond_1

    move-object v1, v0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->facesRect:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v2, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    :cond_2
    move-object v1, v0

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->USE_SMART_CROP:Z

    if-nez v2, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v4, v4, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz p1, :cond_4

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->rotation:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->rotation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->rotation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_7

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    :cond_7
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1
.end method

.method private isBurstShotEventImage(Ljava/lang/String;)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "count(*)"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v0

    const-string/jumbo v1, "images_event_album"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v0, "LocalImage"

    const-string/jumbo v1, "query fail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v10

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    if-le v8, v9, :cond_1

    move v0, v9

    :goto_2
    move v10, v0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "LocalImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RuntimeException : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :cond_1
    move v0, v10

    goto :goto_2
.end method

.method private isDirty()Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mArcDataVersion:J

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalImage;->getArcVersionNumber()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRotationSupoorted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->rotationSupportedInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->isRotationSupported:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->rotationSupportedInitialized:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->isRotationSupported:Z

    return v0
.end method

.method private isSupportedByRegionDecoder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->regionDecoderSupportedInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->isSupportedByRegionDecoder:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->regionDecoderSupportedInitialized:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->isSupportedByRegionDecoder:Z

    return v0
.end method

.method private loadFace(Z)[Lcom/sec/android/gallery3d/data/Face;
    .locals 32

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    if-eqz v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/LocalImage;->isDirty()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/LocalImage;->isBroken()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    if-nez v4, :cond_3

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/LocalImage;->getFileInfo()V

    :cond_3
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/16 v16, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    :try_start_0
    sget-object v4, Lcom/sec/samsung/gallery/access/face/FaceData;->FACES_URI:Landroid/net/Uri;

    const/16 v6, 0xb

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v9, "_id"

    aput-object v9, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v9, "person_id"

    aput-object v9, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v9, "recommended_id"

    aput-object v9, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v9, "face_data"

    aput-object v9, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v9, "pos_left"

    aput-object v9, v5, v6

    const/4 v6, 0x5

    const-string/jumbo v9, "pos_top"

    aput-object v9, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v9, "pos_right"

    aput-object v9, v5, v6

    const/4 v6, 0x7

    const-string/jumbo v9, "pos_bottom"

    aput-object v9, v5, v6

    const/16 v6, 0x8

    const-string/jumbo v9, "auto_group"

    aput-object v9, v5, v6

    const/16 v6, 0x9

    const-string/jumbo v9, "similarity"

    aput-object v9, v5, v6

    const/16 v6, 0xa

    const-string/jumbo v9, "group_id"

    aput-object v9, v5, v6

    sget-boolean v6, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_USE_CMH:Z

    if-eqz v6, :cond_a

    const-string/jumbo v6, "media_id=?"

    :goto_1
    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v7, v9

    const/4 v8, 0x0

    const-string/jumbo v9, "LocalImage"

    invoke-static/range {v3 .. v9}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_9

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v14

    new-array v0, v14, [Lcom/sec/android/gallery3d/data/Face;

    move-object/from16 v28, v0

    const/16 v18, 0x0

    move/from16 v19, v18

    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const/4 v4, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v4, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/4 v4, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    const/4 v4, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/4 v4, 0x7

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/16 v4, 0x8

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/16 v4, 0x9

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    const/16 v4, 0xa

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-gez v20, :cond_4

    const/16 v20, 0x0

    :cond_4
    if-gez v29, :cond_5

    const/16 v29, 0x0

    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    move/from16 v0, v25

    if-le v0, v4, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    move/from16 v25, v0

    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    if-le v12, v4, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->rotation:I

    const/16 v6, 0x5a

    if-ne v4, v6, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    sub-int v21, v4, v12

    move/from16 v30, v20

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    sub-int v26, v4, v29

    move/from16 v13, v25

    :goto_3
    move/from16 v7, v24

    const/4 v4, 0x1

    move/from16 v0, v24

    if-le v0, v4, :cond_f

    move/from16 v0, v24

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mMaxSimilarity:I

    const v6, 0x7fffffff

    if-eq v4, v6, :cond_8

    move-object/from16 v0, v17

    iget v4, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mFaceIndex:I

    aget-object v4, v28, v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/sec/android/gallery3d/data/Face;->setRecommendedId(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v17

    iget v6, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mFaceId:I

    invoke-static {v4, v6}, Lcom/sec/samsung/gallery/access/face/FaceList;->setFaceUnknownIgnoreAutoGroup(Landroid/content/Context;I)V

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mFaceIndex:I

    const v4, 0x7fffffff

    move-object/from16 v0, v17

    iput v4, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mMaxSimilarity:I

    move-object/from16 v0, v17

    iput v5, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mFaceId:I

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_4
    add-int/lit8 v18, v19, 0x1

    new-instance v4, Lcom/sec/android/gallery3d/data/Face;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Landroid/graphics/Rect;

    move/from16 v0, v21

    move/from16 v1, v30

    move/from16 v2, v26

    invoke-direct {v9, v0, v1, v2, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct/range {v4 .. v11}, Lcom/sec/android/gallery3d/data/Face;-><init>(ILjava/lang/String;IILandroid/graphics/Rect;II)V

    aput-object v4, v28, v19

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_12

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/data/LocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_5
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    goto/16 :goto_0

    :cond_a
    :try_start_1
    const-string/jumbo v6, "image_id=?"

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->rotation:I

    const/16 v6, 0xb4

    if-ne v4, v6, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    sub-int v21, v4, v25

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    sub-int v30, v4, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    sub-int v26, v4, v20

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    sub-int v13, v4, v29

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->rotation:I

    const/16 v6, 0x10e

    if-ne v4, v6, :cond_d

    move/from16 v21, v29

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    sub-int v30, v4, v25

    move/from16 v26, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    sub-int v13, v4, v20

    goto/16 :goto_3

    :cond_d
    move/from16 v21, v20

    move/from16 v30, v29

    move/from16 v26, v25

    move v13, v12

    goto/16 :goto_3

    :cond_e
    new-instance v17, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;

    const v4, 0x7fffffff

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v0, v1, v5, v4}, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;-><init>(III)V

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :catch_0
    move-exception v15

    :try_start_2
    const-string/jumbo v4, "LocalImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "RuntimeException : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_5

    :cond_f
    const/4 v4, 0x1

    move/from16 v0, v24

    if-le v0, v4, :cond_8

    if-eqz v27, :cond_8

    :try_start_3
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mMaxSimilarity:I

    move/from16 v0, v27

    if-ge v4, v0, :cond_10

    move-object/from16 v0, v17

    iget v4, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mFaceIndex:I

    aget-object v4, v28, v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/sec/android/gallery3d/data/Face;->setRecommendedId(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v17

    iget v6, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mFaceId:I

    invoke-static {v4, v6}, Lcom/sec/samsung/gallery/access/face/FaceList;->setFaceUnknownIgnoreAutoGroup(Landroid/content/Context;I)V

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mFaceIndex:I

    move/from16 v0, v27

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mMaxSimilarity:I

    move-object/from16 v0, v17

    iput v5, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mFaceId:I

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v4

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v4

    :cond_10
    const/4 v7, 0x1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/access/face/FaceList;->setFaceUnknownIgnoreAutoGroup(Landroid/content/Context;I)V

    goto/16 :goto_4

    :cond_11
    new-instance v17, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v27

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;-><init>(III)V

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    :cond_12
    move/from16 v19, v18

    goto/16 :goto_2
.end method

.method private declared-synchronized loadRectOfAllFaces()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->facesRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->facesRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/LocalImage;->getImageCropRectF(I)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->facesRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->facesRect:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->facesRect:Landroid/graphics/RectF;

    :cond_2
    sget-boolean v0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->USE_SMART_CROP:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->getSmartCropRectFs(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mSmartCropRectFs:Ljava/util/ArrayList;

    :cond_3
    sget-boolean v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->FEATURE_USE_VISION_INTELLIGENCE:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->getSceneCropRectFs(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mSceneCropRectFs:Ljava/util/ArrayList;

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->getSceneTagDatas(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mSceneTagDatas:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateSoundShotAttribute()V
    .locals 3

    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_SOUND_SCENE_ENABLED:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SoundScene;->isSoundScene(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->isSoundScene:Z

    const-wide/16 v0, 0x10

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->isSoundScene:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/gallery3d/data/LocalImage;->setAttribute(JZ)V

    goto :goto_0
.end method

.method private static updateWidthAndHeightProjection()V
    .locals 3

    sget-object v0, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    sget-object v0, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string/jumbo v2, "height"

    aput-object v2, v0, v1

    return-void
.end method


# virtual methods
.method public copyBurstShotItem(Ljava/lang/String;J)Z
    .locals 12

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getUniqueFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-static {v9, v10, p1, v2}, Lcom/sec/samsung/gallery/util/FileUtil;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    const-string/jumbo v10, "."

    invoke-virtual {v2, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, "Burst_Shot_Info"

    invoke-static {v3, v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->deleteSEFData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->getContentValues()Landroid/content/ContentValues;

    move-result-object v7

    const-string/jumbo v9, "_id"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v9, "group_id"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v9, "title"

    invoke-virtual {v7, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "_data"

    invoke-virtual {v7, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "bucket_id"

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v9, "bucket_display_name"

    invoke-virtual {v7, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_0

    const/4 v8, 0x1

    :cond_0
    :goto_0
    return v8

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected copyTo(Ljava/lang/String;)V
    .locals 13

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->getContentValues()Landroid/content/ContentValues;

    move-result-object v12

    const-string/jumbo v2, "_id"

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v2, "bucket_id"

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "bucket_display_name"

    invoke-virtual {v12, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    const-string/jumbo v3, "\'"

    const-string/jumbo v4, "\'\'"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_data=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v12, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    sget-boolean v2, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_USE_GO_TO_URL:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mUrlVendor:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "image_url"

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mUrl:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "vendor"

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mUrlVendor:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_1
    sget-boolean v2, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_FACE_THUMBNAIL_ENABLED:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_USE_CMH:Z

    if-nez v2, :cond_3

    const/4 v8, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x0

    const-string/jumbo v6, "LocalImage"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_4

    const-string/jumbo v2, "LocalImage"

    const-string/jumbo v3, "query fail: "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v9, Lcom/sec/android/gallery3d/data/LocalImage;

    new-instance v2, Lcom/sec/android/gallery3d/data/Path;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/data/Path;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v9, v2, v3, v8}, Lcom/sec/android/gallery3d/data/LocalImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v10, v3}, Lcom/sec/samsung/gallery/access/face/FaceInterface;->requestFaceScan(Landroid/content/Context;Ljava/util/List;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method public delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 5

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "_id"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    new-instance v3, Lcom/sec/android/gallery3d/data/LocalImage$DeleteOperation;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/gallery3d/data/LocalImage$DeleteOperation;-><init>(Lcom/sec/android/gallery3d/data/LocalImage;Lcom/sec/android/gallery3d/data/LocalImage$1;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->addId(Landroid/net/Uri;Ljava/lang/String;ILcom/sec/android/gallery3d/data/dboperation/IOperation;)V

    const/4 v0, 0x1

    return v0
.end method

.method public deleteFaceImage(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsDeleted:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "_id"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    new-instance v3, Lcom/sec/android/gallery3d/data/LocalImage$DeleteFaceImageOperation;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/gallery3d/data/LocalImage$DeleteFaceImageOperation;-><init>(Lcom/sec/android/gallery3d/data/LocalImage;Lcom/sec/android/gallery3d/data/LocalImage$1;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->addId(Landroid/net/Uri;Ljava/lang/String;ILcom/sec/android/gallery3d/data/dboperation/IOperation;)V

    goto :goto_0
.end method

.method public deleteFaceInfo()V
    .locals 7

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsFaceInfoDeleted:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsFaceInfoDeleted:Z

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    instance-of v2, v2, Lcom/sec/android/gallery3d/app/GalleryApp;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->isArcMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFacePaths:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Face;->getFaceId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/access/face/FaceList;->remove(Landroid/content/Context;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/Path;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFacePaths:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFacePaths:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFacePaths:Ljava/util/ArrayList;

    :cond_4
    invoke-static {}, Lcom/sec/android/gallery3d/data/MediaObject;->setArcVersionNumber()V

    goto :goto_0
.end method

.method public forceUpdatePendingAttribute()V
    .locals 6

    const-wide/16 v4, 0x200

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/gallery3d/data/LocalImage;->hasPendingAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "group_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->getGroupId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and bucket_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->getBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/LocalImage;->isBurstShotImage(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v4, v5, v1}, Lcom/sec/android/gallery3d/data/LocalImage;->setAttribute(JZ)V

    const/4 v1, 0x0

    invoke-virtual {p0, v4, v5, v1}, Lcom/sec/android/gallery3d/data/LocalImage;->setPendingAttribute(JZ)V

    :cond_0
    return-void
.end method

.method public getArcHeight(Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mArcWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mArcHeight:I

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->getFileInfo()V

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->rotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_3

    :cond_2
    sget-object v0, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->YES:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mArcWidth:I

    :goto_0
    return v0

    :cond_3
    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mArcHeight:I

    goto :goto_0
.end method

.method public getArcWidth(Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mArcWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mArcHeight:I

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->getFileInfo()V

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->rotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_3

    :cond_2
    sget-object v0, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->YES:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mArcHeight:I

    :goto_0
    return v0

    :cond_3
    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mArcWidth:I

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

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

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->caption:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "mime_type"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "latitude"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v1, "longitude"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v1, "datetaken"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->dateTakenInMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "date_added"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->dateAddedInSec:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "date_modified"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->dateModifiedInSec:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "_data"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "orientation"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->rotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "bucket_id"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->bucketId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "_size"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->fileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "width"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "height"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "group_id"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->groupId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-boolean v1, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_3D_PANORAMA_ENABLED:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "spherical_mosaic"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->sphericalMosaic:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string/jumbo v1, "sef_file_type"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->sefFileType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "is_drm"

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->isdrm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-boolean v1, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_HAS_MOTION_PANAROMA:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "sef_file_sub_type"

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->sefFileSubType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    return-object v0
.end method

.method public getDataVersion(I)J
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFacePaths:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    :cond_0
    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mDataVersion:J

    :goto_0
    return-wide v2

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFacePaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFacePaths:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mDataVersion:J

    goto :goto_0
.end method

.method public getDateModifiedInSec()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->dateModifiedInSec:J

    return-wide v0
.end method

.method public getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;
    .locals 12

    const/16 v11, 0xd

    const/16 v5, 0xc

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v0

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalImage;->dateTakenInMs:J

    invoke-static {v4, v6, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    if-nez v3, :cond_1

    :cond_0
    invoke-direct {p0, v8}, Lcom/sec/android/gallery3d/data/LocalImage;->getFileInfo(Z)V

    :cond_1
    const-string/jumbo v3, "image/jpeg"

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x10

    iget v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->rotation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/data/MediaDetails;->extractExifInfo(Lcom/sec/android/gallery3d/data/MediaDetails;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/gallery3d/data/MediaDetails;->replaceDetail(ILjava/lang/Object;)V

    :cond_2
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v11}, Lcom/sec/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v11, v3}, Lcom/sec/android/gallery3d/data/MediaDetails;->replaceDetail(ILjava/lang/Object;)V

    :cond_3
    :goto_0
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v3, 0xf

    const-string/jumbo v4, "%dx%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget v6, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getDetails(Lcom/sec/android/gallery3d/data/MediaDetails;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v0

    :cond_4
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mUrl:Ljava/lang/String;

    if-eqz v3, :cond_7

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x13

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_5
    const/16 v3, 0x1f4

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->caption:Ljava/lang/String;

    invoke-virtual {v0, v10, v3}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v11, v3}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->latitude:D

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalImage;->longitude:D

    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, 0x9

    const/4 v4, 0x2

    new-array v4, v4, [D

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalImage;->latitude:D

    aput-wide v6, v4, v8

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalImage;->longitude:D

    aput-wide v6, v4, v10

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v3, 0xa

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v3, 0xb

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :goto_2
    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->fileSize:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    const/16 v3, 0xe

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->fileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x9

    invoke-virtual {v0, v3, v9}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v9}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v9}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "LocalImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    const/16 v3, 0x13

    invoke-virtual {v0, v3, v9}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public getFaceImagePath()Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFaceImagePath:Lcom/sec/android/gallery3d/data/Path;

    return-object v0
.end method

.method public getFacePath(I)Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFacePaths:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFacePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFacePaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/Path;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    goto :goto_0
.end method

.method public getFaces()[Lcom/sec/android/gallery3d/data/Face;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    return-object v0
.end method

.method public getGolf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsGolf:Z

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    return v0
.end method

.method public getItemId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->longitude:D

    return-wide v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getRectOfAllFaces()Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/LocalImage;->getRectOfAllFaces(Z)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->isBroken()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->rotation:I

    goto :goto_0
.end method

.method public getSceneCropRectFs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mSceneCropRectFs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSceneTagDatas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mSceneTagDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSefFileSubType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->sefFileSubType:I

    return v0
.end method

.method public getSefFileType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->sefFileType:I

    return v0
.end method

.method public getSmartCropRectFs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mSmartCropRectFs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSphericalMosaic()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->sphericalMosaic:I

    return v0
.end method

.method public getSupportedOperations()J
    .locals 6

    const-wide v0, 0xc0e20008780062dL

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->isRotationSupoorted()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    :cond_0
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewSlideShow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide v2, 0x200000000000L

    or-long/2addr v0, v2

    :cond_1
    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->groupId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    const-wide v2, 0x80000000000L

    or-long/2addr v0, v2

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->isGolf()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->isBroken()Z

    move-result v2

    if-nez v2, :cond_3

    const-wide v2, 0x4000002010000000L    # 2.0000611543655396

    or-long/2addr v0, v2

    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsGolf:Z

    if-eqz v2, :cond_4

    const-wide v2, -0x4000000000000001L    # -1.9999999999999998

    and-long/2addr v0, v2

    const-wide v2, -0x2000000001L

    and-long/2addr v0, v2

    :cond_4
    sget-boolean v2, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_USE_SECRET_BOX:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->isSceretBoxItem:Z

    if-eqz v2, :cond_f

    const-wide/32 v2, 0x20000000

    or-long/2addr v0, v2

    const-wide/32 v2, -0x40000001

    and-long/2addr v0, v2

    const-wide/16 v2, -0x21

    and-long/2addr v0, v2

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->isGolf()Z

    move-result v2

    if-nez v2, :cond_6

    const-wide/high16 v2, 0x1000000000000000L

    or-long/2addr v0, v2

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->isSupportedByRegionDecoder()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsGolf:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->isFlipPhoto:Z

    if-nez v2, :cond_7

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    :cond_7
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFlashAnnotate:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-wide/32 v2, 0x40000

    or-long/2addr v0, v2

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->is3DPanorama()Z

    move-result v2

    if-eqz v2, :cond_9

    const-wide v2, 0x4000000000L

    or-long/2addr v0, v2

    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_d

    const-wide v0, 0x200000000401L

    sget-boolean v2, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_USE_SECRET_BOX:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->isSceretBoxItem:Z

    if-eqz v2, :cond_10

    const-wide/32 v2, 0x20000000

    or-long/2addr v0, v2

    const-wide/32 v2, -0x40000001

    and-long/2addr v0, v2

    :cond_a
    :goto_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    iget-object v2, v2, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->mOriginalMime:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->isFlipPhoto:Z

    if-nez v2, :cond_b

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    :cond_b
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    iget v2, v2, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->mDrmType:I

    sget v3, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->DRM2_TYPE_SD:I

    if-ne v2, v3, :cond_11

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    :cond_c
    :goto_2
    const-wide/32 v2, -0x4000001

    and-long/2addr v0, v2

    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isRaw(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-wide/32 v2, -0x4000001

    and-long/2addr v0, v2

    :cond_e
    return-wide v0

    :cond_f
    const-wide/32 v2, 0x40000000

    or-long/2addr v0, v2

    const-wide/32 v2, -0x20000001

    and-long/2addr v0, v2

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    goto/16 :goto_0

    :cond_10
    const-wide/32 v2, 0x40000000

    or-long/2addr v0, v2

    const-wide/32 v2, -0x20000001

    and-long/2addr v0, v2

    goto :goto_1

    :cond_11
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    iget v2, v2, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->mDrmType:I

    sget v3, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->DRM2_TYPE_FL:I

    if-ne v2, v3, :cond_c

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    goto :goto_2
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    return v0
.end method

.method public isBurstShotImage(Ljava/lang/String;)Z
    .locals 13

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/LocalImage;->isBurstShotEventImage(Ljava/lang/String;)Z

    move-result v12

    :goto_0
    return v12

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

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

    const-string/jumbo v6, "LocalImage"

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_1

    const-string/jumbo v1, "LocalImage"

    const-string/jumbo v3, "query fail"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
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
    if-le v7, v11, :cond_2

    move v1, v11

    :goto_2
    move v12, v1

    goto :goto_0

    :catch_0
    move-exception v10

    :try_start_2
    const-string/jumbo v1, "LocalImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RuntimeException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    :cond_2
    move v1, v12

    goto :goto_2
.end method

.method public isFaceInfoDeleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsFaceInfoDeleted:Z

    return v0
.end method

.method public declared-synchronized isFileModified(Landroid/database/Cursor;)Z
    .locals 4

    monitor-enter p0

    const/4 v2, 0x7

    :try_start_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/LocalImage;->updateContent(Landroid/database/Cursor;)Z

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->dateModifiedInSec:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isGolf()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    const-string/jumbo v1, "image/golf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSoundScene()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->isSoundScene:Z

    return v0
.end method

.method public loadFace()[Lcom/sec/android/gallery3d/data/Face;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/LocalImage;->loadFace(Z)[Lcom/sec/android/gallery3d/data/Face;

    move-result-object v0

    return-object v0
.end method

.method public loadFromCursor(Landroid/database/Cursor;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->caption:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->latitude:D

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->longitude:D

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->dateTakenInMs:J

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->dateAddedInSec:J

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->dateModifiedInSec:J

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->rotation:I

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->bucketId:I

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->fileSize:J

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->groupId:J

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mArcWidth:I

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mArcHeight:I

    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_3D_PANORAMA_ENABLED:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->sphericalMosaic:I

    :cond_0
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->sefFileType:I

    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsFavorite:Z

    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->isdrm:Z

    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_HAS_MOTION_PANAROMA:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->sefFileSubType:I

    :cond_2
    sget-boolean v0, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_USE_SECRET_BOX:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->isSceretBoxItem:Z

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public removeManualFD()V
    .locals 8

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Face;->getPersonId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Face;->getRecommendedId()I

    move-result v2

    const/4 v6, 0x1

    if-le v2, v6, :cond_4

    if-eq v2, v1, :cond_2

    :cond_4
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Face;->getAutoGroup()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Face;->getFaceId()I

    move-result v7

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/access/face/FaceList;->remove(Landroid/content/Context;I)V

    goto :goto_1
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

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/gallery3d/data/LocalImage;->requestImage(ILcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v0

    return-object v0
.end method

.method public requestImage(ILcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 10
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

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Face;->getFacePath()Ljava/lang/String;

    move-result-object v7

    :cond_0
    :goto_0
    new-instance v1, Lcom/sec/android/gallery3d/data/LocalImage$LocalImageRequest;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->dateModifiedInSec:J

    iget-boolean v8, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsGolf:Z

    move v6, p1

    move-object v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/gallery3d/data/LocalImage$LocalImageRequest;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JILjava/lang/String;ZLcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)V

    return-object v1

    :cond_1
    const/4 p1, 0x2

    goto :goto_0
.end method

.method public requestLargeImage()Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;)V

    return-object v0
.end method

.method public rotate(I)V
    .locals 26

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsRetailModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isLDURetailMediaPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "LocalImage"

    const-string/jumbo v5, "cannot rotate LDU retail read-only media"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    sget-object v11, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/data/LocalImage;->rotation:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->rotation:I

    add-int v4, v4, p1

    rem-int/lit16 v0, v4, 0x168

    move/from16 v20, v0

    if-gez v20, :cond_2

    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x168

    move/from16 v20, v0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    const-string/jumbo v5, "image/jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    new-instance v17, Lcom/sec/android/gallery3d/exif/ExifInterface;

    invoke-direct/range {v17 .. v17}, Lcom/sec/android/gallery3d/exif/ExifInterface;-><init>()V

    sget v4, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static/range {v20 .. v20}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v22

    if-eqz v22, :cond_c

    :try_start_0
    new-instance v16, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;-><init>(Ljava/lang/String;)V

    new-instance v10, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v10, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "Orientation"

    invoke-static/range {v20 .. v20}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;->gpsAltitude:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string/jumbo v4, "GPSAltitude"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;->gpsAltitude:Ljava/lang/String;

    invoke-virtual {v10, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;->gpsAltitudeRef:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string/jumbo v4, "GPSAltitudeRef"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;->gpsAltitudeRef:Ljava/lang/String;

    invoke-virtual {v10, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;->gpsDateStamp:Ljava/lang/String;

    if-eqz v4, :cond_5

    const-string/jumbo v4, "GPSDateStamp"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;->gpsDateStamp:Ljava/lang/String;

    invoke-virtual {v10, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;->dateTime:Ljava/lang/String;

    if-eqz v4, :cond_f

    const-string/jumbo v4, "DateTime"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;->dateTime:Ljava/lang/String;

    invoke-virtual {v10, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;->gpsLatitude:Ljava/lang/String;

    if-eqz v4, :cond_6

    const-string/jumbo v4, "GPSLatitude"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;->gpsLatitude:Ljava/lang/String;

    invoke-virtual {v10, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;->gpsLatitudeRef:Ljava/lang/String;

    if-eqz v4, :cond_7

    const-string/jumbo v4, "GPSLatitudeRef"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;->gpsLatitudeRef:Ljava/lang/String;

    invoke-virtual {v10, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;->gpsLongitude:Ljava/lang/String;

    if-eqz v4, :cond_8

    const-string/jumbo v4, "GPSLongitude"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;->gpsLongitude:Ljava/lang/String;

    invoke-virtual {v10, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;->gpsLongitudeRef:Ljava/lang/String;

    if-eqz v4, :cond_9

    const-string/jumbo v4, "GPSLongitudeRef"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;->gpsLongitudeRef:Ljava/lang/String;

    invoke-virtual {v10, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;->gpsProcessMethod:Ljava/lang/String;

    if-eqz v4, :cond_a

    const-string/jumbo v4, "GPSProcessingMethod"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;->gpsProcessMethod:Ljava/lang/String;

    invoke-virtual {v10, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;->gpsTimeStamp:Ljava/lang/String;

    if-eqz v4, :cond_b

    const-string/jumbo v4, "GPSTimeStamp"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalImage$ExifInformation;->gpsTimeStamp:Ljava/lang/String;

    invoke-virtual {v10, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v10}, Landroid/media/ExifInterface;->saveAttributes()V

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->fileSize:J

    const-string/jumbo v4, "_size"

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/sec/android/gallery3d/data/LocalImage;->fileSize:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_c
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->fileSize:J

    const-string/jumbo v4, "_size"

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/sec/android/gallery3d/data/LocalImage;->fileSize:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v4, "datetaken"

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/sec/android/gallery3d/data/LocalImage;->dateTakenInMs:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v24, 0x3e8

    div-long v8, v8, v24

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v4, "orientation"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v11, v6, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    const-string/jumbo v4, "LocalImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Update row count ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v4

    const-string/jumbo v5, "images_event_album"

    const-string/jumbo v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateEventContents(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)V

    :cond_d
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/gallery3d/data/LocalImage;->rotation:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsRotateSearch:Z

    if-eqz v4, :cond_e

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalImage;->nextVersionNumber()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->mDataVersion:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsRotateSearch:Z

    :cond_e
    invoke-static {}, Lcom/sec/android/gallery3d/data/MediaObject;->setVersion()V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/LocalImage;->getGroupId()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->rotate(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;II)V

    goto/16 :goto_0

    :cond_f
    :try_start_1
    new-instance v21, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy:MM:dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string/jumbo v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->dateTakenInMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v4, "DateTime"

    invoke-virtual {v10, v4, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v14

    const-string/jumbo v4, "LocalImage"

    const-string/jumbo v5, "cannot find file to set exif: "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v15

    const-string/jumbo v4, "LocalImage"

    const-string/jumbo v5, "cannot set exif data - write orientation"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v12

    const v4, 0x7f0a049e

    invoke-static {v12, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method public setFaceImagePath(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/Long;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFaceImagePath:Lcom/sec/android/gallery3d/data/Path;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsFaceInfoDeleted:Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFacePaths(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFacePaths:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsFaceInfoDeleted:Z

    return-void
.end method

.method public setGolf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsGolf:Z

    return-void
.end method

.method public setRotateForSearch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsRotateSearch:Z

    return-void
.end method

.method public setSceneCropRectFs()V
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->FEATURE_USE_VISION_INTELLIGENCE:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->getSceneCropRectFs(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mSceneCropRectFs:Ljava/util/ArrayList;

    iget v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->getSceneTagDatas(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mSceneTagDatas:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public setSoundScene(Z)V
    .locals 0

    return-void
.end method

.method protected updateFaceDataVersion()V
    .locals 8

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFacePaths:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/Path;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    instance-of v4, v0, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    if-eqz v4, :cond_3

    move-object v4, v0

    check-cast v4, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->updateVersion()J

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaObject;->getDataVersion()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/gallery3d/data/LocalImage;->setFaceImagePath(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/Long;)V

    goto :goto_0

    :cond_3
    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mDataVersion:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/sec/android/gallery3d/data/LocalImage;->setFaceImagePath(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public updateFromCursor(Landroid/database/Cursor;)Z
    .locals 10

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v1, Lcom/sec/android/gallery3d/util/UpdateHelper;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/util/UpdateHelper;-><init>()V

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->caption:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->caption:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mimeType:Ljava/lang/String;

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalImage;->latitude:D

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalImage;->latitude:D

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalImage;->longitude:D

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalImage;->longitude:D

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalImage;->dateTakenInMs:J

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalImage;->dateTakenInMs:J

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalImage;->dateAddedInSec:J

    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalImage;->dateAddedInSec:J

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalImage;->dateModifiedInSec:J

    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalImage;->dateModifiedInSec:J

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    const/16 v5, 0x8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->rotation:I

    const/16 v5, 0x9

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->rotation:I

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->bucketId:I

    const/16 v5, 0xa

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->bucketId:I

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalImage;->fileSize:J

    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalImage;->fileSize:J

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/LocalImage;->groupId:J

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/LocalImage;->isDrm()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->width:I

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mArcWidth:I

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->height:I

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mArcHeight:I

    :cond_0
    sget-boolean v2, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_3D_PANORAMA_ENABLED:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->sphericalMosaic:I

    const/16 v5, 0xf

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->sphericalMosaic:I

    :cond_1
    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->sefFileType:I

    const/16 v5, 0x10

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->sefFileType:I

    const/16 v2, 0x11

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mIsFavorite:Z

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->isdrm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v2, 0x12

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->isdrm:Z

    sget-boolean v2, Lcom/sec/android/gallery3d/data/LocalImage;->FEATURE_HAS_MOTION_PANAROMA:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->sefFileSubType:I

    const/16 v5, 0x13

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->sefFileSubType:I

    :cond_2
    invoke-virtual {p0, v1, p1, v4}, Lcom/sec/android/gallery3d/data/LocalImage;->isItemRenamed(Lcom/sec/android/gallery3d/util/UpdateHelper;Landroid/database/Cursor;Z)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v3

    :goto_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->updateAttributes()V

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
