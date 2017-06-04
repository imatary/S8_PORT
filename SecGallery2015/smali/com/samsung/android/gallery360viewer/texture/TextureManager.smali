.class public Lcom/samsung/android/gallery360viewer/texture/TextureManager;
.super Ljava/lang/Object;
.source "TextureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private final mBitmapUploader:Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;

.field private mBitmapWidth:I

.field private mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

.field private final mTextureDataHandle:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->mTextureDataHandle:[I

    new-instance v0, Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;-><init>(Lcom/samsung/android/gallery360viewer/texture/TextureManager;Lcom/samsung/android/gallery360viewer/texture/TextureManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->mBitmapUploader:Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)Lcom/samsung/android/gallery360viewer/view/StatusHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/gallery360viewer/texture/TextureManager;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->mTextureDataHandle:[I

    return-object v0
.end method


# virtual methods
.method public clearGlTexture()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->mTextureDataHandle:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->mTextureDataHandle:[I

    aput v2, v0, v2

    return-void
.end method

.method getBitmapHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->mBitmapHeight:I

    return v0
.end method

.method getBitmapWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->mBitmapWidth:I

    return v0
.end method

.method getTextureDataHandle()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->mTextureDataHandle:[I

    return-object v0
.end method

.method public requestGlUpload(Landroid/graphics/Bitmap;)Lcom/samsung/android/gallery360viewer/IOnGLIdleListener;
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->mBitmapWidth:I

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->mBitmapHeight:I

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->mBitmapUploader:Lcom/samsung/android/gallery360viewer/texture/TextureManager$BitmapUploader;

    return-object v0
.end method

.method public setStatusHandler(Lcom/samsung/android/gallery360viewer/view/StatusHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gallery360viewer/texture/TextureManager;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    return-void
.end method
