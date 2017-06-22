.class public Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;
.super Ljava/lang/Object;
.source "DMCSegmentationEngine.java"

# interfaces
.implements Lcom/sec/android/secvision/segmentation/ISegmenter;


# static fields
.field private static final DEBUG:Z = true

.field private static final DEBUG_DUMP:Z = true

.field private static final DEFAULT_DOWNSIZE_FACTOR:I = 0x1

.field private static final MARKER_COLOR_BG:I = 0x1

.field private static final MARKER_COLOR_BG_PROBABLE:I = 0x3

.field private static final MARKER_COLOR_FG:I = 0x2

.field private static final MARKER_COLOR_FG_PROBABLE:I = 0x4

.field private static final MARKER_COLOR_UNKNOWN:I = 0x0

.field private static final MARKER_TYPE_AUTO_LOOP_BG:I = 0x1

.field private static final MARKER_TYPE_AUTO_LOOP_FG:I = 0x0

.field private static final MARKER_TYPE_AUTO_STROKE_BG:I = 0x3

.field private static final MARKER_TYPE_AUTO_STROKE_FG:I = 0x2

.field private static final MARKER_TYPE_MANUAL_LOOP_BG:I = 0x5

.field private static final MARKER_TYPE_MANUAL_LOOP_FG:I = 0x4

.field private static final MARKER_TYPE_MANUAL_STROKE_BG:I = 0x7

.field private static final MARKER_TYPE_MANUAL_STROKE_FG:I = 0x6

.field private static final MARKER_TYPE_NONE:I = -0x1

.field private static final PEN_WIDTH:I = 0x4

.field private static SEGMENT_BOUND_MARGIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PEDIT_DMCSegmentationEngine"


# instance fields
.field private mAlphaMatteBitmap:Landroid/graphics/Bitmap;

.field private mDownsizeFactor:I

.field private mInputBitmap:Landroid/graphics/Bitmap;

.field private mIntermediateBitmap:Landroid/graphics/Bitmap;

.field private mIsCancelled:Z

.field private mIsInitialized:Z

.field private mIsIntelligentUpscaling:Z

.field private mIsROI:Z

.field private mIsRunning:Z

.field private mIsSRIBColorModel:Z

.field private mIsSRIBGraphCut:Z

.field private mIsSlimcut:Z

.field private mMarkerBitmap:Landroid/graphics/Bitmap;

.field private mMarkerCanvas:Landroid/graphics/Canvas;

.field private mMaskBitmap:Landroid/graphics/Bitmap;

.field private mMatteBitmap:Landroid/graphics/Bitmap;

.field private mOutputBitmap:Landroid/graphics/Bitmap;

.field private mResultBitmap:Landroid/graphics/Bitmap;

.field private mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

.field private mSegmentBound:Landroid/graphics/RectF;

.field private mSegmentContour:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mStrokeBitmap:Landroid/graphics/Bitmap;

.field public m_BetaSearchTime:D

.field public m_ColorEstimateTime:D

.field public m_ConstructGraphTime:D

.field public m_DiceCoefficient:D

.field public m_DjikstraTime:D

.field public m_ImageHeight:I

.field public m_ImageWidth:I

.field public m_MaxFlowTime:D

.field public m_ShapePriorGeodesicTime:D

.field public m_TotalTime:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->SEGMENT_BOUND_MARGIN:I

    const-string v0, "SRIBSE_Interface"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "DMCImageMatting"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsRunning:Z

    iput-boolean v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsCancelled:Z

    iput-boolean v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsInitialized:Z

    iput-boolean v1, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsSRIBGraphCut:Z

    iput v1, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mDownsizeFactor:I

    iput-boolean v1, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsSRIBColorModel:Z

    iput-boolean v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsIntelligentUpscaling:Z

    iput-boolean v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsSlimcut:Z

    iput-boolean v1, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsROI:Z

    return-void
.end method

