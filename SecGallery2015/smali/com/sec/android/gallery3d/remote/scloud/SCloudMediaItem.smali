.class public abstract Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;
.super Lcom/sec/android/gallery3d/remote/RemoteMediaItem;
.source "SCloudMediaItem.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/CursorLoadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$SCloudThumbRequest;,
        Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$DeleteOperation;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_PATH:Ljava/lang/String;

.field private static final FEATURE_FACE_THUMBNAIL_ENABLED:Z

.field private static final MEDIA_DB_CLOUD_SERVER_ID:Ljava/lang/String; = "cloud_server_id"

.field private static final TAG:Ljava/lang/String; = "SCloudMediaItem"

.field static final mBaseFileUri:Landroid/net/Uri;

.field public static final mBaseImageUri:Landroid/net/Uri;

.field static final mBaseVideoUri:Landroid/net/Uri;


# instance fields
.field mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

.field private mSmartCropRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceThumbnail:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->FEATURE_FACE_THUMBNAIL_ENABLED:Z

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mBaseFileUri:Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Images;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mBaseImageUri:Landroid/net/Uri;

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Videos;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mBaseVideoUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/remote/RemoteMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mSmartCropRect:Landroid/graphics/RectF;

    new-instance v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->FEATURE_FACE_THUMBNAIL_ENABLED:Z

    return v0
.end method

.method private static getImageCropRectF(I)Landroid/graphics/RectF;
    .locals 1

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->getImageCropRectF(I)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method private getRectOfAllFaces(Z)Landroid/graphics/RectF;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/high16 v4, -0x40000000    # -2.0f

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mSmartCropRect:Landroid/graphics/RectF;

    if-nez v2, :cond_1

    move-object v1, v0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mSmartCropRect:Landroid/graphics/RectF;

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

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->rotation:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->height:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->height:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->rotation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->width:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->height:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->width:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->height:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->rotation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_7

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->width:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->width:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    :cond_7
    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1
.end method

.method private setIsFavoriteLocal(Z)V
    .locals 7

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getMediaType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "is_favorite"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v3, "cloud_server_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v6, v6, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_id:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 5

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    const-string/jumbo v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "cloud_server_id"

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_id:Ljava/lang/String;

    new-instance v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$DeleteOperation;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$DeleteOperation;-><init>(Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem$1;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;->addId(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/dboperation/IOperation;)V

    const/4 v1, 0x1

    return v1
.end method

.method public download(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v1, v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_id:Ljava/lang/String;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->DOWNLOAD_PATH:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {p1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "SCLOUD_VIDEO_DOWNLOAD"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_id:Ljava/lang/String;

    sget-object v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->downloadByServerId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getAlbumId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->album_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCacheStatus()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cache_status:I

    return v0
.end method

.method public getCachedPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cache_pathname:Ljava/lang/String;

    return-object v0
.end method

.method public getDateInMs()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-wide v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->date_taken:J

    return-wide v0
.end method

.method public getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;
    .locals 9

    const/16 v8, 0x13

    invoke-super {p0}, Lcom/sec/android/gallery3d/remote/RemoteMediaItem;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v4, v4, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->title:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-wide v4, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->original_size:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const/16 v3, 0xe

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-wide v4, v4, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->original_size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_0
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-wide v6, v5, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->date_taken:J

    invoke-static {v4, v6, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v3, 0x1f4

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v4, v4, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_path:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->url:Ljava/lang/String;

    if-eqz v3, :cond_1

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x13

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SCloudMediaItem"

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

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v8, v3}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->content_url:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->source_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLatLong([D)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-wide v2, v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->latitude:D

    aput-wide v2, p1, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-wide v2, v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->longitude:D

    aput-wide v2, p1, v0

    return-void
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->content_type:Ljava/lang/String;

    return-object v0
.end method

.method public getModifiedDateInSec()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-wide v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->date_edited:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getRectOfAllFaces()Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getRectOfAllFaces(Z)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getSefFileSubType()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->sefFileSubType:I

    return v0
.end method

.method public getSefFileType()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->sefFileType:I

    return v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_id:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-wide v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->size:J

    return-wide v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->source_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSphericalMosaic()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->sphericalMosaic:I

    return v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->thumb_pathname:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->thumbnail_url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUrlVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->urlVendor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->urlVendor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->urlVendor:Ljava/lang/String;

    goto :goto_0
.end method

.method public isBestImage()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v1, v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->bestImage:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFavorite()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->file_status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract loadFromCursor(Landroid/database/Cursor;)V
.end method

.method declared-synchronized loadRectOfAllFaces()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mSmartCropRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mSmartCropRect:Landroid/graphics/RectF;

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
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getImageCropRectF(I)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mSmartCropRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mSmartCropRect:Landroid/graphics/RectF;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mSmartCropRect:Landroid/graphics/RectF;

    :cond_2
    sget-boolean v0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->USE_SMART_CROP:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->getSmartCropRectFs(I)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIsFavorite(Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->isFavorite()Z

    move-result v3

    if-eq p1, v3, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v3, v3, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_id:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v4, v4, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v5, v5, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_path:Ljava/lang/String;

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v5, v1}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->setFavoriteWithBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    const/4 v3, 0x4

    iput v3, v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->file_status:I

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget v1, v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->is_local_file:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->setIsFavoriteLocal(Z)V

    :cond_1
    const-string/jumbo v1, "SCloudMediaItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Succeed to set favorite property - isFavorite["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    const/4 v3, 0x0

    iput v3, v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->file_status:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SCloudMediaItem"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :try_start_1
    const-string/jumbo v1, "SCloudMediaItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to set favorite property - isFavorite ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setLatLong([D)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v1, v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_id:Ljava/lang/String;

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    const/4 v4, 0x1

    aget-wide v4, p1, v4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->setLocationWithBlocking(Landroid/content/Context;Ljava/lang/String;DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    const/4 v1, 0x0

    aget-wide v2, p1, v1

    iput-wide v2, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->latitude:D

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    const/4 v1, 0x1

    aget-wide v2, p1, v1

    iput-wide v2, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->longitude:D
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v0, "SCloudMediaItem"

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateContent(Landroid/database/Cursor;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->updateFromCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->mDataVersion:J

    :cond_0
    return-void
.end method

.method public abstract updateFromCursor(Landroid/database/Cursor;)Z
.end method
