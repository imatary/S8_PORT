.class public Lcom/samsung/android/glview/GLResourceTexture;
.super Lcom/samsung/android/glview/GLTexture;
.source "GLResourceTexture.java"


# instance fields
.field private mGLTextureStorage:Lcom/samsung/android/glview/GLTextureStorage;

.field private final mResId:I

.field private mTextureInfo:Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFI)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getGLTextureStorage()Lcom/samsung/android/glview/GLTextureStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLResourceTexture;->mGLTextureStorage:Lcom/samsung/android/glview/GLTextureStorage;

    iput p6, p0, Lcom/samsung/android/glview/GLResourceTexture;->mResId:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFI)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    invoke-virtual {p1}, Lcom/samsung/android/glview/GLContext;->getGLTextureStorage()Lcom/samsung/android/glview/GLTextureStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLResourceTexture;->mGLTextureStorage:Lcom/samsung/android/glview/GLTextureStorage;

    iput p4, p0, Lcom/samsung/android/glview/GLResourceTexture;->mResId:I

    return-void
.end method


# virtual methods
.method public clearTexture()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLResourceTexture;->mGLTextureStorage:Lcom/samsung/android/glview/GLTextureStorage;

    iget v1, p0, Lcom/samsung/android/glview/GLResourceTexture;->mResId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTextureStorage;->removeTexture(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextures:[I

    if-eqz v0, :cond_0

    new-array v0, v3, [I

    iget-object v1, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextures:[I

    aget v1, v1, v2

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput-object v4, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextures:[I

    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextureSharing:Z

    iput-object v4, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextureInfo:Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;

    return-void
.end method

.method protected generateTexture()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsung/android/glview/GLResourceTexture;->mGLTextureStorage:Lcom/samsung/android/glview/GLTextureStorage;

    iget v1, p0, Lcom/samsung/android/glview/GLResourceTexture;->mResId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLTextureStorage;->getTextureInfo(I)Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextureInfo:Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;

    iget-object v0, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextureInfo:Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/glview/GLTexture;->generateTexture()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLResourceTexture;->mGLTextureStorage:Lcom/samsung/android/glview/GLTextureStorage;

    iget v1, p0, Lcom/samsung/android/glview/GLResourceTexture;->mResId:I

    iget-object v2, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextures:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/samsung/android/glview/GLResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/glview/GLResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLTextureStorage;->addTexture(IIFF)V

    iput-boolean v5, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextureSharing:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextures:[I

    if-nez v0, :cond_1

    new-array v0, v6, [I

    iput-object v0, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextures:[I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextures:[I

    iget-object v1, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextureInfo:Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;

    iget v1, v1, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mTextureID:I

    aput v1, v0, v5

    iget-object v0, p0, Lcom/samsung/android/glview/GLResourceTexture;->mGLTextureStorage:Lcom/samsung/android/glview/GLTextureStorage;

    iget v1, p0, Lcom/samsung/android/glview/GLResourceTexture;->mResId:I

    iget-object v2, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextures:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextureInfo:Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;

    iget v3, v3, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mWidth:F

    iget-object v4, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextureInfo:Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;

    iget v4, v4, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mHeight:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/glview/GLTextureStorage;->addTexture(IIFF)V

    iput-boolean v6, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextureSharing:Z

    goto :goto_0
.end method

.method public declared-synchronized initSize()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLResourceTexture;->loadBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLResourceTexture;->getSizeSpecified()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/glview/GLResourceTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLResourceTexture;->setSize(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLResourceTexture;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLResourceTexture;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLResourceTexture;->setSize(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLResourceTexture;->getSizeSpecified()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextureInfo:Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;

    iget v0, v0, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mWidth:F

    iget-object v1, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextureInfo:Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;

    iget v1, v1, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mHeight:F

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLResourceTexture;->setSize(FF)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLResourceTexture;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLResourceTexture;->getHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/glview/GLResourceTexture;->setSize(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized loadBitmap()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLResourceTexture;->mGLTextureStorage:Lcom/samsung/android/glview/GLTextureStorage;

    iget v3, p0, Lcom/samsung/android/glview/GLResourceTexture;->mResId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/glview/GLTextureStorage;->getTextureInfo(I)Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextureInfo:Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;

    iget-object v2, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextureInfo:Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLResourceTexture;->mResId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/glview/GLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLResourceTexture;->mResId:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized loadGLTexture()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/glview/GLResourceTexture;->mTextureSharing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-super {p0}, Lcom/samsung/android/glview/GLTexture;->loadGLTexture()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
