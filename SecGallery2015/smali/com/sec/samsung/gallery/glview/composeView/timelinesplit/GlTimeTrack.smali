.class Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;
.super Lcom/sec/android/gallery3d/glcore/GlObject;
.source "GlTimeTrack.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTrackCount:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;I)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v0}, Lcom/sec/android/gallery3d/glcore/GlObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;FF)V

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;->mTrackCount:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;->mContext:Landroid/content/Context;

    const v1, 0x7f10022a

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;->setEmptyFillColor(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;->resetAttributes()V

    return-void
.end method

.method private resetAttributes()V
    .locals 7

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v6, v6, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v6, v6

    div-float v4, v5, v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v6, v6, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v6, v6

    div-float v1, v5, v6

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0294

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v3, v5, v4

    const/4 v2, 0x0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;->mTrackCount:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b028d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;->mTrackCount:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v2, v5, v1

    :cond_1
    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;->setSize(FF)V

    return-void

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b028c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeTrack;->mTrackCount:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v2, v5, v1

    goto :goto_0
.end method
