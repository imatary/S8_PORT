.class public Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;
.super Ljava/lang/Object;
.source "GLEffectsPreview.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/lpe/core/Listeners$EffectCacheListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;
    }
.end annotation


# static fields
.field private static final CANCEL:I = 0x0

.field private static final FLING_DISTANCE:I = 0x50

.field private static final FLING_TIME:I = 0x7fffffff

.field public static final MIN_DX:I = 0x28

.field private static final NEXT:I = 0x1

.field private static final PREV:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PEDIT_GLEffectsPreview"


# instance fields
.field private alphaLeft:F

.field private alphaRight:F

.field private dx:F

.field private mAnimating:Z

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mCurrEffect:I

.field private mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

.field private mGrayBG:[F

.field private mGrayBuffer:Ljava/nio/FloatBuffer;

.field private mLabelBitmaps:[Landroid/graphics/Bitmap;

.field private mLabelTextures:[I

.field private mLabelsBuffer:[Ljava/nio/FloatBuffer;

.field private mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;

.field private mLoaded:[Z

.field private mPaint:Landroid/text/TextPaint;

.field private mPreviewRect:Landroid/graphics/RectF;

.field private mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

.field private mProgress:F

.field private mSideMargin:I

.field private mTextAnimator:Landroid/animation/ValueAnimator;

.field private mTextColor:I

.field private mTextSize:I

.field private mTextures:[I

.field private mTopMargin:I

.field private mTouchDownTime:J

.field private startX:F

.field private textAlpha:F


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mProgress:F

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->textAlpha:F

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->startX:F

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimating:Z

    const/16 v1, 0x64

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextSize:I

    const/16 v1, 0x3c

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mSideMargin:I

    const/16 v1, 0xc8

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTopMargin:I

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mGrayBG:[F

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextColor:I

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;

    new-array v1, v2, [I

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    new-array v1, v2, [I

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures:[I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures:[I

    invoke-static {v1, v5}, Ljava/util/Arrays;->fill([II)V

    new-array v1, v2, [Z

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLoaded:[Z

    new-array v1, v2, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    new-array v1, v2, [Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelsBuffer:[Ljava/nio/FloatBuffer;

    const/4 v2, 0x1

    const/high16 v3, 0x42000000    # 32.0f

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mSideMargin:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getActionBarHeight(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTopMargin:I

    const/4 v2, 0x2

    const/high16 v3, 0x41700000    # 15.0f

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextSize:I

    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    const-string v1, "sans-serif-regular"

    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->updateGrayBuffer()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->textAlpha:F

    return p1
.end method

.method static synthetic access$302(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimating:Z

    return p1
.end method

.method static synthetic access$402(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;)Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->applyTextAnimation()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->updateLabelsBuffer(F)V

    return-void
.end method

.method private applyAnimation(I)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimator:Landroid/animation/ValueAnimator;

    const-string v3, "dx"

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v2, v4, v5

    aput v0, v4, v6

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimator:Landroid/animation/ValueAnimator;

    new-array v4, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimator:Landroid/animation/ValueAnimator;

    const/high16 v4, 0x43960000    # 300.0f

    sub-float v5, v0, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v4, v5

    float-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;I)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimating:Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void

    :cond_1
    if-ne p1, v6, :cond_2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    neg-float v0, v3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v0

    goto :goto_0
.end method

.method private applyTextAnimation()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "textAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$1;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f400000    # 0.75f
    .end array-data
.end method

.method private getLabelBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v10, 0x41200000    # 10.0f

    const/4 v9, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GLEffectsPreview::getLabelBitmap = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getTextSize()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, p1, v7, v8, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    neg-float v0, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    add-float/2addr v6, v0

    const/high16 v7, 0x41a00000    # 20.0f

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextColor:I

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    const v7, 0x4dfafafa    # 5.26344E8f

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    add-float v6, v0, v10

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1, v9, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    const v7, -0xdadadb

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    add-float v6, v0, v10

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1, v9, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    const v7, 0x4d252525    # 1.73167184E8f

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    add-float v6, v0, v10

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1, v9, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    const v7, -0x50506

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    add-float v6, v0, v10

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1, v9, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private updateGrayBuffer()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v1

    int-to-float v2, v1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v1

    int-to-float v3, v1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    move v1, v0

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinates(FFFFII)[F

    move-result-object v6

    array-length v0, v6

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mGrayBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mGrayBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private updateLabelsBuffer(F)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    mul-float p1, p1, v1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mSideMargin:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v9

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    aget-object v7, v1, v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    iget v0, v1, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mSideMargin:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mSideMargin:I

    sub-int/2addr v1, v2

    int-to-float v11, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v10, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v2, v2, p1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float v14, v1, v2

    cmpl-float v1, v14, v16

    if-ltz v1, :cond_7

    cmpg-float v1, v14, v15

    if-gtz v1, :cond_7

    sub-float v1, v10, v11

    sub-float v2, v14, v16

    sub-float v3, v15, v16

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v1, v11

    float-to-int v12, v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/2addr v1, v12

    int-to-float v1, v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v10

    div-float v13, v1, v2

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v1, v13, v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->alphaLeft:F

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTopMargin:I

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v18, v1, v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v1, v12

    move/from16 v0, v18

    int-to-float v2, v0

    move/from16 v0, v19

    int-to-float v3, v0

    int-to-float v4, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinatesForStrip(FFFFII)[F

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelsBuffer:[Ljava/nio/FloatBuffer;

    move-object/from16 v0, v17

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    aput-object v2, v1, v9

    :cond_2
    const/4 v9, 0x3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mSideMargin:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v9

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    aget-object v7, v1, v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    iget v0, v1, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mSideMargin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mSideMargin:I

    add-int/2addr v1, v2

    int-to-float v11, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v10, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v2, v2, p1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float v14, v1, v2

    cmpg-float v1, v14, v16

    if-gtz v1, :cond_b

    cmpl-float v1, v14, v15

    if-ltz v1, :cond_b

    sub-float v1, v10, v11

    sub-float v2, v14, v16

    sub-float v3, v15, v16

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v1, v11

    float-to-int v12, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v1

    sub-int/2addr v1, v12

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v10

    div-float v13, v1, v2

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v1, v13, v1

    if-lez v1, :cond_8

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->alphaRight:F

    :goto_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTopMargin:I

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v18, v1, v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v1, v12

    move/from16 v0, v18

    int-to-float v2, v0

    move/from16 v0, v19

    int-to-float v3, v0

    int-to-float v4, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinatesForStrip(FFFFII)[F

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelsBuffer:[Ljava/nio/FloatBuffer;

    move-object/from16 v0, v17

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    aput-object v2, v1, v9

    :cond_3
    const/4 v9, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v9

    if-eqz v1, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mSideMargin:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    aget-object v7, v1, v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v1, p1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mSideMargin:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    add-float v1, v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v12, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTopMargin:I

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v18, v1, v2

    :goto_3
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v1, v12

    move/from16 v0, v18

    int-to-float v2, v0

    move/from16 v0, v19

    int-to-float v3, v0

    int-to-float v4, v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getNormalizedCoordinatesForStrip(FFFFII)[F

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelsBuffer:[Ljava/nio/FloatBuffer;

    move-object/from16 v0, v17

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    aput-object v2, v1, v9

    goto/16 :goto_0

    :cond_4
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v13, v1

    if-lez v1, :cond_5

    const/high16 v1, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->alphaLeft:F

    goto/16 :goto_1

    :cond_5
    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v1, v13, v1

    if-lez v1, :cond_6

    const/high16 v1, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->alphaLeft:F

    goto/16 :goto_1

    :cond_6
    const/high16 v1, 0x3f400000    # 0.75f

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->alphaLeft:F

    goto/16 :goto_1

    :cond_7
    float-to-int v12, v10

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->alphaLeft:F

    goto/16 :goto_1

    :cond_8
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v13, v1

    if-lez v1, :cond_9

    const/high16 v1, 0x3e800000    # 0.25f

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->alphaRight:F

    goto/16 :goto_2

    :cond_9
    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v1, v13, v1

    if-lez v1, :cond_a

    const/high16 v1, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->alphaRight:F

    goto/16 :goto_2

    :cond_a
    const/high16 v1, 0x3f400000    # 0.75f

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->alphaRight:F

    goto/16 :goto_2

    :cond_b
    float-to-int v12, v10

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->alphaLeft:F

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mSideMargin:I

    int-to-float v1, v1

    add-float v1, v1, p1

    float-to-int v12, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTopMargin:I

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v18, v1, v2

    goto/16 :goto_3
.end method


# virtual methods
.method public clearLoading()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLoaded:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method public draw()V
    .locals 21

    monitor-enter p0

    const/4 v14, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v14, v2, :cond_8

    :try_start_0
    rem-int/lit8 v2, v14, 0x2

    if-nez v2, :cond_2

    const/4 v2, -0x1

    :goto_1
    add-int/lit8 v3, v14, 0x1

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v2, v3

    add-int/lit8 v15, v2, 0x2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    aget v2, v2, v15

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLoaded:[Z

    aget-boolean v2, v2, v15

    if-nez v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    if-lt v15, v2, :cond_4

    const/4 v2, 0x3

    if-le v15, v2, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimating:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_5
    :try_start_1
    const-string v2, "PEDIT_GLEffectsPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading EffectTexture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v15, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    aget v2, v2, v15

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v3

    aput v3, v2, v15

    const-string v2, "PEDIT_GLEffectsPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Texture generated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v15, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", textureId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    aget v4, v4, v15

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLoaded:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v15

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures:[I

    aget v2, v2, v15

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures:[I

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->createTexture()I

    move-result v3

    aput v3, v2, v15

    const-string v2, "PEDIT_GLEffectsPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Texture generated: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v15, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", textureId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    aget v4, v4, v15

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLoaded:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v15

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getData()[I

    move-result-object v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v15

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getData()[I

    move-result-object v2

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getData()[I

    move-result-object v2

    if-eqz v2, :cond_8

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    aget v3, v3, v15

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    aget-object v3, v3, v15

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getData()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move-result-object v9

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const v4, 0x46180400    # 9729.0f

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v4, 0x47012f00    # 33071.0f

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v4, 0x47012f00    # 33071.0f

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;

    invoke-interface {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;->getPreviewWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;

    invoke-interface {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;->getPreviewHeight()I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v2, 0xde1

    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures:[I

    aget v3, v3, v15

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const v4, 0x46180400    # 9729.0f

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v4, 0x47012f00    # 33071.0f

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v4, 0x47012f00    # 33071.0f

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    aget-object v4, v4, v15

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/16 v2, 0xde1

    invoke-static {v2}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLoaded:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v15

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLoaded:[Z

    const/4 v3, 0x2

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->isLongClicked()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_9
    monitor-exit p0

    :goto_4
    return-void

    :cond_a
    const-string v2, "PEDIT_GLEffectsPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NO DATA "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v15, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getProgramInfo(I)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v2, "a_Position"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v1

    const-string v2, "a_TextureCoordinate"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v20

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getVertexBuffer()Ljava/nio/Buffer;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getTextureBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    move/from16 v2, v20

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string v2, "u_blending_color"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v12

    const-string v2, "u_Sampler"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v18

    const/4 v2, 0x0

    move/from16 v0, v18

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v2, "u_Matrix"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->getLocation(Ljava/lang/String;)I

    move-result v16

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getProjectionMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    move/from16 v0, v16

    invoke-static {v0, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static/range {v20 .. v20}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    move-object/from16 v0, v17

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLProgram$ProgramInfo;->programId:I

    const-string v3, "alpha"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimating:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimator:Landroid/animation/ValueAnimator;

    const-string v3, "dx"

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;

    invoke-interface {v2, v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;->onMove(F)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->updateLabelsBuffer(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->textAlpha:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextAnimator:Landroid/animation/ValueAnimator;

    const-string v3, "textAlpha"

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_d
    const/high16 v2, 0x42200000    # 40.0f

    cmpl-float v2, v13, v2

    if-gtz v2, :cond_e

    const/high16 v2, -0x3de00000    # -40.0f

    cmpg-float v2, v13, v2

    if-ltz v2, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimating:Z

    if-eqz v2, :cond_15

    :cond_e
    float-to-int v2, v13

    :goto_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glScissor(IIII)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mProgress:F

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->BACKGROUND_BLACK:[F

    const/4 v4, 0x0

    invoke-static {v12, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v3}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getCurrentTextureId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mProgress:F

    sub-float/2addr v2, v3

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelsBuffer:[Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->BACKGROUND_TRANSPARENT:[F

    const/4 v4, 0x0

    invoke-static {v12, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    move/from16 v0, v16

    invoke-static {v0, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelsBuffer:[Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelsBuffer:[Ljava/nio/FloatBuffer;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelsBuffer:[Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelsBuffer:[Ljava/nio/FloatBuffer;

    const/4 v7, 0x2

    aget-object v7, v2, v7

    move/from16 v2, v20

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move/from16 v0, v19

    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_f
    const/high16 v2, 0x42200000    # 40.0f

    cmpl-float v2, v13, v2

    if-gtz v2, :cond_10

    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-lez v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimating:Z

    if-eqz v2, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLoaded:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->BACKGROUND_BLACK:[F

    const/4 v4, 0x0

    invoke-static {v12, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getProjectionMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    move/from16 v0, v16

    invoke-static {v0, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getVertexBuffer()Ljava/nio/Buffer;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getTextureBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    move/from16 v2, v20

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v2, v13

    float-to-int v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v2, 0x0

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelsBuffer:[Ljava/nio/FloatBuffer;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mSideMargin:I

    int-to-float v2, v2

    cmpl-float v2, v13, v2

    if-lez v2, :cond_11

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->BACKGROUND_TRANSPARENT:[F

    const/4 v4, 0x0

    invoke-static {v12, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    move/from16 v0, v16

    invoke-static {v0, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelsBuffer:[Ljava/nio/FloatBuffer;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelsBuffer:[Ljava/nio/FloatBuffer;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelsBuffer:[Ljava/nio/FloatBuffer;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelsBuffer:[Ljava/nio/FloatBuffer;

    const/4 v7, 0x1

    aget-object v7, v2, v7

    move/from16 v2, v20

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->alphaLeft:F

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_11
    const/4 v2, 0x0

    cmpg-float v2, v13, v2

    if-gez v2, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimating:Z

    if-nez v2, :cond_13

    :cond_12
    const/high16 v2, -0x3de00000    # -40.0f

    cmpg-float v2, v13, v2

    if-gez v2, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLoaded:[Z

    const/4 v3, 0x3

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->BACKGROUND_BLACK:[F

    const/4 v4, 0x0

    invoke-static {v12, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getProjectionMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    move/from16 v0, v16

    invoke-static {v0, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v6}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getVertexBuffer()Ljava/nio/Buffer;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getTextureBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    move/from16 v2, v20

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v13

    float-to-int v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v2, 0x0

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelsBuffer:[Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mSideMargin:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, v13, v2

    if-gez v2, :cond_14

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->BACKGROUND_TRANSPARENT:[F

    const/4 v4, 0x0

    invoke-static {v12, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->getIdentityMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    move/from16 v0, v16

    invoke-static {v0, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelsBuffer:[Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelsBuffer:[Ljava/nio/FloatBuffer;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelsBuffer:[Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelsBuffer:[Ljava/nio/FloatBuffer;

    const/4 v7, 0x3

    aget-object v7, v2, v7

    move/from16 v2, v20

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/16 v2, 0xde1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->alphaRight:F

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_14
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getScreenHeight()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glScissor(IIII)V

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/mimage/photoretouching/lpe/gl/util/GLUtil;->BACKGROUND_TRANSPARENT:[F

    const/4 v4, 0x0

    invoke-static {v12, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    const/4 v2, 0x0

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_5
.end method

.method public getTextZoneHeight()I
    .locals 2

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextSize:I

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTopMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimating:Z

    return v0
.end method

.method public isLoaded()Z
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    aget v0, v0, v2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLoaded:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mLabelTextures()V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public next()V
    .locals 9

    const/4 v8, 0x4

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    const/4 v6, 0x0

    aget v1, v5, v6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures:[I

    const/4 v6, 0x0

    aget v2, v5, v6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLoaded:[Z

    const/4 v6, 0x0

    aget-boolean v4, v5, v6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aget-object v3, v5, v6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    add-int/lit8 v7, v0, 0x1

    aget v6, v6, v7

    aput v6, v5, v0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures:[I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures:[I

    add-int/lit8 v7, v0, 0x1

    aget v6, v6, v7

    aput v6, v5, v0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLoaded:[Z

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLoaded:[Z

    add-int/lit8 v7, v0, 0x1

    aget-boolean v6, v6, v7

    aput-boolean v6, v5, v0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    const/4 v6, 0x4

    aput v1, v5, v6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures:[I

    const/4 v6, 0x4

    aput v2, v5, v6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    const/4 v6, 0x4

    aput-object v3, v5, v6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLoaded:[Z

    const/4 v6, 0x4

    aput-boolean v4, v5, v6

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->updateLabelsBuffer(F)V

    const-string v5, "PEDIT_GLEffectsPreview"

    const-string v6, "textures rotated next"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public onCacheUpdated(ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures:[I

    aget v1, v1, p1

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->getLabelBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLoaded:[Z

    aput-boolean v2, v0, p1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->updateLabelsBuffer(F)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void
.end method

.method public onOrientationChange()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLEffectsPreview::onOrientationChange = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/multigrid/QuramUtil;->findCaller(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->updateTextPreview()V

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->updateLabelsBuffer(F)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->updateGrayBuffer()V

    return-void
.end method

.method public onProgressUpdated(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mProgress:F

    return-void
.end method

.method public onSurfaceChanged()V
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;->getPreviewRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 12

    const-wide/32 v10, 0x7fffffff

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return v7

    :pswitch_0
    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->startX:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTouchDownTime:J

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->startX:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getState()I

    move-result v1

    if-eq v1, v8, :cond_7

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->startX:F

    :cond_0
    :goto_1
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    :cond_1
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    neg-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    neg-float v1, v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    :cond_2
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    const/high16 v2, 0x42200000    # 40.0f

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_3

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    const/high16 v2, -0x3de00000    # -40.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mAnimator:Landroid/animation/ValueAnimator;

    const-string v2, "dx"

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    :cond_4
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mListener:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    invoke-interface {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview$EffectsPreviewListener;->onMove(F)V

    :cond_6
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->updateLabelsBuffer(F)V

    goto/16 :goto_0

    :cond_7
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    cmpg-float v1, v1, v6

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mEffectCache:[Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/Effects$EffectCache;->getState()I

    move-result v1

    if-eq v1, v8, :cond_0

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->startX:F

    goto/16 :goto_1

    :pswitch_2
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v9

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_8

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    const/high16 v2, 0x42a00000    # 80.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTouchDownTime:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v10

    if-gez v1, :cond_9

    :cond_8
    invoke-direct {p0, v8}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->applyAnimation(I)V

    :goto_2
    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    goto/16 :goto_0

    :cond_9
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    neg-float v2, v2

    div-float/2addr v2, v9

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_a

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    const/high16 v2, -0x3d600000    # -80.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTouchDownTime:J

    sub-long/2addr v2, v4

    cmp-long v1, v2, v10

    if-gez v1, :cond_b

    :cond_a
    invoke-direct {p0, v7}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->applyAnimation(I)V

    goto :goto_2

    :cond_b
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->applyAnimation(I)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public prev()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    const/4 v6, 0x4

    aget v1, v5, v6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures:[I

    const/4 v6, 0x4

    aget v2, v5, v6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLoaded:[Z

    const/4 v6, 0x4

    aget-boolean v4, v5, v6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    const/4 v6, 0x4

    aget-object v3, v5, v6

    const/4 v0, 0x4

    :goto_0
    if-lez v0, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    add-int/lit8 v7, v0, -0x1

    aget v6, v6, v7

    aput v6, v5, v0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures:[I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures:[I

    add-int/lit8 v7, v0, -0x1

    aget v6, v6, v7

    aput v6, v5, v0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLoaded:[Z

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLoaded:[Z

    add-int/lit8 v7, v0, -0x1

    aget-boolean v6, v6, v7

    aput-boolean v6, v5, v0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    add-int/lit8 v7, v0, -0x1

    aget-object v6, v6, v7

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextures:[I

    const/4 v6, 0x0

    aput v1, v5, v6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelTextures:[I

    const/4 v6, 0x0

    aput v2, v5, v6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLoaded:[Z

    const/4 v6, 0x0

    aput-boolean v4, v5, v6

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    invoke-direct {p0, v5}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->updateLabelsBuffer(F)V

    const-string v5, "PEDIT_GLEffectsPreview"

    const-string v6, "textures rotated previous"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public setPreviewRect(Landroid/graphics/RectF;)V
    .locals 3

    const-string v0, "PEDIT_GLEffectsPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preview rect is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setPreviewView(Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPreviewView:Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLPreviewView;

    return-void
.end method

.method public updateCurrentEffect(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mCurrEffect:I

    return-void
.end method

.method public updateLabel(ILjava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v1, p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLabelBitmaps:[Landroid/graphics/Bitmap;

    invoke-direct {p0, p2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->getLabelBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, p1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->dx:F

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->updateLabelsBuffer(F)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mLoaded:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    return-void
.end method

.method public updateTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextColor:I

    return-void
.end method

.method public updateTextPreview()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->getActionBarHeight(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTopMargin:I

    const/4 v1, 0x2

    const/high16 v2, 0x41700000    # 15.0f

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextSize:I

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/gl/widgets/GLEffectsPreview;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method
