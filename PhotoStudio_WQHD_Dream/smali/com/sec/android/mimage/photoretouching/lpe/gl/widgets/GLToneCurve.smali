.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;
.super Ljava/lang/Object;
.source "GLToneCurve.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;
    }
.end annotation


# instance fields
.field private final COORDS_PER_VERTEX:I

.field private final GRID_LINES_COUNT:I

.field private final MAX_SEEKBAR_RANGE:I

.field private final POINT_X_LIMIT:I

.field private final THRESHOLD_BAR_COUNT:I

.field private activeBlueHandlerId:I

.field private activeGreenHandlerId:I

.field private activeRedHandlerId:I

.field private active_handler_height:I

.field private active_handler_width:I

.field private currentHandler:I

.field private curveInterface:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;

.field private curveParameters:[F

.field private drag_range:I

.field private drawingVertexBuffer:Ljava/nio/FloatBuffer;

.field private fittingPoints:[F

.field private fixedBlueHandlerId:I

.field private fixedGreenHandlerId:I

.field private fixedRedHandlerId:I

.field private fixed_handler_height:I

.field private fixed_handler_width:I

.field private gridBound:[F

.field private gridVertexBuffer:Ljava/nio/FloatBuffer;

.field private gridVertexBufferId:I

.field private gridVertexBufferUpdated:Z

.field private grid_width:I

.field private handlerLoaded:Z

.field private handlerVertexBuffer:Ljava/nio/FloatBuffer;

.field private inactiveBlueHandlerId:I

.field private inactiveGreenHandlerId:I

.field private inactiveRedHandlerId:I

.field private inactive_handler_height:I

.field private inactive_handler_width:I

.field private inside_area:I

.field private isTouchDownProcessing:Z

.field private line_width:I

.field mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mCurrZone:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

.field private parametricBound:[F

.field private screenHeight:F

.field private screenWidth:F

.field private startDarks:I

.field private startHighLights:I

.field private startLights:I

.field private startShadows:I

.field private startTouchY:F

.field private stroke_width:I

.field private thresholdVertexBuffer:Ljava/nio/FloatBuffer;

.field private thresholdVertexBufferId:I

.field private thresholdVertexBufferUpdated:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x6

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->THRESHOLD_BAR_COUNT:I

    const/16 v4, 0x14

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->GRID_LINES_COUNT:I

    const/4 v4, 0x2

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->COORDS_PER_VERTEX:I

    const/16 v4, 0x64

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->MAX_SEEKBAR_RANGE:I

    const/16 v4, 0x14

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->POINT_X_LIMIT:I

    const/4 v4, -0x1

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridVertexBufferId:I

    const/4 v4, -0x1

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->thresholdVertexBufferId:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridVertexBufferUpdated:Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->thresholdVertexBufferUpdated:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->currentHandler:I

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->curveInterface:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;

    const/16 v4, 0x14

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->curveParameters:[F

    const/16 v4, 0xc

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fittingPoints:[F

    const/4 v4, 0x4

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    const/4 v4, 0x4

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->initViewParams(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;)V

    const v1, 0x90012

    :goto_0
    const v4, 0x90014

    if-gt v1, v4, :cond_2

    const v4, 0x90011

    sub-int v4, v1, v4

    aget-object v4, p4, v4

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->getNumberOfFittingPoints()I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    new-array v0, v4, [F

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    mul-int/lit8 v4, v2, 0x2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    aput v5, v0, v4

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    aput v5, v0, v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    mul-int/lit8 v4, v2, 0x2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v6, v2

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v0, v4

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    int-to-float v6, v2

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-int/lit8 v7, v3, -0x1

    int-to-float v7, v7

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    aput v5, v0, v4

    goto :goto_2

    :cond_1
    const v4, 0x90011

    sub-int v4, v1, v4

    aget-object v4, p4, v4

    check-cast v4, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;

    invoke-virtual {v4, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;->updateHandlerPos([F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private createBuffer()V
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->thresholdVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->getGridNormCoordinates([F)[F

    move-result-object v7

    array-length v1, v7

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenWidth:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenHeight:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenWidth:F

    float-to-int v4, v1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenHeight:F

    float-to-int v5, v1

    move v1, v0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFII)[F

    move-result-object v6

    array-length v0, v6

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->drawingVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->drawingVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private getGridNormCoordinates([F)[F
    .locals 13

    const/16 v11, 0x28

    new-array v5, v11, [F

    const/4 v11, 0x3

    aget v11, p1, v11

    const/4 v12, 0x1

    aget v12, p1, v12

    sub-float/2addr v11, v12

    const/high16 v12, 0x40800000    # 4.0f

    div-float v8, v11, v12

    const/4 v11, 0x2

    aget v11, p1, v11

    const/4 v12, 0x0

    aget v12, p1, v12

    sub-float/2addr v11, v12

    const/high16 v12, 0x40800000    # 4.0f

    div-float v1, v11, v12

    const/4 v2, 0x0

    :goto_0
    const/4 v11, 0x5

    if-ge v2, v11, :cond_0

    const/4 v11, 0x0

    aget v3, p1, v11

    const/4 v11, 0x2

    aget v6, p1, v11

    const/4 v11, 0x1

    aget v11, p1, v11

    int-to-float v12, v2

    mul-float/2addr v12, v8

    add-float v10, v11, v12

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenWidth:F

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenHeight:F

    invoke-static {v3, v10, v11, v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v4

    mul-int/lit8 v11, v2, 0x4

    const/4 v12, 0x0

    aget v12, v4, v12

    aput v12, v5, v11

    mul-int/lit8 v11, v2, 0x4

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    aget v12, v4, v12

    aput v12, v5, v11

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenWidth:F

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenHeight:F

    invoke-static {v6, v10, v11, v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v4

    mul-int/lit8 v11, v2, 0x4

    add-int/lit8 v11, v11, 0x2

    const/4 v12, 0x0

    aget v12, v4, v12

    aput v12, v5, v11

    mul-int/lit8 v11, v2, 0x4

    add-int/lit8 v11, v11, 0x3

    const/4 v12, 0x1

    aget v12, v4, v12

    aput v12, v5, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/4 v11, 0x5

    if-ge v2, v11, :cond_1

    const/4 v11, 0x0

    aget v11, p1, v11

    int-to-float v12, v2

    mul-float/2addr v12, v1

    add-float v9, v11, v12

    const/4 v11, 0x1

    aget v7, p1, v11

    const/4 v11, 0x3

    aget v0, p1, v11

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenWidth:F

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenHeight:F

    invoke-static {v9, v7, v11, v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v4

    mul-int/lit8 v11, v2, 0x4

    add-int/lit8 v11, v11, 0x14

    const/4 v12, 0x0

    aget v12, v4, v12

    aput v12, v5, v11

    mul-int/lit8 v11, v2, 0x4

    add-int/lit8 v11, v11, 0x14

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    aget v12, v4, v12

    aput v12, v5, v11

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenWidth:F

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenHeight:F

    invoke-static {v9, v0, v11, v12}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v4

    mul-int/lit8 v11, v2, 0x4

    add-int/lit8 v11, v11, 0x14

    add-int/lit8 v11, v11, 0x2

    const/4 v12, 0x0

    aget v12, v4, v12

    aput v12, v5, v11

    mul-int/lit8 v11, v2, 0x4

    add-int/lit8 v11, v11, 0x14

    add-int/lit8 v11, v11, 0x3

    const/4 v12, 0x1

    aget v12, v4, v12

    aput v12, v5, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v5
.end method

.method private getHandlerId(IZZ)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    if-eqz p3, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixedRedHandlerId:I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->activeRedHandlerId:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactiveRedHandlerId:I

    goto :goto_0

    :pswitch_1
    if-eqz p3, :cond_2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixedGreenHandlerId:I

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->activeGreenHandlerId:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactiveGreenHandlerId:I

    goto :goto_0

    :pswitch_2
    if-eqz p3, :cond_4

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixedBlueHandlerId:I

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->activeBlueHandlerId:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactiveBlueHandlerId:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x90012
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getParametricZone(FFLcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/high16 v9, 0x437f0000    # 255.0f

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    cmpg-float v7, p2, v7

    if-ltz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    cmpl-float v7, p2, v7

    if-lez v7, :cond_1

    :cond_0
    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->NONE:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    :goto_0
    return-object v5

    :cond_1
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    aget v7, v7, v11

    cmpg-float v7, p1, v7

    if-ltz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    aget v7, v7, v10

    cmpl-float v7, p1, v7

    if-gtz v7, :cond_3

    :cond_2
    if-nez v1, :cond_4

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    aget v7, v7, v10

    cmpg-float v7, p1, v7

    if-ltz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    aget v7, v7, v11

    cmpl-float v7, p1, v7

    if-lez v7, :cond_4

    :cond_3
    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->NONE:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    aget v2, v7, v10

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    aget v6, v7, v11

    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getLowThres()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    sub-float v8, v6, v2

    mul-float/2addr v7, v8

    add-float v3, v7, v2

    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getMidThres()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    sub-float v8, v6, v2

    mul-float/2addr v7, v8

    add-float v4, v7, v2

    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getHighThres()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    sub-float v8, v6, v2

    mul-float/2addr v7, v8

    add-float v0, v7, v2

    if-eqz v1, :cond_8

    cmpl-float v7, p1, v3

    if-ltz v7, :cond_5

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->SHADOWS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    goto :goto_0

    :cond_5
    cmpl-float v7, p1, v4

    if-ltz v7, :cond_6

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->DARKS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    goto :goto_0

    :cond_6
    cmpl-float v7, p1, v0

    if-ltz v7, :cond_7

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->LIGHTS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    goto :goto_0

    :cond_7
    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->HIGHLIGHTS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    goto :goto_0

    :cond_8
    cmpg-float v7, p1, v3

    if-gtz v7, :cond_9

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->SHADOWS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    goto :goto_0

    :cond_9
    cmpg-float v7, p1, v4

    if-gtz v7, :cond_a

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->DARKS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    goto/16 :goto_0

    :cond_a
    cmpg-float v7, p1, v0

    if-gtz v7, :cond_b

    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->LIGHTS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    goto/16 :goto_0

    :cond_b
    sget-object v5, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->HIGHLIGHTS:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    goto/16 :goto_0
.end method

.method private initViewParams(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;)V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v6, 0x1

    const/4 v5, -0x1

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080561

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->line_width:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080560

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->grid_width:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080573

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->stroke_width:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08059e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactive_handler_width:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08059d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactive_handler_height:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080510

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_width:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08050f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_height:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080590

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixed_handler_width:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08058f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixed_handler_height:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08055f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->drag_range:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080562

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inside_area:I

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenWidth:F

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenHeight:F

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0805c3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0805c2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v4, v5

    :goto_1
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenWidth:F

    mul-int v9, v4, v3

    int-to-float v9, v9

    sub-float/2addr v8, v9

    div-float/2addr v8, v11

    aput v8, v7, v12

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    const/4 v8, 0x2

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenWidth:F

    mul-int v10, v4, v3

    int-to-float v10, v10

    add-float/2addr v9, v10

    div-float/2addr v9, v11

    aput v9, v7, v8

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenHeight:F

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800e4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v7, v13

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    aget v8, v8, v13

    int-to-float v9, v2

    sub-float/2addr v8, v9

    aput v8, v7, v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    aget v7, v7, v6

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0805b0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v6

    :cond_1
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080594

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080593

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenWidth:F

    mul-int v9, v4, v1

    int-to-float v9, v9

    sub-float/2addr v8, v9

    div-float/2addr v8, v11

    aput v8, v7, v12

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v8, 0x2

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenWidth:F

    mul-int v10, v4, v1

    int-to-float v10, v10

    add-float/2addr v9, v10

    div-float/2addr v9, v11

    aput v9, v7, v8

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenHeight:F

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v9}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800d9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v7, v13

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    aget v8, v8, v13

    int-to-float v9, v0

    sub-float/2addr v8, v9

    aput v8, v7, v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    aget v7, v7, v6

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0805b0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v6

    :cond_2
    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->thresholdVertexBufferId:I

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridVertexBufferId:I

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->thresholdVertexBufferUpdated:Z

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridVertexBufferUpdated:Z

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactiveRedHandlerId:I

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->activeRedHandlerId:I

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactiveGreenHandlerId:I

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->activeGreenHandlerId:I

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactiveBlueHandlerId:I

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->activeBlueHandlerId:I

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixedRedHandlerId:I

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixedGreenHandlerId:I

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixedBlueHandlerId:I

    iput-boolean v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->handlerLoaded:Z

    sget-object v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->NONE:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    iput-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mCurrZone:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    const/high16 v6, -0x40800000    # -1.0f

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->startTouchY:F

    iput-boolean v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->isTouchDownProcessing:Z

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->currentHandler:I

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->createBuffer()V

    invoke-virtual {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->updateThresholdBuffer(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;)V

    goto/16 :goto_0

    :cond_3
    move v4, v6

    goto/16 :goto_1
.end method

.method private loadHandlerTexture()V
    .locals 8

    const/4 v7, -0x1

    const/16 v6, 0xde1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020206

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactive_handler_width:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactive_handler_height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactive_handler_width:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactive_handler_height:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactiveRedHandlerId:I

    if-ne v2, v7, :cond_0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactiveRedHandlerId:I

    :cond_0
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactiveRedHandlerId:I

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v6, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020204

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_width:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_width:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_height:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->activeRedHandlerId:I

    if-ne v2, v7, :cond_1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->activeRedHandlerId:I

    :cond_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->activeRedHandlerId:I

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v6, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020203

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactive_handler_width:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactive_handler_height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactive_handler_width:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactive_handler_height:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactiveGreenHandlerId:I

    if-ne v2, v7, :cond_2

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactiveGreenHandlerId:I

    :cond_2
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactiveGreenHandlerId:I

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v6, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020201

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_width:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_width:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_height:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->activeGreenHandlerId:I

    if-ne v2, v7, :cond_3

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->activeGreenHandlerId:I

    :cond_3
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->activeGreenHandlerId:I

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v6, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020200

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactive_handler_width:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactive_handler_height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactive_handler_width:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactive_handler_height:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactiveBlueHandlerId:I

    if-ne v2, v7, :cond_4

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactiveBlueHandlerId:I

    :cond_4
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactiveBlueHandlerId:I

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v6, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0201fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_width:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_width:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_height:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->activeBlueHandlerId:I

    if-ne v2, v7, :cond_5

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->activeBlueHandlerId:I

    :cond_5
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->activeBlueHandlerId:I

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v6, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020205

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixed_handler_width:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixed_handler_height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixed_handler_width:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixed_handler_height:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixedRedHandlerId:I

    if-ne v2, v7, :cond_6

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixedRedHandlerId:I

    :cond_6
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixedRedHandlerId:I

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v6, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f020202

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixed_handler_width:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixed_handler_height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixed_handler_width:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixed_handler_height:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixedGreenHandlerId:I

    if-ne v2, v7, :cond_7

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixedGreenHandlerId:I

    :cond_7
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixedGreenHandlerId:I

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v6, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0201ff

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixed_handler_width:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixed_handler_height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixed_handler_width:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixed_handler_height:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixedBlueHandlerId:I

    if-ne v2, v7, :cond_8

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixedBlueHandlerId:I

    :cond_8
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixedBlueHandlerId:I

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v6, v5, v0, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    invoke-static {v6}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->handlerLoaded:Z

    return-void
.end method

.method private moveHandler(IIFF[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)V
    .locals 10

    const v6, 0x90011

    sub-int v6, p1, v6

    aget-object v6, p5, v6

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->getNumberOfFittingPoints()I

    move-result v4

    const v6, 0x90011

    sub-int v6, p1, v6

    aget-object v6, p5, v6

    check-cast v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;->getHandlerPos()[F

    move-result-object v0

    const/high16 v6, 0x41a00000    # 20.0f

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x43800000    # 256.0f

    div-float/2addr v6, v7

    float-to-int v2, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v6, p2, 0x1

    mul-int/lit8 v6, v6, 0x2

    aget v5, v0, v6

    :goto_0
    if-eqz v1, :cond_4

    add-int/lit8 v6, p2, -0x1

    mul-int/lit8 v6, v6, 0x2

    aget v3, v0, v6

    :goto_1
    int-to-float v6, v2

    add-float/2addr v6, v5

    cmpg-float v6, p3, v6

    if-gez v6, :cond_5

    int-to-float v6, v2

    add-float p3, v5, v6

    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    cmpg-float v6, p4, v6

    if-gez v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v7, 0x1

    aget p4, v6, v7

    :cond_1
    :goto_3
    if-eqz p2, :cond_2

    add-int/lit8 v6, v4, -0x1

    if-eq p2, v6, :cond_2

    mul-int/lit8 v6, p2, 0x2

    aput p3, v0, v6

    mul-int/lit8 v6, p2, 0x2

    add-int/lit8 v6, v6, 0x1

    aput p4, v0, v6

    const v6, 0x90011

    sub-int v6, p1, v6

    aget-object v6, p5, v6

    check-cast v6, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;

    invoke-virtual {v6, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;->updateHandlerPos([F)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->curveInterface:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->curveInterface:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;

    invoke-interface {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;->applyDraggingValue()V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v6, p2, -0x1

    mul-int/lit8 v6, v6, 0x2

    aget v5, v0, v6

    goto :goto_0

    :cond_4
    add-int/lit8 v6, p2, 0x1

    mul-int/lit8 v6, v6, 0x2

    aget v3, v0, v6

    goto :goto_1

    :cond_5
    int-to-float v6, v2

    sub-float v6, v3, v6

    cmpl-float v6, p3, v6

    if-lez v6, :cond_0

    int-to-float v6, v2

    sub-float p3, v3, v6

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    cmpl-float v6, p4, v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v7, 0x3

    aget p4, v6, v7

    goto :goto_3
.end method

.method private touchDownHandler(IFF[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)I
    .locals 13

    const/4 v8, -0x1

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_height:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    sub-float/2addr v11, v12

    cmpg-float v11, p3, v11

    if-ltz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v12, 0x3

    aget v11, v11, v12

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_height:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    add-float/2addr v11, v12

    cmpl-float v11, p3, v11

    if-lez v11, :cond_1

    :cond_0
    move v9, v8

    :goto_0
    return v9

    :cond_1
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v12, 0x2

    aget v5, v11, v12

    :goto_1
    if-eqz v4, :cond_4

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v12, 0x0

    aget v10, v11, v12

    :goto_2
    const/high16 v11, 0x41a00000    # 20.0f

    sub-float v12, v10, v5

    mul-float/2addr v11, v12

    const/high16 v12, 0x43800000    # 256.0f

    div-float/2addr v11, v12

    float-to-int v6, v11

    int-to-float v11, v6

    add-float/2addr v11, v5

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_width:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    sub-float/2addr v11, v12

    cmpg-float v11, p2, v11

    if-ltz v11, :cond_2

    int-to-float v11, v6

    sub-float v11, v10, v11

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_width:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    add-float/2addr v11, v12

    cmpl-float v11, p2, v11

    if-gtz v11, :cond_2

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_height:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    sub-float/2addr v11, v12

    cmpg-float v11, p3, v11

    if-ltz v11, :cond_2

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v12, 0x3

    aget v11, v11, v12

    iget v12, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_height:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    add-float/2addr v11, v12

    cmpl-float v11, p3, v11

    if-lez v11, :cond_5

    :cond_2
    move v9, v8

    goto :goto_0

    :cond_3
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v12, 0x0

    aget v5, v11, v12

    goto :goto_1

    :cond_4
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v12, 0x2

    aget v10, v11, v12

    goto :goto_2

    :cond_5
    const v11, 0x90011

    sub-int v11, p1, v11

    aget-object v11, p4, v11

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->getNumberOfFittingPoints()I

    move-result v7

    const v11, 0x90011

    sub-int v11, p1, v11

    aget-object v11, p4, v11

    check-cast v11, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;

    invoke-virtual {v11}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;->getHandlerPos()[F

    move-result-object v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v7, :cond_9

    mul-int/lit8 v11, v3, 0x2

    aget v1, v0, v11

    mul-int/lit8 v11, v3, 0x2

    add-int/lit8 v11, v11, 0x1

    aget v2, v0, v11

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inside_area:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float v11, v1, v11

    cmpl-float v11, p2, v11

    if-lez v11, :cond_c

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inside_area:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    add-float/2addr v11, v1

    cmpg-float v11, p2, v11

    if-gez v11, :cond_c

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inside_area:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sub-float v11, v2, v11

    cmpl-float v11, p3, v11

    if-lez v11, :cond_c

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inside_area:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    add-float/2addr v11, v2

    cmpg-float v11, p3, v11

    if-gez v11, :cond_c

    if-eqz v3, :cond_c

    add-int/lit8 v11, v7, -0x1

    if-eq v3, v11, :cond_c

    int-to-float v11, v6

    add-float/2addr v11, v5

    cmpg-float v11, p2, v11

    if-gez v11, :cond_a

    int-to-float v11, v6

    add-float p2, v5, v11

    :cond_6
    :goto_4
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    cmpg-float v11, p3, v11

    if-gez v11, :cond_b

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v12, 0x1

    aget p3, v11, v12

    :cond_7
    :goto_5
    mul-int/lit8 v11, v3, 0x2

    aput p2, v0, v11

    mul-int/lit8 v11, v3, 0x2

    add-int/lit8 v11, v11, 0x1

    aput p3, v0, v11

    const v11, 0x90011

    sub-int v11, p1, v11

    aget-object v11, p4, v11

    check-cast v11, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;

    invoke-virtual {v11, v0}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;->updateHandlerPos([F)V

    const v11, 0x90011

    sub-int v11, p1, v11

    aget-object v11, p4, v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;->updateModifiedState(Z)V

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->curveInterface:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->curveInterface:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;

    invoke-interface {v11}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;->applyDraggingValue()V

    :cond_8
    move v8, v3

    :cond_9
    move v9, v8

    goto/16 :goto_0

    :cond_a
    int-to-float v11, v6

    sub-float v11, v10, v11

    cmpl-float v11, p2, v11

    if-lez v11, :cond_6

    int-to-float v11, v6

    sub-float p2, v10, v11

    goto :goto_4

    :cond_b
    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v12, 0x3

    aget v11, v11, v12

    cmpl-float v11, p3, v11

    if-lez v11, :cond_7

    iget-object v11, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v12, 0x3

    aget p3, v11, v12

    goto :goto_5

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3
.end method

.method private updateHandlerPosOnOrientationChange([Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)V
    .locals 18

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v11

    const/4 v14, 0x4

    new-array v6, v14, [F

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080594

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080593

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v14}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v13, -0x1

    :goto_0
    const/4 v14, 0x0

    mul-int v15, v13, v2

    sub-int v15, v12, v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    aput v15, v6, v14

    const/4 v14, 0x2

    mul-int v15, v13, v2

    add-int/2addr v15, v12

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    aput v15, v6, v14

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0800d9

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    sub-int v15, v11, v15

    int-to-float v15, v15

    aput v15, v6, v14

    const/4 v14, 0x1

    const/4 v15, 0x3

    aget v15, v6, v15

    int-to-float v0, v1

    move/from16 v16, v0

    sub-float v15, v15, v16

    aput v15, v6, v14

    const/4 v14, 0x1

    aget v14, v6, v14

    const/4 v15, 0x0

    cmpg-float v14, v14, v15

    if-gez v14, :cond_2

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v15}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0805b0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    int-to-float v15, v15

    aput v15, v6, v14

    :cond_2
    const v4, 0x90012

    :goto_1
    const v14, 0x90014

    if-gt v4, v14, :cond_0

    const v14, 0x90011

    sub-int v14, v4, v14

    aget-object v10, p1, v14

    check-cast v10, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;

    if-nez v10, :cond_4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v13, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;->getNumberOfFittingPoints()I

    move-result v9

    invoke-virtual {v10}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;->getHandlerPos()[F

    move-result-object v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v9, :cond_5

    mul-int/lit8 v14, v5, 0x2

    aget v14, v3, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/16 v16, 0x0

    aget v15, v15, v16

    sub-float/2addr v14, v15

    const/4 v15, 0x2

    aget v15, v6, v15

    const/16 v16, 0x0

    aget v16, v6, v16

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/16 v16, 0x2

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    sub-float v15, v15, v16

    div-float/2addr v14, v15

    const/4 v15, 0x0

    aget v15, v6, v15

    add-float v7, v14, v15

    mul-int/lit8 v14, v5, 0x2

    add-int/lit8 v14, v14, 0x1

    aget v14, v3, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/16 v16, 0x1

    aget v15, v15, v16

    sub-float/2addr v14, v15

    const/4 v15, 0x3

    aget v15, v6, v15

    const/16 v16, 0x1

    aget v16, v6, v16

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/16 v16, 0x3

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    sub-float v15, v15, v16

    div-float/2addr v14, v15

    const/4 v15, 0x1

    aget v15, v6, v15

    add-float v8, v14, v15

    mul-int/lit8 v14, v5, 0x2

    aput v7, v3, v14

    mul-int/lit8 v14, v5, 0x2

    add-int/lit8 v14, v14, 0x1

    aput v8, v3, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v10, v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PointCurveObject;->updateHandlerPos([F)V

    goto/16 :goto_2
.end method

.method private updateParametricInfo(FLcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;)V
    .locals 6

    const/16 v2, 0x64

    const/16 v3, -0x64

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->drag_range:I

    int-to-float v4, v4

    div-float v4, p1, v4

    float-to-int v0, v4

    const/4 v1, 0x0

    sget-object v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$1;->$SwitchMap$com$sec$android$mimage$photoretouching$lpe$states$Advance$PARAMETRIC_ZONE:[I

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mCurrZone:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mCurrZone:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    invoke-virtual {p2, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->updateValue(ILcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;)V

    return-void

    :pswitch_0
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->startShadows:I

    add-int/2addr v4, v0

    if-le v4, v2, :cond_0

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->startShadows:I

    add-int/2addr v2, v0

    if-ge v2, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->startShadows:I

    add-int v1, v2, v0

    goto :goto_1

    :pswitch_1
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->startDarks:I

    add-int/2addr v4, v0

    if-le v4, v2, :cond_2

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->startDarks:I

    add-int/2addr v2, v0

    if-ge v2, v3, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->startDarks:I

    add-int v1, v2, v0

    goto :goto_2

    :pswitch_2
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->startLights:I

    add-int/2addr v4, v0

    if-le v4, v2, :cond_4

    move v1, v2

    :goto_3
    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->startLights:I

    add-int/2addr v2, v0

    if-ge v2, v3, :cond_5

    move v1, v3

    goto :goto_3

    :cond_5
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->startLights:I

    add-int v1, v2, v0

    goto :goto_3

    :pswitch_3
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->startHighLights:I

    add-int/2addr v4, v0

    if-le v4, v2, :cond_6

    move v1, v2

    :goto_4
    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->startHighLights:I

    add-int/2addr v2, v0

    if-ge v2, v3, :cond_7

    move v1, v3

    goto :goto_4

    :cond_7
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->startHighLights:I

    add-int v1, v2, v0

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public draw(III)V
    .locals 34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v31

    and-int/lit8 v4, p1, -0x10

    const v5, 0x90010

    if-ne v4, v5, :cond_10

    shr-int/lit8 v4, p3, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v10, v4, v5

    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v14, v4, v5

    shr-int/lit8 v4, p3, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v12, v4, v5

    move/from16 v0, p3

    and-int/lit16 v4, v0, 0xff

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v11, v4, v5

    const v4, 0x90011

    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    iget v4, v9, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->thresholdVertexBufferId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v32, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    const/4 v4, 0x0

    aget v4, v32, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->thresholdVertexBufferId:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->thresholdVertexBufferUpdated:Z

    :cond_0
    const v4, 0x8892

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->thresholdVertexBufferId:I

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->thresholdVertexBufferUpdated:Z

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->thresholdVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const v4, 0x8892

    const/16 v5, 0x30

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->thresholdVertexBuffer:Ljava/nio/FloatBuffer;

    const v7, 0x88e4

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->thresholdVertexBufferUpdated:Z

    :cond_1
    const-string v4, "u_Matrix"

    invoke-virtual {v9, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v25

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v6

    const/4 v7, 0x0

    move/from16 v0, v25

    invoke-static {v0, v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v4, "a_Position"

    invoke-virtual {v9, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v4, "u_Color"

    invoke-virtual {v9, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v13

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x3e99999a    # 0.3f

    invoke-static {v13, v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->grid_width:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-static {v4}, Landroid/opengl/GLES20;->glLineWidth(F)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v13, v14, v12, v11, v10}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->grid_width:I

    int-to-float v4, v4

    invoke-static {v4}, Landroid/opengl/GLES20;->glLineWidth(F)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const v4, 0x8892

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :goto_0
    move-object/from16 v0, v16

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v4, "a_Position"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->drawingVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->drawingVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2
    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->drawingVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v4, "u_Matrix"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v25

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v6

    const/4 v7, 0x0

    move/from16 v0, v25

    invoke-static {v0, v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v4, "u_PointCount"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v15

    move/from16 v0, p2

    invoke-static {v15, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v4, "u_FittingPoint"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fittingPoints:[F

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fittingPoints:[F

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v0, v1, v4, v5}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    :cond_3
    const-string v4, "u_CurveParameter"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v26

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->curveParameters:[F

    const/4 v6, 0x0

    move/from16 v0, v26

    invoke-static {v0, v4, v5, v6}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    const-string v4, "u_LineWidth"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->line_width:I

    int-to-float v4, v4

    move/from16 v0, v23

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v4, "u_StrokeWidth"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->stroke_width:I

    int-to-float v4, v4

    move/from16 v0, v30

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v4, "u_ScreenWidth"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenWidth:F

    move/from16 v0, v29

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v4, "u_ScreenHeight"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenHeight:F

    move/from16 v0, v28

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v4, "u_Color"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v13

    packed-switch p1, :pswitch_data_0

    const/4 v4, 0x4

    new-array v0, v4, [F

    move-object/from16 v24, v0

    const/4 v4, 0x0

    aput v14, v24, v4

    const/4 v4, 0x1

    aput v12, v24, v4

    const/4 v4, 0x2

    aput v11, v24, v4

    const/4 v4, 0x3

    aput v10, v24, v4

    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-static {v13, v4, v0, v5}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v21

    const v4, 0x90011

    move/from16 v0, p1

    if-ne v0, v4, :cond_b

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    const/4 v5, 0x2

    aget v22, v4, v5

    :goto_2
    move/from16 v0, v22

    float-to-int v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenHeight:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->line_width:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    const/16 v33, 0x1

    aget v8, v8, v33

    sub-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->line_width:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glScissor(IIII)V

    :goto_3
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenWidth:F

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenHeight:F

    float-to-int v7, v7

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glScissor(IIII)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    const v4, 0x90011

    move/from16 v0, p1

    if-eq v0, v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->handlerVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->handlerLoaded:Z

    if-nez v4, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->loadHandlerTexture()V

    :cond_4
    :try_start_0
    move-object/from16 v0, v31

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v4, "a_Position"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->handlerVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v4, "a_TextureCoordinate"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p2 .. p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getTextureBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v4, "u_Sampler"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v27

    const/4 v4, 0x0

    move/from16 v0, v27

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v4, "u_Matrix"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v25

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v6

    const/4 v7, 0x0

    move/from16 v0, v25

    invoke-static {v0, v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v20, 0x0

    :goto_4
    move/from16 v0, v20

    move/from16 v1, p2

    if-ge v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->currentHandler:I

    move/from16 v0, v20

    if-ne v0, v4, :cond_d

    const/4 v4, 0x1

    move v5, v4

    :goto_5
    if-eqz v20, :cond_5

    add-int/lit8 v4, p2, -0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_e

    :cond_5
    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->getHandlerId(IZZ)I

    move-result v19

    const/4 v4, -0x1

    move/from16 v0, v19

    if-eq v0, v4, :cond_6

    const/16 v4, 0xde1

    move/from16 v0, v19

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v4, 0x4

    mul-int/lit8 v5, v20, 0x6

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/16 v4, 0xde1

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    :cond_7
    iget v4, v9, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridVertexBufferId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v32, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    const/4 v4, 0x0

    aget v4, v32, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridVertexBufferId:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridVertexBufferUpdated:Z

    :cond_8
    const v4, 0x8892

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridVertexBufferId:I

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridVertexBufferUpdated:Z

    if-eqz v4, :cond_9

    const v4, 0x8892

    const/16 v5, 0xa0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridVertexBuffer:Ljava/nio/FloatBuffer;

    const v7, 0x88e4

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridVertexBufferUpdated:Z

    :cond_9
    const-string v4, "u_Matrix"

    invoke-virtual {v9, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v25

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v6

    const/4 v7, 0x0

    move/from16 v0, v25

    invoke-static {v0, v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string v4, "a_Position"

    invoke-virtual {v9, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v4, "u_Color"

    invoke-virtual {v9, v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v13

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x3e99999a    # 0.3f

    invoke-static {v13, v4, v5, v6, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->grid_width:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-static {v4}, Landroid/opengl/GLES20;->glLineWidth(F)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v13, v14, v12, v11, v10}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->grid_width:I

    int-to-float v4, v4

    invoke-static {v4}, Landroid/opengl/GLES20;->glLineWidth(F)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const v4, 0x8892

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    goto/16 :goto_0

    :pswitch_0
    const/4 v4, 0x4

    new-array v0, v4, [F

    move-object/from16 v24, v0

    const/4 v4, 0x0

    aput v14, v24, v4

    const/4 v4, 0x1

    aput v12, v24, v4

    const/4 v4, 0x2

    aput v11, v24, v4

    const/4 v4, 0x3

    aput v10, v24, v4

    goto/16 :goto_1

    :pswitch_1
    const/4 v4, 0x4

    new-array v0, v4, [F

    move-object/from16 v24, v0

    fill-array-data v24, :array_0

    goto/16 :goto_1

    :pswitch_2
    const/4 v4, 0x4

    new-array v0, v4, [F

    move-object/from16 v24, v0

    fill-array-data v24, :array_1

    goto/16 :goto_1

    :pswitch_3
    const/4 v4, 0x4

    new-array v0, v4, [F

    move-object/from16 v24, v0

    fill-array-data v24, :array_2

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    const/4 v5, 0x0

    aget v22, v4, v5

    goto/16 :goto_2

    :cond_b
    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v5, 0x2

    aget v22, v4, v5

    :goto_7
    move/from16 v0, v22

    float-to-int v4, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenHeight:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->line_width:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/16 v33, 0x1

    aget v8, v8, v33

    sub-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->line_width:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glScissor(IIII)V

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridBound:[F

    const/4 v5, 0x0

    aget v22, v4, v5

    goto :goto_7

    :cond_d
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_5

    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_f
    :try_start_1
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_10
    :goto_8
    return-void

    :catch_0
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x90011
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0x3f6bebec
        0x3e24a4a5
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f24a4a5
        0x3e8c8c8d
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3e9c9c9d
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public free()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->thresholdVertexBuffer:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->gridVertexBuffer:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->drawingVertexBuffer:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->handlerVertexBuffer:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fittingPoints:[F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->curveParameters:[F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->curveInterface:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;

    return-void
.end method

.method public getNormalizedHandlerPos(I[F)[F
    .locals 7

    mul-int/lit8 v3, p1, 0x2

    new-array v2, v3, [F

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    mul-int/lit8 v3, v0, 0x2

    aget v3, p2, v3

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v4, p2, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenWidth:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenHeight:F

    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v1

    mul-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    aget v4, v1, v4

    aput v4, v2, v3

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    aget v4, v1, v4

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getParametricBound()[I
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    aget v1, v1, v2

    float-to-int v1, v1

    aput v1, v0, v2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    aget v1, v1, v3

    float-to-int v1, v1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    aget v1, v1, v4

    float-to-int v1, v1

    aput v1, v0, v4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    aget v1, v1, v5

    float-to-int v1, v1

    aput v1, v0, v5

    return-object v0
.end method

.method public onOrientationChange(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->updateHandlerPosOnOrientationChange([Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)V

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->initViewParams(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->curveInterface:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->curveInterface:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;->applyDraggingValue()V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->updateHandlerPosOnOrientationChange([Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)V

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->initViewParams(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->curveInterface:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->curveInterface:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;->applyDraggingValue()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;ILcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)V
    .locals 7

    const/4 v1, -0x1

    const v0, 0x90011

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->isTouchDownProcessing:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->startTouchY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->startTouchY:F

    invoke-direct {p0, v0, v1, p3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->getParametricZone(FFLcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;)Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mCurrZone:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mCurrZone:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->NONE:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    if-eq v0, v1, :cond_1

    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getShadows()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->startShadows:I

    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getDarks()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->startDarks:I

    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getLights()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->startLights:I

    invoke-virtual {p3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getHighlights()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->startHighLights:I

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->isTouchDownProcessing:Z

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->isTouchDownProcessing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mCurrZone:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->NONE:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    neg-float v0, v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->startTouchY:F

    add-float v6, v0, v1

    invoke-direct {p0, v6, p3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->updateParametricInfo(FLcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->curveInterface:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->curveInterface:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve$UpdateCurveInterface;->applyDraggingValue()V

    goto :goto_0

    :pswitch_2
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->startTouchY:F

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;->NONE:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->mCurrZone:Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$PARAMETRIC_ZONE;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2, v3, v4, p4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->touchDownHandler(IFF[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->currentHandler:I

    goto :goto_0

    :pswitch_4
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->currentHandler:I

    if-eq v0, v1, :cond_0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->currentHandler:I

    move-object v0, p0

    move v1, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->moveHandler(IIFF[Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$CurveObject;)V

    goto/16 :goto_0

    :pswitch_5
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->currentHandler:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCurveParameters([F)V
    .locals 1

    const/16 v0, 0x14

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->curveParameters:[F

    return-void
.end method

.method public setFittingPoints([F)V
    .locals 1

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fittingPoints:[F

    return-void
.end method

.method public updateHandlerBuffer(I[F)V
    .locals 11

    const/4 v10, 0x0

    mul-int/lit8 v0, p1, 0x6

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->handlerVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->handlerVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v8, 0x0

    :goto_0
    if-ge v8, p1, :cond_6

    if-eqz v8, :cond_0

    add-int/lit8 v0, p1, -0x1

    if-ne v8, v0, :cond_2

    :cond_0
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixed_handler_width:I

    :goto_1
    if-eqz v8, :cond_1

    add-int/lit8 v0, p1, -0x1

    if-ne v8, v0, :cond_4

    :cond_1
    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->fixed_handler_height:I

    :goto_2
    mul-int/lit8 v0, v8, 0x2

    aget v0, p2, v0

    div-int/lit8 v1, v7, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    mul-int/lit8 v1, v8, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v1, p2, v1

    div-int/lit8 v2, v6, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    int-to-float v2, v7

    int-to-float v3, v6

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenWidth:F

    float-to-int v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenHeight:F

    float-to-int v5, v5

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFII)[F

    move-result-object v9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->handlerVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->currentHandler:I

    if-ne v8, v0, :cond_3

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_width:I

    goto :goto_1

    :cond_3
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactive_handler_width:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->currentHandler:I

    if-ne v8, v0, :cond_5

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->active_handler_height:I

    goto :goto_2

    :cond_5
    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->inactive_handler_height:I

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->handlerVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public updateThresholdBuffer(Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;)V
    .locals 11

    const/16 v9, 0xc

    new-array v7, v9, [F

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    const/4 v10, 0x0

    aget v2, v9, v10

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    const/4 v10, 0x1

    aget v8, v9, v10

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    const/4 v10, 0x2

    aget v6, v9, v10

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->parametricBound:[F

    const/4 v10, 0x3

    aget v0, v9, v10

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getLowThres()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x437f0000    # 255.0f

    div-float/2addr v9, v10

    sub-float v10, v6, v2

    mul-float/2addr v9, v10

    add-float v3, v9, v2

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getMidThres()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x437f0000    # 255.0f

    div-float/2addr v9, v10

    sub-float v10, v6, v2

    mul-float/2addr v9, v10

    add-float v4, v9, v2

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Advance$ParametricCurveInfo;->getHighThres()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x437f0000    # 255.0f

    div-float/2addr v9, v10

    sub-float v10, v6, v2

    mul-float/2addr v9, v10

    add-float v1, v9, v2

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenWidth:F

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenHeight:F

    invoke-static {v3, v8, v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v5, v10

    aput v10, v7, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v5, v10

    aput v10, v7, v9

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenWidth:F

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenHeight:F

    invoke-static {v3, v0, v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v5

    const/4 v9, 0x2

    const/4 v10, 0x0

    aget v10, v5, v10

    aput v10, v7, v9

    const/4 v9, 0x3

    const/4 v10, 0x1

    aget v10, v5, v10

    aput v10, v7, v9

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenWidth:F

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenHeight:F

    invoke-static {v4, v8, v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v5

    const/4 v9, 0x4

    const/4 v10, 0x0

    aget v10, v5, v10

    aput v10, v7, v9

    const/4 v9, 0x5

    const/4 v10, 0x1

    aget v10, v5, v10

    aput v10, v7, v9

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenWidth:F

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenHeight:F

    invoke-static {v4, v0, v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v5

    const/4 v9, 0x6

    const/4 v10, 0x0

    aget v10, v5, v10

    aput v10, v7, v9

    const/4 v9, 0x7

    const/4 v10, 0x1

    aget v10, v5, v10

    aput v10, v7, v9

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenWidth:F

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenHeight:F

    invoke-static {v1, v8, v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v5

    const/16 v9, 0x8

    const/4 v10, 0x0

    aget v10, v5, v10

    aput v10, v7, v9

    const/16 v9, 0x9

    const/4 v10, 0x1

    aget v10, v5, v10

    aput v10, v7, v9

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenWidth:F

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->screenHeight:F

    invoke-static {v1, v0, v9, v10}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->screenToNorm(FFFF)[F

    move-result-object v5

    const/16 v9, 0xa

    const/4 v10, 0x0

    aget v10, v5, v10

    aput v10, v7, v9

    const/16 v9, 0xb

    const/4 v10, 0x1

    aget v10, v5, v10

    aput v10, v7, v9

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->thresholdVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->thresholdVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->thresholdVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLToneCurve;->thresholdVertexBufferUpdated:Z

    return-void
.end method
