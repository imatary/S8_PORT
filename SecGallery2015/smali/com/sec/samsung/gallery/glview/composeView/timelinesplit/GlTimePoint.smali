.class Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;
.super Lcom/sec/android/gallery3d/glcore/GlObject;
.source "GlTimePoint.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDiameterPx:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;FF)V

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->initialize()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->mContext:Landroid/content/Context;

    const v1, 0x7f100260

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->setEmptyFillColor(I)V

    return-void
.end method

.method private initialize()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0292

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->mDiameterPx:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->resetAttributes()V

    return-void
.end method

.method private resetAttributes()V
    .locals 8

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v6, v6, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v6, v6

    div-float v4, v5, v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v6, v6, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v6, v6

    div-float v2, v5, v6

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->mDiameterPx:I

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0293

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int v0, v5, v6

    int-to-float v5, v0

    mul-float v3, v5, v4

    int-to-float v5, v0

    mul-float v1, v5, v2

    new-instance v5, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v6, v6, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v5, v6, v0, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-virtual {p0, v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->setSize(FF)V

    return-void
.end method


# virtual methods
.method public updateColor(Z)V
    .locals 4

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->mContext:Landroid/content/Context;

    const v3, 0x7f0201ec

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->mContext:Landroid/content/Context;

    const v3, 0x7f100111

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->mDiameterPx:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->mDiameterPx:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setSize(II)V

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setAlign(II)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->mContext:Landroid/content/Context;

    const v3, 0x7f100229

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
