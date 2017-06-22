.class public Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;
.super Landroid/widget/SeekBar;
.source "TemperatureSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar$TemperatureSeekBarListener;
    }
.end annotation


# static fields
.field private static final MAX:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "PEDIT_TemperatureSeekBar"


# instance fields
.field private final MAX_TEMPERATURE:I

.field private defaultPadding:F

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar$TemperatureSeekBarListener;

.field private mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x4d

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->MAX_TEMPERATURE:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->defaultPadding:F

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const/16 v0, 0x3e8

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x429a0000    # 77.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->defaultPadding:F

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->setAccessibilityDelegate()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;)Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    return-object v0
.end method


# virtual methods
.method public getDefaultPadding()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->defaultPadding:F

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->defaultPadding:F

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080396

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080395

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020783

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->getThumbOffset()I

    move-result v1

    int-to-float v5, v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->getHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    check-cast v5, Landroid/view/ViewGroup;

    const v6, 0x7f0e0456

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    check-cast v5, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    const-string v6, "5500K"

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c009d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setStrokeColor(I)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setStrokeWidth(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    int-to-float v1, p2

    const/high16 v2, 0x429a0000    # 77.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    add-int/lit16 v0, v1, 0x8fc

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar$TemperatureSeekBarListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar$TemperatureSeekBarListener;

    invoke-interface {v1, v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar$TemperatureSeekBarListener;->onTemperatureChanged(I)V

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public setAccessibilityDelegate()V
    .locals 1

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public setListener(Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar$TemperatureSeekBarListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar$TemperatureSeekBarListener;

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit16 v0, p1, -0x8fc

    div-int/lit8 v0, v0, 0x64

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x4d

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateThumb()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020749

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/TemperatureSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
