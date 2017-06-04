.class public Lcom/sec/android/app/ve/common/MediaUtils;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# static fields
.field private static final MAX_IMAGE_SIZE_ALLOWED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x4b9ae070    # 2.03E7f

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/sec/android/app/ve/common/MediaUtils;->MAX_IMAGE_SIZE_ALLOWED:I

    return-void
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 13

    const/4 v6, 0x1

    const/4 v12, -0x1

    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    if-ne p2, v12, :cond_1

    move v2, v6

    :goto_0
    if-ne p1, v12, :cond_2

    const/16 v3, 0x80

    :goto_1
    if-ge v3, v2, :cond_3

    :cond_0
    :goto_2
    return v2

    :cond_1
    mul-double v8, v4, v0

    int-to-double v10, p2

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    goto :goto_0

    :cond_2
    int-to-double v8, p1

    div-double v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    int-to-double v10, p1

    div-double v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-int v3, v8

    goto :goto_1

    :cond_3
    if-ne p2, v12, :cond_4

    if-ne p1, v12, :cond_4

    move v2, v6

    goto :goto_2

    :cond_4
    if-eq p1, v12, :cond_0

    move v2, v3

    goto :goto_2
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/ve/common/MediaUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    :cond_1
    return v1
.end method

.method public static getAssetMediaThumbnail(Ljava/lang/String;JLcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p3}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getAssetManager()Landroid/content/res/AssetManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p0, v3}, Lcom/sec/android/app/ve/util/CommonUtils;->getRetrieverForSource(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Landroid/media/MediaMetadataRetriever;

    move-result-object v1

    long-to-float v2, p1

    invoke-static {v1, v2}, Lcom/sec/android/app/ve/common/MediaUtils;->getVideoFrame(Landroid/media/MediaMetadataRetriever;F)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v1}, Lcom/sec/android/app/ve/util/CommonUtils;->releaseRetriever(Landroid/media/MediaMetadataRetriever;)V

    return-object v0
.end method

