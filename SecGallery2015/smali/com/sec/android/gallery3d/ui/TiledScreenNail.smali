.class public Lcom/sec/android/gallery3d/ui/TiledScreenNail;
.super Ljava/lang/Object;
.source "TiledScreenNail.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/ScreenNail;


# static fields
.field private static final ANIMATION_DONE:J = -0x3L

.field private static final ANIMATION_NEEDED:J = -0x2L

.field private static final ANIMATION_NOT_NEEDED:J = -0x1L

.field private static final DURATION:I = 0xb4

.field private static final TAG:Ljava/lang/String; = "TiledScreenNail"

.field private static final mPlaceholderColor:I

.field private static sMaxSide:I


# instance fields
.field private mAnimationStartTime:J

.field public mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x280

    sput v0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseBlackColorForTFT:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xdadadb

    :goto_0
    sput v0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    return-void

    :cond_0
    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->setSize(II)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    return-void
.end method

.method private getRatio()F
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/sec/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x43340000    # 180.0f

    div-float v0, v1, v2

    sub-float v1, v6, v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v6}, Lcom/sec/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method public static setMaxSide(I)V
    .locals 0

    sput p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    return-void
.end method

.method private setSize(II)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget p1, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    sget v1, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 p2, v1, 0x4

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    sget v2, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->sMaxSide:I

    int-to-float v2, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    int-to-float v1, p2

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    return-void
.end method


# virtual methods
.method public combine(Lcom/sec/android/gallery3d/ui/ScreenNail;)Lcom/sec/android/gallery3d/ui/ScreenNail;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    instance-of v1, p1, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->recycle()V

    move-object p0, p1

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    iget v1, v0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    iget v1, v0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/sec/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->recycle()V

    :cond_3
    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    iput-object v3, v0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v3, v0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    :cond_4
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->recycle()V

    goto :goto_0
.end method

.method public copy()Lcom/sec/android/gallery3d/ui/ScreenNail;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/TiledScreenNail;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;)V

    goto :goto_0
.end method

.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    if-nez v0, :cond_0

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    sget v5, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    sget v2, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->getRatio()F

    move-result v3

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->drawMixed(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IFIIII)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    sget v5, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mPlaceholderColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mHeight:I

    return v0
.end method

.method public getTexture()Lcom/sec/android/gallery3d/glrenderer/TiledTexture;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mWidth:I

    return v0
.end method

.method public isAnimatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAnimating()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-wide v2, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xb4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    const-wide/16 v2, -0x3

    iput-wide v2, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mAnimationStartTime:J

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->recycle()V

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mTexture:Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/photos/data/GalleryBitmapPool;->getInstance()Lcom/sec/android/photos/data/GalleryBitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sec/android/photos/data/GalleryBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    iput-object v2, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public startAnimation()V
    .locals 0

    return-void
.end method

.method public stopAnimation()V
    .locals 0

    return-void
.end method

.method public updatePlaceholderSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->setSize(II)V

    goto :goto_0
.end method
