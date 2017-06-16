.class public Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;
.super Landroid/widget/SeekBar;
.source "CustomSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;,
        Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$CustomSeekBarListener;
    }
.end annotation


# static fields
.field private static final MAX:I = 0x3e8

.field public static final SEEKBAR_COLOR_BLACK:I = 0x0

.field public static final SEEKBAR_COLOR_WHITE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PEDIT_CustomSeekBar"

.field private static mSeekbarColor:I


# instance fields
.field private defaultPadding:F

.field public isCollage:Z

.field private isFluidModeEnabled:Z

.field private isTextVisible:Z

.field public isTouchOutSide:Z

.field private mContext:Landroid/content/Context;

.field private mDoubleSided:Z

.field private mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$CustomSeekBarListener;

.field private mParent:Landroid/view/ViewGroup;

.field private mPreX:F

.field private mStateMax:F

.field private mStateProgress:I

.field private mThumbOffset:I

.field private mTitle:Ljava/lang/String;

.field private mTitleRes:I

.field private mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

.field private mValue:Ljava/lang/String;

.field private mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

.field private paint:Landroid/graphics/Paint;

.field private rect:Landroid/graphics/Rect;

.field private seekbar_height:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mSeekbarColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mStateMax:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleRes:I

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->isTextVisible:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->isFluidModeEnabled:Z

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mPreX:F

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->isTouchOutSide:Z

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->isCollage:Z

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->defaultPadding:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mThumbOffset:I

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->rect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->paint:Landroid/graphics/Paint;

    const/16 v0, 0x3e8

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080398

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->seekbar_height:I

    invoke-virtual {p0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setAccessibilityDelegate()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->defaultPadding:F

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mThumbOffset:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mPreX:F

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mPreX:F

    return p1
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private setKeyIncrement()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mDoubleSided:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mStateMax:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mStateMax:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    goto :goto_0
.end method


# virtual methods
.method public animateTitle()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->performAnimation()V

    :cond_0
    return-void
.end method

.method public animateValue()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->performAnimation()V

    :cond_0
    return-void
.end method

.method public changeProgressValue(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->isTextVisible:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValue:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public enableFluidMode(ZI)V
    .locals 2

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->isFluidModeEnabled:Z

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->isFluidModeEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->semSetFluidEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->semSetFluidEnabled(Z)V

    goto :goto_0
.end method

.method public getCustomMax()I
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mStateMax:F

    float-to-int v0, v0

    return v0
.end method

.method public getDefaultPadding()F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->defaultPadding:F

    return v0
.end method

.method public getSeekbarColor()I
    .locals 1

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mSeekbarColor:I

    return v0
.end method

.method public getSmoothProgress()F
    .locals 4

    invoke-super {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mDoubleSided:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mStateMax:F

    neg-float v1, v1

    int-to-float v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mStateMax:F

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    int-to-float v1, v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mStateMax:F

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->defaultPadding:F

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mThumbOffset:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    const/high16 v1, 0x447a0000    # 1000.0f

    const/high16 v2, 0x43870000    # 270.0f

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    div-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mParent:Landroid/view/ViewGroup;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$3;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$3;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const/4 v13, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0e01c2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    if-eqz v0, :cond_2

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mSeekbarColor:I

    if-ne v0, v13, :cond_9

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setStrokeColor(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setTextColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setStrokeWidth(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->isTextVisible:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->invalidate()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0e01f2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->isTextVisible:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    if-eqz v0, :cond_4

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mSeekbarColor:I

    if-ne v0, v13, :cond_c

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setStrokeColor(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setTextColor(I)V

    :goto_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setStrokeWidth(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->invalidate()V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->isTouchOutSide:Z

    if-eqz v0, :cond_5

    const/high16 v0, 0x447a0000    # 1000.0f

    const/high16 v1, 0x43870000    # 270.0f

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    div-float v8, v0, v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mParent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mParent:Landroid/view/ViewGroup;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$2;

    invoke-direct {v1, p0, v8}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mThumbOffset:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v10, v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mThumbOffset:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v11, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->seekbar_height:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->seekbar_height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v10, v1, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v0

    if-eqz v0, :cond_e

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mSeekbarColor:I

    if-ne v0, v13, :cond_d

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->paint:Landroid/graphics/Paint;

    const-string v1, "#80fafafa"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43a00000    # 320.0f

    div-float/2addr v1, v2

    mul-float v9, v0, v1

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mSeekbarColor:I

    if-ne v0, v13, :cond_f

    const-string v0, "#33252525"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_5
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0804c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v7, v0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->isTextVisible:Z

    if-eqz v0, :cond_6

    int-to-float v1, v10

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->seekbar_height:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v7

    int-to-float v2, v0

    int-to-float v3, v11

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->seekbar_height:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    sub-int/2addr v0, v7

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v10

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->seekbar_height:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v2, v0

    int-to-float v3, v11

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->seekbar_height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v10

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->seekbar_height:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    int-to-float v3, v10

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->seekbar_height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v11

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->seekbar_height:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    int-to-float v3, v11

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->seekbar_height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->isCollage:Z

    if-nez v0, :cond_7

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mSeekbarColor:I

    if-ne v0, v13, :cond_10

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_6
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mDoubleSided:Z

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mThumbOffset:I

    sub-int v12, v0, v1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->seekbar_height:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->seekbar_height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v12, v1, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_7
    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mSeekbarColor:I

    if-ne v0, v13, :cond_12

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->paint:Landroid/graphics/Paint;

    const-string v1, "#fafafa"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_8
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_8
    :goto_9
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_9
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setStrokeColor(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setTextColor(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_a
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setStrokeColor(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setTextColor(I)V

    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->paint:Landroid/graphics/Paint;

    const-string v1, "#80252525"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    :cond_e
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->paint:Landroid/graphics/Paint;

    const-string v1, "#80f5f5f5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    :cond_f
    const-string v0, "#33fafafa"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_5

    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    :cond_11
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->seekbar_height:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->seekbar_height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v0, v10, v1, v12, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_7

    :cond_12
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->paint:Landroid/graphics/Paint;

    const-string v1, "#252525"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_8

    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getThumbOffset()I

    move-result v1

    sub-int v12, v0, v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-le v12, v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->seekbar_height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->seekbar_height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v12, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v0

    if-eqz v0, :cond_16

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mSeekbarColor:I

    if-ne v0, v13, :cond_15

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->paint:Landroid/graphics/Paint;

    const-string v1, "#fafafa"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_a
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_14
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge v12, v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->seekbar_height:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->seekbar_height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->isGraceUX()Z

    move-result v0

    if-eqz v0, :cond_18

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mSeekbarColor:I

    if-ne v0, v13, :cond_17

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->paint:Landroid/graphics/Paint;

    const-string v1, "#fafafa"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_b
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->rect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_9

    :cond_15
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->paint:Landroid/graphics/Paint;

    const-string v1, "#252525"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_a

    :cond_16
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->paint:Landroid/graphics/Paint;

    const-string v1, "#f5f5f5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_a

    :cond_17
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->paint:Landroid/graphics/Paint;

    const-string v1, "#252525"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_b

    :cond_18
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->paint:Landroid/graphics/Paint;

    const-string v1, "#f5f5f5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_b
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x15

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getProgress()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x16

    if-ne p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLanguageChanged()V
    .locals 3

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleRes:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleRes:I

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setTitle(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getSmoothProgress()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->changeProgressValue(F)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/sec/android/mimage/photoretouching/multigrid/MultiGridActivity;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f0e0164

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getSmoothProgress()F

    move-result v0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$CustomSeekBarListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$CustomSeekBarListener;

    invoke-interface {v2, v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$CustomSeekBarListener;->onSmoothProgressChange(F)V

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mStateProgress:I

    if-eq v2, v3, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mStateProgress:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$CustomSeekBarListener;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mStateProgress:I

    invoke-interface {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$CustomSeekBarListener;->onProgressChange(I)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->changeProgressValue(F)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$CustomSeekBarListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$CustomSeekBarListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$CustomSeekBarListener;->onStartTrackingTouch()V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$CustomSeekBarListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$CustomSeekBarListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$CustomSeekBarListener;->onStopTrackingTouch()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->animateValue()V

    return-void
.end method

.method public setAccessibilityDelegate()V
    .locals 1

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public setCustomSeekListener(Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$CustomSeekBarListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$CustomSeekBarListener;

    return-void
.end method

.method public setDoubleSided(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mDoubleSided:Z

    return-void
.end method

.method public setMax(I)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mStateMax:F

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setKeyIncrement()V

    return-void
.end method

.method public setSeekbarHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->seekbar_height:I

    return-void
.end method

.method public declared-synchronized setStateProgress(F)V
    .locals 5

    const/high16 v4, 0x447a0000    # 1000.0f

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mDoubleSided:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mStateMax:F

    add-float/2addr v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mStateMax:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mStateProgress:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mStateProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->isTextVisible:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    const-string v1, "PEDIT_CustomSeekBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting super progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    mul-float v1, p1, v4

    :try_start_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mStateMax:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setStateProgressWithUpdate(F)V
    .locals 5

    const/high16 v4, 0x447a0000    # 1000.0f

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mDoubleSided:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mStateMax:F

    add-float/2addr v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mStateMax:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v1, "PEDIT_CustomSeekBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting super progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    mul-float v1, p1, v4

    :try_start_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mStateMax:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setTextVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->isTextVisible:Z

    return-void
.end method

.method public setTitle(I)V
    .locals 2

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleRes:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->isTextVisible:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setText(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->performAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->performAnimation()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 7

    const v6, 0x7f0c00a9

    const v5, 0x7f0c00a8

    const v4, 0x7f0c009d

    const v3, 0x7f0c009c

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitle:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleRes:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    if-eqz v0, :cond_0

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mSeekbarColor:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setStrokeColor(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setTextColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setStrokeWidth(I)V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->isTextVisible:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    invoke-virtual {v0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    if-eqz v0, :cond_1

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mSeekbarColor:I

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setStrokeColor(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setTextColor(I)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setStrokeWidth(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->performAnimation()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->performAnimation()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setStrokeColor(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setTextColor(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mTitleView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setStrokeColor(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mValueView:Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar$StrokedTextView;->setTextColor(I)V

    goto :goto_2
.end method

.method public updateSeekbarColor(I)V
    .locals 1

    sget v0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mSeekbarColor:I

    if-eq v0, p1, :cond_0

    sput p1, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mSeekbarColor:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateThumb(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020166

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    sget v1, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mSeekbarColor:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/CustomSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method
