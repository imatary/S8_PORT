.class Lcom/sec/samsung/gallery/view/common/DragShadow;
.super Landroid/view/View$DragShadowBuilder;
.source "DragShadow.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DragShadow"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field mHeight:I

.field mShadowBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private final mThumbObject:Lcom/sec/android/gallery3d/glcore/GlObject;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/glcore/GlObject;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    iput v0, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mWidth:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mHeight:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mCount:I

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mThumbObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iput p5, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mCount:I

    if-eqz p3, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mShadowBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    return-void
.end method


# virtual methods
.method calculateSize()V
    .locals 6

    const v5, 0x7f0b0155

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mThumbObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    iget v3, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mCount:I

    const/16 v4, 0x64

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mCount:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_1

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const v3, 0x7f0b0157

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    :cond_1
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    const v3, 0x7f0b00e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v1

    iput v3, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mWidth:I

    const v3, 0x7f0b00e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v0

    iput v3, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mHeight:I

    :cond_2
    return-void
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mShadowBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mShadowBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/common/DragShadow;->calculateSize()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mShadowBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mThumbObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "DragShadow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mShadowBitmapDrawable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mShadowBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mThumbObject:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mThumbObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v1, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mWidth:I

    iget v2, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mHeight:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget v1, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Point;->set(II)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mShadowBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget v2, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mWidth:I

    const v3, 0x7f0b01d7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mThumbObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mHeight:I

    const v4, 0x7f0b01d9

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    mul-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mThumbObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mWidth:I

    iget v5, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mWidth:I

    const v6, 0x7f0b01d8

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mThumbObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getWidth()I

    move-result v6

    div-int/2addr v5, v6

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mHeight:I

    iget v6, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mHeight:I

    const v7, 0x7f0b01d5

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/common/DragShadow;->mThumbObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getHeight()I

    move-result v7

    div-int/2addr v6, v7

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    goto :goto_0
.end method