.method public static getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/ve/common/MediaUtils;->getCenterCropBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getCenterCropBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 16

    if-nez p0, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v13, v14

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v6, v14

    const/high16 v9, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v14, v0

    div-float v14, v13, v14

    move/from16 v0, p2

    int-to-float v15, v0

    div-float v15, v6, v15

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1

    move/from16 v0, p1

    int-to-float v14, v0

    div-float v9, v13, v14

    :goto_1
    move/from16 v0, p1

    int-to-float v14, v0

    mul-float/2addr v14, v9

    sub-float v14, v13, v14

    float-to-int v14, v14

    div-int/lit8 v7, v14, 0x2

    move/from16 v0, p2

    int-to-float v14, v0

    mul-float/2addr v14, v9

    sub-float v14, v6, v14

    float-to-int v14, v14

    div-int/lit8 v12, v14, 0x2

    move/from16 v0, p1

    int-to-float v14, v0

    mul-float/2addr v14, v9

    float-to-int v14, v14

    add-int v10, v7, v14

    move/from16 v0, p2

    int-to-float v14, v0

    mul-float/2addr v14, v9

    float-to-int v14, v14

    add-int v2, v12, v14

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v7, v12, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v4, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static/range {p1 .. p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v14, -0x1000000

    invoke-virtual {v3, v14}, Landroid/graphics/Canvas;->drawColor(I)V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v11, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    move/from16 v0, p2

    int-to-float v14, v0

    div-float v9, v6, v14

    goto :goto_1
.end method

.method public static getImageBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/ve/common/MediaUtils;->getImageBitmap(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getImageBitmap(Ljava/lang/String;IZ)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v0

    invoke-static {}, Lcom/sec/android/app/ve/VEApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "_data LIKE ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_1

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/app/ve/VEApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "_data LIKE ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    if-nez v8, :cond_1

    const/4 v0, 0x0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz v8, :cond_2

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {}, Lcom/sec/android/app/ve/VEApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v10, v11, v3, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    :goto_1
    if-eqz v6, :cond_3

    sget-object v0, Lcom/samsung/app/video/editor/external/ElementType;->IMG:Lcom/samsung/app/video/editor/external/ElementType;

    invoke-static {p0, v0}, Lcom/sec/android/app/ve/common/MediaUtils;->getRotateDegree(Ljava/lang/String;Lcom/samsung/app/video/editor/external/ElementType;)I

    move-result v12

    invoke-static {v6, v12}, Lcom/sec/android/app/ve/common/MediaUtils;->getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/sec/android/app/ve/common/MediaUtils;->getImageBitmapForNonDBImages(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_1
    move-exception v9

    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static getImageBitmapForNonDBImages(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v10, -0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/16 v1, 0x140

    const/high16 v0, 0x30000

    const/4 v2, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v9, 0x1

    iput v9, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v9, 0x1

    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v9, 0x0

    invoke-static {v4, v9, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v9, :cond_0

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v9, v10, :cond_0

    iget v9, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v9, v10, :cond_2

    :cond_0
    if-eqz v7, :cond_1

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_0
    move-object v6, v7

    :goto_1
    return-object v8

    :cond_2
    const/16 v8, 0x140

    const/high16 v9, 0x30000

    :try_start_3
    invoke-static {v5, v8, v9}, Lcom/sec/android/app/ve/common/MediaUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v8

    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v8, 0x0

    iput-boolean v8, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v8, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v8, 0x0

    invoke-static {v4, v8, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v2

    if-eqz v7, :cond_3

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    move-object v6, v7

    :cond_4
    :goto_2
    move-object v8, v2

    goto :goto_1

    :catch_0
    move-exception v8

    move-object v6, v7

    goto :goto_2

    :catch_1
    move-exception v3

    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_4

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v8

    goto :goto_2

    :catch_3
    move-exception v8

    :goto_4
    if-eqz v6, :cond_4

    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    :catch_4
    move-exception v8

    goto :goto_2

    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v6, :cond_5

    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_5
    :goto_6
    throw v8

    :catch_5
    move-exception v9

    goto :goto_0

    :catch_6
    move-exception v9

    goto :goto_6

    :catchall_1
    move-exception v8

    move-object v6, v7

    goto :goto_5

    :catch_7
    move-exception v8

    move-object v6, v7

    goto :goto_4

    :catch_8
    move-exception v3

    move-object v6, v7

    goto :goto_3
.end method

.method public static getRotateDegree(Ljava/lang/String;Lcom/samsung/app/video/editor/external/ElementType;)I
    .locals 18

    const/4 v14, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/samsung/app/video/editor/external/ElementType;->NONE:Lcom/samsung/app/video/editor/external/ElementType;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_2

    :cond_0
    move v1, v14

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v7, 0x0

    :try_start_0
    sget-object v1, Lcom/samsung/app/video/editor/external/ElementType;->IMG:Lcom/samsung/app/video/editor/external/ElementType;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_5

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "orientation"

    aput-object v4, v3, v1

    invoke-static {}, Lcom/sec/android/app/ve/VEApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "_data LIKE ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_3

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/app/ve/VEApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "_data LIKE ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    if-nez v7, :cond_3

    const/4 v1, 0x0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_e

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v1, "orientation"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v14

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v1, v14

    goto :goto_0

    :cond_5
    :try_start_2
    sget-object v1, Lcom/samsung/app/video/editor/external/ElementType;->MOVIE:Lcom/samsung/app/video/editor/external/ElementType;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_e

    new-instance v12, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v12}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v1, 0x18

    invoke-virtual {v12, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    const-string/jumbo v1, "90"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_7

    const/16 v14, 0x5a

    :goto_1
    :try_start_4
    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move v1, v14

    goto/16 :goto_0

    :cond_7
    :try_start_5
    const-string/jumbo v1, "270"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v14, 0x10e

    goto :goto_1

    :cond_8
    const-string/jumbo v1, "180"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v14, 0xb4

    goto :goto_1

    :cond_9
    const/4 v14, 0x0

    goto :goto_1

    :cond_a
    const/16 v1, 0x13

    invoke-virtual {v12, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v15

    const/16 v1, 0x12

    invoke-virtual {v12, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v15, :cond_b

    if-eqz v16, :cond_b

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v11

    move/from16 v0, v17

    if-le v11, v0, :cond_d

    const/16 v14, 0x5a

    :cond_b
    :goto_2
    :try_start_6
    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v7, :cond_c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_c
    move v1, v14

    goto/16 :goto_0

    :cond_d
    const/4 v14, 0x0

    goto :goto_2

    :catch_0
    move-exception v8

    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_e
    new-instance v9, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Orientation"

    const/4 v4, 0x1

    invoke-virtual {v9, v1, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v10

    const/4 v1, 0x6

    if-ne v10, v1, :cond_11

    const/16 v14, 0x5a

    :cond_f
    :goto_3
    if-eqz v7, :cond_10

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_10
    :goto_4
    move v1, v14

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    :try_start_9
    invoke-virtual {v12}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_1
    move-exception v8

    :try_start_a
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v7, :cond_10

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :cond_11
    const/4 v1, 0x3

    if-ne v10, v1, :cond_12

    const/16 v14, 0xb4

    goto :goto_3

    :cond_12
    const/16 v1, 0x8

    if-ne v10, v1, :cond_f

    const/16 v14, 0x10e

    goto :goto_3

    :catchall_1
    move-exception v1

    if-eqz v7, :cond_13

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v1
.end method

.method public static getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v7, p0

    :goto_0
    return-object v7

    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    move-object v7, p0

    goto :goto_0
.end method

.method public static getThumbnail(Ljava/lang/String;IILcom/samsung/app/video/editor/external/ElementType;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v3, 0x0

    if-nez p0, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    sget-object v4, Lcom/samsung/app/video/editor/external/ElementType;->MOVIE:Lcom/samsung/app/video/editor/external/ElementType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, p3, :cond_3

    const/4 v4, 0x1

    :try_start_1
    invoke-static {p0, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    move-object v0, v3

    goto :goto_0

    :cond_3
    :try_start_2
    sget-object v4, Lcom/samsung/app/video/editor/external/ElementType;->IMG:Lcom/samsung/app/video/editor/external/ElementType;

    if-ne v4, p3, :cond_2

    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/sec/android/app/ve/common/MediaUtils;->getImageBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/ve/common/MediaUtils;->getCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static getVideoFrame(Landroid/media/MediaMetadataRetriever;F)Landroid/graphics/Bitmap;
    .locals 12

    const/16 v9, 0x9

    :try_start_0
    invoke-virtual {p0, v9}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v9, v1

    cmpl-float v9, p1, v9

    if-lez v9, :cond_0

    add-int/lit8 v9, v1, -0x64

    int-to-float p1, v9

    :cond_0
    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v9, p1

    float-to-long v4, v9

    invoke-virtual {p0, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    move-wide v6, v4

    const/4 v3, 0x0

    move v8, v3

    :goto_0
    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    invoke-virtual {p0, v6, v7}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    add-int/lit8 v3, v8, 0x1

    const/4 v9, 0x5

    if-ge v8, v9, :cond_1

    move v8, v3

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static releaseRetriever(Landroid/media/MediaMetadataRetriever;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
