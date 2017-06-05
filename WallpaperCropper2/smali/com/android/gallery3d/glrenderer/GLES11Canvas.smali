.class public Lcom/android/gallery3d/glrenderer/GLES11Canvas;
.super Ljava/lang/Object;
.source "GLES11Canvas.java"

# interfaces
.implements Lcom/android/gallery3d/glrenderer/GLCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;,
        Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;
    }
.end annotation


# static fields
.field private static final BOX_COORDINATES:[F

.field private static CUBIC_BEZIER_BODER_COLORS:[F = null

.field private static CUBIC_BEZIER_BODER_COORDINATES:[F = null

.field private static final CUBIC_BEZIER_BORDER_THINKNESS:F = 3.0f

.field private static CUBIC_BEZIER_COORDINATES:[F = null

.field private static final CUBIC_BEZIER_VERTEX_COUNT:I = 0x16

.field private static final MSCALE_X:I = 0x0

.field private static final MSCALE_Y:I = 0x5

.field private static final MSKEW_X:I = 0x4

.field private static final MSKEW_Y:I = 0x1

.field private static final OFFSET_CUBIC_BEZIER:I = 0x0

.field private static final OFFSET_DRAW_LINE:I = 0x4

.field private static final OFFSET_DRAW_RECT:I = 0x6

.field private static final OFFSET_FILL_RECT:I = 0x0

.field public static final OPAQUE_ALPHA:F = 0.95f

.field private static final TAG:Ljava/lang/String; = "GLCanvasImp"

.field private static borderColor:[F


# instance fields
.field private cubicBezierBorderBuffer:Ljava/nio/FloatBuffer;

.field private cubicBezierBorderColorsBuffer:Ljava/nio/FloatBuffer;

.field private cubicBezierBuffer:Ljava/nio/FloatBuffer;

.field private mAlpha:F

.field private mAnimationTime:J

.field private mBlendEnabled:Z

.field private mBoxCoords:I

.field private final mClipRect:Landroid/graphics/Rect;

.field mCountDrawCircle:I

.field mCountDrawCubicBezierCurve:I

.field mCountDrawLine:I

.field mCountDrawMesh:I

.field mCountFillRect:I

.field mCountTextureOES:I

.field mCountTextureRect:I

.field private mCubicBezierBorderColors:I

.field private mCubicBezierBorderCoords:I

.field private mCubicBezierCoords:I

.field private final mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

.field private final mDrawTextureSourceRect:Landroid/graphics/RectF;

.field private final mDrawTextureTargetRect:Landroid/graphics/RectF;

.field private mFrameBuffer:[I

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private mGLId:Lcom/android/gallery3d/glrenderer/GLId;

.field private mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

.field private final mMapPointsBuffer:[F

.field private final mMatrixValues:[F

.field private mRecycledRestoreAction:Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

.field private final mRestoreStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private final mTargetStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/glrenderer/RawTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

.field private final mTempMatrix:[F

.field private final mTextureColor:[F

.field private mTextureId:[I

.field private final mTextureMatrixValues:[F

.field private final mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

.field private sCropRect:[F


# direct methods
.method static synthetic -get0(Lcom/android/gallery3d/glrenderer/GLES11Canvas;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/gallery3d/glrenderer/GLES11Canvas;)Ljavax/microedition/khronos/opengles/GL11;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/gallery3d/glrenderer/GLES11Canvas;)[F
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->BOX_COORDINATES:[F

    const/16 v0, 0x2c

    new-array v0, v0, [F

    sput-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    const/16 v0, 0x58

    new-array v0, v0, [F

    sput-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    const/16 v0, 0xb0

    new-array v0, v0, [F

    sput-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COLORS:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->borderColor:[F

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

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 7

    const/16 v6, 0x1406

    const/4 v5, 0x2

    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMapPointsBuffer:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureColor:[F

    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTempMatrix:[F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mClipRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    new-instance v0, Lcom/android/gallery3d/util/IntArray;

    invoke-direct {v0}, Lcom/android/gallery3d/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    new-instance v0, Lcom/android/gallery3d/util/IntArray;

    invoke-direct {v0}, Lcom/android/gallery3d/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTargetStack:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mFrameBuffer:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureId:[I

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    new-instance v0, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;

    invoke-direct {v0}, Lcom/android/gallery3d/glrenderer/GLES11IdImpl;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    iput v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierCoords:I

    iput v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierBorderCoords:I

    iput v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierBorderColors:I

    iput-object p1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    new-instance v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->BOX_COORDINATES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    sget-object v1, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->BOX_COORDINATES:[F

    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->BOX_COORDINATES:[F

    array-length v2, v2

    invoke-virtual {v0, v1, v4, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    new-array v1, v3, [I

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    invoke-interface {v2, v3, v1, v4}, Lcom/android/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    aget v1, v1, v4

    iput v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBoxCoords:I

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBoxCoords:I

    const v2, 0x8892

    invoke-interface {p1, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    const v2, 0x8892

    const v3, 0x88e4

    invoke-interface {p1, v2, v1, v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-interface {p1, v5, v6, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    invoke-interface {p1, v5, v6, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    const v0, 0x84c1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    invoke-interface {p1, v5, v6, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    const v0, 0x84c0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    return-void
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

.method private bindTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z
    .locals 3

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->onBind(Lcom/android/gallery3d/glrenderer/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureTarget(I)V

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    const/4 v0, 0x1

    return v0
.end method

.method private calcCubicBezierBorderColors()V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COLORS:[F

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->borderColor:[F

    aget v4, v0, v1

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->borderColor:[F

    aget v5, v0, v10

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->borderColor:[F

    aget v6, v0, v11

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->borderColor:[F

    aget v7, v0, v12

    move v0, v1

    move v2, v1

    :goto_0
    const/16 v8, 0x15

    if-ge v0, v8, :cond_0

    add-int/lit8 v8, v2, 0x1

    aput v4, v3, v2

    add-int/lit8 v2, v8, 0x1

    aput v5, v3, v8

    add-int/lit8 v8, v2, 0x1

    aput v6, v3, v2

    add-int/lit8 v2, v8, 0x1

    const/4 v9, 0x0

    aput v9, v3, v8

    add-int/lit8 v8, v2, 0x1

    aput v4, v3, v2

    add-int/lit8 v2, v8, 0x1

    aput v5, v3, v8

    add-int/lit8 v8, v2, 0x1

    aput v6, v3, v2

    add-int/lit8 v2, v8, 0x1

    aput v7, v3, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    aget v4, v3, v1

    aput v4, v3, v2

    add-int/lit8 v2, v0, 0x1

    aget v4, v3, v10

    aput v4, v3, v0

    add-int/lit8 v0, v2, 0x1

    aget v4, v3, v11

    aput v4, v3, v2

    add-int/lit8 v2, v0, 0x1

    aget v4, v3, v12

    aput v4, v3, v0

    add-int/lit8 v0, v2, 0x1

    const/4 v4, 0x4

    aget v4, v3, v4

    aput v4, v3, v2

    add-int/lit8 v2, v0, 0x1

    const/4 v4, 0x5

    aget v4, v3, v4

    aput v4, v3, v0

    add-int/lit8 v0, v2, 0x1

    const/4 v4, 0x6

    aget v4, v3, v4

    aput v4, v3, v2

    add-int/lit8 v2, v0, 0x1

    const/4 v2, 0x7

    aget v2, v3, v2

    aput v2, v3, v0

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderColorsBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COLORS:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderColorsBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderColorsBuffer:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COLORS:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderColorsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierBorderColors:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    new-array v0, v10, [I

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    invoke-interface {v2, v10, v0, v1}, Lcom/android/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    aget v0, v0, v1

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierBorderColors:I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderColorsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderColorsBuffer:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COLORS:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderColorsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1
.end method

.method private calcCubicBezierBorderCoords()V
    .locals 8

    const/high16 v7, 0x40400000    # 3.0f

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    aget v2, v2, v1

    aput v2, v0, v1

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    aget v2, v2, v6

    add-float/2addr v2, v7

    aput v2, v0, v6

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    aget v2, v2, v1

    aput v2, v0, v3

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    aget v2, v2, v6

    const/4 v3, 0x3

    aput v2, v0, v3

    move v0, v1

    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x4

    sget-object v4, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    aput v4, v2, v3

    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x5

    sget-object v4, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x3

    aget v4, v4, v5

    add-float/2addr v4, v7

    aput v4, v2, v3

    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x6

    sget-object v4, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    aput v4, v2, v3

    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x7

    sget-object v4, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x3

    aget v4, v4, v5

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    const/16 v3, 0x2a

    aget v2, v2, v3

    const/16 v3, 0x54

    aput v2, v0, v3

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    const/16 v3, 0x2b

    aget v2, v2, v3

    add-float/2addr v2, v7

    const/16 v3, 0x55

    aput v2, v0, v3

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    const/16 v3, 0x2a

    aget v2, v2, v3

    const/16 v3, 0x56

    aput v2, v0, v3

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    const/16 v3, 0x2b

    aget v2, v2, v3

    const/16 v3, 0x57

    aput v2, v0, v3

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderBuffer:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierBorderCoords:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    new-array v0, v6, [I

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    invoke-interface {v2, v6, v0, v1}, Lcom/android/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    aget v0, v0, v1

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierBorderCoords:I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderBuffer:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_BODER_COORDINATES:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1
.end method

.method private calcCubicBezierCoords(FFFFFFFFFFFF)V
    .locals 7

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    int-to-float v1, v0

    const/high16 v2, 0x41980000    # 19.0f

    div-float/2addr v1, v2

    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    mul-float/2addr v4, v5

    mul-float/2addr v4, p3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v1

    mul-float/2addr v5, v6

    mul-float/2addr v5, v1

    mul-float/2addr v5, p5

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v5, v6

    mul-float/2addr v5, v1

    mul-float/2addr v5, v1

    mul-float/2addr v5, p7

    add-float/2addr v4, v5

    mul-float v5, v1, v1

    mul-float/2addr v5, v1

    mul-float v5, v5, p9

    add-float/2addr v4, v5

    aput v4, v2, v3

    sget-object v2, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v1

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    mul-float/2addr v4, v5

    mul-float/2addr v4, p4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v1

    mul-float/2addr v5, v6

    mul-float/2addr v5, v1

    mul-float/2addr v5, p6

    add-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v5, v6

    mul-float/2addr v5, v1

    mul-float/2addr v5, v1

    mul-float/2addr v5, p8

    add-float/2addr v4, v5

    mul-float v5, v1, v1

    mul-float/2addr v1, v5

    mul-float v1, v1, p10

    add-float/2addr v1, v4

    aput v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    const/16 v1, 0x2a

    aput p11, v0, v1

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    const/16 v1, 0x2b

    aput p12, v0, v1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierCoords:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/android/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierCoords:I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBuffer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->CUBIC_BEZIER_COORDINATES:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1
.end method

.method private static checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V
    .locals 4

    const v0, 0x8d40

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result v1

    const v0, 0x8cd5

    if-eq v1, v0, :cond_0

    const-string/jumbo v0, ""

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

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

.method private static convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/glrenderer/BasicTexture;)V
    .locals 6

    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v3

    iget v4, p0, Landroid/graphics/RectF;->left:F

    int-to-float v5, v2

    div-float/2addr v4, v5

    iput v4, p0, Landroid/graphics/RectF;->left:F

    iget v4, p0, Landroid/graphics/RectF;->right:F

    int-to-float v5, v2

    div-float/2addr v4, v5

    iput v4, p0, Landroid/graphics/RectF;->right:F

    iget v4, p0, Landroid/graphics/RectF;->top:F

    int-to-float v5, v3

    div-float/2addr v4, v5

    iput v4, p0, Landroid/graphics/RectF;->top:F

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, v3

    div-float/2addr v4, v5

    iput v4, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    iget v2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, Landroid/graphics/RectF;->left:F

    sub-float v5, v0, v5

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    iput v2, p1, Landroid/graphics/RectF;->right:F

    iput v0, p0, Landroid/graphics/RectF;->right:F

    :cond_0
    int-to-float v0, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Landroid/graphics/RectF;->top:F

    sub-float v3, v0, v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

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

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v6}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierBorderCoords:I

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v3, v1, v2, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierBorderCoords:I

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v5, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierBorderColors:I

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderColorsBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBorderColorsBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v3, v1, v2, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierBorderColors:I

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x4

    invoke-interface {v0, v1, v5, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x5

    const/16 v2, 0x2c

    invoke-interface {v0, v1, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v6}, Ljavax/microedition/khronos/opengles/GL11;->glDisableClientState(I)V

    return-void
.end method

.method private drawBoundTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIII)V
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-static {v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->isMatrixRotatedOrFlipped([F)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->hasBorder()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v4, v1

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v4

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(FFFF)V

    :goto_0
    int-to-float v0, p2

    int-to-float v1, p3

    int-to-float v2, p4

    int-to-float v3, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->textureRect(FFFF)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, v3, v3, v0, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(FFFF)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    add-int v3, p3, p5

    add-int v4, p2, p4

    move-object v0, p0

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mapPoints([FIIII)[F

    move-result-object v0

    aget v1, v0, v7

    add-float/2addr v1, v6

    float-to-int v1, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    add-float/2addr v2, v6

    float-to-int v2, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    add-float/2addr v3, v6

    float-to-int v3, v3

    sub-int v4, v3, v1

    const/4 v3, 0x3

    aget v0, v0, v3

    add-float/2addr v0, v6

    float-to-int v0, v0

    sub-int v5, v0, v2

    if-lez v4, :cond_0

    if-lez v5, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move v3, v7

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureOES:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureOES:I

    goto :goto_1
.end method

.method private drawCubicCurve()V
    .locals 6

    const v5, 0x8892

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierCoords:I

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->cubicBezierBuffer:Ljava/nio/FloatBuffer;

    const v3, 0x88e4

    invoke-interface {v0, v5, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCubicBezierCoords:I

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    invoke-interface {v0, v1, v2, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x6

    const/16 v2, 0x16

    invoke-interface {v0, v1, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    return-void
.end method

.method private drawMixed(Lcom/android/gallery3d/glrenderer/BasicTexture;IFIIIIF)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIIIF)V

    return-void

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_1

    int-to-float v1, p4

    int-to-float v2, p5

    int-to-float v3, p6

    int-to-float v4, p7

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->fillRect(FFFFI)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p2}, Lcom/android/gallery3d/util/Utils;->isOpaque(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x3f733333    # 0.95f

    cmpg-float v3, p8, v3

    if-gez v3, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    const v1, 0x8570

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    invoke-direct {p0, p2, p3, p8}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setMixedColor(IFF)V

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->drawBoundTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIII)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    const/16 v1, 0x1e01

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    return-void
.end method

.method private drawMixed(Lcom/android/gallery3d/glrenderer/BasicTexture;Lcom/android/gallery3d/glrenderer/BasicTexture;FIIIIF)V
    .locals 7

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIIIF)V

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_1

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIIIF)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->assertTrue(Z)V

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x3f733333    # 0.95f

    cmpg-float v0, p8, v0

    if-gez v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    iget-object v6, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    mul-float v0, p8, p3

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const v1, 0x3f733333    # 0.95f

    cmpg-float v1, p8, v1

    if-gez v1, :cond_8

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p3

    mul-float/2addr v2, p8

    div-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    :goto_2
    const v1, 0x84c1

    invoke-interface {v6, v1}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    invoke-direct {p0, p2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v0, 0xde1

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    const v0, 0x84c0

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    return-void

    :cond_8
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    goto :goto_2

    :cond_9
    const/16 v1, 0xde1

    invoke-interface {v6, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    const v2, 0x8570

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    const v1, 0x47057500    # 34165.0f

    const/16 v2, 0x2300

    const v3, 0x8571

    invoke-interface {v6, v2, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v1, 0x47057500    # 34165.0f

    const/16 v2, 0x2300

    const v3, 0x8572

    invoke-interface {v6, v2, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setTextureColor(FFFF)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureColor:[F

    const/16 v1, 0x2300

    const/16 v2, 0x2201

    const/4 v3, 0x0

    invoke-interface {v6, v1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    const v0, 0x47057600    # 34166.0f

    const/16 v1, 0x2300

    const v2, 0x8582

    invoke-interface {v6, v1, v2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v0, 0x44408000    # 770.0f

    const/16 v1, 0x2300

    const v2, 0x8592

    invoke-interface {v6, v1, v2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v0, 0x47057600    # 34166.0f

    const/16 v1, 0x2300

    const v2, 0x858a

    invoke-interface {v6, v1, v2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v0, 0x44408000    # 770.0f

    const/16 v1, 0x2300

    const v2, 0x859a

    invoke-interface {v6, v1, v2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->drawBoundTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIII)V

    const/16 v0, 0xde1

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    const v0, 0x84c0

    invoke-interface {v6, v0}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    return-void
.end method

.method private freeRestoreConfig(Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    iput-object v0, p1, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mNextFree:Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    iput-object p1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    return-void
.end method

.method private static isMatrixRotatedOrFlipped([F)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    const v4, 0x3727c5ac    # 1.0E-5f

    const/4 v2, 0x4

    aget v2, p0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_0

    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget v2, p0, v1

    const v3, -0x48d83a54    # -1.0E-5f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    const/4 v2, 0x5

    aget v2, p0, v2

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private mapPoints([FIIII)[F
    .locals 6

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMapPointsBuffer:[F

    const/4 v5, 0x6

    int-to-float v1, p2

    aput v1, v0, v5

    const/4 v1, 0x7

    int-to-float v2, p3

    aput v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput v2, v0, v1

    const/16 v1, 0x9

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    aget v2, v0, v1

    const/4 v3, 0x3

    aget v3, v0, v3

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    aget v2, v0, v1

    const/4 v3, 0x3

    aget v3, v0, v3

    div-float/2addr v2, v3

    aput v2, v0, v1

    int-to-float v1, p4

    aput v1, v0, v5

    const/4 v1, 0x7

    int-to-float v2, p5

    aput v2, v0, v1

    const/4 v1, 0x2

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    aget v2, v0, v1

    const/4 v3, 0x5

    aget v3, v0, v3

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    aget v2, v0, v1

    const/4 v3, 0x5

    aget v3, v0, v3

    div-float/2addr v2, v3

    aput v2, v0, v1

    return-object v0
.end method

.method private obtainRestoreConfig()Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    iget-object v1, v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mNextFree:Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    iput-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mRecycledRestoreAction:Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;-><init>(Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;)V

    return-object v0
.end method

.method private restoreTransform()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTempMatrix:[F

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private saveTransform()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTempMatrix:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private setMixedColor(IFF)V
    .locals 9

    const v8, 0x47057500    # 34165.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const v7, 0x44408000    # 770.0f

    const v6, 0x47057600    # 34166.0f

    const/16 v5, 0x2300

    sub-float v0, v2, p2

    mul-float/2addr v0, p3

    mul-float v1, p3, p2

    sub-float/2addr v2, v0

    div-float/2addr v1, v2

    ushr-int/lit8 v2, p1, 0x18

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const v2, 0x477e0100    # 65025.0f

    div-float/2addr v1, v2

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v1

    ushr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v1

    and-int/lit16 v4, p1, 0xff

    int-to-float v4, v4

    mul-float/2addr v1, v4

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setTextureColor(FFFF)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureColor:[F

    const/16 v2, 0x2201

    const/4 v3, 0x0

    invoke-interface {v0, v5, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    const v1, 0x8571

    invoke-interface {v0, v5, v1, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v1, 0x8572

    invoke-interface {v0, v5, v1, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v1, 0x8581

    invoke-interface {v0, v5, v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const/high16 v1, 0x44400000    # 768.0f

    const v2, 0x8591

    invoke-interface {v0, v5, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v1, 0x8589

    invoke-interface {v0, v5, v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v1, 0x8599

    invoke-interface {v0, v5, v1, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v1, 0x8582

    invoke-interface {v0, v5, v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v1, 0x8592

    invoke-interface {v0, v5, v1, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v1, 0x858a

    invoke-interface {v0, v5, v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    const v1, 0x859a

    invoke-interface {v0, v5, v1, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    return-void
.end method

.method private setRenderTarget(Lcom/android/gallery3d/glrenderer/RawTexture;)V
    .locals 6

    const/4 v4, 0x1

    const v1, 0x8d40

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mFrameBuffer:[I

    invoke-interface {v2, v4, v3, v5}, Lcom/android/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mFrameBuffer:[I

    aget v2, v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    invoke-interface {v0, v1, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mFrameBuffer:[I

    invoke-interface {v0, v4, v2, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    if-nez p1, :cond_2

    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mScreenWidth:I

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mScreenHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setSize(II)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/RawTexture;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/RawTexture;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setSize(II)V

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/RawTexture;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/glrenderer/RawTexture;->prepare(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    :cond_3
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/RawTexture;->getId()I

    move-result v4

    const v2, 0x8ce0

    const/16 v3, 0xde1

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    invoke-static {v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V

    goto :goto_0
.end method

.method private setTextureColor(FFFF)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureColor:[F

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

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    sub-float v1, p3, p1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    sub-float v1, p4, p2

    const/4 v2, 0x5

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureMatrixValues:[F

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

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

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(FFFF)V

    return-void
.end method

.method private setTextureCoords([F)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    return-void
.end method

.method private textureRect(FFFF)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->saveTransform()V

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->translate(FF)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p3, p4, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->scale(FFF)V

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->restoreTransform()V

    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureRect:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureRect:I

    return-void
.end method

.method private uploadBuffer(Ljava/nio/Buffer;I)I
    .locals 5

    const v4, 0x8892

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    array-length v2, v0

    invoke-interface {v1, v2, v0, v3}, Lcom/android/gallery3d/glrenderer/GLId;->glGenBuffers(I[II)V

    aget v0, v0, v3

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v4, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    mul-int/2addr v2, p2

    const v3, 0x88e4

    invoke-interface {v1, v4, v2, p1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    return v0
.end method


# virtual methods
.method public beginRenderTarget(Lcom/android/gallery3d/glrenderer/RawTexture;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->save()V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTargetStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setRenderTarget(Lcom/android/gallery3d/glrenderer/RawTexture;)V

    return-void
.end method

.method public clearBuffer()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->clearBuffer([F)V

    return-void
.end method

.method public clearBuffer([F)V
    .locals 5

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

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
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v1, 0x3c808081

    const v2, 0x3e1c9c9d

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    goto :goto_0
.end method

.method public clipRect(IIII)Z
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mapPoints([FIIII)[F

    move-result-object v2

    aget v0, v2, v6

    aget v1, v2, v8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    aget v0, v2, v8

    float-to-int v1, v0

    aget v0, v2, v6

    float-to-int v0, v0

    :goto_0
    aget v3, v2, v7

    aget v4, v2, v9

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    aget v3, v2, v9

    float-to-int v3, v3

    aget v2, v2, v7

    float-to-int v2, v2

    :goto_1
    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v0, v2}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v2, v4, Landroid/graphics/Rect;->left:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-interface {v1, v2, v3, v5, v4}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    return v0

    :cond_1
    aget v0, v2, v6

    float-to-int v1, v0

    aget v0, v2, v8

    float-to-int v0, v0

    goto :goto_0

    :cond_2
    aget v3, v2, v7

    float-to-int v3, v3

    aget v2, v2, v9

    float-to-int v2, v2

    goto :goto_1
.end method

.method public copyTexture(IIII)Lcom/android/gallery3d/glrenderer/BasicTexture;
    .locals 10

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-static {v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->isMatrixRotatedOrFlipped([F)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cannot support rotated matrix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    add-int v3, p2, p4

    add-int v4, p1, p3

    move-object v0, p0

    move v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mapPoints([FIIII)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    float-to-int v4, v1

    const/4 v1, 0x1

    aget v1, v0, v1

    float-to-int v5, v1

    const/4 v1, 0x2

    aget v1, v0, v1

    float-to-int v1, v1

    sub-int/2addr v1, v4

    const/4 v2, 0x3

    aget v0, v0, v2

    float-to-int v0, v0

    sub-int v2, v0, v5

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    new-instance v9, Lcom/android/gallery3d/glrenderer/RawTexture;

    const/4 v3, 0x1

    invoke-direct {v9, v1, v2, v3}, Lcom/android/gallery3d/glrenderer/RawTexture;-><init>(IIZ)V

    invoke-virtual {v9}, Lcom/android/gallery3d/glrenderer/RawTexture;->getId()I

    move-result v3

    const/16 v6, 0xde1

    invoke-interface {v0, v6, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    invoke-virtual {v9, v1, v2}, Lcom/android/gallery3d/glrenderer/RawTexture;->setSize(II)V

    const/4 v3, 0x4

    new-array v3, v3, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v6, v3, v7

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v6, v3, v7

    const/4 v6, 0x2

    aput v1, v3, v6

    const/4 v1, 0x3

    aput v2, v3, v1

    const/16 v1, 0xde1

    const v2, 0x8b9d

    const/4 v6, 0x0

    invoke-interface {v0, v1, v2, v3, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    const/16 v1, 0xde1

    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    const/16 v1, 0xde1

    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    const v1, 0x46180400    # 9729.0f

    const/16 v2, 0xde1

    const/16 v3, 0x2801

    invoke-interface {v0, v2, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    const v1, 0x46180400    # 9729.0f

    const/16 v2, 0xde1

    const/16 v3, 0x2800

    invoke-interface {v0, v2, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    invoke-virtual {v9}, Lcom/android/gallery3d/glrenderer/RawTexture;->getTextureWidth()I

    move-result v6

    invoke-virtual {v9}, Lcom/android/gallery3d/glrenderer/RawTexture;->getTextureHeight()I

    move-result v7

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1907

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL11;->glCopyTexImage2D(IIIIIIII)V

    return-object v9
.end method

.method public currentAnimationTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAnimationTime:J

    return-wide v0
.end method

.method public deleteBuffer(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public deleteRecycledResources()V
    .locals 7

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/gallery3d/glrenderer/GLId;->glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/gallery3d/glrenderer/GLId;->glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public drawCubicBezierCurve(FFFFFFFFFFFFLcom/android/gallery3d/glrenderer/GLPaint;)V
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual/range {p13 .. p13}, Lcom/android/gallery3d/glrenderer/GLPaint;->getColor()I

    move-result v1

    invoke-virtual/range {p13 .. p13}, Lcom/android/gallery3d/glrenderer/GLPaint;->getAlpha()F

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setColorMode(IFZ)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual/range {p13 .. p13}, Lcom/android/gallery3d/glrenderer/GLPaint;->getLineWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setLineWidth(F)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual/range {p13 .. p13}, Lcom/android/gallery3d/glrenderer/GLPaint;->getAntiAlias()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setLineSmooth(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    sget-object v1, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->borderColor:[F

    const/16 v2, 0xb00

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(I[FI)V

    invoke-direct/range {p0 .. p12}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->calcCubicBezierCoords(FFFFFFFFFFFF)V

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->calcCubicBezierBorderColors()V

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->calcCubicBezierBorderCoords()V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->drawCubicCurve()V

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->drawBorder()V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBoxCoords:I

    const v2, 0x8892

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawCubicBezierCurve:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawCubicBezierCurve:I

    return-void
.end method

.method public drawLine(FFFFLcom/android/gallery3d/glrenderer/GLPaint;)V
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/android/gallery3d/glrenderer/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setColorMode(IF)V

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/android/gallery3d/glrenderer/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setLineWidth(F)V

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/android/gallery3d/glrenderer/GLPaint;->getAntiAlias()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setLineSmooth(Z)V

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->saveTransform()V

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->translate(FF)V

    sub-float v1, p3, p1

    sub-float v2, p4, p2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->scale(FFF)V

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->restoreTransform()V

    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    return-void
.end method

.method public drawMesh(Lcom/android/gallery3d/glrenderer/BasicTexture;IIIIII)V
    .locals 8

    const/4 v7, 0x0

    const v6, 0x8892

    const/16 v5, 0x1406

    const/4 v4, 0x2

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-direct {p0, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x3f733333    # 0.95f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v7, v7, v0, v2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(FFFF)V

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->saveTransform()V

    int-to-float v0, p2

    int-to-float v2, p3

    invoke-virtual {p0, v0, v2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v6, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v4, v5, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v6, p5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v4, v5, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v2, 0x8893

    invoke-interface {v0, v2, p6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v2, 0x5

    const/16 v3, 0x1401

    invoke-interface {v0, v2, p7, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBoxCoords:I

    invoke-interface {v0, v6, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v4, v5, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v4, v5, v1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->restoreTransform()V

    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawMesh:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawMesh:I

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public drawMixed(Lcom/android/gallery3d/glrenderer/BasicTexture;IFIIII)V
    .locals 9

    iget v8, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->drawMixed(Lcom/android/gallery3d/glrenderer/BasicTexture;IFIIIIF)V

    return-void
.end method

.method public drawMixed(Lcom/android/gallery3d/glrenderer/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v2, p3, v2

    if-gtz v2, :cond_2

    invoke-virtual {p0, p1, p4, p5}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_3

    iget v1, p5, Landroid/graphics/RectF;->left:F

    iget v2, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->fillRect(FFFFI)V

    return-void

    :cond_3
    iget v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v3, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v3, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v6, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p2}, Lcom/android/gallery3d/util/Utils;->isOpaque(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x3f733333    # 0.95f

    cmpg-float v6, v2, v6

    if-gez v6, :cond_5

    :cond_4
    :goto_0
    invoke-virtual {v5, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    const v1, 0x8570

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    invoke-direct {p0, p2, p3, v2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setMixedColor(IFF)V

    invoke-static {v3, v4, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/glrenderer/BasicTexture;)V

    invoke-direct {p0, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(Landroid/graphics/RectF;)V

    iget v0, v4, Landroid/graphics/RectF;->left:F

    iget v1, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->textureRect(FFFF)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    const/16 v1, 0x1e01

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTexEnvMode(I)V

    return-void
.end method

.method public drawMixed(Lcom/android/gallery3d/glrenderer/BasicTexture;Lcom/android/gallery3d/glrenderer/BasicTexture;FIIII)V
    .locals 9

    iget v8, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->drawMixed(Lcom/android/gallery3d/glrenderer/BasicTexture;Lcom/android/gallery3d/glrenderer/BasicTexture;FIIIIF)V

    return-void
.end method

.method public drawRect(FFFFLcom/android/gallery3d/glrenderer/GLPaint;)V
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/android/gallery3d/glrenderer/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setColorMode(IF)V

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/android/gallery3d/glrenderer/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setLineWidth(F)V

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {p5}, Lcom/android/gallery3d/glrenderer/GLPaint;->getAntiAlias()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setLineSmooth(Z)V

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->saveTransform()V

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->translate(FF)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p3, p4, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->scale(FFF)V

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->restoreTransform()V

    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    return-void
.end method

.method public drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIII)V
    .locals 7

    iget v6, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIIIF)V

    return-void
.end method

.method public drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIIIF)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p4, :cond_0

    if-gtz p5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x3f733333    # 0.95f

    cmpg-float v3, p6, v3

    if-gez v3, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    invoke-virtual {v0, p6}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    invoke-direct/range {p0 .. p5}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->drawBoundTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;IIII)V

    return-void
.end method

.method public drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v2, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v2, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v5, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    const v6, 0x3f733333    # 0.95f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {v4, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    invoke-static {v2, v3, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/android/gallery3d/glrenderer/BasicTexture;)V

    invoke-direct {p0, v2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    iget v0, v3, Landroid/graphics/RectF;->left:F

    iget v1, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->textureRect(FFFF)V

    return-void
.end method

.method public drawTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;[FIIII)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget-boolean v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isOpaque()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    const v4, 0x3f733333    # 0.95f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setBlendEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->bindTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setTextureCoords([F)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setTextureAlpha(F)V

    int-to-float v0, p3

    int-to-float v1, p4

    int-to-float v2, p5

    int-to-float v3, p6

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->textureRect(FFFF)V

    return-void
.end method

.method public dumpStatisticsAndClear()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "MESH:%d, TEX_OES:%d, TEX_RECT:%d, FILL_RECT:%d, LINE:%d, CIRCLE:%d, CUBICBEZIERCURVE:%d"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawMesh:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureRect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureOES:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountFillRect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawCircle:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawCubicBezierCurve:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput v4, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawMesh:I

    iput v4, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureRect:I

    iput v4, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountTextureOES:I

    iput v4, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountFillRect:I

    iput v4, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawLine:I

    iput v4, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawCircle:I

    iput v4, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountDrawCubicBezierCurve:I

    const-string/jumbo v1, "GLCanvasImp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public endRenderTarget()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTargetStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTargetStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/glrenderer/RawTexture;

    invoke-direct {p0, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->setRenderTarget(Lcom/android/gallery3d/glrenderer/RawTexture;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->restore()V

    return-void
.end method

.method public fillRect(FFFFI)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLState:Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    invoke-virtual {v0, p5, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$GLState;->setColorMode(IF)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->saveTransform()V

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->translate(FF)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p3, p4, v1}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->scale(FFF)V

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->restoreTransform()V

    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountFillRect:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mCountFillRect:I

    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    return v0
.end method

.method public getBounds(Landroid/graphics/Rect;IIII)V
    .locals 0

    return-void
.end method

.method public getGLId()Lcom/android/gallery3d/glrenderer/GLId;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGLId:Lcom/android/gallery3d/glrenderer/GLId;

    return-object v0
.end method

.method public getTextureIdBuffer()[I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTextureId:[I

    return-object v0
.end method

.method public getViewMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    return-object v0
.end method

.method public initializeTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    invoke-static {v0, v3, p2, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    return-void
.end method

.method public initializeTextureSize(Lcom/android/gallery3d/glrenderer/BasicTexture;II)V
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v3

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTextureHeight()I

    move-result v5

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v9, 0x0

    move v3, p2

    move v6, v2

    move v7, p2

    move v8, p3

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public multiplyAlpha(F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->assertTrue(Z)V

    iget v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    return-void
.end method

.method public multiplyMatrix([FI)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTempMatrix:[F

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    move v3, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public recoverFromLightCycle()V
    .locals 0

    return-void
.end method

.method public restore()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->restore(Lcom/android/gallery3d/glrenderer/GLES11Canvas;)V

    invoke-direct {p0, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->freeRestoreConfig(Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;)V

    return-void
.end method

.method public rotate(FFFF)V
    .locals 9

    const/16 v8, 0x10

    const/4 v1, 0x0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTempMatrix:[F

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    iget-object v4, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    move-object v2, v0

    move v3, v8

    move v5, v1

    move-object v6, v0

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-static {v0, v8, v2, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public save()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->save(I)V

    return-void
.end method

.method public save(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->obtainRestoreConfig()Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;

    move-result-object v0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    iput v1, v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mAlpha:F

    :goto_0
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    iget-object v2, v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mMatrix:[F

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mAlpha:F

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mRect:Landroid/graphics/Rect;

    const v2, 0x7fffffff

    iput v2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/android/gallery3d/glrenderer/GLES11Canvas$ConfigState;->mMatrix:[F

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    aput v2, v1, v4

    goto :goto_2
.end method

.method public scale(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->assertTrue(Z)V

    iput p1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    return-void
.end method

.method public setBlendEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mBlendEnabled:Z

    return-void
.end method

.method public setCurrentAnimationTimeMillis(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->assertTrue(Z)V

    iput-wide p1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAnimationTime:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->assertTrue(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mScreenWidth:I

    iput p2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mScreenHeight:I

    :cond_0
    iput v5, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mAlpha:F

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, v1, v1, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    const/16 v2, 0x1701

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-static {v0, v4, v2, v4, v3}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    const/16 v2, 0x1700

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    invoke-static {v2, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mTargetTexture:Lcom/android/gallery3d/glrenderer/RawTexture;

    if-nez v3, :cond_1

    int-to-float v3, p2

    invoke-static {v2, v1, v4, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v1, v5, v3, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-interface {v0, v1, v1, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public setTextureParameters(Lcom/android/gallery3d/glrenderer/BasicTexture;)V
    .locals 8

    const v7, 0x812f

    const/4 v6, 0x0

    const v5, 0x46180400    # 9729.0f

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    const/4 v3, 0x0

    aput v3, v2, v6

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    int-to-float v3, v1

    const/4 v4, 0x1

    aput v3, v2, v4

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    int-to-float v0, v0

    const/4 v3, 0x2

    aput v0, v2, v3

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->sCropRect:[F

    const v3, 0x8b9d

    invoke-interface {v1, v0, v3, v2, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v2, 0x2802

    invoke-interface {v1, v0, v2, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v2, 0x2803

    invoke-interface {v1, v0, v2, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v2, 0x2801

    invoke-interface {v1, v0, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v2, 0x2800

    invoke-interface {v1, v0, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    return-void
.end method

.method public texSubImage2D(Lcom/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getTarget()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    if-nez p4, :cond_0

    const-string/jumbo v0, "GLCanvasImp"

    const-string/jumbo v1, "bitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "GLCanvasImp"

    const-string/jumbo v1, "bitmap is recycled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
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

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

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

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public unloadTexture(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unloadTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;)Z
    .locals 3

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/android/gallery3d/glrenderer/BasicTexture;->isLoaded()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->mUnboundTextures:Lcom/android/gallery3d/util/IntArray;

    iget v2, p1, Lcom/android/gallery3d/glrenderer/BasicTexture;->mId:I

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/util/IntArray;->add(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public uploadBuffer(Ljava/nio/ByteBuffer;)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result v0

    return v0
.end method

.method public uploadBuffer(Ljava/nio/FloatBuffer;)I
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/glrenderer/GLES11Canvas;->uploadBuffer(Ljava/nio/Buffer;I)I

    move-result v0

    return v0
.end method
