.class public Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;
.super Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
.source "ResourceTexture.java"


# instance fields
.field final mContext:Landroid/content/Context;

.field private mPhotoIconViewSize:I

.field final mResId:I

.field private mResizeHeight:I

.field private mResizeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;-><init>()V

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mPhotoIconViewSize:I

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mResizeWidth:I

    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mResizeHeight:I

    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mResId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->setOpaque(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput p3, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mResizeWidth:I

    iput p4, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mResizeHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZ)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b03b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mPhotoIconViewSize:I

    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getResId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mResId:I

    return v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->inFinalizer()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x0

    iget v5, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mPhotoIconViewSize:I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mResId:I

    iget-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mPhotoIconViewSize:I

    iget v6, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mPhotoIconViewSize:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v5, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mPhotoIconViewSize:I

    iget v6, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mPhotoIconViewSize:I

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v3, v0

    :goto_0
    return-object v3

    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v5, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mResId:I

    invoke-static {v5, v6, v2}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v5, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mResizeWidth:I

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mResizeWidth:I

    iget v6, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mResizeHeight:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mResId:I

    iget-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mResizeWidth:I

    iget v6, p0, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->mResizeHeight:I

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    move-object v3, v0

    goto :goto_0
.end method
