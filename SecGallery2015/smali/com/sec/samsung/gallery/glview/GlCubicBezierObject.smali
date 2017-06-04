.class public Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;
.super Lcom/sec/android/gallery3d/glcore/GlObject;
.source "GlCubicBezierObject.java"


# static fields
.field private static final CUBIC_BEZIER_BORDER_THICKNESS:F = 3.0f

.field private static final CUBIC_BEZIER_VERTEX_COUNT:I = 0x42


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V
    .locals 2

    int-to-float v0, p2

    int-to-float v1, p3

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;FF)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setSupportRtl(Z)V

    const/16 v0, 0x42

    iput v0, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundVertexCnt:I

    return-void
.end method

.method private calcCubicBezierBorderColors()V
    .locals 15

    const/4 v14, 0x0

    const/high16 v12, 0x437f0000    # 255.0f

    const/4 v5, 0x0

    const/16 v10, 0x16

    add-int/lit8 v7, v10, -0x1

    iget v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mEmptyFillColor:I

    shr-int/lit8 v11, v11, 0x10

    and-int/lit16 v11, v11, 0xff

    int-to-float v11, v11

    div-float v8, v11, v12

    iget v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mEmptyFillColor:I

    shr-int/lit8 v11, v11, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-float v11, v11

    div-float v3, v11, v12

    iget v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mEmptyFillColor:I

    and-int/lit16 v11, v11, 0xff

    int-to-float v11, v11

    div-float v2, v11, v12

    const/4 v1, 0x0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mAlphaInh:F

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    if-nez v11, :cond_0

    const/16 v11, 0xb0

    new-array v11, v11, [F

    iput-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    :cond_0
    const/4 v4, 0x0

    move v6, v5

    :goto_0
    if-ge v4, v7, :cond_1

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    add-int/lit8 v5, v6, 0x1

    aput v8, v11, v6

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    add-int/lit8 v6, v5, 0x1

    aput v3, v11, v5

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    add-int/lit8 v5, v6, 0x1

    aput v2, v11, v6

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    add-int/lit8 v6, v5, 0x1

    aput v1, v11, v5

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    add-int/lit8 v5, v6, 0x1

    aput v8, v11, v6

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    add-int/lit8 v6, v5, 0x1

    aput v3, v11, v5

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    add-int/lit8 v5, v6, 0x1

    aput v2, v11, v6

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    add-int/lit8 v6, v5, 0x1

    aput v0, v11, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    add-int/lit8 v5, v6, 0x1

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    aget v12, v12, v14

    aput v12, v11, v6

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    add-int/lit8 v6, v5, 0x1

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    aput v12, v11, v5

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    add-int/lit8 v5, v6, 0x1

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    aput v12, v11, v6

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    add-int/lit8 v6, v5, 0x1

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    const/4 v13, 0x3

    aget v12, v12, v13

    aput v12, v11, v5

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    add-int/lit8 v5, v6, 0x1

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    const/4 v13, 0x4

    aget v12, v12, v13

    aput v12, v11, v6

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    add-int/lit8 v6, v5, 0x1

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    const/4 v13, 0x5

    aget v12, v12, v13

    aput v12, v11, v5

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    add-int/lit8 v5, v6, 0x1

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    const/4 v13, 0x6

    aget v12, v12, v13

    aput v12, v11, v6

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    const/4 v13, 0x7

    aget v12, v12, v13

    aput v12, v11, v5

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertexBorderColorBuffer:Ljava/nio/FloatBuffer;

    if-nez v11, :cond_2

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    array-length v11, v11

    mul-int/lit8 v11, v11, 0x20

    div-int/lit8 v11, v11, 0x8

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertexBorderColorBuffer:Ljava/nio/FloatBuffer;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertexBorderColorBuffer:Ljava/nio/FloatBuffer;

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertexBorderColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    return-void

    :cond_2
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertexBorderColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v11}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertexBorderColorBuffer:Ljava/nio/FloatBuffer;

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderColor:[F

    invoke-virtual {v11, v12}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertexBorderColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v11, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1
.end method

.method private calcCubicBezierBorderCoords(IIZ)V
    .locals 12

    const/16 v11, 0x40

    const/16 v10, 0x3f

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v3, 0x16

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    if-nez v4, :cond_0

    const/16 v4, 0x84

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    :cond_0
    const/high16 v4, 0x40400000    # 3.0f

    int-to-float v5, p2

    div-float v2, v4, v5

    if-eqz p3, :cond_1

    neg-float v2, v2

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    aget v5, v5, v8

    aput v5, v4, v8

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    aget v5, v5, v7

    add-float/2addr v5, v2

    aput v5, v4, v7

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    aget v5, v5, v9

    aput v5, v4, v9

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    aget v6, v6, v8

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    aget v6, v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    aget v6, v6, v9

    aput v6, v4, v5

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x14

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    mul-int/lit8 v5, v0, 0x6

    add-int/lit8 v5, v5, 0x6

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v7, v7, 0x3

    aget v6, v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    mul-int/lit8 v5, v0, 0x6

    add-int/lit8 v5, v5, 0x7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v7, v7, 0x4

    aget v6, v6, v7

    add-float/2addr v6, v2

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    mul-int/lit8 v5, v0, 0x6

    add-int/lit8 v5, v5, 0x8

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v7, v7, 0x5

    aget v6, v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    mul-int/lit8 v5, v0, 0x6

    add-int/lit8 v5, v5, 0x9

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v7, v7, 0x3

    aget v6, v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    mul-int/lit8 v5, v0, 0x6

    add-int/lit8 v5, v5, 0xa

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v7, v7, 0x4

    aget v6, v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    mul-int/lit8 v5, v0, 0x6

    add-int/lit8 v5, v5, 0xb

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v7, v7, 0x5

    aget v6, v6, v7

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    const/16 v5, 0x7e

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    aget v6, v6, v10

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    const/16 v5, 0x7f

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    aget v6, v6, v11

    add-float/2addr v6, v2

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    const/16 v5, 0x80

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    const/16 v7, 0x41

    aget v6, v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    const/16 v5, 0x81

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    aget v6, v6, v10

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    const/16 v5, 0x82

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    aget v6, v6, v11

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    const/16 v5, 0x83

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    const/16 v7, 0x41

    aget v6, v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x20

    div-int/lit8 v4, v4, 0x8

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    return-void

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertices:[F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1
.end method

.method private calcCubicBezierCoords(FFFFFFFFFFFFII)V
    .locals 9

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    if-nez v4, :cond_0

    const/16 v4, 0x42

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    const/4 v5, 0x0

    aput p1, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    const/4 v5, 0x1

    aput p2, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x14

    if-ge v1, v4, :cond_1

    int-to-float v4, v1

    const/high16 v5, 0x41980000    # 19.0f

    div-float v2, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x3

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

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x4

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

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x5

    const/4 v6, 0x0

    aput v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    const/16 v5, 0x3f

    aput p11, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    const/16 v5, 0x40

    aput p12, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    const/16 v5, 0x41

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v1, 0x0

    :goto_1
    const/16 v4, 0x16

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    mul-int/lit8 v5, v1, 0x3

    aget v6, v4, v5

    move/from16 v0, p13

    int-to-float v7, v0

    div-float/2addr v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    mul-int/lit8 v5, v1, 0x3

    aget v6, v4, v5

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x1

    aget v6, v4, v5

    move/from16 v0, p14

    neg-int v7, v0

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x20

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :goto_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertices:[F

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2
.end method

.method private drawBorder(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 5

    const v4, 0x8076

    const/16 v3, 0x1406

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->calcCubicBezierBorderColors()V

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedBorderVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlState;->setRectVertex(Z)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertexBorderColorBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIILjava/nio/Buffer;)V

    const/4 v0, 0x5

    const/16 v1, 0x2c

    invoke-interface {p1, v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDisableClientState(I)V

    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL11;ZZ)V
    .locals 19

    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mExtChanged:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mExtChanged:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mMatrixVal:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mMatrixVal:[F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mx:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->my:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mz:F

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mScaleX:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mScaleY:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mMatrixVal:[F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mScaleX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mScaleY:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mMatrixVal:[F

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mHeight:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_2
    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mMatrixDisp:[F

    const/4 v2, 0x0

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixValEx:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mMatrixVal:[F

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mMatrixValEx:[F

    const/4 v2, 0x0

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixValEx:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mMatrixValInh:[F

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move-object/from16 v0, v18

    iget v1, v0, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaInh:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mAlpha:F

    mul-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mAlphaInh:F

    :cond_3
    if-eqz p3, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mHeight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mMatrixDisp:[F

    array-length v1, v1

    move/from16 v0, v17

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mMatrixDisp:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mMatrixDisp:[F

    aget v2, v2, v17

    sget v3, Lcom/sec/android/gallery3d/glcore/TUtils;->PRECISION_INT:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    sget v3, Lcom/sec/android/gallery3d/glcore/TUtils;->PRECISION_FLOAT:F

    div-float/2addr v2, v3

    aput v2, v1, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mMatrixDisp:[F

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mEmptyFill:Z

    if-eqz v1, :cond_9

    :cond_5
    const/16 v1, 0xde1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlState;->getBlendType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlState;->setBlendType(I)V

    const/16 v1, 0x302

    const/16 v2, 0x303

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mEmptyFillRed:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mEmptyFillGreen:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mEmptyFillBlue:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mAlphaInh:F

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v1, :cond_7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v15}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->calcCubicBezierCoords(FFFFFFFFFFFFII)V

    :cond_7
    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlState;->setRectVertex(Z)V

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/16 v3, 0x16

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    invoke-direct/range {p0 .. p1}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->drawBorder(Ljavax/microedition/khronos/opengles/GL11;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlState;->getBlendType()I

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlState;->setBlendType(I)V

    const/4 v1, 0x1

    const/16 v2, 0x303

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    :cond_8
    const/16 v1, 0xde1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    :cond_9
    return-void
.end method

.method public drawCubicBezierCurve(FFFFFFFFFFFFII)V
    .locals 1

    invoke-direct/range {p0 .. p14}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->calcCubicBezierCoords(FFFFFFFFFFFFII)V

    const/4 v0, 0x0

    cmpl-float v0, p6, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p13, p14, v0}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->calcCubicBezierBorderCoords(IIZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
