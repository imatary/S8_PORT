.class public Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;
.super Ljava/lang/Object;
.source "ToolkitTopMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;,
        Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;
    }
.end annotation


# static fields
.field private static final mShowHideDuration:I = 0x10b


# instance fields
.field private mAlphaHideAnim:Landroid/view/animation/AlphaAnimation;

.field private mAlphaShowAnim:Landroid/view/animation/AlphaAnimation;

.field private mCircleAlphaHideAnim:Landroid/view/animation/AlphaAnimation;

.field private mCircleAlphaShowAnim:Landroid/view/animation/AlphaAnimation;

.field private mCircleHideAnimSet:Landroid/view/animation/AnimationSet;

.field private mCircleScaleHideAnim:Landroid/view/animation/ScaleAnimation;

.field private mCircleScaleShowAnim:Landroid/view/animation/ScaleAnimation;

.field private mCircleScaleShowAnim2:Landroid/view/animation/ScaleAnimation;

.field private mCircleShowAnimSet:Landroid/view/animation/AnimationSet;

.field private mContext:Landroid/content/Context;

.field private mCurrentSection:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

.field private mDistanceCriterion:I

.field private mHandler:Landroid/os/Handler;

.field private mHideReserevation:Z

.field private mHideText:Landroid/view/View;

.field private mInOutStatus:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsShowAnimating:Z

.field private mIsShowing:Z

.field private mIsViewAdded:Z

.field private mLayout:Landroid/widget/FrameLayout;

.field private mMenuParams:Landroid/view/WindowManager$LayoutParams;

.field private mOrientation:I

.field private mRemoveCircle:Landroid/view/View;

.field private mRemoveView:Landroid/widget/FrameLayout;

.field private mScaleHideAnim:Landroid/view/animation/ScaleAnimation;

.field private mScaleShowAnim:Landroid/view/animation/ScaleAnimation;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mIsShowing:Z

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mIsShowAnimating:Z

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mIsViewAdded:Z

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mOrientation:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->initShowAnims()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)Landroid/view/animation/ScaleAnimation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mScaleShowAnim:Landroid/view/animation/ScaleAnimation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mAlphaShowAnim:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mIsShowing:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mIsShowAnimating:Z

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mHideReserevation:Z

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    return-object v0
.end method

