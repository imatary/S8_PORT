.class Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;
.super Ljava/lang/Object;
.source "MapMarkerOptionsChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "markerBitmap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;


# direct methods
.method private constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;Ljava/util/ArrayList;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;->createBitmap(Ljava/util/ArrayList;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private createBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v6, p2, 0x5a

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    int-to-float v6, p3

    int-to-float v7, v5

    div-float/2addr v6, v7

    int-to-float v7, p4

    int-to-float v8, v1

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :goto_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v6, p3

    div-float/2addr v6, v9

    int-to-float v7, p4

    div-float/2addr v7, v9

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    int-to-float v6, p2

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v6, 0x6

    invoke-direct {v2, v6}, Landroid/graphics/Paint;-><init>(I)V

    neg-int v6, v5

    int-to-float v6, v6

    div-float/2addr v6, v9

    neg-int v7, v1

    int-to-float v7, v7

    div-float/2addr v7, v9

    invoke-virtual {v0, p1, v6, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v4

    :cond_0
    int-to-float v6, p3

    int-to-float v7, v1

    div-float/2addr v6, v7

    int-to-float v7, p4

    int-to-float v8, v5

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_0
.end method

.method private createBitmap(Ljava/util/ArrayList;II)Landroid/graphics/Bitmap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;II)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;

    invoke-static {v6}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->access$200(Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;)Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$timeDescCompare;

    move-result-object v6

    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-nez v6, :cond_0

    :try_start_1
    new-instance v4, Lcom/sec/android/gallery3d/exif/ExifInterface;

    invoke-direct {v4}, Lcom/sec/android/gallery3d/exif/ExifInterface;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v4, v7}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v6

    invoke-static {v6}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;->this$0:Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;

    invoke-static {v6}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;->access$300(Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser;)Ljava/lang/ref/WeakReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    iget-object v6, v6, Lcom/sec/samsung/gallery/mapfragment/MapItem;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v6}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v5, :cond_1

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v6

    sget-object v7, Lcom/sec/android/gallery3d/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;

    invoke-interface {v6, v7}, Lcom/sec/android/gallery3d/util/ThreadPool$Job;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    :cond_1
    if-nez v0, :cond_2

    const/4 v6, 0x0

    :goto_2
    return-object v6

    :catch_0
    move-exception v3

    const-string/jumbo v6, "MapMarkerOptionsChooser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IllegalArgumentException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v6, "MapMarkerOptionsChooser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0, v2, p2, p3}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerOptionsChooser$markerBitmap;->createBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_2
.end method
