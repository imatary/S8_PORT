.class public abstract Lcom/android/gallery3d/glrenderer/UploadedTexture;
.super Lcom/android/gallery3d/glrenderer/BasicTexture;
.source "UploadedTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Texture"

.field private static final UPLOAD_LIMIT:I = 0x64

.field private static sBorderKey:Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;

.field private static sBorderLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sUploadedCount:I


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBorder:I

.field private mContentValid:Z

.field private mIsDualViewMode:Z

.field private mIsUploading:Z

.field private mOpaque:Z

.field private mThrottled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    new-instance v0, Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;-><init>(Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;)V

    sput-object v0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->sBorderKey:Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/gallery3d/glrenderer/BasicTexture;-><init>(Lcom/android/gallery3d/glrenderer/GLCanvas;II)V

    iput-boolean v2, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mIsUploading:Z

    iput-boolean v2, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mOpaque:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mThrottled:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mIsDualViewMode:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->setBorder(Z)V

    iput v2, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    :cond_0
    return-void
.end method

.method private freeBitmap()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->onFreeBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->setSize(II)V

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x1

    sget-object v1, Lcom/android/gallery3d/glrenderer/UploadedTexture;->sBorderKey:Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;

    iput-boolean p0, v1, Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;->vertical:Z

    iput-object p1, v1, Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    iput p2, v1, Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;->length:I

    sget-object v0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    invoke-static {v2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    sget-object v2, Lcom/android/gallery3d/glrenderer/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;->clone()Lcom/android/gallery3d/glrenderer/UploadedTexture$BorderKey;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    invoke-static {p2, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static resetUploadLimit()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->sUploadedCount:I

    return-void
.end method

.method public static uploadLimitReached()Z
    .locals 2

    sget v0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private uploadToCanvas(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 13

    const/4 v2, -0x1

    const/4 v7, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iput v2, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mState:I

    const-string/jumbo v1, "Texture"

    if-nez v4, :cond_1

    const-string/jumbo v0, "bitmap is null."

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v0, "bitmap is recycled."

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->getTextureWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->getTextureHeight()I

    move-result v11

    if-gt v8, v10, :cond_3

    if-gt v9, v11, :cond_3

    move v0, v7

    :cond_3
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-interface {p1}, Lcom/android/gallery3d/glrenderer/GLCanvas;->getGLId()Lcom/android/gallery3d/glrenderer/GLId;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/glrenderer/GLId;->generateTexture()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mId:I

    invoke-interface {p1, p0}, Lcom/android/gallery3d/glrenderer/GLCanvas;->setTextureParameters(Lcom/android/gallery3d/glrenderer/BasicTexture;)V

    if-ne v8, v10, :cond_6

    if-ne v9, v11, :cond_6

    invoke-interface {p1, p0, v4}, Lcom/android/gallery3d/glrenderer/GLCanvas;->initializeTexture(Lcom/android/gallery3d/glrenderer/BasicTexture;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mIsDualViewMode:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->setAssociatedCanvas(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    iput v7, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mState:I

    iput-boolean v7, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    return-void

    :cond_6
    :try_start_1
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_7

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_7
    invoke-static {v4}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    invoke-static {v4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v12

    invoke-interface {p1, p0, v5, v6}, Lcom/android/gallery3d/glrenderer/GLCanvas;->initializeTextureSize(Lcom/android/gallery3d/glrenderer/BasicTexture;II)V

    iget v2, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    iget v3, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/android/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lcom/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    iget v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    if-lez v0, :cond_8

    const/4 v0, 0x1

    invoke-static {v0, v12, v11}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/android/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lcom/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    const/4 v0, 0x0

    invoke-static {v0, v12, v10}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/android/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lcom/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    :cond_8
    iget v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    add-int/2addr v0, v8

    if-ge v0, v10, :cond_9

    const/4 v0, 0x1

    invoke-static {v0, v12, v11}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    add-int v2, v0, v8

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/android/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lcom/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    :cond_9
    iget v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    add-int/2addr v0, v9

    if-ge v0, v11, :cond_4

    const/4 v0, 0x0

    invoke-static {v0, v12, v10}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    add-int v3, v0, v9

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/android/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lcom/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mState:I

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mIsDualViewMode:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mIsDualViewMode:Z

    if-nez v1, :cond_b

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    :cond_b
    throw v0
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mHeight:I

    return v0
.end method

.method protected getTarget()I
    .locals 1

    const/16 v0, 0xde1

    return v0
.end method

.method public getWidth()I
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    return v0
.end method

.method protected invalidateContent()V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    iput v1, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mWidth:I

    iput v1, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mHeight:I

    return-void
.end method

.method public isContentValid()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mOpaque:Z

    return v0
.end method

.method public isUploading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mIsUploading:Z

    return v0
.end method

.method protected onBind(Lcom/android/gallery3d/glrenderer/GLCanvas;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->updateContent(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->isContentValid()Z

    move-result v0

    return v0
.end method

.method protected abstract onFreeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract onGetBitmap()Landroid/graphics/Bitmap;
.end method

.method public recycle()V
    .locals 1

    invoke-super {p0}, Lcom/android/gallery3d/glrenderer/BasicTexture;->recycle()V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    :cond_0
    return-void
.end method

.method protected setIsUploading(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mIsUploading:Z

    return-void
.end method

.method public setOpaque(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mOpaque:Z

    return-void
.end method

.method public setUsingDualModeView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mIsDualViewMode:Z

    return-void
.end method

.method public updateContent(Lcom/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mThrottled:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->sUploadedCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->uploadToCanvas(Lcom/android/gallery3d/glrenderer/GLCanvas;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    invoke-static {v4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    iget v2, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    iget v3, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mBorder:I

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/android/gallery3d/glrenderer/GLCanvas;->texSubImage2D(Lcom/android/gallery3d/glrenderer/BasicTexture;IILandroid/graphics/Bitmap;II)V

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/UploadedTexture;->freeBitmap()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/glrenderer/UploadedTexture;->mContentValid:Z

    goto :goto_0
.end method
