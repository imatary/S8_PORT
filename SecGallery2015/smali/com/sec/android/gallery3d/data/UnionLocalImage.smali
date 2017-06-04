.class public Lcom/sec/android/gallery3d/data/UnionLocalImage;
.super Lcom/sec/android/gallery3d/data/UnionImage;
.source "UnionLocalImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/UnionLocalItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;,
        Lcom/sec/android/gallery3d/data/UnionLocalImage$LocalLargeImageRequest;,
        Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;,
        Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;
    }
.end annotation


# static fields
.field private static final CMH_FILE_STATUS_FAVORITE:I = 0x4

.field private static final CMH_FILE_STATUS_NORMAL:I = 0x0

.field private static final FEATURE_USE_FLASH_ANNOTATE:Z

.field private static final IS_TABLET:Z

.field private static final TAG:Ljava/lang/String; = "UnionLocalImage"


# instance fields
.field private disableUpdateRotation:Z

.field private isRotationSupported:Z

.field private isSupportedByRegionDecoder:Z

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

.field private mIsFaceInfoDeleted:Z

.field private mIsRotateSearch:Z

.field private regionDecoderSupportedInitialized:Z

.field private rotationSupportedInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFlashAnnotate:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->FEATURE_USE_FLASH_ANNOTATE:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->IS_TABLET:Z

    invoke-static {}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->updateWidthAndHeightProjection()V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->nextVersionNumber()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5, p2}, Lcom/sec/android/gallery3d/data/UnionImage;-><init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/app/GalleryApp;)V

    iput-object v7, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFaceImagePath:Lcom/sec/android/gallery3d/data/Path;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    iput-object v7, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFacePaths:Ljava/util/ArrayList;

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mIsFaceInfoDeleted:Z

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->rotationSupportedInitialized:Z

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->regionDecoderSupportedInitialized:Z

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mIsRotateSearch:Z

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->disableUpdateRotation:Z

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    :try_start_0
    sget-object v4, Lcom/sec/android/gallery3d/data/UnionLocalImage;->PROJECTION:[Ljava/lang/String;

    invoke-static {v2, v3, v4, p3}, Lcom/sec/android/gallery3d/data/UnionAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

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
    const-string/jumbo v4, "UnionLocalImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :cond_1
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->loadFromCursor(Landroid/database/Cursor;)V

    new-instance v4, Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v4, v5, p0}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/MediaItem;)V

    iput-object v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->updateAttributes()V
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

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sec/android/gallery3d/data/UnionImage;-><init>(Lcom/sec/android/gallery3d/data/Path;JLcom/sec/android/gallery3d/app/GalleryApp;)V

    iput-object v3, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFaceImagePath:Lcom/sec/android/gallery3d/data/Path;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    iput-object v3, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFacePaths:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mIsFaceInfoDeleted:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->rotationSupportedInitialized:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->regionDecoderSupportedInitialized:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mIsRotateSearch:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->disableUpdateRotation:Z

    invoke-virtual {p0, p3}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->loadFromCursor(Landroid/database/Cursor;)V

    new-instance v0, Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/MediaItem;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->updateAttributes()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/data/UnionLocalImage;)Lcom/sec/android/gallery3d/data/LocalImageAttributes;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getUnionLocalImageAttributes()Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/UnionLocalImage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->updateSoundShotAttribute()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/data/UnionLocalImage;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getFaceCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/data/UnionLocalImage;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFacePaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/gallery3d/data/UnionLocalImage;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFacePaths:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/data/UnionLocalImage;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/data/UnionLocalImage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->deleteDngFile()V

    return-void
.end method

