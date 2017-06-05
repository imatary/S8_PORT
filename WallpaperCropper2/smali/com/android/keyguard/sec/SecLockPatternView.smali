.class public Lcom/android/keyguard/sec/SecLockPatternView;
.super Lcom/android/internal/widget/LockPatternView;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecLockPatternView$1;,
        Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;,
        Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;
    }
.end annotation


# static fields
.field private static final TYPE_COLORFUL:I = 0x3

.field private static final TYPE_DOT:I = 0x1

.field private static final TYPE_MORPHING:I = 0x2

.field private static final TYPE_NONE:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

.field private mBitmapBtnDefault:Landroid/graphics/Bitmap;

.field private mBitmapBtnTouched:Landroid/graphics/Bitmap;

.field private mBitmapCircleDefault:Landroid/graphics/Bitmap;

.field private mBitmapCircleGreen:Landroid/graphics/Bitmap;

.field private mBitmapCircleRed:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mBtnDefaultForNone:Landroid/graphics/Bitmap;

.field private mBtnTouchedForCandy:[[Landroid/graphics/Bitmap;

.field private mBtnTouchedForNone:Landroid/graphics/Bitmap;

.field private mCircleDefaultForCandy:[[Landroid/graphics/Bitmap;

.field private mCircleDefaultForMorphing:Landroid/graphics/Bitmap;

.field private mCircleDefaultForNone:Landroid/graphics/Bitmap;

.field private mCircleDefaultForPattern:Landroid/graphics/Bitmap;

.field private mCircleGreenForCandy:[[Landroid/graphics/Bitmap;

.field private mCircleGreenForMorphing:Landroid/graphics/Bitmap;

.field private mCircleGreenForNone:Landroid/graphics/Bitmap;

.field private mCircleGreenForPattern:Landroid/graphics/Bitmap;

.field private final mCircleMatrix:Landroid/graphics/Matrix;

.field private mCircleRedForCandy:Landroid/graphics/Bitmap;

.field private mCircleRedForMorphing:Landroid/graphics/Bitmap;

.field private mCircleRedForNone:Landroid/graphics/Bitmap;

.field private mCircleRedForPattern:Landroid/graphics/Bitmap;

.field private mDiameterFactor:F

.field private mIsThemeCircleDefaultApplied:Z

.field private mIsThemeCircleGreenApplied:Z

.field private mIsThemeCircleRedApplied:Z

.field private mPatternCallback:Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;

.field private final mStrokeAlpha:I

.field private final morphAnimationStartThreshold:F

.field private final morphColor:I

.field private morphEffectPath:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;

.field private morphEffectScale:F

.field private morphEffectScaleForPhone:F

.field private morphEffectScaleForTablet:F

.field private final morphLineRatio:F

.field private morphPaint:Landroid/graphics/Paint;

.field private morphRatio:F

.field private final offsetForCircleLineInvalidateRect:I

.field private pathTotal:I

.field private patternType:I

.field private sx:F

.field private sy:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/SecLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/16 v4, 0x1c

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string/jumbo v1, "SecLockPatternView"

    iput-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mDiameterFactor:F

    iput v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mStrokeAlpha:I

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iput v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphRatio:F

    sget-object v1, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->WithinThreshold:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    iput-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphColor:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->offsetForCircleLineInvalidateRect:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphAnimationStartThreshold:F

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphLineRatio:F

    const v1, 0x3f6b851f    # 0.92f

    iput v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScaleForPhone:F

    const v1, 0x3f1f3b64    # 0.622f

    iput v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScaleForTablet:F

    iput v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->sx:F

    iput v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->sy:F

    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_screen_pattern_type"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "patternType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleDefaultApplied:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleGreenApplied:Z

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleRedApplied:Z

    :goto_0
    sget v1, Lcom/android/keyguard/R$drawable;->btn_code_lock_default_holo:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    sget v1, Lcom/android/keyguard/R$drawable;->btn_code_lock_default_holo_marked:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    sget v1, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_holo:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    sget v1, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_holo:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    sget v1, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_holo:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->loadResource()V

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    aput-object v2, v1, v6

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    aput-object v3, v1, v2

    array-length v2, v1

    :goto_1
    if-lt v0, v2, :cond_1

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    if-eq v0, v6, :cond_2

    :goto_2
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$bool;->theme_use_pattern_normal_image:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleDefaultApplied:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$bool;->theme_use_pattern_success_image:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleGreenApplied:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$bool;->theme_use_pattern_failed_image:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleRedApplied:Z

    goto :goto_0

    :cond_1
    aget-object v3, v1, v0

    iget v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    iget v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->setForMorphing()V

    goto :goto_2
.end method

.method private checkDistance(FFFF)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-float v0, p1, p3

    sub-float v1, p2, p4

    float-to-double v2, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v0, v1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareWidth:F

    mul-float/2addr v2, v6

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphRatio:F

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphRatio:F

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->StuckLine:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->setStatus(Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphRatio:F

    :cond_0
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZII)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, p5, p6}, Lcom/android/keyguard/sec/SecLockPatternView;->getImagesForCircle(II)V

    if-nez p4, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleDefaultApplied:Z

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    iget v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    iget v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    iget v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareWidth:F

    iget v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareHeight:F

    int-to-float v2, v2

    sub-float v2, v4, v2

    div-float/2addr v2, v8

    float-to-int v2, v2

    int-to-float v3, v3

    sub-float v3, v5, v3

    div-float/2addr v3, v8

    float-to-int v3, v3

    iget v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareWidth:F

    iget v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->sx:F

    iget v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareHeight:F

    iget v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->sy:F

    iget-object v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int v5, p2, v2

    int-to-float v5, v5

    add-int v6, p3, v3

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->sx:F

    iget v6, p0, Lcom/android/keyguard/sec/SecLockPatternView;->sy:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    if-nez v0, :cond_9

    :goto_1
    if-nez v1, :cond_a

    :goto_2
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    :cond_2
    :goto_3
    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mInStealthMode:Z

    if-nez v1, :cond_5

    :goto_4
    iget-boolean v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternInProgress:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v1, v2, :cond_8

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleGreenApplied:Z

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v1, v2, :cond_0

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleGreenApplied:Z

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleRedApplied:Z

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v1, v2, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown display mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_b
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternInProgress:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternView$1;->$SwitchMap$com$android$keyguard$sec$SecLockPatternView$MorphStatus:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    if-ne p5, v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v0

    if-ne p6, v0, :cond_2

    add-int v0, p2, v2

    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    add-int v1, p3, v3

    iget v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressX:F

    iget v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressY:F

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->getDegree(FFFF)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->drawMorph(Landroid/graphics/Canvas;FFF)V

    goto/16 :goto_3

    :pswitch_1
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressX:F

    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressY:F

    invoke-direct {p0, p1, v0, v1, v7}, Lcom/android/keyguard/sec/SecLockPatternView;->drawSmallCircle(Landroid/graphics/Canvas;FFZ)V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private drawLastLine(Landroid/graphics/Path;FFFF)V
    .locals 2

    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternView$1;->$SwitchMap$com$android$keyguard$sec$SecLockPatternView$MorphStatus:[I

    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/keyguard/sec/SecLockPatternView;->checkDistance(FFFF)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private drawMorph(Landroid/graphics/Canvas;FFF)V
    .locals 3

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->pathTotal:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v1, p4

    iget-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectPath:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;

    invoke-virtual {v2, v0, p2, p3}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->getPath(IFF)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    neg-float v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    neg-float v0, p2

    neg-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method private drawSmallCircle(Landroid/graphics/Canvas;FFZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p2, v0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p3, v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    return-void
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getColor()I
    .locals 2

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v0, 0x80

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xb2

    goto :goto_0
.end method

.method private getDegree(FFFF)D
    .locals 4

    sub-float v0, p3, p1

    float-to-double v0, v0

    sub-float v2, p4, p2

    float-to-double v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getImagesForCircle(II)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x5

    new-array v3, v0, [Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    aput-object v2, v3, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    aput-object v2, v3, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    aput-object v2, v3, v0

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    aput-object v2, v3, v0

    array-length v4, v3

    move v2, v1

    :goto_1
    if-lt v2, v4, :cond_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBtnDefaultForNone:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBtnTouchedForNone:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForNone:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForNone:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForNone:Landroid/graphics/Bitmap;

    :goto_2
    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_1
    iput-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForPattern:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForPattern:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForPattern:Landroid/graphics/Bitmap;

    goto :goto_2

    :pswitch_2
    iput-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForMorphing:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForMorphing:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForMorphing:Landroid/graphics/Bitmap;

    goto :goto_2

    :pswitch_3
    iput-object v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBtnTouchedForCandy:[[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForCandy:[[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForCandy:[[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForCandy:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_0
    aget-object v5, v3, v2

    iget v6, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_3
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapWidth:I

    iget v6, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_4
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBitmapHeight:I

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_3

    :cond_2
    move v0, v1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getLineRadius()F
    .locals 3

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareWidth:F

    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mDiameterFactor:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private getScaledBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_pattern_dot_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private loadResource()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget v0, Lcom/android/keyguard/R$drawable;->btn_code_lock_default_holo:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBtnDefaultForNone:Landroid/graphics/Bitmap;

    sget v0, Lcom/android/keyguard/R$drawable;->btn_code_lock_default_holo_marked:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBtnTouchedForNone:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_holo:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForNone:Landroid/graphics/Bitmap;

    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_holo:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForNone:Landroid/graphics/Bitmap;

    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_holo:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForNone:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleDefaultApplied:Z

    if-eqz v0, :cond_2

    :cond_1
    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_holo:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForNone:Landroid/graphics/Bitmap;

    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_holo:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForNone:Landroid/graphics/Bitmap;

    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_holo:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getScaledBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleGreenApplied:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mIsThemeCircleRedApplied:Z

    if-nez v0, :cond_1

    goto :goto_1

    :pswitch_1
    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_pattern:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForPattern:Landroid/graphics/Bitmap;

    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_pattern:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForPattern:Landroid/graphics/Bitmap;

    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_pattern:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForPattern:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_2
    new-array v0, v6, [[Landroid/graphics/Bitmap;

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_01:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_02:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_03:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_04:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_05:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_06:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_07:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_08:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->btn_code_lock_touched_candy_09:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mBtnTouchedForCandy:[[Landroid/graphics/Bitmap;

    new-array v0, v6, [[Landroid/graphics/Bitmap;

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_01:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_02:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_03:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_04:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_05:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_06:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_07:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_08:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_candy_09:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForCandy:[[Landroid/graphics/Bitmap;

    new-array v0, v6, [[Landroid/graphics/Bitmap;

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_01:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_02:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_03:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_04:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_05:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_06:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Landroid/graphics/Bitmap;

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_07:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_08:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v4

    sget v2, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_candy_09:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForCandy:[[Landroid/graphics/Bitmap;

    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_candy:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForCandy:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :pswitch_3
    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_default_holo_interaction:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleDefaultForMorphing:Landroid/graphics/Bitmap;

    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_green_holo_interaction:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleGreenForMorphing:Landroid/graphics/Bitmap;

    sget v0, Lcom/android/keyguard/R$drawable;->indicator_code_lock_point_area_red_holo_interaction:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mCircleRedForMorphing:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private setForMorphing()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v2, v1, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reolution : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " x "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "longestWidth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "morphEffectScaleForPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScaleForPhone:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScaleForPhone:F

    iput v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScale:F

    const/16 v1, 0x780

    if-ne v0, v1, :cond_3

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "morphEffectScale : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;

    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScale:F

    invoke-direct {v0, v1}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;-><init>(F)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectPath:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectPath:Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecLockPatternMorphEffectPath;->getPathTotal()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->pathTotal:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "morphEffectScaleForTablet : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScaleForTablet:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScaleForTablet:F

    iput v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScale:F

    const/16 v1, 0xa00

    if-eq v0, v1, :cond_0

    int-to-float v0, v0

    const/high16 v1, 0x45200000    # 2560.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ratio : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScale:F

    :goto_2
    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScale:F

    goto/16 :goto_1

    :cond_3
    int-to-float v0, v0

    const/high16 v1, 0x44f00000    # 1920.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ratio : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->morphEffectScale:F

    goto :goto_2
.end method

.method private setStatus(Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;)V
    .locals 3

    iput-object p1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Morphing current status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->WithinThreshold:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->setStatus(Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;)V

    goto :goto_0
.end method

.method protected handleActionMove(Landroid/view/MotionEvent;)V
    .locals 13

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getLineRadius()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    add-int/lit8 v0, v8, 0x1

    if-lt v6, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressY:F

    if-nez v2, :cond_c

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-lt v6, v8, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    move v3, v0

    :goto_2
    if-lt v6, v8, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    move v1, v0

    :goto_3
    invoke-virtual {p0, v3, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v9

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v9, :cond_8

    :cond_2
    :goto_4
    iget v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressX:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressY:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v10, 0x0

    cmpl-float v0, v0, v10

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_3

    const/4 v0, 0x0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    move v2, v0

    :cond_4
    iget-boolean v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternInProgress:Z

    if-nez v0, :cond_a

    :cond_5
    :goto_6
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    move v3, v0

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    move v1, v0

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    if-ne v4, v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternInProgress:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/SecLockPatternView;->notifyPatternStarted()V

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    goto :goto_5

    :cond_a
    if-lez v4, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v4

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterYForRow(I)F

    move-result v0

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float/2addr v5, v7

    const/high16 v10, 0x41a00000    # 20.0f

    sub-float/2addr v5, v10

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v3, v7

    const/high16 v4, 0x41a00000    # 20.0f

    add-float/2addr v4, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v3, v7

    const/high16 v10, 0x41a00000    # 20.0f

    sub-float/2addr v3, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v0, v7

    const/high16 v1, 0x41a00000    # 20.0f

    add-float/2addr v0, v1

    if-nez v9, :cond_b

    move v1, v3

    move v3, v4

    move v4, v5

    :goto_7
    iget-object v5, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v5, v4, v1, v3, v0}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_6

    :cond_b
    iget v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareWidth:F

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v1, v10

    iget v10, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareHeight:F

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    iget v11, v9, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-virtual {p0, v11}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v11

    iget v9, v9, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-virtual {p0, v9}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterYForRow(I)F

    move-result v9

    sub-float v12, v11, v1

    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-float/2addr v1, v11

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float v1, v9, v10

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float v3, v9, v10

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v3, v4

    move v4, v5

    goto :goto_7

    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/SecLockPatternView;->invalidate(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternCallback:Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternCallback:Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;->invalidateParentView()V

    goto/16 :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDrawLookup:[[Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v2, v3, :cond_3

    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareWidth:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mSquareHeight:F

    move/from16 v16, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getLineRadius()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getColor()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInStealthMode:Z

    if-nez v2, :cond_8

    :cond_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_9

    :cond_1
    :goto_2
    if-nez v2, :cond_a

    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPaddingLeft:I

    const/4 v7, 0x0

    :goto_4
    const/4 v2, 0x3

    if-lt v7, v2, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_15

    :goto_5
    return-void

    :cond_3
    add-int/lit8 v2, v13, 0x1

    mul-int/lit16 v2, v2, 0x2bc

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mAnimatingPeriodStart:J

    sub-long/2addr v4, v6

    long-to-int v3, v4

    rem-int v4, v3, v2

    div-int/lit16 v5, v4, 0x2bc

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->clearPatternDrawLookup()V

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-lt v3, v5, :cond_5

    if-gtz v5, :cond_6

    :cond_4
    const/4 v2, 0x0

    :goto_7
    if-nez v2, :cond_7

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->invalidate()V

    goto :goto_0

    :cond_5
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v6

    aget-object v6, v14, v6

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v2

    const/4 v7, 0x1

    aput-boolean v7, v6, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_6
    if-ge v5, v13, :cond_4

    const/4 v2, 0x1

    goto :goto_7

    :cond_7
    rem-int/lit16 v2, v4, 0x2bc

    int-to-float v2, v2

    const/high16 v3, 0x442f0000    # 700.0f

    div-float v3, v2, v3

    add-int/lit8 v2, v5, -0x1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView$Cell;

    iget v4, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v4

    iget v2, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterYForRow(I)F

    move-result v6

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView$Cell;

    iget v5, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v5

    sub-float/2addr v5, v4

    mul-float/2addr v5, v3

    iget v2, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterYForRow(I)F

    move-result v2

    sub-float/2addr v2, v6

    mul-float/2addr v2, v3

    add-float v3, v4, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressX:F

    add-float/2addr v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressY:F

    goto :goto_8

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v2, v4, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportElasticPlugin()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$bool;->theme_use_pattern_line_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$color;->theme_pattern_line_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    :cond_a
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v9, v6

    move v11, v8

    move v6, v4

    move v8, v2

    move v4, v7

    :goto_9
    if-lt v8, v13, :cond_d

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternInProgress:Z

    if-eqz v2, :cond_11

    :cond_c
    if-eqz v6, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    invoke-virtual {v3, v11, v9}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->patternType:I

    const/4 v6, 0x2

    if-eq v2, v6, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressY:F

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView$Cell;

    iget v7, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v7, v14, v7

    iget v10, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v7, v7, v10

    if-eqz v7, :cond_b

    const/4 v10, 0x1

    iget v6, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterXForColumn(I)F

    move-result v7

    iget v6, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/keyguard/sec/SecLockPatternView;->getCenterYForRow(I)F

    move-result v6

    if-nez v8, :cond_e

    :goto_b
    add-int/lit8 v2, v13, -0x1

    if-eq v8, v2, :cond_10

    :goto_c
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v9, v6

    move v11, v7

    move v6, v10

    goto :goto_9

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-object/from16 v17, v0

    iget v0, v2, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    iget v2, v2, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-object v2, v17, v2

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    invoke-virtual {v3, v11, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget v9, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    const/4 v11, 0x1

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_f

    iget v9, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    const/4 v11, 0x1

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_f

    iget v9, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    iget v2, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    invoke-virtual {v3, v9, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_b

    :cond_f
    invoke-virtual {v3, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_d

    :cond_10
    move v5, v6

    move v4, v7

    goto :goto_c

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v7, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v2, v7, :cond_c

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/sec/SecLockPatternView;->mInProgressY:F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/sec/SecLockPatternView;->drawLastLine(Landroid/graphics/Path;FFFF)V

    goto/16 :goto_a

    :cond_13
    int-to-float v2, v9

    int-to-float v3, v7

    mul-float v3, v3, v16

    add-float v11, v2, v3

    const/4 v8, 0x0

    :goto_e
    const/4 v2, 0x3

    if-lt v8, v2, :cond_14

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_14
    int-to-float v2, v10

    int-to-float v3, v8

    mul-float/2addr v3, v15

    add-float/2addr v2, v3

    float-to-int v4, v2

    float-to-int v5, v11

    aget-object v2, v14, v7

    aget-boolean v6, v2, v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/keyguard/sec/SecLockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZII)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_15
    sget-object v2, Lcom/android/keyguard/sec/SecLockPatternView$1;->$SwitchMap$com$android$keyguard$sec$SecLockPatternView$MorphStatus:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/sec/SecLockPatternView;->currentStatus:Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;

    invoke-virtual {v3}, Lcom/android/keyguard/sec/SecLockPatternView$MorphStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/sec/SecLockPatternView;->invalidate()V

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setPatternCallback(Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecLockPatternView;->mPatternCallback:Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;

    return-void
.end method
