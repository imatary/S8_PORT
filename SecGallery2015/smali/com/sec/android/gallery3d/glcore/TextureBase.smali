.class public Lcom/sec/android/gallery3d/glcore/TextureBase;
.super Ljava/lang/Object;
.source "TextureBase.java"


# static fields
.field private static final ASTC:I = 0x1

.field private static final JPEG:I = 0x0

.field private static final STATE_LOADED:I = 0x1

.field static final STATE_UNLOADED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TextureBase"

.field private static final UNSPECIFIED:I = -0x1


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mContentValid:Z

.field final mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field mHeight:I

.field private mLoadedConfigType:I

.field private mRequestedConfigType:I

.field mState:I

.field mTextureId:I

.field private mUploadFull:Z

.field mWidth:I


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mWidth:I

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mHeight:I

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mTextureId:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mState:I

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mUploadFull:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mContentValid:Z

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mLoadedConfigType:I

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mRequestedConfigType:I

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez p1, :cond_0

    :goto_0
    iput v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mTextureId:I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getGLUtilInstance()Lcom/sec/android/gallery3d/glcore/TUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/TUtils;->getAvailable()I

    move-result v0

    goto :goto_0
.end method

.method private freeBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/TextureBase;->onFreeBitmap()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/TextureBase;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/TextureBase;->setRequestedConfigType()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/glcore/TextureBase;->setSize(II)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mWidth:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mHeight:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cannot change size: this = %s, orig = %sx%s, new = %sx%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setRequestedConfigType()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mRequestedConfigType:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sec/samsung/gallery/lib/factory/BitmapWrapper;->isGLCompressed(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mRequestedConfigType:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mRequestedConfigType:I

    goto :goto_0
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/TextureBase;->getBitmap()Landroid/graphics/Bitmap;

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mHeight:I

    return v0
.end method

.method public getTextureId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mTextureId:I

    return v0
.end method

.method public getWidth()I
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/TextureBase;->getBitmap()Landroid/graphics/Bitmap;

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mWidth:I

    return v0
.end method

.method public invalidateContent()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mContentValid:Z

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mState:I

    return-void
.end method

.method onFreeBitmap()V
    .locals 0

    return-void
.end method

.method onGetBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public prepare(Z)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mState:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mContentValid:Z

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/TextureBase;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/TextureBase;->setRequestedConfigType()V

    :cond_2
    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mContentValid:Z

    return-void
.end method

.method recycle()V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mTextureId:I

    if-ne v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mGlRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getGLUtilInstance()Lcom/sec/android/gallery3d/glcore/TUtils;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mTextureId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/TUtils;->freeId(I)V

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mTextureId:I

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mWidth:I

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mHeight:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/TextureBase;->freeBitmap()V

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mRequestedConfigType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mState:I

    goto :goto_0
.end method

.method public requestFullUpload()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mUploadFull:Z

    return-void
.end method

.method setSize(II)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mWidth:I

    iput p2, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mHeight:I

    return-void
.end method

.method public setTexture(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 9

    const/4 v8, 0x1

    const/16 v1, 0xde1

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mBitmap:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mState:I

    if-eq v0, v8, :cond_2

    if-eqz v4, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mTextureId:I

    invoke-interface {p1, v1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mLoadedConfigType:I

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mRequestedConfigType:I

    if-eq v0, v1, :cond_0

    iput-boolean v8, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mUploadFull:Z

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mUploadFull:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x47012f00    # 33071.0f

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x47012f00    # 33071.0f

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400    # 9729.0f

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v4, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mRequestedConfigType:I

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mLoadedConfigType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mUploadFull:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iput v8, p0, Lcom/sec/android/gallery3d/glcore/TextureBase;->mState:I

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/TextureBase;->freeBitmap()V

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v4}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    invoke-static {v4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string/jumbo v0, "TextureBase"

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
