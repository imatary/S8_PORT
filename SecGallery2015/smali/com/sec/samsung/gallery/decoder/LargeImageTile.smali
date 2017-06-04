.class public Lcom/sec/samsung/gallery/decoder/LargeImageTile;
.super Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;
.source "LargeImageTile.java"


# static fields
.field public static final STATE_ACTIVATED:I = 0x1

.field public static final STATE_DECODED:I = 0x8

.field public static final STATE_RECYCLED:I = 0x4

.field private static final STATE_UPLOADED:I = 0x2


# instance fields
.field public mDecodedTile:Landroid/graphics/Bitmap;

.field public mNext:Lcom/sec/samsung/gallery/decoder/LargeImageTile;

.field private mTexHeight:I

.field private mTexWidth:I

.field private mTileHeight:I

.field public mTileLevel:I

.field public volatile mTileState:I

.field private mTileWidth:I

.field public mX:I

.field public mY:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glrenderer/UploadedTexture;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileState:I

    iput p1, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mX:I

    iput p2, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mY:I

    iput p3, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTexWidth:I

    iput p4, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTexHeight:I

    iput p5, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileWidth:I

    iput p6, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileHeight:I

    iput p7, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileLevel:I

    return-void
.end method


# virtual methods
.method public getTextureHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTexHeight:I

    return v0
.end method

.method public getTextureWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTexWidth:I

    return v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileState:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget v2, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileWidth:I

    iget v3, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->setSize(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mDecodedTile:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mDecodedTile:Landroid/graphics/Bitmap;

    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileState:I

    goto :goto_0
.end method

.method public update(IIIIIII)V
    .locals 1

    iput p1, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mX:I

    iput p2, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mY:I

    iput p3, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTexWidth:I

    iput p4, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTexHeight:I

    iput p5, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileWidth:I

    iput p6, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileHeight:I

    iput p7, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileLevel:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mNext:Lcom/sec/samsung/gallery/decoder/LargeImageTile;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->mTileState:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/decoder/LargeImageTile;->invalidateContent()V

    return-void
.end method
