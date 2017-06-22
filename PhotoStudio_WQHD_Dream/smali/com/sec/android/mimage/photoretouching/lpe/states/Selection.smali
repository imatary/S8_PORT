.class public Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;
.super Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;
.source "Selection.java"


# static fields
.field private static final AVAILABLE_CROP_LASSO:I = 0x64

.field public static final BRUSH_ADD_MASK:I = 0x2

.field public static final BRUSH_DEL_MASK:I = 0x3

.field public static final BRUSH_MAX_SIZE:I = 0x32

.field public static final BRUSH_MIN_SIZE:I = 0x5

.field private static final LASSO_ADD_MASK:I = 0x4

.field public static final SMART_ADD_MASK:I = 0x0

.field public static final SMART_DEL_MASK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PEDIT_Selection"

.field private static final TOUCH_DOWN:I = 0x0

.field private static final TOUCH_MOVE:I = 0x0

.field private static final TOUCH_UP:I = 0x1


# instance fields
.field private downX:F

.field private downY:F

.field inputBitmap:Landroid/graphics/Bitmap;

.field private isSelected:Z

.field private mAddSelection:Z

.field private mBrushSize:I

.field private mCleared:Z

.field private mCropFreeRoi:Landroid/graphics/Rect;

.field private mCropLassoPath:Landroid/graphics/Path;

.field private mFirstPoint:Landroid/graphics/PointF;

.field private mFirstPt:Landroid/graphics/Point;

.field private mHeight:I

.field private mInitialized:Z

.field private mInverse:Z

.field private mLassoLineLength:F

.field private mPathLoopForSegment:Lcom/sec/android/secvision/segmentation/ScribblePath;

