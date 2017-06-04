.class public abstract Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
.super Lcom/sec/android/gallery3d/glrenderer/BasicTexture;
.source "UploadedTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/glrenderer/UploadedTexture$BorderKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Texture"

.field static final UPLOAD_LIMIT:I = 0x64

.field private static final sBorderKey:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture$BorderKey;

.field private static final sBorderLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/gallery3d/glrenderer/UploadedTexture$BorderKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field private mBorder:I

.field private mContentValid:Z

.field private mOpaque:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture$BorderKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture$BorderKey;-><init>(Lcom/sec/android/gallery3d/glrenderer/UploadedTexture$1;)V

    sput-object v0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->sBorderKey:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture$BorderKey;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;-><init>(Z)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v2}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;-><init>(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)V

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mOpaque:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->setBorder(Z)V

    iput v1, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    :cond_0
    return-void
.end method

.method private freeBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->onFreeBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    mul-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    mul-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    iget v2, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->setSize(II)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private static getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x1

    sget-object v1, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->sBorderKey:Lcom/sec/android/gallery3d/glrenderer/UploadedTexture$BorderKey;

    iput-boolean p0, v1, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture$BorderKey;->vertical:Z

    iput-object p1, v1, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    iput p2, v1, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture$BorderKey;->length:I

    sget-object v2, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    invoke-static {v3, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    sget-object v2, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture$BorderKey;->clone()Lcom/sec/android/gallery3d/glrenderer/UploadedTexture$BorderKey;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    invoke-static {p2, v3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private uploadToCanvas(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 21

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mState:I

    const-string/jumbo v2, "Texture"

    const-string/jumbo v3, "bitmap is null or recycled."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getTextureWidth()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getTextureHeight()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v20

    if-gt v0, v1, :cond_3

    move/from16 v0, v16

    move/from16 v1, v19

    if-gt v0, v1, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-interface/range {p1 .. p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->getGLId()Lcom/sec/android/gallery3d/glrenderer/GLId;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/glrenderer/GLId;->generateTexture()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mId:I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->setTextureParameters(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;)V

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v6}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->initializeTexture(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->setAssociatedCanvas(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mState:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-static {v6}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v7

    invoke-static {v6}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v18

    if-nez v18, :cond_5

    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const-string/jumbo v2, "Texture"

    const-string/jumbo v3, "Bitmap config is null, set config to default ARGB_8888."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v7, v8}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->initializeTextureSize(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;II)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-interface/range {v2 .. v8}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    if-lez v2, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p0

    move v14, v7

    move v15, v8

    invoke-interface/range {v9 .. v15}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    const/4 v2, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v2, v0, v1}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p0

    move v14, v7

    move v15, v8

    invoke-interface/range {v9 .. v15}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    add-int v2, v2, v17

    move/from16 v0, v20

    if-ge v2, v0, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v2, v0, v1}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    add-int v11, v2, v17

    const/4 v12, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p0

    move v14, v7

    move v15, v8

    invoke-interface/range {v9 .. v15}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    add-int v2, v2, v16

    move/from16 v0, v19

    if-ge v2, v0, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v2, v0, v1}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    add-int v12, v2, v16

    move-object/from16 v9, p1

    move-object/from16 v10, p0

    move v14, v7

    move v15, v8

    invoke-interface/range {v9 .. v15}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    throw v2
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mHeight:I

    return v0
.end method

.method protected getTarget()I
    .locals 1

    const/16 v0, 0xde1

    return v0
.end method

.method public getTextureBitmap()Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    return v0
.end method

.method protected invalidateContent()V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    iput v1, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    iput v1, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mHeight:I

    return-void
.end method

.method public isContentValid()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mOpaque:Z

    return v0
.end method

.method protected onBind(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->updateContent(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->isContentValid()Z

    move-result v0

    return v0
.end method

.method protected abstract onFreeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract onGetBitmap()Landroid/graphics/Bitmap;
.end method

.method public recycle()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/gallery3d/glrenderer/BasicTexture;->recycle()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    :cond_0
    return-void
.end method

.method public setOpaque(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mOpaque:Z

    return-void
.end method

.method public updateContent(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->getUploadedCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-interface {p1, v7}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->setUploadedCount(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->uploadToCanvas(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v4}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    invoke-static {v4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    iget v2, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    iget v3, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lcom/sec/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    goto :goto_0
.end method
