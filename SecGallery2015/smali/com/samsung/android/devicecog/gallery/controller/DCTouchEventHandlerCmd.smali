.class public Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "DCTouchEventHandlerCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;,
        Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDCTouchEventThread:Landroid/os/HandlerThread;

.field private mHandler:Landroid/os/Handler;

.field private final mInstrumentation:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->mInstrumentation:Landroid/app/Instrumentation;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->handleTouchEventState(Ljava/lang/String;)V

    return-void
.end method

.method private calculateZoomPoints()[Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;
    .locals 15

    const/4 v13, 0x4

    new-array v8, v13, [Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayLongSideSize()I

    move-result v4

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayShortSideSize()I

    move-result v9

    iget-object v13, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->mContext:Landroid/content/Context;

    check-cast v13, Landroid/app/Activity;

    invoke-static {v13}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v3

    const/4 v5, 0x0

    iget-object v13, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->mContext:Landroid/content/Context;

    instance-of v13, v13, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v13, :cond_0

    iget-object v13, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->mContext:Landroid/content/Context;

    check-cast v13, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getTabViewHeightPixel()I

    move-result v12

    iget-object v13, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->mContext:Landroid/content/Context;

    check-cast v13, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getActionBarHeightPixel()I

    move-result v0

    add-int v5, v12, v0

    :cond_0
    if-eqz v3, :cond_1

    sub-int/2addr v9, v5

    :goto_0
    new-instance v10, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;

    invoke-direct {v10, p0}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;-><init>(Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;)V

    if-eqz v3, :cond_2

    move v13, v4

    :goto_1
    int-to-float v13, v13

    const/high16 v14, 0x40400000    # 3.0f

    div-float v6, v13, v14

    if-eqz v3, :cond_3

    move v13, v9

    :goto_2
    int-to-float v13, v13

    const/high16 v14, 0x40400000    # 3.0f

    div-float/2addr v13, v14

    int-to-float v14, v5

    add-float v7, v13, v14

    invoke-virtual {v10, v6, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->set(FF)V

    const/4 v13, 0x0

    aput-object v10, v8, v13

    new-instance v11, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;

    invoke-direct {v11, p0}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;-><init>(Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;)V

    if-eqz v3, :cond_4

    move v13, v4

    :goto_3
    int-to-float v13, v13

    const/high16 v14, 0x40400000    # 3.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    mul-float v6, v13, v14

    if-eqz v3, :cond_5

    move v13, v9

    :goto_4
    int-to-float v13, v13

    const/high16 v14, 0x40400000    # 3.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v13, v14

    int-to-float v14, v5

    add-float v7, v13, v14

    invoke-virtual {v11, v6, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->set(FF)V

    const/4 v13, 0x1

    aput-object v11, v8, v13

    new-instance v1, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;

    invoke-direct {v1, p0}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;-><init>(Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;)V

    if-eqz v3, :cond_6

    move v13, v4

    :goto_5
    int-to-float v13, v13

    const/high16 v14, 0x40c00000    # 6.0f

    div-float v6, v13, v14

    if-eqz v3, :cond_7

    move v13, v9

    :goto_6
    int-to-float v13, v13

    const/high16 v14, 0x40c00000    # 6.0f

    div-float/2addr v13, v14

    int-to-float v14, v5

    add-float v7, v13, v14

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->set(FF)V

    const/4 v13, 0x2

    aput-object v1, v8, v13

    new-instance v2, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;

    invoke-direct {v2, p0}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;-><init>(Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;)V

    if-eqz v3, :cond_8

    move v13, v4

    :goto_7
    int-to-float v13, v13

    const/high16 v14, 0x40c00000    # 6.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x40a00000    # 5.0f

    mul-float v6, v13, v14

    if-eqz v3, :cond_9

    :goto_8
    int-to-float v13, v9

    const/high16 v14, 0x40c00000    # 6.0f

    div-float/2addr v13, v14

    const/high16 v14, 0x40a00000    # 5.0f

    mul-float/2addr v13, v14

    int-to-float v14, v5

    add-float v7, v13, v14

    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->set(FF)V

    const/4 v13, 0x3

    aput-object v2, v8, v13

    return-object v8

    :cond_1
    sub-int/2addr v4, v5

    goto/16 :goto_0

    :cond_2
    move v13, v9

    goto :goto_1

    :cond_3
    move v13, v4

    goto :goto_2

    :cond_4
    move v13, v9

    goto :goto_3

    :cond_5
    move v13, v4

    goto :goto_4

    :cond_6
    move v13, v9

    goto :goto_5

    :cond_7
    move v13, v4

    goto :goto_6

    :cond_8
    move v13, v9

    goto :goto_7

    :cond_9
    move v9, v4

    goto :goto_8
.end method

.method private closeEvent(Landroid/view/MotionEvent;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    return-void
.end method

.method private handleTouchEventState(Ljava/lang/String;)V
    .locals 8

    const/16 v7, 0x1f4

    const/16 v6, 0x32

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v5, "ScrollUp"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "ScrollDown"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "ScrollToTop"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v4

    goto :goto_0

    :sswitch_3
    const-string/jumbo v5, "ScrollToEnd"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v5, "ZoomIn"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v5, "ZoomOut"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v5, "SwipeLeft"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v5, "SwipeRight"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :pswitch_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->y:I

    add-int/lit16 v2, v0, -0x1f4

    int-to-float v2, v2

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->scroll(FI)V

    goto :goto_1

    :pswitch_1
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->y:I

    neg-int v0, v2

    add-int/lit16 v2, v0, 0x1f4

    int-to-float v2, v2

    invoke-direct {p0, v2, v6}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->scroll(FI)V

    goto/16 :goto_1

    :pswitch_2
    const/high16 v2, 0x467a0000    # 16000.0f

    invoke-direct {p0, v2, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->scroll(FI)V

    goto/16 :goto_1

    :pswitch_3
    const/high16 v2, -0x39860000    # -16000.0f

    invoke-direct {p0, v2, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->scroll(FI)V

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->zoomIn()V

    goto/16 :goto_1

    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->zoomOut()V

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->swipe(I)V

    goto/16 :goto_1

    :pswitch_7
    invoke-direct {p0, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->swipe(I)V

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x6f3d1cde -> :sswitch_7
        -0x601b8f88 -> :sswitch_4
        -0x2ce3b9bf -> :sswitch_6
        -0x2217ca8d -> :sswitch_3
        -0x22179213 -> :sswitch_2
        -0x141e2998 -> :sswitch_0
        0x5ca9b65b -> :sswitch_5
        0x7abe2d2f -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private initHandlerThread()V
    .locals 3

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "DCTouchHandlerCmd"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->mDCTouchEventThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->mDCTouchEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->mDCTouchEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "DCTouchHandlerCmd"

    const-string/jumbo v2, "looper is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$1;-><init>(Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private obtainMotionEvent(FFI)Landroid/view/MotionEvent;
    .locals 20

    const/4 v6, 0x2

    new-array v8, v6, [Landroid/view/MotionEvent$PointerProperties;

    new-instance v19, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct/range {v19 .. v19}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, v19

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v6, 0x1

    move-object/from16 v0, v19

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    const/4 v6, 0x0

    aput-object v19, v8, v6

    const/4 v6, 0x2

    new-array v9, v6, [Landroid/view/MotionEvent$PointerCoords;

    new-instance v18, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v18 .. v18}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    move/from16 v0, p1

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, p2

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v18

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v6, 0x0

    aput-object v18, v9, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/high16 v17, -0x80000000

    move/from16 v6, p3

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v6

    return-object v6
.end method

.method private performZoom(Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;II)V
    .locals 33

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->getX()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->getY()F

    move-result v21

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->getX()F

    move-result v20

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->getY()F

    move-result v22

    const/4 v6, 0x2

    new-array v8, v6, [Landroid/view/MotionEvent$PointerProperties;

    new-instance v27, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct/range {v27 .. v27}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, v27

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v6, 0x1

    move-object/from16 v0, v27

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    new-instance v28, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct/range {v28 .. v28}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v6, 0x1

    move-object/from16 v0, v28

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    const/4 v6, 0x1

    move-object/from16 v0, v28

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    const/4 v6, 0x0

    aput-object v27, v8, v6

    const/4 v6, 0x1

    aput-object v28, v8, v6

    const/4 v6, 0x2

    new-array v9, v6, [Landroid/view/MotionEvent$PointerCoords;

    new-instance v25, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v25 .. v25}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    move/from16 v0, v19

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, v21

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v25

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v25

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    new-instance v26, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v26 .. v26}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    move/from16 v0, v20

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, v22

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v26

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v26

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v6, 0x0

    aput-object v25, v9, v6

    const/4 v6, 0x1

    aput-object v26, v9, v6

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/high16 v17, -0x80000000

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->sendPointerSync(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->closeEvent(Landroid/view/MotionEvent;)V

    move-object/from16 v0, v28

    iget v6, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x5

    const/4 v7, 0x2

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/high16 v17, -0x80000000

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->sendPointerSync(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->closeEvent(Landroid/view/MotionEvent;)V

    div-int v24, p6, p5

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    move/from16 v0, v24

    int-to-float v7, v0

    div-float v29, v6, v7

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->getY()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    move/from16 v0, v24

    int-to-float v7, v0

    div-float v31, v6, v7

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->getX()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    move/from16 v0, v24

    int-to-float v7, v0

    div-float v30, v6, v7

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->getY()F

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    move/from16 v0, v24

    int-to-float v7, v0

    div-float v32, v6, v7

    const/16 v23, 0x0

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    move/from16 v0, p5

    int-to-long v6, v0

    add-long/2addr v4, v6

    add-float v19, v19, v29

    add-float v21, v21, v31

    add-float v20, v20, v30

    add-float v22, v22, v32

    const/4 v6, 0x0

    cmpg-float v6, v19, v6

    if-gez v6, :cond_0

    const/16 v19, 0x0

    const/4 v6, 0x0

    cmpg-float v6, v21, v6

    if-gez v6, :cond_0

    const/16 v21, 0x0

    :cond_0
    const/4 v6, 0x0

    cmpg-float v6, v20, v6

    if-gez v6, :cond_1

    const/16 v20, 0x0

    const/4 v6, 0x0

    cmpg-float v6, v22, v6

    if-gez v6, :cond_1

    const/16 v22, 0x0

    :cond_1
    move/from16 v0, v19

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, v21

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v0, v20

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, v22

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v6, 0x0

    aput-object v25, v9, v6

    const/4 v6, 0x1

    aput-object v26, v9, v6

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/high16 v17, -0x80000000

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->sendPointerSync(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->closeEvent(Landroid/view/MotionEvent;)V

    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->getX()F

    move-result v6

    move-object/from16 v0, v25

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->getY()F

    move-result v6

    move-object/from16 v0, v25

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->getX()F

    move-result v6

    move-object/from16 v0, v26

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;->getY()F

    move-result v6

    move-object/from16 v0, v26

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v6, 0x0

    aput-object v25, v9, v6

    const/4 v6, 0x1

    aput-object v26, v9, v6

    move/from16 v0, p5

    int-to-long v6, v0

    add-long/2addr v4, v6

    move-object/from16 v0, v28

    iget v6, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v6, v6, 0x6

    const/4 v7, 0x2

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/high16 v17, -0x80000000

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->sendPointerSync(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->closeEvent(Landroid/view/MotionEvent;)V

    move/from16 v0, p5

    int-to-long v6, v0

    add-long/2addr v4, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/high16 v17, -0x80000000

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->sendPointerSync(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->closeEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private quitDCTouchEventThread()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->mDCTouchEventThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->mDCTouchEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method

.method private scroll(FI)V
    .locals 9

    const/high16 v0, 0x43fa0000    # 500.0f

    const/high16 v1, 0x43fa0000    # 500.0f

    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v6}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->obtainMotionEvent(FFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->closeEvent(Landroid/view/MotionEvent;)V

    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-lez v6, :cond_0

    const/4 v4, 0x0

    :goto_0
    float-to-int v6, p1

    if-ge v4, v6, :cond_1

    int-to-float v6, v4

    add-float/2addr v6, v1

    const/4 v7, 0x2

    invoke-direct {p0, v0, v6, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->obtainMotionEvent(FFI)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-direct {p0, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->closeEvent(Landroid/view/MotionEvent;)V

    add-int/2addr v4, p2

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_1
    int-to-float v6, v4

    cmpl-float v6, v6, p1

    if-lez v6, :cond_1

    int-to-float v6, v4

    add-float/2addr v6, v1

    const/4 v7, 0x2

    invoke-direct {p0, v0, v6, v7}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->obtainMotionEvent(FFI)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-direct {p0, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->closeEvent(Landroid/view/MotionEvent;)V

    sub-int/2addr v4, p2

    goto :goto_1

    :cond_1
    add-float v6, v0, p1

    add-float v7, v1, p1

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->obtainMotionEvent(FFI)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-direct {p0, v5}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->closeEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v6, "DCTouchHandlerCmd"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "Below is the error stack for : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private sendPointerSync(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private sendTouchActionMessage(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private swipe(I)V
    .locals 14

    const/4 v13, 0x2

    const/4 v11, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->mContext:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    invoke-static {v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v4, 0x12c

    :goto_0
    const/16 v0, 0x32

    :try_start_0
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v6, v5, Landroid/graphics/Point;->x:I

    if-ne p1, v11, :cond_2

    sub-int v9, v6, v4

    :goto_1
    int-to-float v8, v9

    if-ne p1, v13, :cond_0

    sub-int v4, v6, v4

    :cond_0
    int-to-float v7, v4

    iget v9, v5, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    div-float/2addr v9, v12

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->obtainMotionEvent(FFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->closeEvent(Landroid/view/MotionEvent;)V

    if-ne p1, v11, :cond_3

    float-to-int v2, v8

    :goto_2
    float-to-int v9, v7

    if-le v2, v9, :cond_4

    int-to-float v9, v2

    iget v10, v5, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    div-float/2addr v10, v12

    const/4 v11, 0x2

    invoke-direct {p0, v9, v10, v11}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->obtainMotionEvent(FFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->closeEvent(Landroid/view/MotionEvent;)V

    sub-int/2addr v2, v0

    goto :goto_2

    :cond_1
    const/16 v4, 0xc8

    goto :goto_0

    :cond_2
    move v9, v4

    goto :goto_1

    :cond_3
    float-to-int v2, v8

    :goto_3
    float-to-int v9, v7

    if-ge v2, v9, :cond_4

    int-to-float v9, v2

    iget v10, v5, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    div-float/2addr v10, v12

    const/4 v11, 0x2

    invoke-direct {p0, v9, v10, v11}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->obtainMotionEvent(FFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->closeEvent(Landroid/view/MotionEvent;)V

    add-int/2addr v2, v0

    goto :goto_3

    :cond_4
    iget v9, v5, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    div-float/2addr v9, v12

    const/4 v10, 0x1

    invoke-direct {p0, v7, v9, v10}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->obtainMotionEvent(FFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->sendPointerSync(Landroid/view/MotionEvent;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->closeEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v9, "DCTouchHandlerCmd"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "Below is the error stack for : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method private zoomIn()V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->calculateZoomPoints()[Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;

    move-result-object v7

    const/4 v0, 0x0

    aget-object v1, v7, v0

    const/4 v0, 0x1

    aget-object v2, v7, v0

    const/4 v0, 0x2

    aget-object v3, v7, v0

    const/4 v0, 0x3

    aget-object v4, v7, v0

    const/16 v5, 0x32

    const/16 v6, 0x12c

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->performZoom(Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;II)V

    return-void
.end method

.method private zoomOut()V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->calculateZoomPoints()[Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;

    move-result-object v7

    const/4 v0, 0x2

    aget-object v1, v7, v0

    const/4 v0, 0x3

    aget-object v2, v7, v0

    const/4 v0, 0x0

    aget-object v3, v7, v0

    const/4 v0, 0x1

    aget-object v4, v7, v0

    const/16 v5, 0x32

    const/16 v6, 0x12c

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->performZoom(Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$TouchPoint;II)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 4

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v0, v3

    check-cast v2, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;->DO_ACTION:Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->mDCTouchEventThread:Landroid/os/HandlerThread;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->initHandlerThread()V

    :cond_0
    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Landroid/content/Context;

    iput-object v3, p0, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->sendTouchActionMessage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;->DESTROY_THREAD:Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd$CmdType;

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/devicecog/gallery/controller/DCTouchEventHandlerCmd;->quitDCTouchEventThread()V

    goto :goto_0
.end method
