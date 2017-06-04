.class public Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;
.super Ljava/lang/Object;
.source "GLES11Canvas.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glrenderer/GLCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;,
        Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;
    }
.end annotation


# static fields
.field private static final BOX_COORDINATES:[F

.field private static final CIRCLE_COORDINATES:[F

.field private static final CIRCLE_VERTEX_COUNT:I = 0x90

.field private static final CUBIC_BEZIER_BODER_COLORS:[F

.field private static final CUBIC_BEZIER_BODER_COORDINATES:[F

.field private static final CUBIC_BEZIER_BORDER_THINKNESS:F = 3.0f

.field private static final CUBIC_BEZIER_COORDINATES:[F

.field private static final CUBIC_BEZIER_VERTEX_COUNT:I = 0x16

.field private static final MSCALE_X:I = 0x0

.field private static final MSCALE_Y:I = 0x5

.field private static final MSKEW_X:I = 0x4

.field private static final MSKEW_Y:I = 0x1

.field private static final OFFSET_CIRCLE:I = 0x0

.field private static final OFFSET_CUBIC_BEZIER:I = 0x0

.field private static final OFFSET_DRAW_LINE:I = 0x4

.field private static final OFFSET_DRAW_RECT:I = 0x6

.field private static final OFFSET_FILL_RECT:I = 0x0

.field private static final OPAQUE_ALPHA:F = 0.95f

.field private static final TAG:Ljava/lang/String; = "GLCanvasImp"

.field private static final borderColor:[F


# instance fields
.field private cubicBezierBorderBuffer:Ljava/nio/FloatBuffer;

.field private cubicBezierBorderColorsBuffer:Ljava/nio/FloatBuffer;

.field private cubicBezierBuffer:Ljava/nio/FloatBuffer;

.field private mAlpha:F

.field private mAnimationTime:J

.field private mBlendEnabled:Z

.field private final mBoxCoords:I

.field private mCircleCoords:I

.field private final mClipRect:Landroid/graphics/Rect;

.field private mCountDrawCircle:I

.field private mCountDrawCubicBezierCurve:I

.field private mCountDrawLine:I

.field private mCountDrawMesh:I

.field private mCountFillRect:I

.field private mCountTextureOES:I

.field private mCountTextureRect:I

.field private mCubicBezierBorderColors:I

.field private mCubicBezierBorderCoords:I

.field private mCubicBezierCoords:I

.field private final mDeleteBuffers:Lcom/sec/android/gallery3d/util/IntArray;

.field private final mDrawTextureSourceRect:Landroid/graphics/RectF;

.field private final mDrawTextureTargetRect:Landroid/graphics/RectF;

.field private final mFrameBuffer:[I

.field private final mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mGLId:Lcom/sec/android/gallery3d/glrenderer/GLId;

.field private final mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

.field private final mMapPointsBuffer:[F

.field private final mMatrixValues:[F

.field private mRecycledRestoreAction:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

.field private final mRestoreStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;",
            ">;"
        }
    .end annotation
.end field

.field private final mRootView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private final mTargetStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/glrenderer/RawTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTexture:Lcom/sec/android/gallery3d/glrenderer/RawTexture;

.field private final mTempMatrix:[F

.field private final mTextureColor:[F

.field private final mTextureId:[I

.field private final mTextureMatrixValues:[F

.field private final mUnboundTextures:Lcom/sec/android/gallery3d/util/IntArray;

.field private mUploadedCount:I

.field private final sCropRect:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->BOX_COORDINATES:[F

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->makeCircleCoords()[F

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CIRCLE_COORDINATES:[F

    const/16 v0, 0x2c

    new-array v0, v0, [F

    sput-object v0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    const/16 v0, 0x58

    new-array v0, v0, [F

    sput-object v0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    const/16 v0, 0xb0

    new-array v0, v0, [F

    sput-object v0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COLORS:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->borderColor:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL11;Lcom/sec/android/gallery3d/glcore/LibGLRootView;)V
    .locals 9

    const/16 v8, 0x1406

    const/4 v7, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x10

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/16 v3, 0x10

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/16 v3, 0xa

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMapPointsBuffer:[F

    const/4 v3, 0x4

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTextureColor:[F

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTargetStack:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    const/16 v3, 0x20

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTempMatrix:[F

    new-instance v3, Lcom/sec/android/gallery3d/util/IntArray;

    invoke-direct {v3}, Lcom/sec/android/gallery3d/util/IntArray;-><init>()V

    iput-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/sec/android/gallery3d/util/IntArray;

    new-instance v3, Lcom/sec/android/gallery3d/util/IntArray;

    invoke-direct {v3}, Lcom/sec/android/gallery3d/util/IntArray;-><init>()V

    iput-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mDeleteBuffers:Lcom/sec/android/gallery3d/util/IntArray;

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    new-array v3, v5, [I

    iput-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mFrameBuffer:[I

    const/4 v3, 0x4

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    new-instance v3, Lcom/sec/android/gallery3d/glrenderer/GLES11IdImpl;

    invoke-direct {v3}, Lcom/sec/android/gallery3d/glrenderer/GLES11IdImpl;-><init>()V

    iput-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/sec/android/gallery3d/glrenderer/GLId;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mClipRect:Landroid/graphics/Rect;

    new-array v3, v5, [I

    iput-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTextureId:[I

    iput v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCircleCoords:I

    iput v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierCoords:I

    iput v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierBorderCoords:I

    iput v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierBorderColors:I

    iput-object p1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    new-instance v3, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-direct {v3, p1, p2}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;-><init>(Ljavax/microedition/khronos/opengles/GL11;Lcom/sec/android/gallery3d/glcore/LibGLRootView;)V

    iput-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->initCircle(Ljavax/microedition/khronos/opengles/GL11;)V

    sget-object v3, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->BOX_COORDINATES:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x20

    div-int/lit8 v1, v3, 0x8

    invoke-static {v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    sget-object v3, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->BOX_COORDINATES:[F

    sget-object v4, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->BOX_COORDINATES:[F

    array-length v4, v4

    invoke-virtual {v2, v3, v6, v4}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-array v0, v5, [I

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/sec/android/gallery3d/glrenderer/GLId;

    invoke-interface {v3, v5, v0, v6}, Lcom/sec/android/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    aget v3, v0, v6

    iput v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mBoxCoords:I

    const v3, 0x8892

    iget v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mBoxCoords:I

    invoke-interface {p1, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    const v3, 0x8892

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e4

    invoke-interface {p1, v3, v4, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-interface {p1, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    invoke-interface {p1, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    const v3, 0x84c1

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    invoke-interface {p1, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    const v3, 0x84c0

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    const v3, 0x8078

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    const/16 v3, 0xb71

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    iput-object p2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mRootView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;)Ljavax/microedition/khronos/opengles/GL11;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;)[F
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    return-object v0
.end method

.method private static allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private bindTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)Z
    .locals 3

    invoke-virtual {p1, p0}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->onBind(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureTarget(I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private calcCubicBezierBorderColors()V
    .locals 15

    sget-object v3, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COLORS:[F

    const/4 v6, 0x0

    const/16 v9, 0x15

    sget-object v12, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->borderColor:[F

    const/4 v13, 0x0

    aget v10, v12, v13

    sget-object v12, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->borderColor:[F

    const/4 v13, 0x1

    aget v4, v12, v13

    sget-object v12, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->borderColor:[F

    const/4 v13, 0x2

    aget v2, v12, v13

    const/4 v1, 0x0

    sget-object v12, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->borderColor:[F

    const/4 v13, 0x3

    aget v0, v12, v13

    const/4 v5, 0x0

    move v7, v6

    :goto_0
    if-ge v5, v9, :cond_0

    add-int/lit8 v6, v7, 0x1

    aput v10, v3, v7

    add-int/lit8 v7, v6, 0x1

    aput v4, v3, v6

    add-int/lit8 v6, v7, 0x1

    aput v2, v3, v7

    add-int/lit8 v7, v6, 0x1

    aput v1, v3, v6

    add-int/lit8 v6, v7, 0x1

    aput v10, v3, v7

    add-int/lit8 v7, v6, 0x1

    aput v4, v3, v6

    add-int/lit8 v6, v7, 0x1

    aput v2, v3, v7

    add-int/lit8 v7, v6, 0x1

    aput v0, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v7, 0x1

    const/4 v12, 0x0

    aget v12, v3, v12

    aput v12, v3, v7

    add-int/lit8 v7, v6, 0x1

    const/4 v12, 0x1

    aget v12, v3, v12

    aput v12, v3, v6

    add-int/lit8 v6, v7, 0x1

    const/4 v12, 0x2

    aget v12, v3, v12

    aput v12, v3, v7

    add-int/lit8 v7, v6, 0x1

    const/4 v12, 0x3

    aget v12, v3, v12

    aput v12, v3, v6

    add-int/lit8 v6, v7, 0x1

    const/4 v12, 0x4

    aget v12, v3, v12

    aput v12, v3, v7

    add-int/lit8 v7, v6, 0x1

    const/4 v12, 0x5

    aget v12, v3, v12

    aput v12, v3, v6

    add-int/lit8 v6, v7, 0x1

    const/4 v12, 0x6

    aget v12, v3, v12

    aput v12, v3, v7

    const/4 v12, 0x7

    aget v12, v3, v12

    aput v12, v3, v6

    iget-object v12, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderColorsBuffer:Ljava/nio/FloatBuffer;

    if-nez v12, :cond_2

    sget-object v12, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COLORS:[F

    array-length v12, v12

    mul-int/lit8 v12, v12, 0x20

    div-int/lit8 v12, v12, 0x8

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderColorsBuffer:Ljava/nio/FloatBuffer;

    iget-object v12, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderColorsBuffer:Ljava/nio/FloatBuffer;

    sget-object v13, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COLORS:[F

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v12, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderColorsBuffer:Ljava/nio/FloatBuffer;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    iget v12, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierBorderColors:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    const/4 v12, 0x1

    new-array v8, v12, [I

    iget-object v12, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/sec/android/gallery3d/glrenderer/GLId;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface {v12, v13, v8, v14}, Lcom/sec/android/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    const/4 v12, 0x0

    aget v12, v8, v12

    iput v12, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierBorderColors:I

    :cond_1
    return-void

    :cond_2
    iget-object v12, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderColorsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v12}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v12, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderColorsBuffer:Ljava/nio/FloatBuffer;

    sget-object v13, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COLORS:[F

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v12, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderColorsBuffer:Ljava/nio/FloatBuffer;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1
.end method

.method private calcCubicBezierBorderCoords()V
    .locals 12

    const/16 v11, 0x2b

    const/16 v10, 0x2a

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v3, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    sget-object v4, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    aget v4, v4, v7

    aput v4, v3, v7

    sget-object v3, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    sget-object v4, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    aget v4, v4, v8

    add-float/2addr v4, v9

    aput v4, v3, v8

    sget-object v3, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    const/4 v4, 0x2

    sget-object v5, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    aget v5, v5, v7

    aput v5, v3, v4

    sget-object v3, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    const/4 v4, 0x3

    sget-object v5, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    aget v5, v5, v8

    aput v5, v3, v4

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x14

    if-ge v0, v3, :cond_0

    sget-object v3, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x4

    sget-object v5, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x2

    aget v5, v5, v6

    aput v5, v3, v4

    sget-object v3, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x5

    sget-object v5, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x3

    aget v5, v5, v6

    add-float/2addr v5, v9

    aput v5, v3, v4

    sget-object v3, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x6

    sget-object v5, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x2

    aget v5, v5, v6

    aput v5, v3, v4

    sget-object v3, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x7

    sget-object v5, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x3

    aget v5, v5, v6

    aput v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    const/16 v4, 0x54

    sget-object v5, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    aget v5, v5, v10

    aput v5, v3, v4

    sget-object v3, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    const/16 v4, 0x55

    sget-object v5, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    aget v5, v5, v11

    add-float/2addr v5, v9

    aput v5, v3, v4

    sget-object v3, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    const/16 v4, 0x56

    sget-object v5, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    aget v5, v5, v10

    aput v5, v3, v4

    sget-object v3, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    const/16 v4, 0x57

    sget-object v5, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    aget v5, v5, v11

    aput v5, v3, v4

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderBuffer:Ljava/nio/FloatBuffer;

    if-nez v3, :cond_2

    sget-object v3, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x20

    div-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderBuffer:Ljava/nio/FloatBuffer;

    sget-object v4, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    iget v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierBorderCoords:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    new-array v1, v8, [I

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/sec/android/gallery3d/glrenderer/GLId;

    invoke-interface {v3, v8, v1, v7}, Lcom/sec/android/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    aget v3, v1, v7

    iput v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierBorderCoords:I

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderBuffer:Ljava/nio/FloatBuffer;

    sget-object v4, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1
.end method

.method private calcCubicBezierCoords(FFFFFFFFFFFF)V
    .locals 9

    sget-object v4, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    const/4 v5, 0x0

    aput p1, v4, v5

    sget-object v4, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    const/4 v5, 0x1

    aput p2, v4, v5

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x14

    if-ge v0, v4, :cond_0

    int-to-float v4, v0

    const/high16 v5, 0x41980000    # 19.0f

    div-float v2, v4, v5

    sget-object v4, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v2

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v2

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v2

    mul-float/2addr v6, v7

    mul-float/2addr v6, p3

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v2

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v2

    mul-float/2addr v7, v8

    mul-float/2addr v7, v2

    mul-float/2addr v7, p5

    add-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v2

    mul-float/2addr v7, v8

    mul-float/2addr v7, v2

    mul-float/2addr v7, v2

    mul-float v7, v7, p7

    add-float/2addr v6, v7

    mul-float v7, v2, v2

    mul-float/2addr v7, v2

    mul-float v7, v7, p9

    add-float/2addr v6, v7

    aput v6, v4, v5

    sget-object v4, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v2

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v2

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v2

    mul-float/2addr v6, v7

    mul-float/2addr v6, p4

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v2

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v2

    mul-float/2addr v7, v8

    mul-float/2addr v7, v2

    mul-float/2addr v7, p6

    add-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v2

    mul-float/2addr v7, v8

    mul-float/2addr v7, v2

    mul-float/2addr v7, v2

    mul-float v7, v7, p8

    add-float/2addr v6, v7

    mul-float v7, v2, v2

    mul-float/2addr v7, v2

    mul-float v7, v7, p10

    add-float/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    const/16 v5, 0x2a

    aput p11, v4, v5

    sget-object v4, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    const/16 v5, 0x2b

    aput p12, v4, v5

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBuffer:Ljava/nio/FloatBuffer;

    if-nez v4, :cond_2

    sget-object v4, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x20

    div-int/lit8 v4, v4, 0x8

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBuffer:Ljava/nio/FloatBuffer;

    sget-object v5, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    iget v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierCoords:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    new-array v1, v4, [I

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/sec/android/gallery3d/glrenderer/GLId;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v6}, Lcom/sec/android/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    const/4 v4, 0x0

    aget v4, v1, v4

    iput v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierCoords:I

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBuffer:Ljava/nio/FloatBuffer;

    sget-object v5, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1
.end method

.method private static checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V
    .locals 5

    const v2, 0x8d40

    invoke-interface {p0, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result v1

    const v2, 0x8cd5

    if-eq v1, v2, :cond_0

    const-string/jumbo v0, ""

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    const-string/jumbo v0, "FRAMEBUFFER_FORMATS"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "FRAMEBUFFER_ATTACHMENT"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "FRAMEBUFFER_MISSING_ATTACHMENT"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "FRAMEBUFFER_DRAW_BUFFER"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "FRAMEBUFFER_READ_BUFFER"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "FRAMEBUFFER_UNSUPPORTED"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8cd6
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)V
    .locals 9

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v1

    iget v6, p0, Landroid/graphics/RectF;->left:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->left:F

    iget v6, p0, Landroid/graphics/RectF;->right:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->right:F

    iget v6, p0, Landroid/graphics/RectF;->top:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->top:F

    iget v6, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v3

    int-to-float v7, v2

    div-float v4, v6, v7

    iget v6, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_0

    iget v6, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p0, Landroid/graphics/RectF;->left:F

    sub-float v8, v4, v8

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->right:F

    iput v4, p0, Landroid/graphics/RectF;->right:F

    :cond_0
    int-to-float v6, v0

    int-to-float v7, v1

    div-float v5, v6, v7

    iget v6, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_1

    iget v6, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Landroid/graphics/RectF;->top:F

    sub-float v8, v5, v8

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->bottom:F

    iput v5, p0, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private drawBorder()V
    .locals 8

    const v7, 0x88e4

    const v6, 0x8076

    const/16 v5, 0x1406

    const/4 v4, 0x0

    const v3, 0x8892

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v6}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierBorderCoords:I

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v3, v1, v2, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierBorderCoords:I

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v5, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierBorderColors:I

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderColorsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderColorsBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v3, v1, v2, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierBorderColors:I

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x4

    invoke-interface {v0, v1, v5, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x5

    const/16 v2, 0x2c

    invoke-interface {v0, v1, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v6}, Ljavax/microedition/khronos/opengles/GL11;->glDisableClientState(I)V

    return-void
.end method

.method private drawBoundTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IIII)V
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-static {v0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->isMatrixRotatedOrFlipped([F)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->hasBorder()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v4, v1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(FFFF)V

    :goto_0
    int-to-float v0, p2

    int-to-float v1, p3

    int-to-float v2, p4

    int-to-float v3, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->textureRect(FFFF)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, v3, v3, v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(FFFF)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    add-int v3, p3, p5

    add-int v4, p2, p4

    move-object v0, p0

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mapPoints([FIIII)[F

    move-result-object v6

    aget v0, v6, v8

    add-float/2addr v0, v7

    float-to-int p2, v0

    const/4 v0, 0x1

    aget v0, v6, v0

    add-float/2addr v0, v7

    float-to-int p3, v0

    const/4 v0, 0x2

    aget v0, v6, v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    sub-int p4, v0, p2

    const/4 v0, 0x3

    aget v0, v6, v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    sub-int p5, v0, p3

    if-lez p4, :cond_0

    if-lez p5, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p2

    move v2, p3

    move v3, v8

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureOES:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureOES:I

    goto :goto_1
.end method

.method private drawCubicCurve()V
    .locals 6

    const v5, 0x8892

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierCoords:I

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBuffer:Ljava/nio/FloatBuffer;

    const v3, 0x88e4

    invoke-interface {v0, v5, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierCoords:I

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    invoke-interface {v0, v1, v2, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x6

    const/16 v2, 0x16

    invoke-interface {v0, v1, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    return-void
.end method

.method private drawMixed(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IFIIIIF)V
    .locals 7

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IIIIF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_2

    int-to-float v1, p4

    int-to-float v2, p5

    int-to-float v3, p6

    int-to-float v4, p7

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->fillRect(FFFFI)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/sec/android/gallery3d/common/Utils;->isOpaque(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x3f733333    # 0.95f

    cmpg-float v0, p8, v0

    if-gez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    const v1, 0x8570

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    invoke-direct {p0, p2, p3, p8}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->setMixedColor(IFF)V

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->drawBoundTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IIII)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    const/16 v1, 0x1e01

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private drawMixed(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Lcom/sec/android/gallery3d/glrenderer/BasicTexture;FIIIIF)V
    .locals 9

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IIIIF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_2

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IIIIF)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x3f733333    # 0.95f

    cmpg-float v0, p8, v0

    if-gez v0, :cond_5

    :cond_3
    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    iget-object v8, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, p8, p3

    sub-float v7, v0, v1

    const v0, 0x3f733333    # 0.95f

    cmpg-float v0, p8, v0

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    mul-float v1, v1, p8

    div-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    :goto_3
    const v0, 0x84c1

    invoke-interface {v8, v0}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0xde1

    invoke-interface {v8, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    const v0, 0x84c0

    invoke-interface {v8, v0}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    goto :goto_3

    :cond_7
    const/16 v0, 0xde1

    invoke-interface {v8, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    const v1, 0x8570

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    const/16 v0, 0x2300

    const v1, 0x8571

    const v2, 0x47057500    # 34165.0f

    invoke-interface {v8, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const/16 v0, 0x2300

    const v1, 0x8572

    const v2, 0x47057500    # 34165.0f

    invoke-interface {v8, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v7}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->setTextureColor(FFFF)V

    const/16 v0, 0x2300

    const/16 v1, 0x2201

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTextureColor:[F

    const/4 v3, 0x0

    invoke-interface {v8, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    const/16 v0, 0x2300

    const v1, 0x8582

    const v2, 0x47057600    # 34166.0f

    invoke-interface {v8, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const/16 v0, 0x2300

    const v1, 0x8592

    const v2, 0x44408000    # 770.0f

    invoke-interface {v8, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const/16 v0, 0x2300

    const v1, 0x858a

    const v2, 0x47057600    # 34166.0f

    invoke-interface {v8, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const/16 v0, 0x2300

    const v1, 0x859a

    const v2, 0x44408000    # 770.0f

    invoke-interface {v8, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->drawBoundTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IIII)V

    const/16 v0, 0xde1

    invoke-interface {v8, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    const v0, 0x84c0

    invoke-interface {v8, v0}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    goto/16 :goto_0
.end method

.method private drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IIIIF)V
    .locals 2

    if-lez p4, :cond_0

    if-gtz p5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x3f733333    # 0.95f

    cmpg-float v0, p6, v0

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {v0, p6}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->drawBoundTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IIII)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private freeRestoreConfig(Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    iput-object v0, p1, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mNextFree:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    iput-object p1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    return-void
.end method

.method private initCircle(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 8

    const v7, 0x8892

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v3, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CIRCLE_COORDINATES:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x20

    div-int/lit8 v1, v3, 0x8

    invoke-static {v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    sget-object v3, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CIRCLE_COORDINATES:[F

    sget-object v4, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->CIRCLE_COORDINATES:[F

    array-length v4, v4

    invoke-virtual {v2, v3, v5, v4}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-array v0, v6, [I

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/sec/android/gallery3d/glrenderer/GLId;

    invoke-interface {v3, v6, v0, v5}, Lcom/sec/android/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    aget v3, v0, v5

    iput v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCircleCoords:I

    iget v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCircleCoords:I

    invoke-interface {p1, v7, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    const v4, 0x88e4

    invoke-interface {p1, v7, v3, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    return-void
.end method

.method private static isMatrixRotatedOrFlipped([F)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v5, 0x3727c5ac    # 1.0E-5f

    const v0, 0x3727c5ac    # 1.0E-5f

    const/4 v3, 0x4

    aget v3, p0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    aget v3, p0, v1

    const v4, -0x48d83a54    # -1.0E-5f

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    const/4 v3, 0x5

    aget v3, p0, v3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private static makeCircleCoords()[F
    .locals 20

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v14, 0x120

    new-array v2, v14, [F

    const/4 v6, 0x0

    const/16 v8, 0x8f

    const/4 v5, 0x0

    move v7, v6

    :goto_0
    if-ge v5, v8, :cond_0

    int-to-float v14, v5

    int-to-float v15, v8

    div-float v11, v14, v15

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v14, v11

    float-to-double v14, v14

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    mul-double v14, v14, v16

    double-to-float v12, v14

    float-to-double v14, v3

    float-to-double v0, v13

    move-wide/from16 v16, v0

    float-to-double v0, v12

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-float v9, v14

    float-to-double v14, v4

    float-to-double v0, v13

    move-wide/from16 v16, v0

    float-to-double v0, v12

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-float v10, v14

    add-int/lit8 v6, v7, 0x1

    aput v9, v2, v7

    add-int/lit8 v7, v6, 0x1

    aput v10, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v7, 0x1

    const/4 v14, 0x0

    aget v14, v2, v14

    aput v14, v2, v7

    const/4 v14, 0x1

    aget v14, v2, v14

    aput v14, v2, v6

    return-object v2
.end method

.method private mapPoints([FIIII)[F
    .locals 10

    const/4 v9, 0x7

    const/4 v8, 0x5

    const/4 v3, 0x0

    const/4 v7, 0x3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMapPointsBuffer:[F

    const/4 v5, 0x6

    int-to-float v2, p2

    aput v2, v0, v5

    int-to-float v2, p3

    aput v2, v0, v9

    const/16 v2, 0x8

    const/4 v4, 0x0

    aput v4, v0, v2

    const/16 v2, 0x9

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v0, v2

    const/4 v1, 0x0

    move-object v2, p1

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    aget v2, v0, v1

    aget v4, v0, v7

    div-float/2addr v2, v4

    aput v2, v0, v1

    const/4 v2, 0x1

    aget v4, v0, v2

    aget v6, v0, v7

    div-float/2addr v4, v6

    aput v4, v0, v2

    int-to-float v2, p4

    aput v2, v0, v5

    int-to-float v2, p5

    aput v2, v0, v9

    const/4 v1, 0x2

    move-object v2, p1

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    aget v2, v0, v1

    aget v3, v0, v8

    div-float/2addr v2, v3

    aput v2, v0, v1

    aget v2, v0, v7

    aget v3, v0, v8

    div-float/2addr v2, v3

    aput v2, v0, v7

    return-object v0
.end method

.method private obtainRestoreConfig()Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    iget-object v1, v0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mNextFree:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    iput-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;-><init>(Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$1;)V

    goto :goto_0
.end method

.method private restoreTransform()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTempMatrix:[F

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private saveTransform()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTempMatrix:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private setMixedColor(IFF)V
    .locals 11

    const v10, 0x47057500    # 34165.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const v9, 0x44408000    # 770.0f

    const v8, 0x47057600    # 34166.0f

    const/16 v7, 0x2300

    sub-float v4, v5, p2

    mul-float v1, p3, v4

    mul-float v4, p3, p2

    sub-float/2addr v5, v1

    div-float v3, v4, v5

    ushr-int/lit8 v4, p1, 0x18

    int-to-float v4, v4

    mul-float/2addr v4, v3

    const v5, 0x477e0100    # 65025.0f

    div-float v0, v4, v5

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v0

    ushr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    mul-float/2addr v5, v0

    and-int/lit16 v6, p1, 0xff

    int-to-float v6, v6

    mul-float/2addr v6, v0

    invoke-direct {p0, v4, v5, v6, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->setTextureColor(FFFF)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0x2201

    iget-object v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTextureColor:[F

    const/4 v6, 0x0

    invoke-interface {v2, v7, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    const v4, 0x8571

    invoke-interface {v2, v7, v4, v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v4, 0x8572

    invoke-interface {v2, v7, v4, v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v4, 0x8581

    invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v4, 0x8591

    const/high16 v5, 0x44400000    # 768.0f

    invoke-interface {v2, v7, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v4, 0x8589

    invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v4, 0x8599

    invoke-interface {v2, v7, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v4, 0x8582

    invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v4, 0x8592

    invoke-interface {v2, v7, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v4, 0x858a

    invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v4, 0x859a

    invoke-interface {v2, v7, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    return-void
.end method

.method private setRenderTarget(Lcom/sec/android/gallery3d/glrenderer/RawTexture;)V
    .locals 6

    const/4 v4, 0x1

    const v1, 0x8d40

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/sec/android/gallery3d/glrenderer/RawTexture;

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/sec/android/gallery3d/glrenderer/GLId;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mFrameBuffer:[I

    invoke-interface {v2, v4, v3, v5}, Lcom/sec/android/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mFrameBuffer:[I

    aget v2, v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/sec/android/gallery3d/glrenderer/RawTexture;

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    invoke-interface {v0, v1, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mFrameBuffer:[I

    invoke-interface {v0, v4, v2, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    :cond_1
    iput-object p1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/sec/android/gallery3d/glrenderer/RawTexture;

    if-nez p1, :cond_2

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mScreenWidth:I

    iget v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mScreenHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->setSize(II)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->setSize(II)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/RawTexture;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, p0}, Lcom/sec/android/gallery3d/glrenderer/RawTexture;->prepare(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    :cond_3
    const v2, 0x8ce0

    const/16 v3, 0xde1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/RawTexture;->getId()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    invoke-static {v0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V

    goto :goto_0
.end method

.method private setTextureColor(FFFF)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTextureColor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    return-void
.end method

.method private setTextureCoords(FFFF)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    sub-float v1, p3, p1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/4 v1, 0x5

    sub-float v2, p4, p2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    return-void
.end method

.method private setTextureCoords(Landroid/graphics/RectF;)V
    .locals 4

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(FFFF)V

    return-void
.end method

.method private setTextureCoords([F)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    return-void
.end method

.method private textureRect(FFFF)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->saveTransform()V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->translate(FF)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p3, p4, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->scale(FFF)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->restoreTransform()V

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureRect:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureRect:I

    return-void
.end method

.method private uploadBuffer(Ljava/nio/Buffer;I)I
    .locals 6

    const v5, 0x8892

    const/4 v4, 0x0

    const/4 v2, 0x1

    new-array v1, v2, [I

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/sec/android/gallery3d/glrenderer/GLId;

    array-length v3, v1

    invoke-interface {v2, v3, v1, v4}, Lcom/sec/android/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    aget v0, v1, v4

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v2, v5, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    mul-int/2addr v3, p2

    const v4, 0x88e4

    invoke-interface {v2, v5, v3, p1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    return v0
.end method


# virtual methods
.method public clearBuffer()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->clearBuffer([F)V

    return-void
.end method

.method public clearBuffer([F)V
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget v3, p1, v3

    const/4 v4, 0x0

    aget v4, p1, v4

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v2, v2, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    goto :goto_0
.end method

.method public deleteBuffer(I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/sec/android/gallery3d/util/IntArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mDeleteBuffers:Lcom/sec/android/gallery3d/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/util/IntArray;->add(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteRecycledResources()V
    .locals 7

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/sec/android/gallery3d/util/IntArray;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/sec/android/gallery3d/util/IntArray;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/sec/android/gallery3d/glrenderer/GLId;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/IntArray;->size()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/sec/android/gallery3d/glrenderer/GLId;->glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/IntArray;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mDeleteBuffers:Lcom/sec/android/gallery3d/util/IntArray;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/sec/android/gallery3d/glrenderer/GLId;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/IntArray;->size()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v3, v4, v5, v6}, Lcom/sec/android/gallery3d/glrenderer/GLId;->glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/IntArray;->clear()V

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public drawCircle(FFFLcom/sec/android/gallery3d/glrenderer/GLPaint;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9

    const/16 v8, 0x90

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p4}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getColor()I

    move-result v2

    invoke-virtual {p4}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getAlpha()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setColorMode(IF)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p4}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setLineWidth(F)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p4}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getAntiAlias()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setLineSmooth(Z)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->saveTransform()V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->translate(FF)V

    invoke-virtual {p4}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getStyle()Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;->FILL:Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;

    if-eq v1, v2, :cond_1

    div-float v1, p3, v7

    div-float v2, p3, v7

    invoke-virtual {p0, v1, v2, v4}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->scale(FFF)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-interface {v0, v1, v5}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v2, 0x8892

    iget v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCircleCoords:I

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v2, 0x1406

    invoke-interface {v1, v6, v2, v5, v5}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    invoke-virtual {p4}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getStyle()Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;->FILL:Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;

    if-ne v1, v2, :cond_2

    if-eqz p6, :cond_0

    if-eqz p5, :cond_0

    iget v1, p6, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mScreenWidth:I

    iget v3, p5, Landroid/graphics/Rect;->bottom:I

    iget v4, p5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-interface {v0, v5, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    :cond_0
    const/4 v1, 0x6

    invoke-interface {v0, v1, v5, v8}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v2, 0x8892

    iget v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mBoxCoords:I

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v2, 0x1406

    invoke-interface {v1, v6, v2, v5, v5}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->restoreTransform()V

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawCircle:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawCircle:I

    return-void

    :cond_1
    invoke-virtual {p0, p3, p3, v4}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->scale(FFF)V

    goto :goto_0

    :cond_2
    invoke-interface {v0, v6, v5, v8}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    goto :goto_1
.end method

.method public drawCubicBezierCurve(FFFFFFFFFFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual/range {p13 .. p13}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getColor()I

    move-result v1

    invoke-virtual/range {p13 .. p13}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getAlpha()F

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setColorMode(IFZ)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual/range {p13 .. p13}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getLineWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setLineWidth(F)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual/range {p13 .. p13}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getAntiAlias()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setLineSmooth(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0xb00

    sget-object v2, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->borderColor:[F

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(I[FI)V

    invoke-direct/range {p0 .. p12}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->calcCubicBezierCoords(FFFFFFFFFFFF)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->calcCubicBezierBorderColors()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->calcCubicBezierBorderCoords()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->drawCubicCurve()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->drawBorder()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v1, 0x8892

    iget v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mBoxCoords:I

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawCubicBezierCurve:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawCubicBezierCurve:I

    return-void
.end method

.method public drawLine(FFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setColorMode(IF)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setLineWidth(F)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getAntiAlias()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setLineSmooth(Z)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->saveTransform()V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->translate(FF)V

    sub-float v1, p3, p1

    sub-float v2, p4, p2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->scale(FFF)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->restoreTransform()V

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    return-void
.end method

.method public drawMesh(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IIIIII)V
    .locals 8

    const/4 v4, 0x0

    const v7, 0x8892

    const/16 v6, 0x1406

    const/4 v5, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3f733333    # 0.95f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v4, v4, v1, v3}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(FFFF)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->saveTransform()V

    int-to-float v1, p2

    int-to-float v3, p3

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-interface {v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v7, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v7, p5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v3, 0x8893

    invoke-interface {v1, v3, p6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v3, 0x5

    const/16 v4, 0x1401

    invoke-interface {v1, v3, p7, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mBoxCoords:I

    invoke-interface {v1, v7, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->restoreTransform()V

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawMesh:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawMesh:I

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public drawMixed(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_2

    invoke-virtual {p0, p1, p4, p5}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_3

    iget v1, p5, Landroid/graphics/RectF;->left:F

    iget v2, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->fillRect(FFFFI)V

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    iget-object p5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/sec/android/gallery3d/common/Utils;->isOpaque(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x3f733333    # 0.95f

    cmpg-float v0, v6, v0

    if-gez v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    const v1, 0x8570

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    invoke-direct {p0, p2, p3, v6}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->setMixedColor(IFF)V

    invoke-static {p4, p5, p1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)V

    invoke-direct {p0, p4}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(Landroid/graphics/RectF;)V

    iget v0, p5, Landroid/graphics/RectF;->left:F

    iget v1, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->textureRect(FFFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    const/16 v1, 0x1e01

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public drawRect(FFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setColorMode(IF)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setLineWidth(F)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->getAntiAlias()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setLineSmooth(Z)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->saveTransform()V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->translate(FF)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p3, p4, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->scale(FFF)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->restoreTransform()V

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    return-void
.end method

.method public drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IIII)V
    .locals 7

    iget v6, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IIIIF)V

    return-void
.end method

.method public drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    const v2, 0x3f733333    # 0.95f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3, p1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)V

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->textureRect(FFFF)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public drawTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;[FIIII)V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    const v2, 0x3f733333    # 0.95f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords([F)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    int-to-float v0, p3

    int-to-float v1, p4

    int-to-float v2, p5

    int-to-float v3, p6

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->textureRect(FFFF)V

    goto :goto_1
.end method

.method public dumpStatisticsAndClear()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v1, "MESH:%d, TEX_OES:%d, TEX_RECT:%d, FILL_RECT:%d, LINE:%d, CIRCLE:%d, CUBICBEZIERCURVE:%d"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawMesh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureOES:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountFillRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawCircle:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawCubicBezierCurve:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawMesh:I

    iput v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureRect:I

    iput v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureOES:I

    iput v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountFillRect:I

    iput v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    iput v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawCircle:I

    iput v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawCubicBezierCurve:I

    const-string/jumbo v1, "GLCanvasImp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public fillRect(FFFFI)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v1, p5, v2}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setColorMode(IF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->saveTransform()V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->translate(FF)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p3, p4, v1}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->scale(FFF)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->restoreTransform()V

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountFillRect:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mCountFillRect:I

    return-void
.end method

.method public getAllTextures()Ljava/util/WeakHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sec/android/gallery3d/glrenderer/BasicTexture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mRootView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getAllTextures()Ljava/util/WeakHashMap;

    move-result-object v0

    return-object v0
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    return v0
.end method

.method public getGLId()Lcom/sec/android/gallery3d/glrenderer/GLId;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/sec/android/gallery3d/glrenderer/GLId;

    return-object v0
.end method

.method public getUploadedCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mUploadedCount:I

    return v0
.end method

.method public initializeTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    invoke-static {v0, v3, p2, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    return-void
.end method

.method public initializeTextureSize(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;II)V
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v3

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v5

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v9, 0x0

    move v3, p2

    move v6, v2

    move v7, p2

    move v8, p3

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public invalidateAllTextures()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->getAllTextures()Ljava/util/WeakHashMap;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->getAllTextures()Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;

    const/4 v3, 0x0

    iput v3, v0, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->mState:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->setAssociatedCanvas(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public multiplyAlpha(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiplyMatrix([FI)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTempMatrix:[F

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    move v3, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public resetUploadLimit()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mUploadedCount:I

    return-void
.end method

.method public restore()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->restore(Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;)V

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->freeRestoreConfig(Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;)V

    goto :goto_0
.end method

.method public rotate(FFFF)V
    .locals 9

    const/16 v8, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTempMatrix:[F

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    move-object v2, v0

    move v3, v8

    move v5, v1

    move-object v6, v0

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-static {v0, v8, v2, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public save()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->save(I)V

    return-void
.end method

.method public save(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->obtainRestoreConfig()Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    move-result-object v0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    iput v1, v0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mAlpha:F

    :goto_0
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    iget-object v2, v0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mMatrix:[F

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mAlpha:F

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mRect:Landroid/graphics/Rect;

    const v2, 0x7fffffff

    iput v2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mMatrix:[F

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    aput v2, v1, v4

    goto :goto_2
.end method

.method public scale(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public setAllTextues(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mRootView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getAllTextures()Ljava/util/WeakHashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mRootView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getAllTextures()Ljava/util/WeakHashMap;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAlpha(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    iput p1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v3, 0x0

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/sec/android/gallery3d/glrenderer/RawTexture;

    if-nez v2, :cond_0

    iput p1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mScreenWidth:I

    iput p2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mScreenHeight:I

    :cond_0
    iput v6, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v3, v3, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    const/16 v2, 0x1701

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    int-to-float v2, p1

    int-to-float v4, p2

    invoke-static {v0, v5, v2, v5, v4}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    const/16 v2, 0x1700

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/sec/android/gallery3d/glrenderer/RawTexture;

    if-nez v2, :cond_1

    int-to-float v2, p2

    invoke-static {v1, v3, v5, v2, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v3, v6, v2, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-interface {v0, v3, v3, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    return-void

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public setTextureParameters(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)V
    .locals 9

    const v8, 0x812f

    const/4 v7, 0x0

    const v6, 0x46180400    # 9729.0f

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    const/4 v4, 0x0

    aput v4, v3, v7

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    const/4 v4, 0x1

    int-to-float v5, v0

    aput v5, v3, v4

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    const/4 v4, 0x2

    int-to-float v5, v2

    aput v5, v3, v4

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    const/4 v4, 0x3

    neg-int v5, v0

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v4

    invoke-interface {v3, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v4, 0x8b9d

    iget-object v5, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    invoke-interface {v3, v1, v4, v5, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0x2802

    invoke-interface {v3, v1, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0x2803

    invoke-interface {v3, v1, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0x2801

    invoke-interface {v3, v1, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v4, 0x2800

    invoke-interface {v3, v1, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    return-void
.end method

.method public setUploadedCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mUploadedCount:I

    return-void
.end method

.method public texSubImage2D(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V
    .locals 7

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    return-void
.end method

.method public translate(FF)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/16 v1, 0xc

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xd

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xe

    aget v2, v0, v1

    const/4 v3, 0x2

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x6

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0xf

    aget v2, v0, v1

    const/4 v3, 0x3

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x7

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method public translate(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public unloadTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/sec/android/gallery3d/util/IntArray;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/sec/android/gallery3d/util/IntArray;

    iget v2, p1, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->mId:I

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/util/IntArray;->add(I)V

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public uploadBuffer(Ljava/nio/ByteBuffer;)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result v0

    return v0
.end method

.method public uploadBuffer(Ljava/nio/FloatBuffer;)I
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result v0

    return v0
.end method

.method public uploadLimitReached()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public yieldAllTextures()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mRootView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getAllTextures()Ljava/util/WeakHashMap;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/GLES11Canvas;->mRootView:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->getAllTextures()Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->yield()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