.method private deleteDngFile()V
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getFilePath()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->id:I

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getFaceCount(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0
.end method

.method private static getFaceCount(Landroid/content/ContentResolver;I)I
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

    sget-boolean v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->FEATURE_USE_CMH:Z

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

    const-string/jumbo v6, "UnionLocalImage"

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
    const-string/jumbo v0, "UnionLocalImage"

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

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getFileInfo(Z)V

    return-void
.end method

.method private getFileInfo(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isDrm()Z

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

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mArcWidth:I

    iput v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->width:I

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mArcHeight:I

    iput v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->height:I

    goto :goto_0
.end method

.method private getUnionLocalImageAttributes()Lcom/sec/android/gallery3d/data/LocalImageAttributes;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    return-object v0
.end method

.method private isDirty()Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mArcDataVersion:J

    invoke-static {}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getArcVersionNumber()J

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

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->rotationSupportedInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isRotationSupported:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->rotationSupportedInitialized:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isRotationSupported:Z

    return v0
.end method

.method private isSupportedByRegionDecoder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->regionDecoderSupportedInitialized:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isSupportedByRegionDecoder:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->regionDecoderSupportedInitialized:Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isSupportedByRegionDecoder:Z

    return v0
.end method

.method private loadFace(Z)[Lcom/sec/android/gallery3d/data/Face;
    .locals 32

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    if-eqz v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isDirty()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isBroken()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->width:I

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->height:I

    if-nez v4, :cond_3

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getFileInfo()V

    :cond_3
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/16 v16, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

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

    const-string/jumbo v6, "image_id=?"

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->id:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v7, v9

    const/4 v8, 0x0

    const-string/jumbo v9, "UnionLocalImage"

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

    :goto_1
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

    iget v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->width:I

    move/from16 v0, v25

    if-le v0, v4, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->width:I

    move/from16 v25, v0

    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->height:I

    if-le v12, v4, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->height:I

    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->rotation:I

    const/16 v6, 0x5a

    if-ne v4, v6, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->height:I

    sub-int v21, v4, v12

    move/from16 v30, v20

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->height:I

    sub-int v26, v4, v29

    move/from16 v13, v25

    :goto_2
    move/from16 v7, v24

    const/4 v4, 0x1

    move/from16 v0, v24

    if-le v0, v4, :cond_e

    move/from16 v0, v24

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

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

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

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
    :goto_3
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

    if-nez v4, :cond_11

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/data/UnionLocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_4
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    goto/16 :goto_0

    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->rotation:I

    const/16 v6, 0xb4

    if-ne v4, v6, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->width:I

    sub-int v21, v4, v25

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->height:I

    sub-int v30, v4, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->width:I

    sub-int v26, v4, v20

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->height:I

    sub-int v13, v4, v29

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->rotation:I

    const/16 v6, 0x10e

    if-ne v4, v6, :cond_c

    move/from16 v21, v29

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->width:I

    sub-int v30, v4, v25

    move/from16 v26, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->width:I

    sub-int v13, v4, v20

    goto/16 :goto_2

    :cond_c
    move/from16 v21, v20

    move/from16 v30, v29

    move/from16 v26, v25

    move v13, v12

    goto/16 :goto_2

    :cond_d
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

    goto/16 :goto_3

    :catch_0
    move-exception v15

    :try_start_2
    const-string/jumbo v4, "UnionLocalImage"

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

    goto/16 :goto_4

    :cond_e
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

    if-eqz v4, :cond_10

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mMaxSimilarity:I

    move/from16 v0, v27

    if-ge v4, v0, :cond_f

    move-object/from16 v0, v17

    iget v4, v0, Lcom/sec/android/gallery3d/data/MediaItem$FaceValue;->mFaceIndex:I

    aget-object v4, v28, v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/sec/android/gallery3d/data/Face;->setRecommendedId(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

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

    goto/16 :goto_3

    :catchall_0
    move-exception v4

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v4

    :cond_f
    const/4 v7, 0x1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/access/face/FaceList;->setFaceUnknownIgnoreAutoGroup(Landroid/content/Context;I)V

    goto/16 :goto_3

    :cond_10
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

    goto/16 :goto_3

    :cond_11
    move/from16 v19, v18

    goto/16 :goto_1
.end method

.method private setFaceImagePath(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/Long;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFaceImagePath:Lcom/sec/android/gallery3d/data/Path;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mIsFaceInfoDeleted:Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateSoundShotAttribute()V
    .locals 3

    sget-boolean v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->FEATURE_SOUND_SCENE_ENABLED:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/SoundScene;->isSoundScene(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->setSoundScene(Z)V

    const-wide/16 v0, 0x10

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isSoundScene()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->setAttribute(JZ)V

    goto :goto_0
.end method

.method private static updateWidthAndHeightProjection()V
    .locals 3

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string/jumbo v2, "width"

    aput-object v2, v0, v1

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string/jumbo v2, "height"

    aput-object v2, v0, v1

    return-void
.end method


# virtual methods
.method public copyBurstShotItem(Ljava/lang/String;J)Z
    .locals 12

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getUniqueFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getContentValues()Landroid/content/ContentValues;

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
    .locals 9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string/jumbo v0, "_id"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v0, "bucket_id"

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "bucket_display_name"

    invoke-virtual {v2, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    const-string/jumbo v4, "\'"

    const-string/jumbo v8, "\'\'"

    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_data=\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->FEATURE_USE_GO_TO_URL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mUrlVendor:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    const-string/jumbo v0, "image_url"

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "vendor"

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mUrlVendor:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/ContentResolverDispatcher;->updateOrInsert(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void

    :cond_0
    move-object v5, v2

    goto :goto_0
.end method

.method public delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 5

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "_id"

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionLocalImage;->FEATURE_USE_CMH:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mediaId:I

    :goto_0
    new-instance v3, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/gallery3d/data/UnionLocalImage$DeleteOperation;-><init>(Lcom/sec/android/gallery3d/data/UnionLocalImage;Lcom/sec/android/gallery3d/data/UnionLocalImage$1;)V

    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->addId(Landroid/net/Uri;Ljava/lang/String;ILcom/sec/android/gallery3d/data/dboperation/IOperation;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->id:I

    goto :goto_0
.end method

.method public deleteFaceInfo()V
    .locals 7

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mIsFaceInfoDeleted:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mIsFaceInfoDeleted:Z

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->isArcMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFacePaths:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Face;->getFaceId()I

    move-result v6

    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/access/face/FaceList;->remove(Landroid/content/Context;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFaceImagePaths:Ljava/util/HashMap;

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

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFacePaths:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFacePaths:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFacePaths:Ljava/util/ArrayList;

    :cond_4
    invoke-static {}, Lcom/sec/android/gallery3d/data/MediaObject;->setArcVersionNumber()V

    goto :goto_0
.end method

.method public forceUpdatePendingAttribute()V
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v4, 0x200

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->hasPendingAttribute(J)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "group_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getGroupId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and bucket_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and (file_status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " or file_status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isBurstShotImage(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v4, v5, v1}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->setAttribute(JZ)V

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->setPendingAttribute(JZ)V

    :cond_0
    return-void
.end method

.method public getArcHeight(Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mArcWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mArcHeight:I

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getFileInfo()V

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->rotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_3

    :cond_2
    sget-object v0, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->YES:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mArcWidth:I

    :goto_0
    return v0

    :cond_3
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mArcHeight:I

    goto :goto_0
.end method

.method public getArcWidth(Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;)I
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mArcWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mArcHeight:I

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getFileInfo()V

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->rotation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->rotation:I

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_3

    :cond_2
    sget-object v0, Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;->YES:Lcom/sec/android/gallery3d/data/MediaItem$ConvertValueFromRotation;

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mArcHeight:I

    :goto_0
    return v0

    :cond_3
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mArcWidth:I

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mediaId:I

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

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->caption:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "mime_type"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "latitude"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v1, "longitude"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v1, "datetaken"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->dateTakenInMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "date_added"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->dateAddedInSec:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "date_modified"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->dateModifiedInSec:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "_data"

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "orientation"

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->rotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "bucket_id"

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->bucketId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "_size"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->fileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "width"

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "height"

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "group_id"

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->groupId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionLocalImage;->FEATURE_3D_PANORAMA_ENABLED:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "spherical_mosaic"

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->sphericalMosaic:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string/jumbo v1, "sef_file_type"

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->sefFileType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "is_drm"

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isdrm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-boolean v1, Lcom/sec/android/gallery3d/data/UnionLocalImage;->FEATURE_HAS_MOTION_PANAROMA:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "sef_file_sub_type"

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->sefFileSubType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    return-object v0
.end method

.method public getDataVersion(I)J
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFacePaths:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    :cond_0
    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mDataVersion:J

    :goto_0
    return-wide v2

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFacePaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFacePaths:Ljava/util/ArrayList;

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
    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mDataVersion:J

    goto :goto_0
.end method

.method public getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;
    .locals 15

    const/16 v14, 0xd

    const/16 v13, 0xc

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/UnionImage;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v2

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    const-string/jumbo v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x5

    invoke-virtual {v2, v5, v0}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->dateTakenInMs:J

    invoke-static {v6, v8, v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget v5, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->width:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->height:I

    if-nez v5, :cond_1

    :cond_0
    invoke-direct {p0, v10}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getFileInfo(Z)V

    :cond_1
    const-string/jumbo v5, "image/jpeg"

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x10

    iget v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->rotation:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->extractExifInfo(Lcom/sec/android/gallery3d/data/MediaDetails;Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v13}, Lcom/sec/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->width:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v13, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->replaceDetail(ILjava/lang/Object;)V

    :cond_2
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v14}, Lcom/sec/android/gallery3d/data/MediaDetails;->getDetail(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v14, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->replaceDetail(ILjava/lang/Object;)V

    :cond_3
    :goto_1
    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->fileSize:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    const/16 v5, 0xe

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->fileSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_4
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v5, 0xf

    const-string/jumbo v6, "%dx%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->width:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget v8, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->height:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isDrm()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getDetails(Lcom/sec/android/gallery3d/data/MediaDetails;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v2

    :cond_5
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mUrl:Ljava/lang/String;

    if-eqz v5, :cond_8

    :try_start_1
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mUrl:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x13

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    return-object v2

    :catch_0
    move-exception v3

    const-string/jumbo v5, "UnionLocalImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "StringIndexOutOfBoundsException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v5, "UnionLocalImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NullPointerException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/16 v5, 0x1f4

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->caption:Ljava/lang/String;

    invoke-virtual {v2, v12, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget v5, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->width:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v13, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget v5, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v14, v5}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->latitude:D

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->longitude:D

    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v5, 0x9

    const/4 v6, 0x2

    new-array v6, v6, [D

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->latitude:D

    aput-wide v8, v6, v10

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->longitude:D

    aput-wide v8, v6, v12

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v5, 0xa

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v5, 0xb

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_7
    const/16 v5, 0x9

    invoke-virtual {v2, v5, v11}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v5, 0xa

    invoke-virtual {v2, v5, v11}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v5, 0xb

    invoke-virtual {v2, v5, v11}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto/16 :goto_1

    :catch_2
    move-exception v3

    const-string/jumbo v5, "UnionLocalImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    const/16 v5, 0x13

    invoke-virtual {v2, v5, v11}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto/16 :goto_2
.end method

.method public getFaceImagePath()Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFaceImagePath:Lcom/sec/android/gallery3d/data/Path;

    return-object v0
.end method

.method public getFacePath(I)Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFacePaths:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFacePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFacePaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/Path;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    goto :goto_0
.end method

.method public getFaces()[Lcom/sec/android/gallery3d/data/Face;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mediaId:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getRotation()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isBroken()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->rotation:I

    goto :goto_0
.end method

.method public getSupportedOperations()J
    .locals 6

    const-wide v0, 0xc0e20008780062dL

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isRotationSupoorted()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    :cond_0
    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->groupId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const-wide v2, 0x80000000000L

    or-long/2addr v0, v2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isGolf()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isBroken()Z

    move-result v2

    if-nez v2, :cond_2

    const-wide v2, 0x4000002010000000L    # 2.0000611543655396

    or-long/2addr v0, v2

    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mIsGolf:Z

    if-eqz v2, :cond_3

    const-wide v2, -0x4000000000000001L    # -1.9999999999999998

    and-long/2addr v0, v2

    const-wide v2, -0x2000000001L

    and-long/2addr v0, v2

    :cond_3
    sget-boolean v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->FEATURE_USE_SECRET_BOX:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isSceretBoxItem:Z

    if-eqz v2, :cond_e

    const-wide/32 v2, 0x20000000

    or-long/2addr v0, v2

    const-wide/32 v2, -0x40000001

    and-long/2addr v0, v2

    const-wide/16 v2, -0x21

    and-long/2addr v0, v2

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isGolf()Z

    move-result v2

    if-nez v2, :cond_5

    const-wide/high16 v2, 0x1000000000000000L

    or-long/2addr v0, v2

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isSupportedByRegionDecoder()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mIsGolf:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isFlipPhoto:Z

    if-nez v2, :cond_6

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    :cond_6
    sget-boolean v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->FEATURE_USE_FLASH_ANNOTATE:Z

    if-eqz v2, :cond_7

    const-wide/32 v2, 0x40000

    or-long/2addr v0, v2

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->is3DPanorama()Z

    move-result v2

    if-eqz v2, :cond_8

    const-wide v2, 0x4000000000L

    or-long/2addr v0, v2

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isDrm()Z

    move-result v2

    if-eqz v2, :cond_c

    const-wide v0, 0x200000000401L

    sget-boolean v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->FEATURE_USE_SECRET_BOX:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isSceretBoxItem:Z

    if-eqz v2, :cond_f

    const-wide/32 v2, 0x20000000

    or-long/2addr v0, v2

    const-wide/32 v2, -0x40000001

    and-long/2addr v0, v2

    :cond_9
    :goto_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    iget-object v2, v2, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->mOriginalMime:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isFlipPhoto:Z

    if-nez v2, :cond_a

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    :cond_a
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    iget v2, v2, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->mDrmType:I

    sget v3, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->DRM2_TYPE_SD:I

    if-ne v2, v3, :cond_10

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    :cond_b
    :goto_2
    const-wide/32 v2, -0x4000001

    and-long/2addr v0, v2

    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isRaw(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-wide/32 v2, -0x4000001

    and-long/2addr v0, v2

    :cond_d
    return-wide v0

    :cond_e
    const-wide/32 v2, 0x40000000

    or-long/2addr v0, v2

    const-wide/32 v2, -0x20000001

    and-long/2addr v0, v2

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    goto/16 :goto_0

    :cond_f
    const-wide/32 v2, 0x40000000

    or-long/2addr v0, v2

    const-wide/32 v2, -0x20000001

    and-long/2addr v0, v2

    goto :goto_1

    :cond_10
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->drmInfo:Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;

    iget v2, v2, Lcom/sec/android/gallery3d/util/ImageDRMUtil$DRMInfo;->mDrmType:I

    sget v3, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->DRM2_TYPE_FL:I

    if-ne v2, v3, :cond_b

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    goto :goto_2
.end method

.method public getUnionContentUri()Landroid/net/Uri;
    .locals 3

    sget-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUrlVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mUrlVendor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mUrlVendor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mUrlVendor:Ljava/lang/String;

    goto :goto_0
.end method

.method public isBurstShotImage(Ljava/lang/String;)Z
    .locals 13

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

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

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "UnionLocalImage"

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_0

    const-string/jumbo v1, "UnionLocalImage"

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
    const-string/jumbo v1, "UnionLocalImage"

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

    :cond_1
    move v1, v12

    goto :goto_2
.end method

.method public isCloudUploading()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->cloud_is_uploaded:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFaceInfoDeleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mIsFaceInfoDeleted:Z

    return v0
.end method

.method public declared-synchronized isFileModified(Landroid/database/Cursor;)Z
    .locals 4

    monitor-enter p0

    const/4 v2, 0x7

    :try_start_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->updateContent(Landroid/database/Cursor;)Z

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->dateModifiedInSec:J
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

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mimeType:Ljava/lang/String;

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

.method public loadFace()[Lcom/sec/android/gallery3d/data/Face;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->loadFace(Z)[Lcom/sec/android/gallery3d/data/Face;

    move-result-object v0

    return-object v0
.end method

.method public loadFromCursor(Landroid/database/Cursor;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->id:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->caption:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mimeType:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->latitude:D

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->longitude:D

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->dateTakenInMs:J

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->dateAddedInSec:J

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->dateModifiedInSec:J

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->rotation:I

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->bucketId:I

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->fileSize:J

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->width:I

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->height:I

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->groupId:J

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->width:I

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mArcWidth:I

    iget v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->height:I

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mArcHeight:I

    sget-boolean v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->FEATURE_3D_PANORAMA_ENABLED:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->sphericalMosaic:I

    :cond_0
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->sefFileType:I

    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mIsFavorite:Z

    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isdrm:Z

    sget-boolean v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->FEATURE_HAS_MOTION_PANAROMA:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->sefFileSubType:I

    :cond_2
    sget-boolean v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->FEATURE_USE_BEST_PHOTO_FIELD:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x20

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->bestImage:I

    :cond_3
    sget-boolean v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->FEATURE_USE_GO_TO_URL:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x21

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mUrl:Ljava/lang/String;

    const/16 v0, 0x22

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mUrlVendor:Ljava/lang/String;

    :cond_4
    const/16 v0, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->cloudServerId:Ljava/lang/String;

    sget-boolean v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->FEATURE_USE_SECRET_BOX:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isSceretBoxItem:Z

    :cond_5
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mediaId:I

    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isCloud:I

    const/16 v0, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->cloud_is_uploaded:I

    return-void

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method public removeManualFD()V
    .locals 8

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

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

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

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

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->requestImage(ILcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

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

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->faces:[Lcom/sec/android/gallery3d/data/Face;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Face;->getFacePath()Ljava/lang/String;

    move-result-object v7

    :cond_0
    :goto_0
    new-instance v1, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->dateModifiedInSec:J

    iget-boolean v8, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mIsGolf:Z

    move v6, p1

    move-object v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/gallery3d/data/UnionLocalImage$UnionLocalImageRequest;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JILjava/lang/String;ZLcom/sec/android/gallery3d/data/MediaItem$RequestAttributes;)V

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

    new-instance v0, Lcom/sec/android/gallery3d/data/UnionLocalImage$LocalLargeImageRequest;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/data/UnionLocalImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;)V

    return-object v0
.end method

.method public rotate(I)V
    .locals 24

    sget-object v18, Lcom/sec/samsung/gallery/features/FeatureNames;->IsRetailModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v18 .. v18}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isLDURetailMediaPath(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    const-string/jumbo v18, "UnionLocalImage"

    const-string/jumbo v19, "cannot rotate LDU retail read-only media"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->rotation:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->rotation:I

    move/from16 v18, v0

    add-int v18, v18, p1

    move/from16 v0, v18

    rem-int/lit16 v14, v0, 0x168

    if-gez v14, :cond_2

    add-int/lit16 v14, v14, 0x168

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "image/jpeg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    new-instance v11, Lcom/sec/android/gallery3d/exif/ExifInterface;

    invoke-direct {v11}, Lcom/sec/android/gallery3d/exif/ExifInterface;-><init>()V

    sget v18, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {v14}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/sec/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v16

    if-eqz v16, :cond_c

    :try_start_0
    new-instance v10, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "Orientation"

    invoke-static {v14}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v10, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;->gpsAltitude:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    const-string/jumbo v18, "GPSAltitude"

    iget-object v0, v10, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;->gpsAltitude:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, v10, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;->gpsAltitudeRef:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    const-string/jumbo v18, "GPSAltitudeRef"

    iget-object v0, v10, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;->gpsAltitudeRef:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, v10, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;->gpsDateStamp:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    const-string/jumbo v18, "GPSDateStamp"

    iget-object v0, v10, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;->gpsDateStamp:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, v10, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;->dateTime:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    const-string/jumbo v18, "DateTime"

    iget-object v0, v10, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;->dateTime:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, v10, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;->gpsLatitude:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    const-string/jumbo v18, "GPSLatitude"

    iget-object v0, v10, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;->gpsLatitude:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, v10, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;->gpsLatitudeRef:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    const-string/jumbo v18, "GPSLatitudeRef"

    iget-object v0, v10, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;->gpsLatitudeRef:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v0, v10, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;->gpsLongitude:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    const-string/jumbo v18, "GPSLongitude"

    iget-object v0, v10, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;->gpsLongitude:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v0, v10, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;->gpsLongitudeRef:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    const-string/jumbo v18, "GPSLongitudeRef"

    iget-object v0, v10, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;->gpsLongitudeRef:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v0, v10, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;->gpsProcessMethod:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    const-string/jumbo v18, "GPSProcessingMethod"

    iget-object v0, v10, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;->gpsProcessMethod:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v0, v10, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;->gpsTimeStamp:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    const-string/jumbo v18, "GPSTimeStamp"

    iget-object v0, v10, Lcom/sec/android/gallery3d/data/UnionLocalImage$ExifInformation;->gpsTimeStamp:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v4}, Landroid/media/ExifInterface;->saveAttributes()V

    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->fileSize:J

    const-string/jumbo v18, "_size"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->fileSize:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_c
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->fileSize:J

    const-string/jumbo v18, "_size"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->fileSize:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v18, "datetaken"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->dateTakenInMs:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v18, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v18, "orientation"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "_id=?"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mediaId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v18, "UnionLocalImage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Update row count ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->rotation:I

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/gallery3d/data/UnionLocalImage;->disableUpdateRotation:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mIsRotateSearch:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    invoke-static {}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->nextVersionNumber()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mDataVersion:J

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mIsRotateSearch:Z

    :cond_d
    invoke-static {}, Lcom/sec/android/gallery3d/data/MediaObject;->setVersion()V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getGroupId()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-static {v0, v1, v12, v2}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->rotate(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;II)V

    goto/16 :goto_0

    :cond_e
    :try_start_1
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string/jumbo v18, "yyyy:MM:dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string/jumbo v18, "UTC"

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->dateTakenInMs:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v18, "DateTime"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v8

    const-string/jumbo v18, "UnionLocalImage"

    const-string/jumbo v19, "cannot find file to set exif: "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v9

    const-string/jumbo v18, "UnionLocalImage"

    const-string/jumbo v19, "cannot set exif data - write orientation"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const v18, 0x7f0a049e

    move/from16 v0, v18

    invoke-static {v6, v0}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method public setRotateForSearch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mIsRotateSearch:Z

    return-void
.end method

.method protected updateFaceDataVersion()V
    .locals 8

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFaceImagePaths:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFacePaths:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mFaceImagePaths:Ljava/util/HashMap;

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

    invoke-direct {p0, v2, v4}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->setFaceImagePath(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/Long;)V

    goto :goto_0

    :cond_3
    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mDataVersion:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->setFaceImagePath(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public updateFromCursor(Landroid/database/Cursor;)Z
    .locals 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v1, Lcom/sec/android/gallery3d/util/UpdateHelper;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/util/UpdateHelper;-><init>()V

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->id:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->id:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->caption:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->caption:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mimeType:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mimeType:Ljava/lang/String;

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->latitude:D

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->latitude:D

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->longitude:D

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(DD)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->longitude:D

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->dateTakenInMs:J

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->dateTakenInMs:J

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->dateAddedInSec:J

    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->dateAddedInSec:J

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->dateModifiedInSec:J

    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->dateModifiedInSec:J

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    const/16 v5, 0x8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->filePath:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->disableUpdateRotation:Z

    if-eqz v2, :cond_6

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->disableUpdateRotation:Z

    :goto_0
    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->bucketId:I

    const/16 v5, 0xa

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->bucketId:I

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->fileSize:J

    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->fileSize:J

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->groupId:J

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isDrm()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->width:I

    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->height:I

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->width:I

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mArcWidth:I

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->height:I

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mArcHeight:I

    :cond_0
    sget-boolean v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->FEATURE_3D_PANORAMA_ENABLED:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->sphericalMosaic:I

    const/16 v5, 0xf

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->sphericalMosaic:I

    :cond_1
    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->sefFileType:I

    const/16 v5, 0x10

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->sefFileType:I

    const/16 v2, 0x11

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_7

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mIsFavorite:Z

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isdrm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v2, 0x12

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_8

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isdrm:Z

    sget-boolean v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->FEATURE_HAS_MOTION_PANAROMA:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->sefFileSubType:I

    const/16 v5, 0x1f

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->sefFileSubType:I

    :cond_2
    sget-boolean v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->FEATURE_USE_BEST_PHOTO_FIELD:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->bestImage:I

    const/16 v5, 0x20

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->bestImage:I

    :cond_3
    sget-boolean v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->FEATURE_USE_GO_TO_URL:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mUrl:Ljava/lang/String;

    const/16 v5, 0x21

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mUrlVendor:Ljava/lang/String;

    const/16 v5, 0x22

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mUrlVendor:Ljava/lang/String;

    :cond_4
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->cloudServerId:Ljava/lang/String;

    const/16 v5, 0x16

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->cloudServerId:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mediaId:I

    const/16 v5, 0x14

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mediaId:I

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isCloud:I

    const/16 v5, 0x13

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isCloud:I

    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->cloud_is_uploaded:I

    const/16 v5, 0x1d

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->cloud_is_uploaded:I

    invoke-virtual {p0, v1, p1, v4}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->isItemRenamed(Lcom/sec/android/gallery3d/util/UpdateHelper;Landroid/database/Cursor;Z)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v2

    if-eqz v2, :cond_9

    move v0, v3

    :goto_3
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->mAttributes:Lcom/sec/android/gallery3d/data/LocalImageAttributes;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalImageAttributes;->updateAttributes()V

    :cond_5
    return v0

    :cond_6
    iget v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->rotation:I

    const/16 v5, 0x9

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/data/UnionLocalImage;->rotation:I

    goto/16 :goto_0

    :cond_7
    move v2, v4

    goto/16 :goto_1

    :cond_8
    move v2, v4

    goto/16 :goto_2

    :cond_9
    move v0, v4

    goto :goto_3
.end method
