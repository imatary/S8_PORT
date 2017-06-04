.class public Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;
.super Ljava/lang/Object;
.source "TiledTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/glrenderer/TiledTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TiledTextureResources"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiledTextureResources"


# instance fields
.field private final sBitmapPaint:Landroid/graphics/Paint;

.field private sCanvas:Landroid/graphics/Canvas;

.field private final sPaint:Landroid/graphics/Paint;

.field private sUploadBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;->sBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;->sBitmapPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;->sPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;->sPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;->sPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x100

    const/16 v2, 0x100

    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;->sUploadBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;->sUploadBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;->sCanvas:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TiledTextureResources"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;->sUploadBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;)Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;->sCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;->sBitmapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;->sPaint:Landroid/graphics/Paint;

    return-object v0
.end method
