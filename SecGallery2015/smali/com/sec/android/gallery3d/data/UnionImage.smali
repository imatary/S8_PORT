.class public Lcom/sec/android/gallery3d/data/UnionImage;
.super Lcom/sec/android/gallery3d/data/UnionMediaItem;
.source "UnionImage.java"


# static fields
.field static final FEATURE_3D_PANORAMA_ENABLED:Z

.field static final FEATURE_HAS_MOTION_PANAROMA:Z

.field static final FEATURE_SOUND_SCENE_ENABLED:Z

.field static final FEATURE_USE_BEST_PHOTO_FIELD:Z

.field static final FEATURE_USE_CMH:Z

.field static final FEATURE_USE_GO_TO_URL:Z

.field static final FEATURE_USE_SECRET_BOX:Z

.field static final INDEX_BEST_IMAGE:I = 0x20

.field static final INDEX_BUCKET_ID:I = 0xa

.field static final INDEX_CAPTION:I = 0x1

.field static final INDEX_CLOUD_CACHED_PATH:I = 0x17

.field static final INDEX_CLOUD_FILE_STATUS:I = 0x19

.field static final INDEX_CLOUD_ID:I = 0x15

.field static final INDEX_CLOUD_IS_AVAILABLE_THUMB:I = 0x1e

.field static final INDEX_CLOUD_IS_UPLOADED:I = 0x1d

.field static final INDEX_CLOUD_ORIGINAL_SIZE:I = 0x1c

.field static final INDEX_CLOUD_SERVER_ID:I = 0x16

.field static final INDEX_CLOUD_SERVER_PATH:I = 0x1a

.field static final INDEX_CLOUD_SIZE:I = 0x1b

.field static final INDEX_CLOUD_THUMB_PATH:I = 0x18

.field static final INDEX_DATA:I = 0x8

.field static final INDEX_DATE_ADDED:I = 0x6

.field static final INDEX_DATE_MODIFIED:I = 0x7

.field static final INDEX_DATE_TAKEN:I = 0x5

.field static final INDEX_FAVORITE:I = 0x11

.field static final INDEX_GROUP_ID:I = 0xe

.field static final INDEX_HEIGHT:I = 0xd

.field static final INDEX_ID:I = 0x0

.field static final INDEX_IS_CLOUD:I = 0x13

.field static final INDEX_IS_DRM:I = 0x12

.field static final INDEX_LATITUDE:I = 0x3

.field static final INDEX_LONGITUDE:I = 0x4

.field static final INDEX_MEDIA_ID:I = 0x14

.field static final INDEX_MIME_TYPE:I = 0x2

.field static final INDEX_ORIENTATION:I = 0x9

.field static final INDEX_SEF_FILE_SUB_TYPE:I = 0x1f

.field static final INDEX_SEF_FILE_TYPE:I = 0x10

.field static final INDEX_SIZE:I = 0xb

.field static final INDEX_SPHERICAL_MOSAIC:I = 0xf

.field static final INDEX_URL:I = 0x21

.field static final INDEX_URL_VENDOR:I = 0x22

.field static final INDEX_WIDTH:I = 0xc

.field public static final ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

.field public static final ITEM_PATH_STR:Ljava/lang/String; = "/union/image/item"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final PROJECTION_STRING:Ljava/lang/String;


# instance fields
.field private mIsSoundScene:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x17

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->Use3DPanorama:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/gallery3d/data/UnionImage;->FEATURE_3D_PANORAMA_ENABLED:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/gallery3d/data/UnionImage;->FEATURE_USE_SECRET_BOX:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSoundScene:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/gallery3d/data/UnionImage;->FEATURE_SOUND_SCENE_ENABLED:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/gallery3d/data/UnionImage;->FEATURE_USE_CMH:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_3

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/sec/android/gallery3d/data/UnionImage;->FEATURE_HAS_MOTION_PANAROMA:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseBestImageFieldInCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/gallery3d/data/UnionImage;->FEATURE_USE_BEST_PHOTO_FIELD:Z

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGoToURL:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/gallery3d/data/UnionImage;->FEATURE_USE_GO_TO_URL:Z

    const-string/jumbo v1, "/union/image/item"

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    sput-object v1, Lcom/sec/android/gallery3d/data/UnionImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    const/16 v1, 0x1f

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

    const/16 v1, 0x13

    const-string/jumbo v2, "is_cloud"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "media_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "cloud_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "cloud_server_id"

    aput-object v2, v0, v1

    const-string/jumbo v1, "cloud_cached_path"

    aput-object v1, v0, v4

    const/16 v1, 0x18

    const-string/jumbo v2, "cloud_thumb_path"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "file_status"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "cloud_server_path"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "cloud_size"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "cloud_original_size"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "cloud_is_uploaded"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "cloud_is_available_thumb"

    aput-object v2, v0, v1

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionImage;->FEATURE_HAS_MOTION_PANAROMA:Z

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
    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionImage;->FEATURE_USE_BEST_PHOTO_FIELD:Z

    if-eqz v1, :cond_1

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const-string/jumbo v2, "best_image"

    aput-object v2, v0, v1

    :cond_1
    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionImage;->FEATURE_USE_GO_TO_URL:Z

    if-eqz v1, :cond_2

    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    const-string/jumbo v2, "image_url"

    aput-object v2, v0, v1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    const-string/jumbo v2, "vendor"

    aput-object v2, v0, v1

    :cond_2
    sput-object v0, Lcom/sec/android/gallery3d/data/UnionImage;->PROJECTION:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionImage;->PROJECTION:[Ljava/lang/String;

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

    sput-object v1, Lcom/sec/android/gallery3d/data/UnionImage;->PROJECTION_STRING:Ljava/lang/String;

    return-void

    :cond_3
    move v1, v3

    goto/16 :goto_0
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/data/UnionMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/app/GalleryApp;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionImage;->mIsSoundScene:Z

    return-void
.end method


# virtual methods
.method public isSoundScene()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionImage;->mIsSoundScene:Z

    return v0
.end method

.method public loadFromCursor(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method public setSoundScene(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/UnionImage;->mIsSoundScene:Z

    return-void
.end method

.method public updateFromCursor(Landroid/database/Cursor;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
