.class public Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;
.super Ljava/lang/Object;
.source "HiddenTopToast.java"


# instance fields
.field arrowHideRunnable:Ljava/lang/Runnable;

.field arrowRepeat:Ljava/lang/Runnable;

.field arrowShowRunnable:Ljava/lang/Runnable;

.field private mAlphaHideAnim:Landroid/view/animation/AlphaAnimation;

.field private mAlphaShowAnim:Landroid/view/animation/AlphaAnimation;

.field private mArrow1:Landroid/view/View;

.field private mArrow2:Landroid/view/View;

.field private mArrow3:Landroid/view/View;

.field private mContent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCoreView:Landroid/view/View;

.field private mDuration:I

.field private mHandler:Landroid/os/Handler;

.field private mHideAnimSet:Landroid/view/animation/AnimationSet;

.field private mHideReservation:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsHiding:Z

.field private mIsShown:Z

.field private mLayout:Landroid/widget/LinearLayout;

.field private mMovingDuration:I

.field private mOrientation:I

.field private mShowAnimSet:Landroid/view/animation/AnimationSet;

.field private mToastParams:Landroid/view/WindowManager$LayoutParams;

.field private mTransHideAnim:Landroid/view/animation/TranslateAnimation;

.field private mTransShowAnim:Landroid/view/animation/TranslateAnimation;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->arrowRepeat:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$2;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->arrowShowRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$3;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->arrowHideRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mOrientation:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mContent:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mDuration:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mMovingDuration:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mIsHiding:Z

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mIsShown:Z

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mHideReservation:Z

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->showArrow()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mDuration:I

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mIsHiding:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->hideArrow()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mArrow1:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mArrow2:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mArrow3:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mIsShown:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mHideReservation:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)Landroid/view/animation/AnimationSet;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mHideAnimSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mCoreView:Landroid/view/View;

    return-object v0
.end method

.method private hideArrow()V
    .locals 7

    const/4 v5, 0x0

    const/16 v4, 0x190

    const/4 v3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mArrow1:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->getAlphaAnim(FFIILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mArrow2:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->getAlphaAnim(FFIILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mArrow3:Landroid/view/View;

    new-instance v5, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$5;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->getAlphaAnim(FFIILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private initAnims()V
    .locals 9

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mShowAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mShowAnimSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mAlphaShowAnim:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mAlphaShowAnim:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mMovingDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x40000000    # -2.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mTransShowAnim:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mTransShowAnim:Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mMovingDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mTransShowAnim:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mTransShowAnim:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mTransShowAnim:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$6;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mShowAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mAlphaShowAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mShowAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mTransShowAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mHideAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mHideAnimSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mAlphaHideAnim:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mAlphaHideAnim:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mMovingDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x40000000    # -2.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mTransHideAnim:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mTransHideAnim:Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mMovingDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mTransHideAnim:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mTransHideAnim:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mTransHideAnim:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$7;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mHideAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mAlphaHideAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mHideAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mTransHideAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mHideAnimSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$8;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private showArrow()V
    .locals 7

    const/4 v5, 0x0

    const/16 v4, 0x12c

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mArrow1:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mArrow2:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mArrow3:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mArrow1:Landroid/view/View;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->getAlphaAnim(FFIILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mArrow2:Landroid/view/View;

    const/16 v3, 0x43

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->getAlphaAnim(FFIILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mArrow3:Landroid/view/View;

    const/16 v3, 0x85

    new-instance v5, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast$4;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->getAlphaAnim(FFIILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mCoreView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mShowAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->background:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->arrowRepeat:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public addViewToWindow()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mToastParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v3, "Hidden Top Toast"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V

    return-void
.end method

.method getAlphaAnim(FFIILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    if-eqz p5, :cond_0

    invoke-virtual {v0, p5}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-object v0
.end method

.method public getLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mOrientation:I

    return v0
.end method

.method public getParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mToastParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hideImmediately()V
    .locals 3

    const/4 v2, 0x4

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mIsHiding:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mIsShown:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mHideReservation:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mCoreView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow1:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow2:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow3:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow1:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow2:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow3:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mCoreView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mHideAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public inflate()V
    .locals 5

    const/4 v4, -0x1

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_hidden_top_toast:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mView:Landroid/view/View;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mView:Landroid/view/View;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->ln_core:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mCoreView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mView:Landroid/view/View;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow1:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mArrow1:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mView:Landroid/view/View;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow2:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mArrow2:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mView:Landroid/view/View;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow3:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mArrow3:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public initialize()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->inflate()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->setParams()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->addViewToWindow()V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->initAnims()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mToastParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->startAnimation()V

    return-void
.end method

.method public removeViewFromWindow()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mOrientation:I

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

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mToastParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mToastParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/HiddenTopToast;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
