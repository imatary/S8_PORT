.class public Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlTimeLabel.java"


# static fields
.field private static final RES_ID_TIME_LABEL:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIndex:I

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->setUseTouchRippleEvent(Z)V

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mResources:Landroid/content/res/Resources;

    iput p3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mIndex:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->initialize()V

    return-void
.end method

.method private drawTimeLabel(Lcom/sec/android/gallery3d/glcore/GlView;Ljava/lang/String;Z)V
    .locals 12

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v9

    if-nez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0b0291

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->getWidth()I

    move-result v8

    if-eqz p3, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mContext:Landroid/content/Context;

    const v10, 0x7f100111

    invoke-static {v9, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    :goto_1
    move v1, v8

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/glcore/GlTextView;

    int-to-float v9, v6

    invoke-static {v9}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getDefaultPaintForLabel(F)Landroid/text/TextPaint;

    move-result-object v4

    const/4 v9, 0x0

    int-to-float v10, v1

    invoke-static {p2, v9, v10, v4}, Lcom/sec/android/gallery3d/glcore/GlTextView;->ellipsizeString(Ljava/lang/String;Ljava/lang/String;FLandroid/text/TextPaint;)Ljava/lang/String;

    move-result-object v2

    if-nez v7, :cond_2

    int-to-float v9, v6

    invoke-static {v2, v9, v5}, Lcom/sec/android/gallery3d/glcore/GlTextView;->newInstance(Ljava/lang/String;FI)Lcom/sec/android/gallery3d/glcore/GlTextView;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {p1, v7, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :goto_2
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mResources:Landroid/content/res/Resources;

    const v10, 0x7f0b028e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0b0290

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0b0292

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    add-int v3, v9, v10

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/TextPaint;->descent()F

    move-result v9

    float-to-int v0, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v3, v0, v9, v10}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setMargin(IIII)V

    const/4 v9, 0x1

    const/4 v10, 0x2

    invoke-virtual {v7, v9, v10}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setAlign(II)V

    goto :goto_0

    :cond_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mContext:Landroid/content/Context;

    const v10, 0x7f100229

    invoke-static {v9, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v9

    int-to-float v10, v6

    invoke-virtual {v9, v10}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlTextView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {v7, v2}, Lcom/sec/android/gallery3d/glcore/GlTextView;->setText(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private initialize()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->resetAttributes()V

    return-void
.end method

.method private resetAttributes()V
    .locals 10

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0b0296

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0b028d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :goto_0
    move v6, v2

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v8, v8, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v9, v9, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v9, v9

    div-float v7, v8, v9

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v8, v8, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v9, v9, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v9, v9

    div-float v1, v8, v9

    int-to-float v8, v6

    mul-float v5, v8, v7

    int-to-float v8, v4

    mul-float v3, v8, v1

    new-instance v8, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v9, v9, Lcom/sec/android/gallery3d/glcore/GlLayer;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v8, v9, v6, v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-virtual {p0, v5, v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->setSize(FF)V

    return-void

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0b0295

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0b028c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_0
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mIndex:I

    return v0
.end method

.method protected onClicked()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isScaleAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->moveToScrollAtGroup(I)V

    goto :goto_0
.end method

.method public updateLabel(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/GlView;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->drawTimeLabel(Lcom/sec/android/gallery3d/glcore/GlView;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void
.end method
