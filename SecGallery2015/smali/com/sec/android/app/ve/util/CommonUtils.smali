.class public Lcom/sec/android/app/ve/util/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field public static ADDMEDIA_THUMBNAIL_HEIGHT:I

.field public static ADDMEDIA_THUMBNAIL_WIDTH:I

.field private static final INVALID_CHAR:[Ljava/lang/String;

.field private static STATE_NORMAL:I

.field private static STATE_PRIVATE:I

.field private static currentSelection:I

.field private static index:I

.field private static mMaxCharToastHandler:Landroid/os/Handler;

.field private static mToast:Landroid/widget/Toast;

.field private static mToastInvalidChar:Landroid/widget/Toast;

.field private static mTooSoonEventHandler:Landroid/os/Handler;

.field private static final transForAutoEditMedia:[Lcom/samsung/app/video/editor/external/EditSubType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/util/CommonUtils;->mToast:Landroid/widget/Toast;

    const/16 v0, 0xe9

    sput v0, Lcom/sec/android/app/ve/util/CommonUtils;->ADDMEDIA_THUMBNAIL_WIDTH:I

    const/16 v0, 0x94

    sput v0, Lcom/sec/android/app/ve/util/CommonUtils;->ADDMEDIA_THUMBNAIL_HEIGHT:I

    sput v3, Lcom/sec/android/app/ve/util/CommonUtils;->STATE_NORMAL:I

    sput v3, Lcom/sec/android/app/ve/util/CommonUtils;->STATE_PRIVATE:I

    sput v4, Lcom/sec/android/app/ve/util/CommonUtils;->currentSelection:I

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/util/CommonUtils;->mToastInvalidChar:Landroid/widget/Toast;

    sput v3, Lcom/sec/android/app/ve/util/CommonUtils;->index:I

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\\"

    aput-object v1, v0, v4

    const-string/jumbo v1, "/"

    aput-object v1, v0, v3

    const-string/jumbo v1, ":"

    aput-object v1, v0, v5

    const-string/jumbo v1, "*"

    aput-object v1, v0, v6

    const-string/jumbo v1, "?"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "|"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/ve/util/CommonUtils;->INVALID_CHAR:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/app/video/editor/external/EditSubType;

    sget-object v1, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_BLOCK:Lcom/samsung/app/video/editor/external/EditSubType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_ROTATE_TO_270_CW:Lcom/samsung/app/video/editor/external/EditSubType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_ROTATE_TO_270_CCW:Lcom/samsung/app/video/editor/external/EditSubType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_ORIGAMI:Lcom/samsung/app/video/editor/external/EditSubType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_SWAP:Lcom/samsung/app/video/editor/external/EditSubType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_ROTATION_AROUND_Y:Lcom/samsung/app/video/editor/external/EditSubType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/app/video/editor/external/EditSubType;->VIDEO_TRANSITION_WHEEL:Lcom/samsung/app/video/editor/external/EditSubType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/ve/util/CommonUtils;->transForAutoEditMedia:[Lcom/samsung/app/video/editor/external/EditSubType;

    new-instance v0, Lcom/sec/android/app/ve/util/CommonUtils$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/util/CommonUtils$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sec/android/app/ve/util/CommonUtils;->mMaxCharToastHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sec/android/app/ve/util/CommonUtils;->mTooSoonEventHandler:Landroid/os/Handler;

    return-void
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    const/16 v4, 0x400

    new-array v0, v4, [C

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    :goto_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/Writer;->write([CII)V

    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v4

    :cond_1
    const-string/jumbo v4, ""

    goto :goto_1
.end method

.method public static createTextPaint(Landroid/content/Context;Ljava/lang/String;ZIIIIIIILandroid/graphics/Paint$Align;Landroid/content/res/AssetManager;I)Landroid/graphics/Paint;
    .locals 6

    new-instance v1, Landroid/graphics/Paint;

    or-int/lit8 v3, p12, 0x1

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    if-eqz p2, :cond_1

    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float v3, p4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v1, p5}, Landroid/graphics/Paint;->setColor(I)V

    if-nez p10, :cond_0

    sget-object p10, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    :cond_0
    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    int-to-float v3, p6

    int-to-float v4, p7

    int-to-float v5, p8

    invoke-virtual {v1, v3, v4, v5, p9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-object v1

    :cond_1
    move-object/from16 v0, p11

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_0
.end method

.method public static getBitmapFromUtil(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;J)Landroid/graphics/Bitmap;
    .locals 7

    const/16 v3, 0x300

    const/16 v2, 0x1b0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getFullMovieDuration()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, p1, v4

    if-lez v4, :cond_0

    const-wide/16 p1, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElementAt(J)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "themedata/videos"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1, p2, p0}, Lcom/sec/android/app/ve/common/MediaUtils;->getAssetMediaThumbnail(Ljava/lang/String;JLcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getType()Lcom/samsung/app/video/editor/external/ElementType;

    move-result-object v5

    invoke-static {v4, v3, v2, v5}, Lcom/sec/android/app/ve/common/MediaUtils;->getThumbnail(Ljava/lang/String;IILcom/samsung/app/video/editor/external/ElementType;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDurationWithSpeed(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/ve/util/CommonUtils;->getDurationWithSpeed(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;Z)I

    move-result v0

    return v0
.end method

.method public static getDurationWithSpeed(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;Z)I
    .locals 12

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getStartTime()I

    move-result v10

    if-eqz p1, :cond_1

    move v8, v9

    :goto_0
    add-int v2, v10, v8

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getRegions()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getRegions()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/Region;

    invoke-static {p0, v4}, Lcom/sec/android/app/ve/util/CommonUtils;->isValidSlowRegion(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;Lcom/samsung/app/video/editor/external/Region;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {p0, v9}, Lcom/sec/android/app/ve/util/CommonUtils;->getRecordedSpeed(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;Z)F

    move-result v3

    invoke-static {p0}, Lcom/sec/android/app/ve/util/CommonUtils;->getNormalRegionSpeedRate(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)F

    move-result v6

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v10

    sub-int/2addr v10, v2

    int-to-float v10, v10

    div-float v11, v3, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-long v0, v10

    int-to-long v10, v7

    add-long/2addr v10, v0

    long-to-int v7, v10

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v2

    const/4 v10, 0x1

    invoke-static {p0, v10}, Lcom/sec/android/app/ve/util/CommonUtils;->getRecordedSpeed(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;Z)F

    move-result v3

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Region;->getSpeedSlowRegion()Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/android/app/ve/util/CommonUtils;->getSlowRegionSpeedRate(Lcom/samsung/app/video/editor/external/Speed;)F

    move-result v6

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v10

    sub-int/2addr v10, v2

    int-to-float v10, v10

    div-float v11, v3, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-long v0, v10

    int-to-long v10, v7

    add-long/2addr v10, v0

    long-to-int v7, v10

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getOverLapAtStart()I

    move-result v8

    goto :goto_0

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0}, Lcom/sec/android/app/ve/util/CommonUtils;->getNormalRegionSpeedRate(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)F

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEndTime()I

    move-result v8

    if-eqz p1, :cond_4

    :goto_2
    sub-int/2addr v8, v9

    sub-int/2addr v8, v2

    int-to-float v8, v8

    div-float v9, v3, v6

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getOverLapAtStart()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getOverLapAtEnd()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    :cond_3
    return v7

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getOverLapAtEnd()I

    move-result v9

    goto :goto_2
.end method

.method public static getNormalRegionSpeedRate(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getRecordingMode()Lcom/samsung/app/video/editor/external/RecordingMode;

    move-result-object v1

    sget-object v2, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFlagForSlowMotionTVideo()Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v0, 0x3e000000    # 0.125f

    goto :goto_0
.end method

.method public static getRecordedSpeed(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;Z)F
    .locals 4

    const/high16 v1, 0x3e000000    # 0.125f

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getFlagForSlowMotionTVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getRecordingMode()Lcom/samsung/app/video/editor/external/RecordingMode;

    move-result-object v2

    sget-object v3, Lcom/samsung/app/video/editor/external/RecordingMode;->SLOW:Lcom/samsung/app/video/editor/external/RecordingMode;

    if-ne v2, v3, :cond_0

    if-nez p1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static getRetrieverForSource(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Landroid/media/MediaMetadataRetriever;
    .locals 10

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v8, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_2

    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v8, :cond_0

    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    :try_start_3
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v8, v9

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v7

    :goto_3
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v0, 0x0

    if-eqz v8, :cond_3

    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_4
    if-eqz v6, :cond_1

    :try_start_7
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_5
    move-exception v7

    :goto_5
    :try_start_8
    invoke-static {v0}, Lcom/sec/android/app/ve/util/CommonUtils;->releaseRetriever(Landroid/media/MediaMetadataRetriever;)V

    const/4 v0, 0x0

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v8, :cond_4

    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_4
    :goto_6
    if-eqz v6, :cond_1

    :try_start_a
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_2

    :catch_6
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_7
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_0
    move-exception v1

    :goto_7
    if-eqz v8, :cond_5

    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_5
    :goto_8
    if-eqz v6, :cond_6

    :try_start_c
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :cond_6
    :goto_9
    throw v1

    :catch_8
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_9
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catchall_1
    move-exception v1

    move-object v8, v9

    goto :goto_7

    :catch_a
    move-exception v7

    move-object v8, v9

    goto :goto_5

    :catch_b
    move-exception v7

    move-object v8, v9

    goto :goto_3
.end method

.method private static getSlowRegionSpeedRate(Lcom/samsung/app/video/editor/external/Speed;)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sget-object v1, Lcom/sec/android/app/ve/util/CommonUtils$6;->$SwitchMap$com$samsung$app$video$editor$external$Speed:[I

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/external/Speed;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_3
    const/high16 v0, 0x3e000000    # 0.125f

    goto :goto_0

    :pswitch_4
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    :pswitch_5
    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_0

    :pswitch_6
    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    :pswitch_7
    const/high16 v0, 0x41800000    # 16.0f

    goto :goto_0

    :pswitch_8
    const/high16 v0, 0x42000000    # 32.0f

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getThemeTitle(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)Ljava/lang/String;
    .locals 8

    const-string/jumbo v6, ""

    if-eqz p0, :cond_3

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getElement(I)Lcom/samsung/app/video/editor/vesdk/ElementWrapper;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getTextClipartParamsListForElement(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getData()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    const-string/jumbo v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/vesdk/ClipartParamsWrapper;->getData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    return-object v6
.end method

.method public static getThemeTitleString(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/sec/android/app/ve/util/CommonUtils;->getThemeTitle(Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/sec/android/app/ve/VEApp;->gThemeMgr:Lcom/sec/android/app/ve/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getThemeName()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/theme/ThemeManager;->getThemeDisplayName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static is360Video(Ljava/lang/String;)I
    .locals 10

    const/4 v9, 0x0

    const/4 v7, 0x0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_data=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "is_360_video"

    aput-object v4, v2, v0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/ve/VEApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "is_360_video"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_0

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v9

    :catch_0
    move-exception v8

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static is4K(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v4, 0x12

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/16 v4, 0x1000

    if-lt v2, v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-static {v1}, Lcom/sec/android/app/ve/common/MediaUtils;->releaseRetriever(Landroid/media/MediaMetadataRetriever;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/sec/android/app/ve/common/MediaUtils;->releaseRetriever(Landroid/media/MediaMetadataRetriever;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/sec/android/app/ve/common/MediaUtils;->releaseRetriever(Landroid/media/MediaMetadataRetriever;)V

    throw v3
.end method

.method public static isUHD(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v4, 0x12

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/16 v4, 0xa00

    if-le v2, v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-static {v1}, Lcom/sec/android/app/ve/common/MediaUtils;->releaseRetriever(Landroid/media/MediaMetadataRetriever;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/sec/android/app/ve/common/MediaUtils;->releaseRetriever(Landroid/media/MediaMetadataRetriever;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/sec/android/app/ve/common/MediaUtils;->releaseRetriever(Landroid/media/MediaMetadataRetriever;)V

    throw v3
.end method

.method public static isValidSlowRegion(Lcom/samsung/app/video/editor/vesdk/ElementWrapper;Lcom/samsung/app/video/editor/external/Region;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getStartTime()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/app/video/editor/vesdk/ElementWrapper;->getEndTime()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowEndTime()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/Region;->getSlowStartTime()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isWQHD(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v4, 0x12

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/16 v4, 0x780

    if-le v2, v4, :cond_2

    const/16 v4, 0xa00

    if-gt v2, v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-static {v1}, Lcom/sec/android/app/ve/common/MediaUtils;->releaseRetriever(Landroid/media/MediaMetadataRetriever;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/sec/android/app/ve/common/MediaUtils;->releaseRetriever(Landroid/media/MediaMetadataRetriever;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/sec/android/app/ve/common/MediaUtils;->releaseRetriever(Landroid/media/MediaMetadataRetriever;)V

    throw v3
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
