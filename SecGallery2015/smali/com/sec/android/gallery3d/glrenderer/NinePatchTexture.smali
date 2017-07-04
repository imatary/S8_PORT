.class public Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;
.super Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;
.source "NinePatchTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NinePatchTexture"


# instance fields
.field private mChunk:Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;

.field private final mInstanceCache:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mInstanceCache:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;

    return-void
.end method

.method private findInstance(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;
    .locals 8

    int-to-long v2, p2

    const/16 v4, 0x20

    shl-long v4, v2, v4

    int-to-long v6, p3

    or-long v2, v4, v6

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mInstanceCache:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;

    invoke-direct {v0, p0, p2, p3}, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;-><init>(Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;II)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mInstanceCache:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mInstanceCache:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;->getJustRemoved()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->recycle(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mInstanceCache:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;->clear()V

    :cond_0
    if-lez p4, :cond_1

    if-lez p5, :cond_1

    invoke-direct {p0, p1, p4, p5}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->findInstance(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;II)Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;II)V

    :cond_1
    return-void
.end method

.method public getNinePatchChunk()Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mChunk:Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mChunk:Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;

    return-object v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mChunk:Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mChunk:Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;

    iget-object v0, v0, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v5, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mResId:I

    invoke-static {v5, v6, v3}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResourceNinePatch(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mResId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v5, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mResId:I

    const v6, 0x7f02034f

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mContext:Landroid/content/Context;

    const v6, 0x7f1000ef

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->setSize(II)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    if-nez v1, :cond_4

    :goto_2
    iput-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mChunk:Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;

    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mChunk:Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid nine-patch image: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mResId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    iget v5, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mResId:I

    const v6, 0x7f020214

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/samsung/gallery/util/TTSUtil;->getAccessibilityCursorColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;->deserialize([B)Lcom/sec/android/gallery3d/glrenderer/NinePatchChunk;

    move-result-object v4

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method public recycle()V
    .locals 4

    invoke-super {p0}, Lcom/sec/android/gallery3d/glrenderer/ResourceTexture;->recycle()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mCanvasRef:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mInstanceCache:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glrenderer/NinePatchInstance;->recycle(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->mInstanceCache:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture$MyCacheMap;->clear()V

    goto :goto_0
.end method
