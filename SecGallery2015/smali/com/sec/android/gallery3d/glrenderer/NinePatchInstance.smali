.class Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;
.super Ljava/lang/Object;
.source "NinePatchTexture.java"


# static fields
.field private static final INDEX_BUFFER_SIZE:I = 0x18

.field private static final TAG:Ljava/lang/String; = "NinePatchInstance"

.field private static final VERTEX_BUFFER_SIZE:I = 0x20


# instance fields
.field private mIdxCount:I

.field private mIndexBuffer:Ljava/nio/ByteBuffer;

.field private mIndexBufferName:I

.field private mUvBuffer:Ljava/nio/FloatBuffer;

.field private mUvBufferName:I

.field private mXyBuffer:Ljava/nio/FloatBuffer;

.field private mXyBufferName:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;II)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mXyBufferName:I

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->getNinePatchChunk()Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;

    move-result-object v8

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "invalid dimension"

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v8, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mDivX:[I

    array-length v0, v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_2

    iget-object v0, v8, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mDivY:[I

    array-length v0, v0

    const/4 v7, 0x2

    if-eq v0, v7, :cond_5

    :cond_2
    iget-object v0, v8, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mDivX:[I

    array-length v0, v0

    const/4 v7, 0x2

    if-lt v0, v7, :cond_3

    iget-object v0, v8, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mDivY:[I

    array-length v0, v0

    const/4 v7, 0x2

    if-ge v0, v7, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "unsupported nine patch"

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v7, 0x0

    iget-object v9, v8, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mDivX:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    aput v9, v0, v7

    const/4 v7, 0x1

    iget-object v9, v8, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mDivX:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    aput v9, v0, v7

    iput-object v0, v8, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mDivX:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v7, 0x0

    iget-object v9, v8, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mDivY:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    aput v9, v0, v7

    const/4 v7, 0x1

    iget-object v9, v8, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mDivY:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    aput v9, v0, v7

    iput-object v0, v8, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mDivY:[I

    :cond_5
    const/4 v0, 0x4

    new-array v1, v0, [F

    const/4 v0, 0x4

    new-array v2, v0, [F

    const/4 v0, 0x4

    new-array v3, v0, [F

    const/4 v0, 0x4

    new-array v4, v0, [F

    iget-object v0, v8, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mDivX:[I

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->getWidth()I

    move-result v7

    invoke-static {v1, v3, v0, v7, p2}, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->stretch([F[F[III)I

    move-result v5

    iget-object v0, v8, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mDivY:[I

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->getHeight()I

    move-result v7

    invoke-static {v2, v4, v0, v7, p3}, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->stretch([F[F[III)I

    move-result v6

    iget-object v7, v8, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mColor:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->prepareVertexData([F[F[F[FII[I)V

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

.method private prepareBuffers(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->uploadBuffer(Ljava/nio/FloatBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mXyBufferName:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->uploadBuffer(Ljava/nio/FloatBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mUvBufferName:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->uploadBuffer(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mIndexBufferName:I

    iput-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private prepareVertexData([F[F[F[FII[I)V
    .locals 27

    const/4 v15, 0x0

    const/16 v24, 0x20

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v22, v0

    const/16 v24, 0x20

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/4 v13, 0x0

    :goto_0
    move/from16 v0, p6

    if-ge v13, v0, :cond_1

    const/4 v7, 0x0

    move/from16 v16, v15

    :goto_1
    move/from16 v0, p5

    if-ge v7, v0, :cond_0

    add-int/lit8 v15, v16, 0x1

    shl-int/lit8 v21, v16, 0x1

    add-int/lit8 v23, v21, 0x1

    aget v24, p1, v7

    aput v24, v22, v21

    aget v24, p2, v13

    aput v24, v22, v23

    aget v24, p3, v7

    aput v24, v20, v21

    aget v24, p4, v13

    aput v24, v20, v23

    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v15

    goto :goto_1

    :cond_0
    add-int/lit8 v13, v13, 0x1

    move/from16 v15, v16

    goto :goto_0

    :cond_1
    const/4 v8, 0x1

    const/4 v12, 0x0

    const/16 v24, 0x18

    move/from16 v0, v24

    new-array v11, v0, [B

    const/16 v17, 0x0

    :goto_2
    add-int/lit8 v24, p6, -0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    add-int/lit8 v8, v8, -0x1

    if-nez v12, :cond_4

    const/4 v12, 0x1

    :goto_3
    if-eqz v12, :cond_5

    const/16 v19, 0x0

    move/from16 v6, p5

    const/4 v10, 0x1

    :goto_4
    move/from16 v4, v19

    :goto_5
    if-eq v4, v6, :cond_6

    mul-int v24, v17, p5

    add-int v14, v24, v4

    move/from16 v0, v19

    if-eq v4, v0, :cond_3

    add-int/lit8 v24, p5, -0x1

    mul-int v24, v24, v17

    add-int v5, v24, v4

    if-eqz v12, :cond_2

    add-int/lit8 v5, v5, -0x1

    :cond_2
    aget v24, p7, v5

    if-nez v24, :cond_3

    add-int/lit8 v24, v8, -0x1

    aget-byte v24, v11, v24

    aput-byte v24, v11, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v8, 0x1

    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v11, v8

    move v8, v9

    :cond_3
    add-int/lit8 v9, v8, 0x1

    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v11, v8

    add-int/lit8 v8, v9, 0x1

    add-int v24, v14, p5

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v11, v9

    add-int/2addr v4, v10

    goto :goto_5

    :cond_4
    const/4 v12, 0x0

    goto :goto_3

    :cond_5
    add-int/lit8 v19, p5, -0x1

    const/4 v6, -0x1

    const/4 v10, -0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mIdxCount:I

    mul-int/lit8 v24, v15, 0x2

    mul-int/lit8 v18, v24, 0x4

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v18 .. v18}, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mIdxCount:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    mul-int/lit8 v26, v15, 0x2

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    mul-int/lit8 v26, v15, 0x2

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v11, v1, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private static stretch([F[F[III)I
    .locals 15

    invoke-static/range {p3 .. p3}, Lcom/sec/android/gallery3d/common/Utils;->nextPowerOf2(I)I

    move-result v11

    move/from16 v0, p3

    int-to-float v12, v0

    int-to-float v13, v11

    div-float v10, v12, v13

    const/4 v9, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p2

    array-length v5, v0

    :goto_0
    if-ge v1, v5, :cond_0

    add-int/lit8 v12, v1, 0x1

    aget v12, p2, v12

    aget v13, p2, v1

    sub-int/2addr v12, v13

    int-to-float v12, v12

    add-float/2addr v9, v12

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    sub-int v12, p4, p3

    int-to-float v12, v12

    add-float v8, v12, v9

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, p0, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, p1, v12

    const/4 v1, 0x0

    move-object/from16 v0, p2

    array-length v5, v0

    :goto_1
    if-ge v1, v5, :cond_1

    add-int/lit8 v12, v1, 0x1

    aget v13, p2, v1

    int-to-float v13, v13

    sub-float/2addr v13, v3

    add-float/2addr v13, v4

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    aput v13, p0, v12

    add-int/lit8 v12, v1, 0x1

    aget v13, p2, v1

    int-to-float v13, v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    int-to-float v14, v11

    div-float/2addr v13, v14

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v13

    aput v13, p1, v12

    add-int/lit8 v12, v1, 0x1

    aget v12, p2, v12

    aget v13, p2, v1

    sub-int/2addr v12, v13

    int-to-float v6, v12

    mul-float v12, v8, v6

    div-float v7, v12, v9

    sub-float/2addr v8, v7

    sub-float/2addr v9, v6

    add-int/lit8 v12, v1, 0x1

    aget v12, p0, v12

    add-float v4, v12, v7

    add-int/lit8 v12, v1, 0x1

    aget v12, p2, v12

    int-to-float v3, v12

    add-int/lit8 v12, v1, 0x2

    const/high16 v13, 0x3f000000    # 0.5f

    sub-float v13, v4, v13

    aput v13, p0, v12

    add-int/lit8 v12, v1, 0x2

    const/high16 v13, 0x3f000000    # 0.5f

    sub-float v13, v3, v13

    int-to-float v14, v11

    div-float/2addr v13, v14

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v13

    aput v13, p1, v12

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    move-object/from16 v0, p2

    array-length v12, v0

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p4

    int-to-float v13, v0

    aput v13, p0, v12

    move-object/from16 v0, p2

    array-length v12, v0

    add-int/lit8 v12, v12, 0x1

    aput v10, p1, v12

    const/4 v2, 0x0

    const/4 v1, 0x1

    move-object/from16 v0, p2

    array-length v12, v0

    add-int/lit8 v5, v12, 0x2

    :goto_2
    if-ge v1, v5, :cond_3

    aget v12, p0, v1

    aget v13, p0, v2

    sub-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    aget v12, p0, v1

    aput v12, p0, v2

    aget v12, p1, v1

    aput v12, p1, v2

    goto :goto_3

    :cond_3
    add-int/lit8 v12, v2, 0x1

    return v12
.end method


# virtual methods
.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;II)V
    .locals 8

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mXyBufferName:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->prepareBuffers(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    :cond_0
    iget v4, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mXyBufferName:I

    iget v5, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mUvBufferName:I

    iget v6, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mIndexBufferName:I

    iget v7, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mIdxCount:I

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-interface/range {v0 .. v7}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawMesh(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IIIIII)V

    return-void
.end method

.method public recycle(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mXyBufferName:I

    invoke-interface {p1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->deleteBuffer(I)V

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mUvBufferName:I

    invoke-interface {p1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->deleteBuffer(I)V

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mIndexBufferName:I

    invoke-interface {p1, v0}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->deleteBuffer(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->mXyBufferName:I

    :cond_0
    return-void
.end method
