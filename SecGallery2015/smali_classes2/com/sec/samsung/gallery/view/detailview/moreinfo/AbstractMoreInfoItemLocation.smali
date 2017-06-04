.class public abstract Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;
.super Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;
.source "AbstractMoreInfoItemLocation.java"


# static fields
.field private static final FEATURE_IS_NOS:Z

.field static MAP_ACTIVITY_CLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static MAP_VIEWSTATE_CLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;"
        }
    .end annotation
.end field

.field private static final MEANINGFUL_TAG_DELIMITER:Ljava/lang/String; = "|"

.field private static final TAG:Ljava/lang/String; = "AbsMoreInfoItemLocation"

.field private static final USE_MORE_INFO_BLUR_BACKGROUND:Z

.field private static final USE_VISUAL_MORE_INFO:Z

.field static final ZOOM_RATIO:F = 13.0f


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mAddressListener:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;

.field private mDeleteClickListener:Landroid/view/View$OnClickListener;

.field mHasLocation:Z

.field private mInerimLatLong:[D

.field private mInterimAddress:Ljava/lang/String;

.field private final mIsDisabledMap:Z

.field private mIsRefresh:Z

.field private mLatLong:[D

.field private mMapView:Landroid/view/View;

.field private mMarkerBitmap:Landroid/graphics/Bitmap;

.field private mMarkerClickListener:Landroid/view/View$OnClickListener;

.field private final mNoLocationStringId:I

.field private mWaitResultFromEditLocation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoreinfoBlurBackground:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->USE_MORE_INFO_BLUR_BACKGROUND:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualMoreInfo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->USE_VISUAL_MORE_INFO:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->FEATURE_IS_NOS:Z

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;Z)V
    .locals 2

    const v0, 0x7f0a02dd

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Landroid/view/View;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$Entry;)V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mWaitResultFromEditLocation:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mIsRefresh:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMarkerBitmap:Landroid/graphics/Bitmap;

    iput-boolean p5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mIsDisabledMap:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->createDeleteClickListener()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->createMarkerClickListener()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->createAddressResolvingListener()V

    sget-boolean v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->FEATURE_IS_NOS:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mNoLocationStringId:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInterimAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mAddress:Ljava/lang/String;

    return-void

    :cond_1
    sget-boolean v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->USE_MORE_INFO_BLUR_BACKGROUND:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0a02de

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mWaitResultFromEditLocation:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mWaitResultFromEditLocation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;)[D
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInterimAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mAddress:Ljava/lang/String;

    return-object p1
.end method

.method private addExifData()V
    .locals 8

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v2, Lcom/sec/android/gallery3d/exif/ExifInterface;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/exif/ExifInterface;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/exif/ExifInterface;->addGpsTags(DD)Z

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/exif/ExifInterface;->forceRewriteExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v6, 0x10

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->addSoundData(Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "AbsMoreInfoItemLocation"

    const-string/jumbo v5, "write location info to exif - retry"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "GPSLatitude"

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "GPSLongitude"

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    const/4 v6, 0x1

    aget-wide v6, v5, v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v4, "AbsMoreInfoItemLocation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UnsupportedOperationException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string/jumbo v4, "AbsMoreInfoItemLocation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addSoundData(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->isValidFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SoundShot_000"

    invoke-static {v1, v3}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v2

    :cond_0
    invoke-static {v1}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->deleteAllData(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "SoundShot_000"

    const/16 v5, 0x800

    sget v6, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->OVERWRITE_IF_EXISTS:I

    invoke-static {v3, v4, v2, v5, v6}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AbsMoreInfoItemLocation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "AbsMoreInfoItemLocation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "SoundShot_000"

    const/16 v5, 0x800

    sget v6, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->OVERWRITE_IF_EXISTS:I

    invoke-static {v3, v4, v2, v5, v6}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v3, "AbsMoreInfoItemLocation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    :try_start_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "SoundShot_000"

    const/16 v6, 0x800

    sget v7, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->OVERWRITE_IF_EXISTS:I

    invoke-static {v4, v5, v2, v6, v7}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_1
    throw v3

    :catch_3
    move-exception v0

    const-string/jumbo v4, "AbsMoreInfoItemLocation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private createAddressResolvingListener()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$3;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mAddressListener:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;

    return-void
.end method

.method private createDeleteClickListener()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$1;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private createMarkerClickListener()V
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$2;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMarkerClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private getAddress()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLatLong:[D

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLatLong:[D

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getLatLong([D)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLatLong:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLatLong:[D

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mAddressListener:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/DetailsHelper;->resolveAddress(Lcom/sec/android/gallery3d/interfaces/LibraryContext;[DLcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getBurstShotItem()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "images_event_album"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotItem(Landroid/content/Context;Ljava/lang/String;IJ)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->getAlbumId()I

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v2

    sget-object v4, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->getBurstShotItem(Landroid/content/Context;IJ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v2

    sget-object v4, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->PROJECTION:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->getBurstShotItem(Landroid/content/Context;IJ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v2

    sget-object v4, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotItem(Landroid/content/ContentResolver;IJ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method private initDeleteItemView(Landroid/view/View;Z)V
    .locals 12

    const v9, 0x7f1201dc

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    const v9, 0x7f1201cc

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v9, 0x7f1201cf

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v9, 0x7f1201cd

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz p2, :cond_7

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInterimAddress:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInterimAddress:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInterimAddress:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    const v9, 0x7f1201ce

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v9}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0365

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    const v9, 0x7f1201d0

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMarkerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v9}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0030

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    const v9, 0x7f1201de

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f1201d5

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v9, 0x7f1201dd

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mIsDisabledMap:Z

    if-nez v9, :cond_4

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->DisableLocationEditBtn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isJpeg(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz p2, :cond_a

    :cond_3
    if-eqz p2, :cond_8

    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_4
    :goto_1
    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mEditMode:Z

    if-eqz v9, :cond_10

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mEditMode:Z

    if-eqz v9, :cond_13

    if-eqz p2, :cond_13

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v9

    const/4 v10, 0x4

    if-eq v9, v10, :cond_5

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v10, 0x20000000

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v9

    if-eqz v9, :cond_11

    :cond_5
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v9}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mNoLocationStringId:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mEditMode:Z

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMarkerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_9
    const/16 v9, 0x8

    goto :goto_4

    :cond_a
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    :cond_b
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isJpeg(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    if-eqz p2, :cond_f

    :cond_c
    if-eqz p2, :cond_d

    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMarkerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_d
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mEditMode:Z

    if-eqz v9, :cond_e

    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMarkerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_e
    const/16 v9, 0x8

    goto :goto_5

    :cond_f
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_1

    :cond_10
    const/16 v9, 0x8

    goto/16 :goto_2

    :cond_11
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mIsRefresh:Z

    if-nez v9, :cond_12

    invoke-direct {p0, v2, v7, v3}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->showDeleteLayout(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :cond_12
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_13
    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mEditMode:Z

    if-eqz v9, :cond_18

    if-nez p2, :cond_18

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isJpeg(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoreinfoBlurBackground:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-eqz v9, :cond_16

    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v9}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mNoLocationStringId:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_14

    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_14
    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mIsRefresh:Z

    if-nez v9, :cond_15

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0, v2, v7, v0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->showDeleteLayout(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_3

    :cond_15
    if-eqz v0, :cond_6

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_16
    sget-boolean v9, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->USE_MORE_INFO_BLUR_BACKGROUND:Z

    if-eqz v9, :cond_17

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_17
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_18
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method private initPOIView(Landroid/view/View;)V
    .locals 9

    const/16 v8, 0x8

    const v6, 0x7f1201eb

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    sget-boolean v6, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->USE_VISUAL_MORE_INFO:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mView:Landroid/view/View;

    const v7, 0x7f1201ec

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    const v7, 0x7f0201cc

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    const v7, 0x7f100260

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v6, 0x7f1201c3

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v6, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->USE_MORE_INFO_BLUR_BACKGROUND:Z

    if-nez v6, :cond_0

    const v6, 0x7f1201ea

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private saveLocation()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsExifModifing:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInterimAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLatLong:[D

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isJpeg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->addExifData()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->setLatLong([D)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->updateMediaDB()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mIsDisabledMap:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->updateGalleryLocalDB(I[D)V

    :cond_1
    return-void
.end method

.method private saveSCloudLocation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInterimAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLatLong:[D

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->setLatLong([D)V

    return-void
.end method

.method private showDeleteLayout(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v3, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->USE_MORE_INFO_BLUR_BACKGROUND:Z

    if-eqz v3, :cond_0

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    sget-boolean v3, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v3, :cond_1

    const v3, 0x7f05000e

    :goto_0
    invoke-static {v4, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/16 v3, 0xc8

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    const v4, 0x7f050011

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    const v4, 0x7f05000b

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void

    :cond_1
    const v3, 0x7f05000d

    goto :goto_0
.end method

.method private updateGalleryLocalDB(I[D)V
    .locals 11

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_1

    move v1, v7

    :goto_0
    if-eqz v1, :cond_2

    const-string/jumbo v3, "images_event_album"

    :goto_1
    if-eqz v1, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "_id="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz v1, :cond_4

    const-string/jumbo v6, "latitude"

    :goto_3
    aget-wide v8, p2, v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    const-string/jumbo v6, "longitude"

    :goto_4
    aget-wide v8, p2, v7

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v6, v6, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v6, v6, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v6, :cond_6

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotCount(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v6

    if-le v6, v7, :cond_6

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->getBurstShotItem()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_id"

    invoke-virtual {v4, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v3, v5, v8, v10}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_5

    :cond_1
    move v1, v8

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v3, "video_event_album"

    goto/16 :goto_1

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "_id="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_4
    const-string/jumbo v6, "latitude"

    goto/16 :goto_3

    :cond_5
    const-string/jumbo v6, "longitude"

    goto/16 :goto_4

    :cond_6
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v6

    invoke-virtual {v6, v3, v5, v2, v10}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private updateMediaDB()V
    .locals 20

    invoke-static {}, Lcom/sec/android/gallery3d/ui/DetailsHelper;->getAddress()Landroid/location/Address;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    const/4 v7, 0x1

    :goto_0
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mHasLocation:Z

    if-eqz v15, :cond_6

    const/16 v15, 0x9

    new-array v8, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v5}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v8, v15

    const/4 v15, 0x1

    invoke-virtual {v5}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v8, v15

    const/4 v15, 0x2

    invoke-virtual {v5}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v8, v15

    const/4 v15, 0x3

    invoke-virtual {v5}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v8, v15

    const/4 v15, 0x4

    invoke-virtual {v5}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v8, v15

    const/4 v15, 0x5

    const/16 v16, 0x0

    aput-object v16, v8, v15

    const/4 v15, 0x6

    invoke-virtual {v5}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v8, v15

    const/4 v15, 0x7

    const/16 v16, 0x0

    aput-object v16, v8, v15

    const/16 v15, 0x8

    const/16 v16, 0x0

    aput-object v16, v8, v15

    const/4 v6, 0x0

    :goto_1
    array-length v15, v8

    if-ge v6, v15, :cond_1

    aget-object v15, v8, v6

    if-eqz v15, :cond_0

    aget-object v15, v8, v6

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_4

    :cond_0
    const-string/jumbo v15, "null"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    array-length v15, v8

    add-int/lit8 v15, v15, -0x1

    if-ne v6, v15, :cond_5

    :cond_1
    :goto_3
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v15, "latitude"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-wide v16, v16, v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v15, "longitude"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-wide v16, v16, v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v15, "addr"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v15, v15, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v15, v15, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v15, :cond_8

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotCount(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->getBurstShotItem()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v12, "_id = ?"

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v11, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v11, v16

    sget-object v16, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v16 .. v16}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_4
    aget-object v15, v8, v6

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_5
    const-string/jumbo v15, "|"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v15, "null"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_7
    :try_start_0
    sget-object v15, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_5
    const/4 v15, 0x0

    sput-boolean v15, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsExifModifing:Z

    return-void

    :catch_0
    move-exception v4

    const-string/jumbo v15, "AbsMoreInfoItemLocation"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "RemoteException : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_1
    move-exception v4

    const-string/jumbo v15, "AbsMoreInfoItemLocation"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "OperationApplicationException : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    if-eqz v7, :cond_9

    sget-object v15, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v16, v15

    :goto_6
    if-eqz v7, :cond_a

    const-string/jumbo v15, "_id =?"

    :goto_7
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v14, v15, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    sget-object v15, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v16, v15

    goto :goto_6

    :cond_a
    const-string/jumbo v15, "_id =?"

    goto :goto_7
.end method


# virtual methods
.method public actionEditCancel()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInterimAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLatLong:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->invalidate()V

    return-void
.end method

.method public actionEditDone()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLatLong:[D

    aget-wide v0, v0, v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    aget-wide v2, v2, v3

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLatLong:[D

    aget-wide v0, v0, v4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    aget-wide v2, v2, v4

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mIsSCloudItem:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->saveSCloudLocation()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->saveLocation()V

    goto :goto_0
.end method

.method protected abstract addMarker(DD)V
.end method

.method protected abstract createMoreInfoMapFragment()V
.end method

.method public dataEdited()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLatLong:[D

    aget-wide v2, v2, v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    aget-wide v4, v4, v0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLatLong:[D

    aget-wide v2, v2, v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    aget-wide v4, v4, v1

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method getMarkerBitmap()Landroid/graphics/Bitmap;
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/high16 v9, 0x437a0000    # 250.0f

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMarkerBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_1

    sget-boolean v7, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->USE_MORE_INFO_BLUR_BACKGROUND:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    const v8, 0x7f0201ca

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamMapViewUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    const v8, 0x7f100112

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    invoke-static {v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMarkerBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMarkerBitmap:Landroid/graphics/Bitmap;

    return-object v7

    :cond_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    const v8, 0x7f0201ff

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    const v8, 0x7f100111

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    const/4 v7, 0x4

    new-array v2, v7, [F

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v7, v8

    aput v7, v2, v11

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    aput v7, v2, v12

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    aput v7, v2, v13

    const/4 v7, 0x3

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    aput v8, v2, v7

    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v7, 0x14

    new-array v7, v7, [F

    aget v8, v2, v12

    aput v8, v7, v11

    aput v10, v7, v12

    aput v10, v7, v13

    const/4 v8, 0x3

    aput v10, v7, v8

    const/4 v8, 0x4

    aput v10, v7, v8

    const/4 v8, 0x5

    aput v10, v7, v8

    const/4 v8, 0x6

    aget v9, v2, v13

    aput v9, v7, v8

    const/4 v8, 0x7

    aput v10, v7, v8

    const/16 v8, 0x8

    aput v10, v7, v8

    const/16 v8, 0x9

    aput v10, v7, v8

    const/16 v8, 0xa

    aput v10, v7, v8

    const/16 v8, 0xb

    aput v10, v7, v8

    const/16 v8, 0xc

    const/4 v9, 0x3

    aget v9, v2, v9

    aput v9, v7, v8

    const/16 v8, 0xd

    aput v10, v7, v8

    const/16 v8, 0xe

    aput v10, v7, v8

    const/16 v8, 0xf

    aput v10, v7, v8

    const/16 v8, 0x10

    aput v10, v7, v8

    const/16 v8, 0x11

    aput v10, v7, v8

    const/16 v8, 0x12

    aget v9, v2, v11

    aput v9, v7, v8

    const/16 v8, 0x13

    aput v10, v7, v8

    invoke-direct {v1, v7}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMarkerBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMarkerBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v7, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v7, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v6, v10, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 13

    const/4 v12, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b0297

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mView:Landroid/view/View;

    const v7, 0x7f1201e8

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "ar"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v2, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mEditMode:Z

    if-eqz v5, :cond_3

    const/16 v5, 0x8

    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mView:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->initPOIView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    aget-wide v8, v5, v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    aget-wide v10, v5, v12

    invoke-static {v8, v9, v10, v11}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mIsDisabledMap:Z

    if-eqz v5, :cond_4

    const/16 v3, 0x8

    :goto_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInterimAddress:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInterimAddress:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInterimAddress:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->setPoi()V

    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mView:Landroid/view/View;

    const v6, 0x7f1201e9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMapView:Landroid/view/View;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMapView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMapView:Landroid/view/View;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a024d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-boolean v5, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->USE_VISUAL_MORE_INFO:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMapView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMapView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mView:Landroid/view/View;

    invoke-direct {p0, v5, v4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->initDeleteItemView(Landroid/view/View;Z)V

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->getView()Landroid/view/View;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mView:Landroid/view/View;

    return-object v5

    :cond_3
    move v5, v6

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->createMoreInfoMapFragment()V

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    aget-wide v6, v5, v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    aget-wide v8, v5, v12

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->addMarker(DD)V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mNoLocationStringId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x8

    goto :goto_2
.end method

.method handleDeleteIconClick()V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v6

    aput-wide v4, v1, v3

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mHasLocation:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    invoke-interface {v1, v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;->onEdit(Z)V

    :cond_0
    sget-boolean v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->USE_MORE_INFO_BLUR_BACKGROUND:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    const v2, 0x7f05002e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation$4;-><init>(Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    sget-boolean v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->USE_VISUAL_MORE_INFO:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMapView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMapView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    const-string/jumbo v1, "304"

    const-string/jumbo v2, "4528"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMapView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->invalidate()V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->getView()Landroid/view/View;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mIsRefresh:Z

    return-void
.end method

.method public bridge synthetic onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->onDestroy()V

    return-void
.end method

.method public bridge synthetic refreshQuery(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->refreshQuery(Ljava/lang/String;)V

    return-void
.end method

.method public reload()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->dataEdited()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mIsSCloudItem:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->getAddress()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public bridge synthetic setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->setEditListener(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;)V

    return-void
.end method

.method public setLatLng(Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mAddressListener:Lcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/DetailsHelper;->resolveAddress(Lcom/sec/android/gallery3d/interfaces/LibraryContext;[DLcom/sec/android/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInterimAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mEditListener:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;

    invoke-interface {v0, v4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem$EditListener;->onEdit(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->invalidate()V

    return-void
.end method

.method public setMode(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mIsRefresh:Z

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItem;->setMode(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->invalidate()V

    return-void
.end method

.method protected abstract setPoi()V
.end method

.method public setWaitResultFromEditLocation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mWaitResultFromEditLocation:Z

    return-void
.end method

.method startMap(Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mEditMode:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v8, 0x20000000

    invoke-virtual {v6, v8, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mRootView:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v0, v6, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "KEY_MEDIA_ITEM_LOCATION"

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLatLong:[D

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string/jumbo v6, "KEY_MAP_VIEW_SUPPORT_VIEW_SELECTED"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    sget-object v6, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->MAP_VIEWSTATE_CLASS:Ljava/lang/Class;

    invoke-virtual {v4, v6, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    const-string/jumbo v4, "303"

    const-string/jumbo v6, "4522"

    invoke-static {v4, v6}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    :cond_1
    :goto_0
    return v4

    :cond_2
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->DisableLocationEditBtn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v1, v6, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_3
    new-instance v2, Landroid/content/Intent;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->MAP_ACTIVITY_CLASS:Ljava/lang/Class;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v6, "currentImg_Lat"

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    aget-wide v8, v7, v4

    invoke-virtual {v2, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string/jumbo v4, "currentImg_Log"

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mInerimLatLong:[D

    aget-wide v6, v6, v5

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    sget-object v4, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;->BIXBY_MODE:Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfo$ExecutionMode;

    if-ne p1, v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v6, "MapSearchView"

    sget-object v7, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, v6, v7}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v4, "fromPrivate_Mode"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/16 v6, 0x30a

    invoke-virtual {v4, v2, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/AbstractMoreInfoItemLocation;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "GDDM"

    const-string/jumbo v7, "location"

    invoke-static {v4, v6, v7}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_0
.end method