.method protected static native ManuallyCutObjectJNI(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method protected static native SegmentJNI(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method static synthetic access$000(Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->dump()V

    return-void
.end method

.method private algoSettingUpdate(ZIZZZZ)Landroid/graphics/Bitmap;
    .locals 4

    invoke-static {p4}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->setROI(Z)V

    invoke-static {p5}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->setIntelligentUpscaling(Z)V

    invoke-static {p1, p3}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->setLibrariesJNI(ZZ)V

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    add-int/lit8 v2, p2, -0x1

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->setScaleFactorJNI(I)V

    invoke-static {p6}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->setSlimcut(Z)V

    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mOutputBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private blendMaskBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, p2, v5, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-object v1
.end method

.method protected static native canRedoJNI()Z
.end method

.method protected static native canUndoJNI()Z
.end method

.method protected static native cancelSegmentationJNI()V
.end method

.method protected static native deInitSegmentationEngineJNI()V
.end method

.method private deserializeHistory(Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    iput-object v4, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v0

    :goto_3
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_1

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v1, :cond_2

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_2
    :goto_5
    throw v4

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v4

    move-object v1, v2

    goto :goto_4

    :catch_8
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_9
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_a
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private drawPathOnBitmap(Landroid/graphics/Bitmap;Lcom/sec/android/secvision/segmentation/ScribblePath;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2}, Lcom/sec/android/secvision/segmentation/ScribblePath;->pointsToPath()Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private dump()V
    .locals 28

    const-string v23, "PEDIT_DMCSegmentationEngine"

    const-string v24, "Dump Start."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "/mnt/sdcard/AutoShapeDump"

    const-string v6, "Input_%s_%s_%s.png"

    const-string v10, "Result_%s_%s_%s.png"

    const-string v11, "Stroke_%s_%s_%s.png"

    const-string v7, "Intermediate_%s_%s_%s.png"

    const-string v8, "Mask_%s_%s_%s.raw"

    const-string v5, "AlphaMask_%s_%s_%s.raw"

    const-string v9, "PathHistory_%s.dat"

    const-string v12, "%s/%s/%s"

    new-instance v23, Ljava/text/SimpleDateFormat;

    const-string v24, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct/range {v23 .. v24}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v24, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v23 .. v24}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/io/File;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_0

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v22

    if-nez v22, :cond_0

    const-string v23, "PEDIT_DMCSegmentationEngine"

    const-string v24, "Error creating directory"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    new-instance v16, Ljava/io/File;

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v4, v23, v24

    const/16 v24, 0x1

    aput-object v13, v23, v24

    const/16 v24, 0x2

    const-string v25, ".nomedia"

    aput-object v25, v23, v24

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    move-result v22

    if-nez v22, :cond_1

    const-string v23, "PEDIT_DMCSegmentationEngine"

    const-string v24, "Error creating new file"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v13, v23, v24

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v4, v23, v24

    const/16 v24, 0x1

    aput-object v13, v23, v24

    const/16 v24, 0x2

    aput-object v17, v23, v24

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->serializeHistory(Lcom/sec/android/secvision/segmentation/ScribbleHistory;Ljava/lang/String;)V

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mInputBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mInputBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    aput-object v13, v23, v24

    move-object/from16 v0, v23

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v4, v23, v24

    const/16 v24, 0x1

    aput-object v13, v23, v24

    const/16 v24, 0x2

    aput-object v19, v23, v24

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    :try_start_1
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    move-result v22

    if-nez v22, :cond_2

    const-string v23, "PEDIT_DMCSegmentationEngine"

    const-string v24, "Error creating new file"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mInputBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    sget-object v24, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v25, 0x64

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mStrokeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mStrokeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    aput-object v13, v23, v24

    move-object/from16 v0, v23

    invoke-static {v11, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v4, v23, v24

    const/16 v24, 0x1

    aput-object v13, v23, v24

    const/16 v24, 0x2

    aput-object v19, v23, v24

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    :try_start_2
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    move-result v22

    if-nez v22, :cond_3

    const-string v23, "PEDIT_DMCSegmentationEngine"

    const-string v24, "Error creating new file"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mStrokeBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    sget-object v24, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v25, 0x64

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mResultBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mResultBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    aput-object v13, v23, v24

    move-object/from16 v0, v23

    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v4, v23, v24

    const/16 v24, 0x1

    aput-object v13, v23, v24

    const/16 v24, 0x2

    aput-object v19, v23, v24

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    :try_start_3
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    move-result v22

    if-nez v22, :cond_4

    const-string v23, "PEDIT_DMCSegmentationEngine"

    const-string v24, "Error creating new file"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mResultBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    sget-object v24, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v25, 0x64

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIntermediateBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIntermediateBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    aput-object v13, v23, v24

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v4, v23, v24

    const/16 v24, 0x1

    aput-object v13, v23, v24

    const/16 v24, 0x2

    aput-object v19, v23, v24

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    :try_start_4
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    move-result v22

    if-nez v22, :cond_5

    const-string v23, "PEDIT_DMCSegmentationEngine"

    const-string v24, "Error creating new file"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIntermediateBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    sget-object v24, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v25, 0x64

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    aput-object v13, v23, v24

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v4, v23, v24

    const/16 v24, 0x1

    aput-object v13, v23, v24

    const/16 v24, 0x2

    aput-object v19, v23, v24

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    :try_start_5
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    move-result v22

    if-nez v22, :cond_6

    const-string v23, "PEDIT_DMCSegmentationEngine"

    const-string v24, "Error creating new file"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mAlphaMatteBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mAlphaMatteBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    aput-object v13, v23, v24

    move-object/from16 v0, v23

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v4, v23, v24

    const/16 v24, 0x1

    aput-object v13, v23, v24

    const/16 v24, 0x2

    aput-object v19, v23, v24

    move-object/from16 v0, v23

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    :try_start_6
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    move-result v22

    if-nez v22, :cond_7

    const-string v23, "PEDIT_DMCSegmentationEngine"

    const-string v24, "Error creating new file"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    const-string v23, "PEDIT_DMCSegmentationEngine"

    const-string v24, "Dump end."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_2
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :catch_4
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :catch_5
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    :catch_6
    move-exception v15

    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6
.end method

.method protected static native getBetaSearchTime()D
.end method

.method protected static native getConstructGraphTime()D
.end method

.method protected static native getDiceCoefficient()D
.end method

.method protected static native getDjikstraTime()D
.end method

.method protected static native getGMMColorEstimateTime()D
.end method

.method protected static native getImageHeight()I
.end method

.method protected static native getImageWidth()I
.end method

.method protected static native getMaxFlowTime()D
.end method

.method protected static native getPathArrayJNI()[I
.end method

.method protected static native getShapePriorGeodesicTime()D
.end method

.method protected static native getTotalSegmentationTime()D
.end method

.method protected static native initSegmentationEngineJNI()V
.end method

.method private isAutoMode(Lcom/sec/android/secvision/segmentation/SegmentationMode;)Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine$2;->$SwitchMap$com$sec$android$secvision$segmentation$SegmentationMode:[I

    invoke-virtual {p1}, Lcom/sec/android/secvision/segmentation/SegmentationMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isProcessingCancelled()Z
    .locals 3

    const-string v0, "PEDIT_DMCSegmentationEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isProcessingCancelled() returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsCancelled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsCancelled:Z

    return v0
.end method

.method private isScribbleValid(Lcom/sec/android/secvision/segmentation/ScribblePath;)Z
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    invoke-virtual {v6}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->size()I

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/secvision/segmentation/ScribblePath;->getSegmentationMode()Lcom/sec/android/secvision/segmentation/SegmentationMode;

    move-result-object v6

    sget-object v7, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_AUTO_LOOP_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    if-eq v6, v7, :cond_2

    const-string v5, "PEDIT_DMCSegmentationEngine"

    const-string v6, "WARNING! The first stroke must be AUTO LOOP."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/secvision/segmentation/ScribblePath;->getSegmentationMode()Lcom/sec/android/secvision/segmentation/SegmentationMode;

    move-result-object v6

    sget-object v7, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_AUTO_LOOP_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    if-ne v6, v7, :cond_1

    const-string v5, "PEDIT_DMCSegmentationEngine"

    const-string v6, "WARNING! Currently, consecutive loops are not supported."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    invoke-virtual {v6, v4}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/secvision/segmentation/ScribblePath;

    invoke-virtual {v0}, Lcom/sec/android/secvision/segmentation/ScribblePath;->getSegmentationMode()Lcom/sec/android/secvision/segmentation/SegmentationMode;

    move-result-object v6

    sget-object v7, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_AUTO_LOOP_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    if-eq v6, v7, :cond_2

    const-string v5, "PEDIT_DMCSegmentationEngine"

    const-string v6, "WARNING! The first stroke must be AUTO LOOP."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iget-object v6, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    invoke-virtual {v6}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/secvision/segmentation/ScribblePath;

    invoke-virtual {v3}, Lcom/sec/android/secvision/segmentation/ScribblePath;->getSegmentationMode()Lcom/sec/android/secvision/segmentation/SegmentationMode;

    move-result-object v7

    sget-object v8, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_AUTO_LOOP_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    if-ne v7, v8, :cond_3

    add-int/lit8 v2, v1, 0x1

    if-le v1, v5, :cond_5

    const-string v5, "PEDIT_DMCSegmentationEngine"

    const-string v6, "WARNING! Currently, there must be only one AUTO LOOP in the scribble history."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method private makeSegmentContour()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentContour:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->getPathArrayJNI()[I

    move-result-object v1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const v7, 0x7fffffff

    const/high16 v5, -0x80000000

    const v8, 0x7fffffff

    const/high16 v6, -0x80000000

    const/4 v3, 0x0

    add-int/lit8 v4, v3, 0x1

    aget v10, v1, v3

    const-string v15, "PEDIT_DMCSegmentationEngine"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "numContour = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v10, :cond_0

    const/4 v6, 0x0

    move v5, v6

    move v8, v6

    move v7, v6

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_3

    add-int/lit8 v3, v4, 0x1

    aget v12, v1, v4

    if-lez v12, :cond_2

    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentContour:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v3, 0x1

    aget v13, v1, v3

    add-int/lit8 v3, v4, 0x1

    aget v14, v1, v4

    int-to-float v15, v13

    int-to-float v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/4 v2, 0x1

    move v4, v3

    :goto_1
    if-ge v2, v12, :cond_1

    add-int/lit8 v3, v4, 0x1

    aget v13, v1, v4

    add-int/lit8 v4, v3, 0x1

    aget v14, v1, v3

    int-to-float v15, v13

    int-to-float v0, v14

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v11}, Landroid/graphics/Path;->close()V

    add-int/lit8 v3, v4, 0x1

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move v4, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    sget v15, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->SEGMENT_BOUND_MARGIN:I

    sub-int v15, v7, v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v7

    sget v15, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->SEGMENT_BOUND_MARGIN:I

    add-int/2addr v15, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mOutputBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v5

    sget v15, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->SEGMENT_BOUND_MARGIN:I

    sub-int v15, v8, v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v8

    sget v15, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->SEGMENT_BOUND_MARGIN:I

    add-int/2addr v15, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mOutputBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentBound:Landroid/graphics/RectF;

    int-to-float v0, v7

    move/from16 v16, v0

    int-to-float v0, v8

    move/from16 v17, v0

    int-to-float v0, v5

    move/from16 v18, v0

    int-to-float v0, v6

    move/from16 v19, v0

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/RectF;->set(FFFF)V

    const-string v15, "PEDIT_DMCSegmentationEngine"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Input bitmap size (width, height): ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mOutputBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mOutputBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "PEDIT_DMCSegmentationEngine"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Segmented bound (left, top, right, bottom, width, height): ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sub-int v17, v5, v7

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sub-int v17, v6, v8

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private profile_data(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1, p2, p3, p4}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->startJNI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->m_ImageWidth:I

    invoke-static {}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->m_ImageHeight:I

    invoke-static {}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->getGMMColorEstimateTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->m_ColorEstimateTime:D

    invoke-static {}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->getConstructGraphTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->m_ConstructGraphTime:D

    invoke-static {}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->getDjikstraTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->m_DjikstraTime:D

    invoke-static {}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->getShapePriorGeodesicTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->m_ShapePriorGeodesicTime:D

    invoke-static {}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->getMaxFlowTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->m_MaxFlowTime:D

    invoke-static {}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->getBetaSearchTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->m_BetaSearchTime:D

    invoke-static {}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->getTotalSegmentationTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->m_TotalTime:D

    invoke-static {}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->getDiceCoefficient()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->m_DiceCoefficient:D

    return-void
.end method

.method protected static native redoJNI(Landroid/graphics/Bitmap;)V
.end method

.method protected static native redoJNI(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method protected static native resetJNI()V
.end method

.method private resetProcessing()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "PEDIT_DMCSegmentationEngine"

    const-string v1, "resetProcessing()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsRunning:Z

    iput-boolean v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsCancelled:Z

    return-void
.end method

.method private save(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->saveImagesJNI(Ljava/lang/String;)V

    return-void
.end method

.method protected static native saveImagesJNI(Ljava/lang/String;)V
.end method

.method private serializeHistory(Lcom/sec/android/secvision/segmentation/ScribbleHistory;Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    throw v4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v4

    move-object v1, v2

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private setCurrentMarkerVector(Lcom/sec/android/secvision/segmentation/ScribblePath;)V
    .locals 7

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/secvision/segmentation/ScribblePath;->getPointArray()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    new-array v0, v5, [I

    const/4 v1, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/secvision/segmentation/ScribblePoint;

    add-int/lit8 v2, v1, 0x1

    iget v6, v3, Lcom/sec/android/secvision/segmentation/ScribblePoint;->x:F

    float-to-int v6, v6

    aput v6, v0, v1

    add-int/lit8 v1, v2, 0x1

    iget v6, v3, Lcom/sec/android/secvision/segmentation/ScribblePoint;->y:F

    float-to-int v6, v6

    aput v6, v0, v2

    goto :goto_0

    :cond_0
    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5, v0}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->setCurrentMarkerVectorJNI(F[I)V

    :goto_1
    return-void

    :cond_1
    const-string v5, "PEDIT_DMCSegmentationEngine"

    const-string v6, "Scribble path is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected static native setCurrentMarkerVectorJNI(F[I)V
.end method

.method protected static native setIntelligentUpscaling(Z)V
.end method

.method protected static native setLibrariesJNI(ZZ)V
.end method

.method protected static native setMarkerImageJNI(Landroid/graphics/Bitmap;I)V
.end method

.method protected static native setROI(Z)V
.end method

.method protected static native setScaleFactorJNI(I)V
.end method

.method protected static native setSlimcut(Z)V
.end method

.method protected static native setSourceImageJNI(Landroid/graphics/Bitmap;)V
.end method

.method protected static native startJNI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private startOfProcessing()V
    .locals 2

    const-string v0, "PEDIT_DMCSegmentationEngine"

    const-string v1, "startOfProcessing()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsRunning:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsCancelled:Z

    return-void
.end method

.method protected static native undoJNI(Landroid/graphics/Bitmap;)V
.end method

.method protected static native undoJNI(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method private writeLatestScribblesToMarkerBitmap()I
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0xff

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    invoke-virtual {v4}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->getLast()Lcom/sec/android/secvision/segmentation/ScribblePath;

    move-result-object v2

    const/4 v0, -0x1

    if-nez v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mMarkerBitmap:Landroid/graphics/Bitmap;

    invoke-static {v7, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    sget-object v4, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine$2;->$SwitchMap$com$sec$android$secvision$segmentation$SegmentationMode:[I

    invoke-virtual {v2}, Lcom/sec/android/secvision/segmentation/ScribblePath;->getSegmentationMode()Lcom/sec/android/secvision/segmentation/SegmentationMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/secvision/segmentation/SegmentationMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    const-string v4, "PEDIT_DMCSegmentationEngine"

    const-string v5, "Invalide segmentation mode"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v4, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mMarkerCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Lcom/sec/android/secvision/segmentation/ScribblePath;->pointsToPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move v1, v0

    goto :goto_0

    :pswitch_0
    const/4 v4, 0x4

    invoke-static {v7, v6, v6, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    const/4 v4, 0x3

    invoke-static {v7, v6, v6, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    invoke-static {v7, v6, v6, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_3
    invoke-static {v7, v6, v6, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mMarkerCanvas:Landroid/graphics/Canvas;

    invoke-static {v7, v6, v6, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-static {v7, v6, v6, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x4

    goto :goto_1

    :pswitch_5
    iget-object v4, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mMarkerCanvas:Landroid/graphics/Canvas;

    invoke-static {v7, v6, v6, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-static {v7, v6, v6, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x5

    goto :goto_1

    :pswitch_6
    invoke-static {v7, v6, v6, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x6

    goto :goto_1

    :pswitch_7
    invoke-static {v7, v6, v6, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x7

    goto/16 :goto_1

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
    .end packed-switch
.end method


# virtual methods
.method public canRedo()Z
    .locals 4

    iget-boolean v1, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsInitialized:Z

    if-nez v1, :cond_0

    const-string v1, "PEDIT_DMCSegmentationEngine"

    const-string v2, "ERROR! canRedo() is called after deinitialization."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->canRedoJNI()Z

    move-result v0

    const-string v1, "PEDIT_DMCSegmentationEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canRedo() returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    invoke-virtual {v3}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->dump()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public canUndo()Z
    .locals 4

    iget-boolean v1, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsInitialized:Z

    if-nez v1, :cond_0

    const-string v1, "PEDIT_DMCSegmentationEngine"

    const-string v2, "ERROR! canUndo() is called after deinitialization."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->canUndoJNI()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    invoke-virtual {v1}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    const-string v1, "PEDIT_DMCSegmentationEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canUndo() returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    invoke-virtual {v3}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->dump()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cancelSegmentation()V
    .locals 2

    const-string v0, "PEDIT_DMCSegmentationEngine"

    const-string v1, "cancelSegmentation()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string v0, "PEDIT_DMCSegmentationEngine"

    const-string v1, "ERROR! cancelSegmentation() is called after deinitialization."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsCancelled:Z

    invoke-static {}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->cancelSegmentationJNI()V

    return-void
.end method

.method public deInitialize()V
    .locals 2

    const-string v0, "PEDIT_DMCSegmentationEngine"

    const-string v1, "deInitialize()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsInitialized:Z

    invoke-virtual {p0}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->isProcessingRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PEDIT_DMCSegmentationEngine"

    const-string v1, "ERROR! deInitialize() has been called while segmentation is still running."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentContour:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentContour:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    invoke-virtual {v0}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->clear()V

    :cond_2
    invoke-static {}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->deInitSegmentationEngineJNI()V

    invoke-direct {p0}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->resetProcessing()V

    goto :goto_0
.end method

.method public getResultImageMask()Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "PEDIT_DMCSegmentationEngine"

    const-string v1, "getResultImageMask()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mMaskBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getResultImageSegment()Landroid/graphics/Bitmap;
    .locals 8

    const/4 v3, 0x0

    const-string v1, "PEDIT_DMCSegmentationEngine"

    const-string v2, "getResultImageSegment()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsInitialized:Z

    if-nez v1, :cond_0

    const-string v1, "PEDIT_DMCSegmentationEngine"

    const-string v2, "ERROR! getResultImageSegment() is called after deinitialization."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mInputBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->blendMaskBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v7, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentBound:Landroid/graphics/RectF;

    invoke-virtual {v7, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "PEDIT_DMCSegmentationEngine"

    const-string v2, "ERROR! The segment bound exceeds the image boundary."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentBound:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentBound:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentBound:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentBound:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getResultImageSegment(I)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v2, 0x0

    const-string v3, "PEDIT_DMCSegmentationEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getResultImageSegment("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsInitialized:Z

    if-nez v3, :cond_0

    const-string v3, "PEDIT_DMCSegmentationEngine"

    const-string v4, "ERROR! getResultImageSegment(matteWidth) is called after deinitialization."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v9, p1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->getResultImageSegment()Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string v3, "PEDIT_DMCSegmentationEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMatteFromMask("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/sec/android/secvision/segmentation/ImageMatte;

    iget-object v4, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mInputBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Lcom/sec/android/secvision/segmentation/ImageMatte;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v9}, Lcom/sec/android/secvision/segmentation/ImageMatte;->getMatteFromMask(I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mAlphaMatteBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v10, v4, v10

    const-string v3, "PEDIT_DMCSegmentationEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "It has taken "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms to matte"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mAlphaMatteBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->isProcessingCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mInputBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mAlphaMatteBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->blendMaskBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v8, Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v8, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentBound:Landroid/graphics/RectF;

    invoke-virtual {v8, v2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "PEDIT_DMCSegmentationEngine"

    const-string v3, "ERROR! The segment bound exceeds the image boundary."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentBound:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v1, v2

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentBound:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentBound:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentBound:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mResultBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mInputBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->blendMaskBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentBound:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentBound:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentBound:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentBound:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIntermediateBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mInputBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/secvision/segmentation/ScribblePath;

    invoke-direct {p0, v3, v2}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->drawPathOnBitmap(Landroid/graphics/Bitmap;Lcom/sec/android/secvision/segmentation/ScribblePath;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mStrokeBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine$1;

    invoke-direct {v2, p0}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine$1;-><init>(Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;)V

    invoke-virtual {v2}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine$1;->start()V

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mResultBitmap:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public initialize(Landroid/graphics/Bitmap;)Z
    .locals 8

    const/4 v7, 0x1

    const-string v0, "PEDIT_DMCSegmentationEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize(): input bitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsInitialized:Z

    iput-object p1, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mInputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mOutputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mMarkerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mMaskBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mMarkerBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mMarkerCanvas:Landroid/graphics/Canvas;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentContour:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    invoke-direct {v0}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;-><init>()V

    iput-object v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentBound:Landroid/graphics/RectF;

    const-string v0, "PEDIT_DMCSegmentationEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOutputBitmap sizewidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mOutputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mOutputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->resetProcessing()V

    invoke-static {}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->deInitSegmentationEngineJNI()V

    invoke-static {}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->resetJNI()V

    invoke-static {p1}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->setSourceImageJNI(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->initSegmentationEngineJNI()V

    iget-boolean v1, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsSRIBGraphCut:Z

    iget v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mDownsizeFactor:I

    iget-boolean v3, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsSRIBColorModel:Z

    iget-boolean v4, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsROI:Z

    iget-boolean v5, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsIntelligentUpscaling:Z

    iget-boolean v6, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsSlimcut:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->algoSettingUpdate(ZIZZZZ)Landroid/graphics/Bitmap;

    return v7
.end method

.method public isProcessingRunning()Z
    .locals 3

    const-string v0, "PEDIT_DMCSegmentationEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isProcessingRunning() returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsRunning:Z

    return v0
.end method

.method public redo()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->canRedo()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    invoke-virtual {v2}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->redo()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    invoke-virtual {v2}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->getLast()Lcom/sec/android/secvision/segmentation/ScribblePath;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->setCurrentMarkerVector(Lcom/sec/android/secvision/segmentation/ScribblePath;)V

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mOutputBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v3}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->redoJNI(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-string v2, "PEDIT_DMCSegmentationEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "It has taken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms to redo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->makeSegmentContour()V

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentContour:Ljava/util/ArrayList;

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "PEDIT_DMCSegmentationEngine"

    const-string v3, "No more scribbles to redo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentContour:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    const-string v0, "PEDIT_DMCSegmentationEngine"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentContour:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentContour:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    invoke-virtual {v0}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->clear()V

    :cond_1
    invoke-static {}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->resetJNI()V

    return-void
.end method

.method public segment(Lcom/sec/android/secvision/segmentation/ScribblePath;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/secvision/segmentation/ScribblePath;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    iget-boolean v4, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mIsInitialized:Z

    if-nez v4, :cond_0

    const-string v4, "PEDIT_DMCSegmentationEngine"

    const-string v5, "ERROR! segment() is called after deinitialization."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->isScribbleValid(Lcom/sec/android/secvision/segmentation/ScribblePath;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "PEDIT_DMCSegmentationEngine"

    const-string v5, "Invalid Input Scribble Path"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentContour:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->startOfProcessing()V

    const-string v4, "PEDIT_DMCSegmentationEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/secvision/segmentation/ScribblePath;->getSegmentationMode()Lcom/sec/android/secvision/segmentation/SegmentationMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/android/secvision/segmentation/IntelligentModeSelection;->decideSegmentationMode(Lcom/sec/android/secvision/segmentation/ScribblePath;)Lcom/sec/android/secvision/segmentation/SegmentationMode;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/secvision/segmentation/ScribblePath;->setSegmentationMode(Lcom/sec/android/secvision/segmentation/SegmentationMode;)V

    const-string v4, "PEDIT_DMCSegmentationEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "converted mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/secvision/segmentation/ScribblePath;->getSegmentationMode()Lcom/sec/android/secvision/segmentation/SegmentationMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    new-instance v5, Lcom/sec/android/secvision/segmentation/ScribblePath;

    invoke-direct {v5, p1}, Lcom/sec/android/secvision/segmentation/ScribblePath;-><init>(Lcom/sec/android/secvision/segmentation/ScribblePath;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->add(Lcom/sec/android/secvision/segmentation/ScribblePath;)Z

    const-string v4, "PEDIT_DMCSegmentationEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Size of mScribbleHistory : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    invoke-virtual {v6}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->writeLatestScribblesToMarkerBitmap()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, p1}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->setCurrentMarkerVector(Lcom/sec/android/secvision/segmentation/ScribblePath;)V

    iget-object v4, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mMarkerBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v0}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->setMarkerImageJNI(Landroid/graphics/Bitmap;I)V

    invoke-direct {p0, v1}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->isAutoMode(Lcom/sec/android/secvision/segmentation/SegmentationMode;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mOutputBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v5}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->SegmentJNI(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-string v4, "PEDIT_DMCSegmentationEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "It has taken "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms to segment"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->isProcessingCancelled()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "PEDIT_DMCSegmentationEngine"

    const-string v5, "segment(): Segmentation has been canceled."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    invoke-virtual {v4}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->removeLast()V

    :goto_2
    invoke-direct {p0}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->resetProcessing()V

    iget-object v4, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentContour:Ljava/util/ArrayList;

    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    iget-object v4, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mOutputBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-static {v4, v5}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->ManuallyCutObjectJNI(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->makeSegmentContour()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public undo()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->canUndo()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    invoke-virtual {v2}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->undo()V

    const-string v2, "PEDIT_DMCSegmentationEngine"

    const-string v3, "Tesy"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mScribbleHistory:Lcom/sec/android/secvision/segmentation/ScribbleHistory;

    invoke-virtual {v2}, Lcom/sec/android/secvision/segmentation/ScribbleHistory;->getLast()Lcom/sec/android/secvision/segmentation/ScribblePath;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->setCurrentMarkerVector(Lcom/sec/android/secvision/segmentation/ScribblePath;)V

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mOutputBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v3}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->undoJNI(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-string v2, "PEDIT_DMCSegmentationEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "It has taken "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms to undo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->makeSegmentContour()V

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentContour:Ljava/util/ArrayList;

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "PEDIT_DMCSegmentationEngine"

    const-string v3, "No more scribbles to undo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->mSegmentContour:Ljava/util/ArrayList;

    goto :goto_0
.end method
