.class public Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;
.super Landroid/view/SurfaceView;
.source "CustomSurfaceView.java"


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private resolveAdjustedSize(II)I
    .locals 3

    move v0, p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    move v0, p1

    goto :goto_0

    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :sswitch_2
    move v0, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public init(Landroid/media/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getVideoHeight()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_0
    :goto_0
    if-nez v4, :cond_1

    if-nez v3, :cond_1

    invoke-super {p0, v2, v1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4, p1}, Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;->resolveAdjustedSize(II)I

    move-result v2

    invoke-direct {p0, v3, p2}, Lcom/sec/samsung/gallery/view/slideshowview/CustomSurfaceView;->resolveAdjustedSize(II)I

    move-result v1

    mul-int v5, v4, v1

    mul-int v6, v3, v2

    if-lt v5, v6, :cond_2

    mul-int v5, v2, v3

    div-int v1, v5, v4

    :goto_2
    invoke-super {p0, v2, v1}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_2
    mul-int v5, v1, v4

    div-int v2, v5, v3

    goto :goto_2
.end method
