.class public Lcom/sec/android/wallpapercropper2/UriBitmapSource;
.super Ljava/lang/Object;
.source "UriBitmapSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;
    }
.end annotation


# static fields
.field private static final BACKUP_PIXEL_COUNT:I = 0x75300

.field public static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "Cropper2_UriBmSource"

.field private static sInstance:Lcom/sec/android/wallpapercropper2/UriBitmapSource;


# instance fields
.field private imageTooSmall:Z

.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFromThemeStore:Z

.field private mIsSmartCropping:Z

.field private mLargeBitmap:Z

.field private mOriginalBitmapHeight:I

.field private mOriginalBitmapWidth:I

.field protected mPreview:Landroid/graphics/Bitmap;

.field private mPreviewSize:I

.field private mQueriedRotation:I

.field protected mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

.field private mRotation:I

.field private mSmartCropppedResult:Landroid/graphics/Rect;

.field private mState:Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

.field private mUri:Landroid/net/Uri;

.field private mUseSimpleDecoder:Z

.field private mWallpaperType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->sInstance:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRotation:I

    const/16 v0, 0x400

    iput v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreviewSize:I

    sget-object v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;->NOT_LOADED:Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mState:Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->imageTooSmall:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mUseSimpleDecoder:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroid/net/Uri;ZZI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRotation:I

    const/16 v0, 0x400

    iput v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreviewSize:I

    sget-object v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;->NOT_LOADED:Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mState:Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->imageTooSmall:Z

    iput-boolean v1, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mUseSimpleDecoder:Z

    const-string/jumbo v0, "Cropper2_UriBmSource"

    const-string/jumbo v1, "NEW Instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mUri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mIsSmartCropping:Z

    iput-boolean p4, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mIsFromThemeStore:Z

    iput p5, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mWallpaperType:I

    return-void
.end method