.method private doRemoveViewSelectAnimation()V
    .locals 13

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/16 v10, 0x64

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v1, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v4, v10

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    invoke-virtual {v9, v11}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    invoke-virtual {v9, v11}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const-wide/16 v4, 0xe9

    invoke-virtual {v9, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mHideText:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v8, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v8, v11}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    invoke-virtual {v8, v11}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v7, v3, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v4, v10

    invoke-virtual {v7, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    invoke-virtual {v7, v11}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    invoke-virtual {v7, v11}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const-wide/16 v4, 0x14d

    invoke-virtual {v7, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v5, v3, v12

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v6, v3, v12

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    int-to-long v2, v10

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v0, v11}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    invoke-virtual {v0, v11}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->initHideAnims()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mScaleHideAnim:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mScaleHideAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$3;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mScaleHideAnim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private initCircleHideAnims()V
    .locals 10

    const-wide/16 v8, 0x14d

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleHideAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleHideAnimSet:Landroid/view/animation/AnimationSet;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleAlphaHideAnim:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleAlphaHideAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v5, v3, v4

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v6, v3, v4

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleScaleHideAnim:Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleScaleHideAnim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleHideAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleAlphaHideAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleHideAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleScaleHideAnim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private initCircleShowAnims()V
    .locals 11

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f400000    # 0.75f

    const-wide/16 v8, 0x74

    const v2, 0x3f88f5c3    # 1.07f

    const/high16 v7, 0x3f000000    # 0.5f

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleShowAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleShowAnimSet:Landroid/view/animation/AnimationSet;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleAlphaShowAnim:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleAlphaShowAnim:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v4, 0xe9

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v5, v3, v7

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v6, v3, v7

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleScaleShowAnim:Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleScaleShowAnim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v6, v0, v7

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v7, v0

    move v3, v10

    move v4, v2

    move v5, v10

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleScaleShowAnim2:Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleScaleShowAnim2:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleScaleShowAnim2:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleShowAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleAlphaShowAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleShowAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleScaleShowAnim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleShowAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleScaleShowAnim2:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private initHideAnims()V
    .locals 10

    const-wide/16 v8, 0x10b

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mAlphaHideAnim:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mAlphaHideAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mAlphaHideAnim:Landroid/view/animation/AlphaAnimation;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v5, v3, v4

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float v6, v3, v4

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mScaleHideAnim:Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mScaleHideAnim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mScaleHideAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private initShowAnims()V
    .locals 10

    const-wide/16 v8, 0x10b

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mAlphaShowAnim:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mAlphaShowAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mAlphaShowAnim:Landroid/view/animation/AlphaAnimation;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v5, v3, v4

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float v6, v3, v4

    move v3, v1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mScaleShowAnim:Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mScaleShowAnim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mScaleShowAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mScaleShowAnim:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$4;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private judgeInOutStatus(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$6;->$SwitchMap$com$samsung$android$game$gametools$floatingui$toolkit$ToolkitTopMenu$InOutState:[I

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mInOutStatus:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->doProperAnimation()V

    return-void

    :pswitch_0
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;->OUT:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;->REMOVE_OUT:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mInOutStatus:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    :cond_1
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;->REMOVE:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;->REMOVE:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mInOutStatus:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;->OUT:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;->OUT:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mInOutStatus:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    :cond_2
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;->REMOVE:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;->REMOVE_IN:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mInOutStatus:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addViewToWindow()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mIsViewAdded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mMenuParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v3, "GameTools Top Menu"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mIsViewAdded:Z

    const-string/jumbo v0, "ToolkitTopMenu addViewToWindow"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method doProperAnimation()V
    .locals 3

    const/4 v2, 0x4

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$6;->$SwitchMap$com$samsung$android$game$gametools$floatingui$toolkit$ToolkitTopMenu$InOutState:[I

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mInOutStatus:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->initCircleShowAnims()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleShowAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->initCircleHideAnims()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleHideAnimSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$5;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCircleHideAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCurrencSection()Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCurrentSection:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    return-object v0
.end method

.method public getHideDestination()Landroid/graphics/Point;
    .locals 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mContext:Landroid/content/Context;

    const-wide/high16 v6, 0x4030000000000000L    # 16.0

    invoke-static {v4, v6, v7}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public getLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mOrientation:I

    return v0
.end method

.method public getParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mMenuParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hide(Z)V
    .locals 2

    const-string/jumbo v0, "ToolkitTopMenu hide"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mIsShowAnimating:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->setHideReserevation(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCurrentSection:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;->REMOVE:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->doRemoveViewSelectAnimation()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCurrentSection:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;->OUT:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->initHideAnims()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mAlphaHideAnim:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$2;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mScaleHideAnim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mAlphaHideAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mIsShowing:Z

    goto :goto_0
.end method

.method public inflate()V
    .locals 6

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->tookit_top_menu:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mView:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mContext:Landroid/content/Context;

    const-wide v4, 0x405f800000000000L    # 126.0

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mView:Landroid/view/View;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->frame_remove:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveView:Landroid/widget/FrameLayout;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->red_circle_remove:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveView:Landroid/widget/FrameLayout;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_remove:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mHideText:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mHideText:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x1000000

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->semAddStrokeTextEffect(FIF)I

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public initialize()V
    .locals 4

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;->OUT:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mInOutStatus:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$InOutState;

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mContext:Landroid/content/Context;

    const-wide/high16 v2, 0x404d000000000000L    # 58.0

    invoke-static {v0, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mDistanceCriterion:I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->inflate()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->setParams()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mContext:Landroid/content/Context;

    const-wide/high16 v2, 0x404a000000000000L    # 52.0

    invoke-static {v0, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mDistanceCriterion:I

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mIsShowing:Z

    return v0
.end method

.method public removeViewFromWindow()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mIsViewAdded:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ToolkitTopMenu removeViewFromWindow"

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mIsViewAdded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-boolean v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mIsViewAdded:Z

    const-string/jumbo v1, "ToolkitTopMenu removeViewFromWindow exception"

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reportHandlePosition(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;->OUT:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCurrentSection:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;->OUT:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    invoke-virtual {p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getLayout()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mRemoveCircle:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDistanceBetweenCenterOfView(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mDistanceCriterion:I

    if-gt v1, v2, :cond_1

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;->REMOVE:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->judgeInOutStatus(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mCurrentSection:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$Section;

    goto :goto_0
.end method

.method public setHideReserevation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mHideReserevation:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mOrientation:I

    return-void
.end method

.method public setParams()V
    .locals 6

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7d6

    const v4, 0x1000628

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mMenuParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mMenuParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->addViewToWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mIsShowing:Z

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mIsShowAnimating:Z

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->mIsViewAdded:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitTopMenu;->setVisibility(I)V

    goto :goto_0
.end method