.field private mPathSegmentResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mPathVertices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPixelData:[I

.field private mPrePt:Landroid/graphics/Point;

.field private mPrevPoint:Landroid/graphics/PointF;

.field private mPreviewRect:Landroid/graphics/RectF;

.field private mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

.field private mSegmentMode:Lcom/sec/android/secvision/segmentation/SegmentationMode;

.field private mSegmenter:Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;

.field private mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

.field private mSelectionInProgress:Z

.field private mTempPreviewMaskBuffer:[B

.field mTempRoi:Landroid/graphics/Rect;

.field private mTempSmartBuffer:[B

.field private mWidth:I

.field upX:F

.field upY:F


# direct methods
.method public constructor <init>(ILcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/AppState;-><init>(ILcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;Lcom/sec/android/mimage/photoretouching/lpe/util/ActionBarManager;Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/util/HistoryManager;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempRoi:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->upX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->upY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mInverse:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCleared:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mAddSelection:Z

    const/16 v0, 0x19

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mBrushSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionInProgress:Z

    sget-object v0, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_AUTO_LOOP_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSegmentMode:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    new-instance v0, Lcom/sec/android/secvision/segmentation/ScribblePath;

    invoke-direct {v0}, Lcom/sec/android/secvision/segmentation/ScribblePath;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathLoopForSegment:Lcom/sec/android/secvision/segmentation/ScribblePath;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathSegmentResult:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mInitialized:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->isSelected:Z

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0, p4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getSelectionBorder(Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;Lcom/sec/android/secvision/segmentation/SegmentationMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->prepareSegmentation(Lcom/sec/android/secvision/segmentation/SegmentationMode;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mInitialized:Z

    return v0
.end method

.method private clearSmart()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathVertices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->clear()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempSmartBuffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempSmartBuffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    :cond_0
    return-void
.end method

.method private doOriginalDone()V
    .locals 9

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCurrState:I

    const v8, 0x10008

    if-eq v1, v8, :cond_0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v5

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v6

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalWidth()I

    move-result v2

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getOriginalHeight()I

    move-result v3

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;II[BIILcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager;->addJob(Ljava/lang/Runnable;Lcom/sec/android/mimage/photoretouching/lpe/core/OriginalThreadManager$JobDoneCallBack;)V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempSmartBuffer:[B

    goto :goto_0
.end method

.method private drawSegmentationResult()V
    .locals 11

    const/4 v10, 0x1

    const/4 v2, 0x0

    const-string v3, "PEDIT_Selection"

    const-string v4, "drawSegmentationResult"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSegmenter:Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;

    invoke-virtual {v3}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->getResultImageMask()Landroid/graphics/Bitmap;

    move-result-object v9

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v9, v3, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    new-array v1, v3, [I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v8, 0x0

    :goto_0
    array-length v3, v1

    if-ge v8, v3, :cond_1

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    aget v3, v1, v8

    if-nez v3, :cond_0

    move v3, v10

    :goto_1
    int-to-byte v3, v3

    aput-byte v3, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    const-string v2, "PEDIT_Selection"

    const-string v3, "Mask Buffer set"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->onSelectionEnd()V

    const-string v2, "PEDIT_Selection"

    const-string v3, "Selection is ending"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private initBrushMagnetic()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Util;->init_objectsel(II)I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mBrushSize:I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mBrushSize:I

    div-int/lit8 v2, v2, 0x8

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Util;->set_brush_size(II)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->setSelectionAdd(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempRoi:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method private initLasso()V
    .locals 6

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrePt:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mFirstPt:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCropFreeRoi:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCropFreeRoi:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/mimage/photoretouching/jni/Util;->init_objectsel(II)I

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCropLassoPath:Landroid/graphics/Path;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathVertices:Ljava/util/ArrayList;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-float v1, v2

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    return-void
.end method

.method private prepareSegmentation(Lcom/sec/android/secvision/segmentation/SegmentationMode;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathSegmentResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$6;->$SwitchMap$com$sec$android$secvision$segmentation$SegmentationMode:[I

    invoke-virtual {p1}, Lcom/sec/android/secvision/segmentation/SegmentationMode;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    const-string v1, "PEDIT_Selection"

    const-string v4, "Invalide segmentation mode"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSegmenter:Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;

    invoke-virtual {v1}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->deInitialize()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSegmenter:Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->inputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->initialize(Landroid/graphics/Bitmap;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mInitialized:Z

    sget-object v1, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_AUTO_LOOP_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSegmentMode:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathLoopForSegment:Lcom/sec/android/secvision/segmentation/ScribblePath;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSegmentMode:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    invoke-virtual {v1, v4}, Lcom/sec/android/secvision/segmentation/ScribblePath;->setSegmentationMode(Lcom/sec/android/secvision/segmentation/SegmentationMode;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSegmenter:Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathLoopForSegment:Lcom/sec/android/secvision/segmentation/ScribblePath;

    invoke-virtual {v1, v4}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;->segment(Lcom/sec/android/secvision/segmentation/ScribblePath;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathSegmentResult:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->drawSegmentationResult()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathLoopForSegment:Lcom/sec/android/secvision/segmentation/ScribblePath;

    invoke-virtual {v1}, Lcom/sec/android/secvision/segmentation/ScribblePath;->reset()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempSmartBuffer:[B

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    array-length v4, v4

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempSmartBuffer:[B

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempSmartBuffer:[B

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->setMask([BLandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->onSelectionEnd()V

    iput-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->isSelected:Z

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_INTELLIGENT_FG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSegmentMode:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathLoopForSegment:Lcom/sec/android/secvision/segmentation/ScribblePath;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSegmentMode:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    invoke-virtual {v1, v4}, Lcom/sec/android/secvision/segmentation/ScribblePath;->setSegmentationMode(Lcom/sec/android/secvision/segmentation/SegmentationMode;)V

    goto :goto_1

    :pswitch_2
    sget-object v1, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_INTELLIGENT_BG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSegmentMode:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathLoopForSegment:Lcom/sec/android/secvision/segmentation/ScribblePath;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSegmentMode:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    invoke-virtual {v1, v4}, Lcom/sec/android/secvision/segmentation/ScribblePath;->setSegmentationMode(Lcom/sec/android/secvision/segmentation/SegmentationMode;)V

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/sec/android/secvision/segmentation/SegmentationMode;->MODE_INTELLIGENT_BG:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempSmartBuffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempSmartBuffer:[B

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempSmartBuffer:[B

    aget-byte v4, v4, v0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    aget-byte v5, v5, v0

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempSmartBuffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempSmartBuffer:[B

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempSmartBuffer:[B

    aget-byte v4, v4, v0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    aget-byte v5, v5, v0

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private readyForSegment()V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPixelData:[I

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mWidth:I

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mHeight:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPixelData:[I

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mWidth:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->inputBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private setInverse(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mInverse:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v1, 0x400d

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mInverse:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->selectToolButton(IZ)V

    return-void
.end method

.method private setSelectionAdd(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mAddSelection:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v1, 0x4010

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mAddSelection:Z

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->selectToolButton(IZ)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v2, 0x4011

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mAddSelection:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->selectToolButton(IZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private touchBrushMagnetic(Landroid/view/MotionEvent;)V
    .locals 12

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getWidth()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v10, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getHeight()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v11, v0

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCleared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCleared:Z

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempRoi:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCropFreeRoi:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempRoi:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->setMask([BLandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrePt:Landroid/graphics/Point;

    iget v1, v4, Landroid/graphics/Point;->x:I

    iget v2, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionInProgress:Z

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrePt:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v10, v11}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mFirstPt:Landroid/graphics/Point;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCropFreeRoi:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCropFreeRoi:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrePt:Landroid/graphics/Point;

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCurrState:I

    const v8, 0x10001

    if-ne v6, v8, :cond_3

    iget-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mAddSelection:Z

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    :goto_1
    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/jni/Util;->modify_objectsel([I[BIILandroid/graphics/Point;Landroid/graphics/Point;ILandroid/graphics/Rect;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCropFreeRoi:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->setLineAnim(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->onSelectionStart()V

    goto :goto_0

    :cond_2
    const/4 v6, 0x3

    goto :goto_1

    :cond_3
    iget-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mAddSelection:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    const/4 v6, 0x1

    goto :goto_1

    :pswitch_1
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionInProgress:Z

    if-eqz v0, :cond_1

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrePt:Landroid/graphics/Point;

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCurrState:I

    const v8, 0x10001

    if-ne v6, v8, :cond_6

    iget-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mAddSelection:Z

    if-eqz v6, :cond_5

    const/4 v6, 0x2

    :goto_2
    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/jni/Util;->modify_objectsel([I[BIILandroid/graphics/Point;Landroid/graphics/Point;ILandroid/graphics/Rect;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCropFreeRoi:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x3

    goto :goto_2

    :cond_6
    iget-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mAddSelection:Z

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    const/4 v6, 0x1

    goto :goto_2

    :pswitch_2
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionInProgress:Z

    if-eqz v0, :cond_1

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mFirstPt:Landroid/graphics/Point;

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCurrState:I

    const v8, 0x10001

    if-ne v6, v8, :cond_9

    iget-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mAddSelection:Z

    if-eqz v6, :cond_8

    const/4 v6, 0x2

    :goto_3
    const/4 v8, 0x1

    invoke-static/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/jni/Util;->modify_objectsel([I[BIILandroid/graphics/Point;Landroid/graphics/Point;ILandroid/graphics/Rect;I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCropFreeRoi:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrePt:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->onSelectionEnd()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionInProgress:Z

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x3

    goto :goto_3

    :cond_9
    iget-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mAddSelection:Z

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    goto :goto_3

    :cond_a
    const/4 v6, 0x1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private touchLasso(Landroid/view/MotionEvent;)V
    .locals 31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getWidth()F

    move-result v3

    div-float v27, v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getHeight()F

    move-result v3

    div-float v29, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v26

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCleared:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCleared:Z

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathVertices:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    const/16 v16, 0x1

    invoke-virtual/range {v10 .. v16}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->setData(Ljava/util/ArrayList;Landroid/graphics/RectF;IIIZ)V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionInProgress:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v6, Landroid/graphics/Point;

    move/from16 v0, v27

    float-to-int v2, v0

    move/from16 v0, v29

    float-to-int v3, v0

    invoke-direct {v6, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrePt:Landroid/graphics/Point;

    if-nez v2, :cond_3

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrePt:Landroid/graphics/Point;

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCropFreeRoi:Landroid/graphics/Rect;

    if-nez v2, :cond_4

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCropFreeRoi:Landroid/graphics/Rect;

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mFirstPt:Landroid/graphics/Point;

    if-nez v2, :cond_5

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mFirstPt:Landroid/graphics/Point;

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCropFreeRoi:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v4

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrePt:Landroid/graphics/Point;

    const/4 v8, 0x4

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/sec/android/mimage/photoretouching/jni/Util;->modify_objectsel([I[BIILandroid/graphics/Point;Landroid/graphics/Point;ILandroid/graphics/Rect;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCropFreeRoi:Landroid/graphics/Rect;

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrePt:Landroid/graphics/Point;

    iget v3, v6, Landroid/graphics/Point;->x:I

    iget v4, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mFirstPt:Landroid/graphics/Point;

    iget v3, v6, Landroid/graphics/Point;->x:I

    iget v4, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    new-instance v2, Landroid/graphics/PointF;

    move/from16 v0, v27

    move/from16 v1, v29

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathVertices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathVertices:Ljava/util/ArrayList;

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathVertices:Ljava/util/ArrayList;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/graphics/PointF;

    move/from16 v0, v27

    move/from16 v1, v29

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mFirstPoint:Landroid/graphics/PointF;

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->setLineAnim(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->onSelectionStart()V

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionInProgress:Z

    if-eqz v2, :cond_1

    new-instance v6, Landroid/graphics/Point;

    move/from16 v0, v27

    float-to-int v2, v0

    move/from16 v0, v29

    float-to-int v3, v0

    invoke-direct {v6, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v4

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrePt:Landroid/graphics/Point;

    const/4 v8, 0x4

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/sec/android/mimage/photoretouching/jni/Util;->modify_objectsel([I[BIILandroid/graphics/Point;Landroid/graphics/Point;ILandroid/graphics/Rect;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCropFreeRoi:Landroid/graphics/Rect;

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    move/from16 v23, v27

    move/from16 v24, v29

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCropLassoPath:Landroid/graphics/Path;

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v2, v2, v29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v3, v29

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v3, v27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v4, v27

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_11

    move/from16 v28, v27

    move/from16 v30, v29

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v2, v2, v29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v3, v29

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v3, v27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v4, v27

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v20, v0

    :goto_3
    move/from16 v0, v22

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    mul-float/2addr v2, v3

    cmpg-float v2, v2, v20

    if-gez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    mul-float/2addr v3, v4

    div-float v3, v3, v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v27, v4

    mul-float/2addr v3, v4

    add-float v28, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    mul-float/2addr v3, v4

    div-float v3, v3, v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, v29, v4

    mul-float/2addr v3, v4

    add-float v30, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathVertices:Ljava/util/ArrayList;

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathVertices:Ljava/util/ArrayList;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    :cond_7
    iget v2, v6, Landroid/graphics/Point;->x:I

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_8

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, v6, Landroid/graphics/Point;->x:I

    :cond_8
    iget v2, v6, Landroid/graphics/Point;->x:I

    if-gez v2, :cond_9

    const/4 v2, 0x0

    iput v2, v6, Landroid/graphics/Point;->x:I

    :cond_9
    iget v2, v6, Landroid/graphics/Point;->y:I

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_a

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, v6, Landroid/graphics/Point;->y:I

    :cond_a
    iget v2, v6, Landroid/graphics/Point;->y:I

    if-gez v2, :cond_b

    const/4 v2, 0x0

    iput v2, v6, Landroid/graphics/Point;->y:I

    :cond_b
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v4

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrePt:Landroid/graphics/Point;

    const/4 v8, 0x4

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/sec/android/mimage/photoretouching/jni/Util;->modify_objectsel([I[BIILandroid/graphics/Point;Landroid/graphics/Point;ILandroid/graphics/Rect;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCropFreeRoi:Landroid/graphics/Rect;

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    cmpl-float v2, v27, v2

    if-lez v2, :cond_c

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v0, v2

    move/from16 v27, v0

    :cond_c
    const/4 v2, 0x0

    cmpg-float v2, v27, v2

    if-gez v2, :cond_d

    const/16 v27, 0x0

    :cond_d
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    cmpl-float v2, v29, v2

    if-lez v2, :cond_e

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v0, v2

    move/from16 v29, v0

    :cond_e
    const/4 v2, 0x0

    cmpg-float v2, v29, v2

    if-gez v2, :cond_f

    const/16 v29, 0x0

    :cond_f
    move/from16 v23, v27

    move/from16 v24, v29

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    move/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrePt:Landroid/graphics/Point;

    iget v3, v6, Landroid/graphics/Point;->x:I

    iget v4, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionInProgress:Z

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mFirstPoint:Landroid/graphics/PointF;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mFirstPoint:Landroid/graphics/PointF;

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mFirstPoint:Landroid/graphics/PointF;

    iget v0, v2, Landroid/graphics/PointF;->y:F

    move/from16 v29, v0

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v2, v2, v29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v3, v29

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v3, v27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v4, v27

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_14

    move/from16 v28, v27

    move/from16 v30, v29

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v2, v2, v29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v3, v29

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float v3, v3, v27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v4, v27

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v20, v0

    :goto_4
    move/from16 v0, v22

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    mul-float/2addr v2, v3

    cmpg-float v2, v2, v20

    if-gez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    mul-float/2addr v3, v4

    div-float v3, v3, v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v27, v4

    mul-float/2addr v3, v4

    add-float v28, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    mul-float/2addr v3, v4

    div-float v3, v3, v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, v29, v4

    mul-float/2addr v3, v4

    add-float v30, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathVertices:Ljava/util/ArrayList;

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathVertices:Ljava/util/ArrayList;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    move/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    :cond_14
    const/16 v19, 0x0

    const/16 v21, 0x0

    :goto_5
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    mul-int/2addr v2, v3

    move/from16 v0, v21

    if-ge v0, v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    aget-byte v2, v2, v21

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    add-int/lit8 v19, v19, 0x1

    :cond_15
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    :cond_16
    const/16 v2, 0x64

    move/from16 v0, v19

    if-ge v0, v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCropFreeRoi:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrePt:Landroid/graphics/Point;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mFirstPt:Landroid/graphics/Point;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_1

    :cond_17
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v12

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrePt:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mFirstPt:Landroid/graphics/Point;

    const/16 v16, 0x4

    const/16 v18, 0x1

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v18}, Lcom/sec/android/mimage/photoretouching/jni/Util;->modify_objectsel([I[BIILandroid/graphics/Point;Landroid/graphics/Point;ILandroid/graphics/Rect;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCropFreeRoi:Landroid/graphics/Rect;

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCropLassoPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrePt:Landroid/graphics/Point;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mFirstPt:Landroid/graphics/Point;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionInProgress:Z

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v8

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v10

    invoke-direct {v4, v5, v7, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->setMask([BLandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->onSelectionEnd()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private touchRectCircle(Landroid/view/MotionEvent;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getWidth()F

    move-result v3

    div-float v5, v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getHeight()F

    move-result v3

    div-float v6, v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iput v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->downX:F

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->downY:F

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionInProgress:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->setLineAnim(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->onSelectionStart()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->downX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->downY:F

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->setSelectionRect(FFFFZ)V

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionInProgress:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->downX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->downY:F

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->setSelectionRect(FFFFZ)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionInProgress:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionInProgress:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->onSelectionEnd()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->getSelectionRects()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/RectF;

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    iget v3, v14, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iput v3, v13, Landroid/graphics/Rect;->left:I

    iget v3, v14, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iput v3, v13, Landroid/graphics/Rect;->top:I

    iget v3, v14, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iput v3, v13, Landroid/graphics/Rect;->right:I

    iget v3, v14, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    iput v3, v13, Landroid/graphics/Rect;->bottom:I

    iget v3, v13, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_2

    const/4 v3, 0x0

    iput v3, v13, Landroid/graphics/Rect;->left:I

    :cond_2
    iget v3, v13, Landroid/graphics/Rect;->right:I

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_3

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v13, Landroid/graphics/Rect;->right:I

    :cond_3
    iget v3, v13, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_4

    const/4 v3, 0x0

    iput v3, v13, Landroid/graphics/Rect;->top:I

    :cond_4
    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_5

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v13, Landroid/graphics/Rect;->bottom:I

    :cond_5
    iget v3, v13, Landroid/graphics/Rect;->right:I

    iget v4, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v15, v3, [B

    const/4 v3, 0x1

    invoke-static {v15, v3}, Ljava/util/Arrays;->fill([BB)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCurrState:I

    const v4, 0x10004

    if-ne v3, v4, :cond_6

    iget v10, v13, Landroid/graphics/Rect;->top:I

    :goto_1
    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    if-gt v10, v3, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    iget v7, v13, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v17

    mul-int v17, v17, v10

    add-int v7, v7, v17

    array-length v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v15, v3, v4, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCurrState:I

    const v4, 0x10003

    if-ne v3, v4, :cond_1

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v8, v3, 0x2

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v9, v3, 0x2

    iget v10, v13, Landroid/graphics/Rect;->top:I

    :goto_2
    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    if-gt v10, v3, :cond_1

    int-to-double v0, v8

    move-wide/from16 v18, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, v13, Landroid/graphics/Rect;->top:I

    sub-int v4, v10, v4

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v4, v7

    int-to-float v4, v4

    iget v7, v13, Landroid/graphics/Rect;->top:I

    sub-int v7, v10, v7

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    sub-int v7, v7, v17

    int-to-float v7, v7

    mul-float/2addr v4, v7

    mul-int v7, v9, v9

    int-to-float v7, v7

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    float-to-double v0, v3

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v11, v0

    :goto_3
    move/from16 v0, v16

    if-gt v11, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v4

    mul-int/2addr v4, v10

    iget v7, v13, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v7

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    add-int/2addr v4, v11

    const/4 v7, 0x1

    aput-byte v7, v3, v4

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private touchSmartSelection(Landroid/view/MotionEvent;)V
    .locals 18

    const-string v2, "PEDIT_Selection"

    const-string v3, "Smart touch Event"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCleared:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getWidth()F

    move-result v3

    div-float v14, v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getHeight()F

    move-result v3

    div-float v16, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v13

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathVertices:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->setData(Ljava/util/ArrayList;Landroid/graphics/RectF;IIIZ)V

    :cond_1
    return-void

    :pswitch_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionInProgress:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v13, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->downX:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->downY:F

    new-instance v2, Landroid/graphics/PointF;

    move/from16 v0, v16

    invoke-direct {v2, v14, v0}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathVertices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathVertices:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathVertices:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathLoopForSegment:Lcom/sec/android/secvision/segmentation/ScribblePath;

    invoke-virtual {v2}, Lcom/sec/android/secvision/segmentation/ScribblePath;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathLoopForSegment:Lcom/sec/android/secvision/segmentation/ScribblePath;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->downX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->downY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/secvision/segmentation/ScribblePath;->moveTo(FF)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempSmartBuffer:[B

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempSmartBuffer:[B

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v7

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->setMask([BLandroid/graphics/Rect;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->setLineAnim(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->onSelectionStart()V

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionInProgress:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v13, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->upX:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->upY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->upX:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->downX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->upY:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->downY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathLoopForSegment:Lcom/sec/android/secvision/segmentation/ScribblePath;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->upX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->upY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/secvision/segmentation/ScribblePath;->lineTo(FF)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v2, v2, v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v3, v16

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v14

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move v15, v14

    move/from16 v17, v16

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v2, v2, v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v3, v16

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v14

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v10, v2

    :goto_2
    int-to-float v2, v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    mul-float/2addr v2, v3

    cmpg-float v2, v2, v10

    if-gez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    int-to-float v3, v11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v14, v4

    mul-float/2addr v3, v4

    add-float v15, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float v3, v11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, v16, v4

    mul-float/2addr v3, v4

    add-float v17, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathVertices:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathVertices:Ljava/util/ArrayList;

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    cmpl-float v2, v14, v2

    if-lez v2, :cond_5

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v14, v2

    :cond_5
    const/4 v2, 0x0

    cmpg-float v2, v14, v2

    if-gez v2, :cond_6

    const/4 v14, 0x0

    :cond_6
    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    cmpl-float v2, v16, v2

    if-lez v2, :cond_7

    invoke-virtual {v12}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v0, v2

    move/from16 v16, v0

    :cond_7
    const/4 v2, 0x0

    cmpg-float v2, v16, v2

    if-gez v2, :cond_8

    const/16 v16, 0x0

    :cond_8
    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->upX:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->upY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->upX:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->downX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->upY:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->downY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathLoopForSegment:Lcom/sec/android/secvision/segmentation/ScribblePath;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->upX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->upY:F

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/secvision/segmentation/ScribblePath;->lineTo(FF)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    move/from16 v0, v17

    invoke-virtual {v2, v15, v0}, Landroid/graphics/PointF;->set(FF)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionInProgress:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->upX:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->upY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathLoopForSegment:Lcom/sec/android/secvision/segmentation/ScribblePath;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSegmentMode:Lcom/sec/android/secvision/segmentation/SegmentationMode;

    invoke-virtual {v2, v3}, Lcom/sec/android/secvision/segmentation/ScribblePath;->setSegmentationMode(Lcom/sec/android/secvision/segmentation/SegmentationMode;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v2, v2, v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v3, v16

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v14

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    move v15, v14

    move/from16 v17, v16

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v2, v2, v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v3, v16

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v14

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v10, v2

    :goto_3
    int-to-float v2, v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    mul-float/2addr v2, v3

    cmpg-float v2, v2, v10

    if-gez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    int-to-float v3, v11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v14, v4

    mul-float/2addr v3, v4

    add-float v15, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float v3, v11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v4, v16, v4

    mul-float/2addr v3, v4

    add-float v17, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathVertices:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathVertices:Ljava/util/ArrayList;

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPrevPoint:Landroid/graphics/PointF;

    move/from16 v0, v17

    invoke-virtual {v2, v15, v0}, Landroid/graphics/PointF;->set(FF)V

    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionInProgress:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->isSelected:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public doCancel()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->updateMaskFromImageData()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    return-void
.end method

.method public doDone(Z)V
    .locals 5

    const v3, 0x10008

    const/4 v4, 0x0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCurrState:I

    if-ne v1, v3, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mInitialized:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->doCancel()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v2

    array-length v2, v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->setPreviewMaskBuffer([B)V

    :cond_1
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCurrState:I

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    :goto_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->doOriginalDone()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->setState(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempSmartBuffer:[B

    goto :goto_1
.end method

.method public draw()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->draw()V

    return-void
.end method

.method public freeResources()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->onSelectionExit()V

    return-void
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getBoundRect()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewRect:Landroid/graphics/RectF;

    return-void
.end method

.method public initSmart()V
    .locals 6

    const-string v1, "PEDIT_Selection"

    const-string v2, "Init Smart Selection:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mInitialized:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    new-instance v1, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;

    invoke-direct {v1}, Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSegmenter:Lcom/sec/android/secvision/segmentation/DMCSegmentationEngine;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPathVertices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempSmartBuffer:[B

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-float v1, v2

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLassoLineLength:F

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->readyForSegment()V

    return-void
.end method

.method public loadResources()V
    .locals 0

    return-void
.end method

.method public onAddClick()V
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCurrState:I

    const v1, 0x10008

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->onManualAddSelected()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mAddSelection:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mAddSelection:Z

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mAddSelection:Z

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->setSelectionAdd(Z)V

    goto :goto_0
.end method

.method public onAutoSelected()V
    .locals 2

    const-string v0, "PEDIT_Selection"

    const-string v1, " Auto smart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->isSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->showProgress()V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$2;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;)V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$2;->start()V

    :cond_0
    return-void
.end method

.method public onClearClick()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->getState()I

    move-result v1

    const/16 v2, 0x100

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewMaskBuffer()[B

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->clear()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->setInverse(Z)V

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCurrState:I

    const v2, 0x10008

    if-eq v1, v2, :cond_2

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->setSelectionAdd(Z)V

    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCleared:Z

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCurrState:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->clear()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->initLasso()V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->initBrushMagnetic()V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->clearSmart()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x10001
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onInverseClick()V
    .locals 7

    const v5, 0x10008

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCurrState:I

    if-eq v1, v5, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/sec/android/mimage/photoretouching/jni/Util;->inverse_objectsel([BII)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCurrState:I

    if-eq v1, v5, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v6

    invoke-direct {v4, v2, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v1, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->setMask([BLandroid/graphics/Rect;)V

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mInverse:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mInverse:Z

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mInverse:Z

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->setInverse(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mInverse:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->setInverse(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempSmartBuffer:[B

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempSmartBuffer:[B

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public onManualAddSelected()V
    .locals 2

    const-string v0, "PEDIT_Selection"

    const-string v1, " Add smart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->isSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->showProgress()V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$3;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;)V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$3;->start()V

    :cond_0
    return-void
.end method

.method public onManualSubSelected()V
    .locals 2

    const-string v0, "PEDIT_Selection"

    const-string v1, " Sub smart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->isSelected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->showProgress()V

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$4;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$4;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;)V

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$4;->start()V

    :cond_0
    return-void
.end method

.method public onOrientationChange()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->onOrientationChanged()V

    :cond_0
    return-void
.end method

.method public onSizeClick()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mDialogManager:Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mBrushSize:I

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$5;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection$5;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/DialogManager;->showBrushSizeDialog(ILcom/sec/android/mimage/photoretouching/lpe/util/DialogManager$DialogListener;)V

    return-void
.end method

.method public onSubClick()V
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCurrState:I

    const v1, 0x10008

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->onManualSubSelected()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mAddSelection:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mAddSelection:Z

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mAddSelection:Z

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->setSelectionAdd(Z)V

    goto :goto_0
.end method

.method public onSubState(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->setInverse(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionBorder:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLSelectionBorder;->setSelectionMode(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mLayerManager:Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/layer/LayerManager;->getImageData()Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mTempPreviewMaskBuffer:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->initLasso()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->initBrushMagnetic()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->initSmart()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10001
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onSurfaceChanged()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mInverse:Z

    if-eqz v3, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mSelectionInProgress:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mInverse:Z

    if-nez v3, :cond_3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_1
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCurrState:I

    const v4, 0x10005

    if-ne v3, v4, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->touchLasso(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCurrState:I

    const v4, 0x10001

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCurrState:I

    const v4, 0x10002

    if-ne v3, v4, :cond_6

    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->touchBrushMagnetic(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_6
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCurrState:I

    const v4, 0x10004

    if-eq v3, v4, :cond_7

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCurrState:I

    const v4, 0x10003

    if-ne v3, v4, :cond_8

    :cond_7
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->touchRectCircle(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_8
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mCurrState:I

    const v4, 0x10008

    if-ne v3, v4, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->touchSmartSelection(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public setBrushSize(I)V
    .locals 2

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mBrushSize:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mBrushSize:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/states/Selection;->mBrushSize:I

    div-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/jni/Util;->set_brush_size(II)V

    return-void
.end method