.method private checkImageRotation()V
    .locals 3

    new-instance v0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    invoke-direct {p0, v0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->readExif(Lcom/android/gallery3d/exif/ExifInterface;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/exif/ExifInterface;->getRotationForOrientationValue(S)I

    move-result v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRotation:I

    const-string/jumbo v0, "Cropper2_UriBmSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exif Rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/sec/android/wallpapercropper2/UriBitmapSource;
    .locals 2

    sget-object v1, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->sInstance:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    invoke-direct {v0, p0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->sInstance:Lcom/sec/android/wallpapercropper2/UriBitmapSource;

    :cond_0
    sget-object v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->sInstance:Lcom/sec/android/wallpapercropper2/UriBitmapSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadBitmapOptions(II)Landroid/graphics/BitmapFactory$Options;
    .locals 3

    iget v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreviewSize:I

    const/16 v1, 0x400

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    iget-boolean v2, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mLargeBitmap:Z

    if-eqz v2, :cond_0

    iget v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mOriginalBitmapWidth:I

    iget v2, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mOriginalBitmapHeight:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x44800000    # 1024.0f

    div-float v0, v2, v0

    invoke-static {v0}, Lcom/android/gallery3d/util/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v0

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    return-object v1

    :cond_0
    int-to-float v0, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0}, Lcom/android/gallery3d/util/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v0

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0
.end method

.method private loadGraphicRegionDecoder()Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;

    move-result-object v0

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mLargeBitmap:Z

    iget v2, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mOriginalBitmapWidth:I

    iget v3, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mOriginalBitmapHeight:I

    invoke-static {v1, v0, v2, v3}, Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;->newInstance(Ljava/io/InputStream;ZII)Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;

    move-result-object v0

    const-string/jumbo v2, "Cropper2_UriBmSource"

    const-string/jumbo v3, "DumbBitmapDecoder USED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_UriBmSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to load URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4
.end method

.method private loadGraphicRegionDecoder(Ljava/lang/String;)Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;->newInstance(Ljava/lang/String;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/GraphicRegionDecoder;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mLargeBitmap:Z

    iget v1, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mOriginalBitmapWidth:I

    iget v2, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mOriginalBitmapHeight:I

    invoke-static {p1, v0, v1, v2}, Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;->newInstance(Ljava/lang/String;ZII)Lcom/sec/samsung/gallery/decoder/regiondecoder/DumbBitmapRegionDecoder;

    move-result-object v0

    const-string/jumbo v1, "Cropper2_UriBmSource"

    const-string/jumbo v2, "DumbBitmapDecoder USED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private loadPreviewBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->regenerateInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    const/4 v0, 0x0

    :try_start_1
    invoke-static {v1, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    const-string/jumbo v3, "Cropper2_UriBmSource"

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_3
    const-string/jumbo v3, "Cropper2_UriBmSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to load URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private loadQuramRegionDecoder(Ljava/lang/String;)Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;
    .locals 1

    invoke-static {p1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;->newInstance(Ljava/lang/String;)Lcom/sec/samsung/gallery/decoder/regiondecoder/QuramCodecRegionDecoder;

    move-result-object v0

    return-object v0
.end method

.method private loadSecMMRegionDecoder()Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->regenerateInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    :try_start_1
    const-string/jumbo v0, "Cropper2_UriBmSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cannot get input stream for uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return-object v2

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v1, v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    const-string/jumbo v3, "Cropper2_UriBmSource"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cannot open region decoder for file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private loadSecMMRegionDecoder(Ljava/lang/String;)Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;->newInstance(Ljava/lang/String;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/SecMMCodecRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Cropper2_UriBmSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot open region decoder for file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private readExif(Lcom/android/gallery3d/exif/ExifInterface;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->regenerateInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "Cropper2_UriBmSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to load URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v5

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v2, "Cropper2_UriBmSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to load URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v5

    :catch_2
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "Cropper2_UriBmSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to load URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v5

    :catch_3
    move-exception v0

    :try_start_4
    const-string/jumbo v2, "Cropper2_UriBmSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to load URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return v5

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public getLoadingState()Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mState:Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    return-object v0
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPreviewSize()I
    .locals 1

    iget v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreviewSize:I

    return v0
.end method

.method public getRegionDecoder()Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRotation:I

    return v0
.end method

.method public getSmartCropRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mSmartCropppedResult:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected initSmartCropper()V
    .locals 18

    const-string/jumbo v2, "Cropper2_UriBmSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initSmartCropper = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mIsSmartCropping:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mIsSmartCropping:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const-string/jumbo v2, "Cropper2_UriBmSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Image Preview Width ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  Image Preview Height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;

    invoke-direct {v12}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;-><init>()V

    new-instance v13, Lcom/samsung/android/media/face/SemFaceDetection;

    invoke-direct {v13}, Lcom/samsung/android/media/face/SemFaceDetection;-><init>()V

    invoke-virtual {v13}, Lcom/samsung/android/media/face/SemFaceDetection;->init()I

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    mul-int v2, v5, v9

    new-array v3, v2, [I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/16 v2, 0x1000

    invoke-virtual {v12, v3, v5, v9, v2}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->setImage([IIII)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    invoke-virtual {v13, v4, v14}, Lcom/samsung/android/media/face/SemFaceDetection;->run(Landroid/graphics/Bitmap;Ljava/util/ArrayList;)I

    move-result v4

    const-string/jumbo v6, "Cropper2_UriBmSource"

    const-string/jumbo v7, "It takes %d ms to find Faces."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v2, v16, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "Cropper2_UriBmSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Number of faces = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/media/face/SemFace;

    invoke-virtual {v2}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    const-string/jumbo v4, "Cropper2_UriBmSource"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "faceRect is : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12, v2}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->setROI(Landroid/graphics/Rect;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v13}, Lcom/samsung/android/media/face/SemFaceDetection;->release()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mWallpaperType:I

    invoke-static {v2, v3}, Lcom/android/gallery3d/util/Utils;->getScreenSize(Landroid/content/Context;I)Landroid/graphics/Point;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v12}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->findObjectRect()Landroid/graphics/Rect;

    move-result-object v3

    const-string/jumbo v4, "Cropper2_UriBmSource"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[ findObjectRect() ] left= "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v13, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v13, " | top= "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v13, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v13, " | right= "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v13, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v13, " | bottom= "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRotation:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRotation:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_6

    :cond_3
    iget v3, v2, Landroid/graphics/Point;->y:I

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v12, v3, v2}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->findCropRect(II)Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mSmartCropppedResult:Landroid/graphics/Rect;

    :goto_1
    const-string/jumbo v2, "Cropper2_UriBmSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[ findCropRect() of Preview Image] left= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mSmartCropppedResult:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " | top= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mSmartCropppedResult:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " | right= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mSmartCropppedResult:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " | bottom= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mSmartCropppedResult:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "Cropper2_UriBmSource"

    const-string/jumbo v3, "It takes %d ms to find Object & Crop Area."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v6, v14, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le v5, v9, :cond_7

    :goto_2
    int-to-float v4, v5

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;->getWidth()I

    move-result v2

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    invoke-interface {v2}, Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;->getHeight()I

    move-result v2

    int-to-float v2, v2

    :cond_4
    div-float v3, v4, v3

    div-float v2, v4, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mSmartCropppedResult:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mSmartCropppedResult:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mSmartCropppedResult:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mSmartCropppedResult:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mSmartCropppedResult:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mSmartCropppedResult:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mSmartCropppedResult:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mSmartCropppedResult:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v2, v5, v2

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    const-string/jumbo v2, "Cropper2_UriBmSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[ findCropRect() of Real Image] left= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mSmartCropppedResult:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " | top= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mSmartCropppedResult:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " | right= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mSmartCropppedResult:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " | bottom= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mSmartCropppedResult:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->releaseImage()Z

    const-string/jumbo v2, "Cropper2_UriBmSource"

    const-string/jumbo v3, "It takes %d ms to initialize SmartCropper."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return-void

    :cond_6
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v12, v3, v2}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->findCropRect(II)Landroid/graphics/Rect;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mSmartCropppedResult:Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v2, "Cropper2_UriBmSource"

    const-string/jumbo v3, "Ignore SmartCropper because of OOM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    move v5, v9

    goto/16 :goto_2
.end method

.method public isImageTooSmall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->imageTooSmall:Z

    return v0
.end method

.method public loadInBackground()Z
    .locals 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mQueriedRotation:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_5

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->checkImageRotation()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-static {v0, v3}, Lcom/android/gallery3d/util/Utils;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    const-string/jumbo v0, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v3, v0

    :goto_1
    :try_start_0
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isUseQuramDngDecoder()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, ".dng"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    if-nez v0, :cond_0

    invoke-direct {p0, v6}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->loadQuramRegionDecoder(Ljava/lang/String;)Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Cropper2_UriBmSource"

    const-string/jumbo v7, "QuramDngRegionDecoder USED"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    invoke-static {v6}, Lcom/sec/samsung/gallery/decoder/QuramCodecInterface;->decodeDNGPreview(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->loadSecMMRegionDecoder()Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    if-nez v0, :cond_2

    if-eqz v3, :cond_c

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    if-eqz v0, :cond_d

    const-string/jumbo v0, "Cropper2_UriBmSource"

    const-string/jumbo v7, "SecMMRegionDecoder USED"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;->getWidth()I

    move-result v0

    iget-object v7, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    invoke-interface {v7}, Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;->getHeight()I

    move-result v7

    invoke-static {v0, v7}, Lcom/android/gallery3d/util/Utils;->isTooSmallForCrop(II)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->imageTooSmall:Z

    iget v8, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreviewSize:I

    if-eqz v8, :cond_3

    invoke-direct {p0, v0, v7}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->loadBitmapOptions(II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v2, v2, v0, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v9, v10, v8}, Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreviewSize:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;->getWidth()I

    move-result v0

    iget-object v7, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    invoke-interface {v7}, Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;->getHeight()I

    move-result v7

    invoke-static {v0, v7}, Lcom/android/gallery3d/util/Utils;->isTooSmallForCrop(II)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->imageTooSmall:Z

    invoke-direct {p0, v0, v7}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->loadBitmapOptions(II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->loadPreviewBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    if-nez v7, :cond_4

    if-nez v3, :cond_4

    const-string/jumbo v3, ".golf"

    invoke-virtual {v6, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v0, Lcom/android/gallery3d/golf/GolfMgr;

    invoke-direct {v0}, Lcom/android/gallery3d/golf/GolfMgr;-><init>()V

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/golf/GolfMgr;->CreateThumbnails(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    if-nez v0, :cond_11

    sget-object v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;->ERROR_LOADING:Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mState:Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    :goto_6
    const-string/jumbo v0, "Cropper2_UriBmSource"

    const-string/jumbo v3, "It takes %d ms to load Bitmap."

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->initSmartCropper()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    move v0, v1

    :goto_7
    return v0

    :cond_5
    iget v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mQueriedRotation:I

    iput v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRotation:I

    const-string/jumbo v0, "Cropper2_UriBmSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Queried Rotation = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRotation:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    move v3, v1

    goto/16 :goto_1

    :cond_7
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mLargeBitmap:Z

    if-nez v0, :cond_8

    const-string/jumbo v0, ".png"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, ".golf"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, ".dcf"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, ".wbmp"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, ".jpeg"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, ".bmp"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isSupportSimpleDecode()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mUseSimpleDecoder:Z

    if-eqz v0, :cond_1

    :cond_8
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->loadGraphicRegionDecoder()Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    :cond_9
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    if-nez v0, :cond_a

    if-eqz v3, :cond_b

    :cond_a
    :goto_8
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Cropper2_UriBmSource"

    const-string/jumbo v7, "GraphicRegionDecoder USED"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v7, "Cropper2_UriBmSource"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    :try_start_2
    invoke-direct {p0, v6}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->loadGraphicRegionDecoder(Ljava/lang/String;)Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    :cond_c
    invoke-direct {p0, v6}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->loadSecMMRegionDecoder(Ljava/lang/String;)Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    goto/16 :goto_3

    :cond_d
    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->loadGraphicRegionDecoder()Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    if-nez v0, :cond_e

    if-eqz v3, :cond_f

    :cond_e
    :goto_9
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "Cropper2_UriBmSource"

    const-string/jumbo v7, "GraphicRegionDecoder(2) USED"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_f
    invoke-direct {p0, v6}, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->loadGraphicRegionDecoder(Ljava/lang/String;)Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mRegionDecoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/IBitmapRegionDecoder;

    goto :goto_9

    :cond_10
    invoke-static {v6, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mPreview:Landroid/graphics/Bitmap;

    goto/16 :goto_5

    :cond_11
    sget-object v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;->LOADED:Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mState:Lcom/sec/android/wallpapercropper2/UriBitmapSource$State;

    goto/16 :goto_6

    :cond_12
    move v0, v2

    goto/16 :goto_7
.end method

.method public regenerateInputStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mIsFromThemeStore:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "android.resource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "res"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "assets"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mIsSmartCropping:Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mIsFromThemeStore:Z

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/Utils;->regenerateInputStream(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mIsFromThemeStore:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "android.res"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mIsSmartCropping:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mUseSimpleDecoder:Z

    goto :goto_0
.end method

.method public releaseInstance()V
    .locals 2

    sget-object v0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->sInstance:Lcom/sec/android/wallpapercropper2/UriBitmapSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setBitmapProperties(ZIII)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mLargeBitmap:Z

    iput p2, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mOriginalBitmapWidth:I

    iput p3, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mOriginalBitmapHeight:I

    iput p4, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mQueriedRotation:I

    return-void
.end method

.method public setIsFromThemeStore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mIsFromThemeStore:Z

    return-void
.end method

.method public setIsSmartCropping(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mIsSmartCropping:Z

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public setWallpaperType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/wallpapercropper2/UriBitmapSource;->mWallpaperType:I

    return-void
.end method
