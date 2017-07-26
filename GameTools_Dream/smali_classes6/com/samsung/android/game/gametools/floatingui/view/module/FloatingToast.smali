.class public Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;
.super Ljava/lang/Object;
.source "FloatingToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;
    }
.end annotation


# instance fields
.field arrowHideRunnable:Ljava/lang/Runnable;

.field arrowRepeat:Ljava/lang/Runnable;

.field arrowShowRunnable:Ljava/lang/Runnable;

.field private mAlphaHideAnim:Landroid/view/animation/AlphaAnimation;

.field private mAlphaShowAnim:Landroid/view/animation/AlphaAnimation;

.field private mContent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCoreView:Landroid/view/View;

.field private mDirection:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;

.field private mDuration:I

.field private mHandler:Landroid/os/Handler;

.field private mHideAnimSet:Landroid/view/animation/AnimationSet;

.field private mHideReservation:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsHiding:Z

.field private mIsShown:Z

.field private mLayout:Landroid/widget/LinearLayout;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mMovingDuration:I

.field private mOrientation:I

.field private mShowAnimSet:Landroid/view/animation/AnimationSet;

.field private mToastParams:Landroid/view/WindowManager$LayoutParams;

.field private mTransHideAnim:Landroid/view/animation/TranslateAnimation;

.field private mTransShowAnim:Landroid/view/animation/TranslateAnimation;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;Landroid/view/View$OnClickListener;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->arrowRepeat:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$2;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->arrowShowRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$3;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->arrowHideRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mOrientation:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mContent:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mDuration:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mMovingDuration:I

    iput-object p4, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mDirection:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;

    iput-object p5, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mIsHiding:Z

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mIsShown:Z

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mHideReservation:Z

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->showArrow()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mDirection:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->hideArrow()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mIsShown:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mHideReservation:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)Landroid/view/animation/AnimationSet;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mHideAnimSet:Landroid/view/animation/AnimationSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mCoreView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mDuration:I

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mIsHiding:Z

    return p1
.end method

.method private hideArrow()V
    .locals 7

    const/4 v5, 0x0

    const/16 v4, 0x190

    const/4 v3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const-string/jumbo v0, "hideArrow"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow1:I

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->getAlphaAnim(FFIILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow2:I

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->getAlphaAnim(FFIILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    sget v5, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow3:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v5, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$5;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->getAlphaAnim(FFIILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private initAnims()V
    .locals 9

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mShowAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mShowAnimSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mAlphaShowAnim:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mAlphaShowAnim:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mMovingDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mDirection:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;->TO_DOWN:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;

    if-ne v0, v1, :cond_0

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

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mTransShowAnim:Landroid/view/animation/TranslateAnimation;

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mTransShowAnim:Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mMovingDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mTransShowAnim:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mTransShowAnim:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mTransShowAnim:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$6;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mShowAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mAlphaShowAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mShowAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mTransShowAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mHideAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mHideAnimSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mAlphaHideAnim:Landroid/view/animation/AlphaAnimation;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mAlphaHideAnim:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mMovingDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mDirection:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;->TO_DOWN:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;

    if-ne v0, v1, :cond_1

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

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mTransHideAnim:Landroid/view/animation/TranslateAnimation;

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mTransHideAnim:Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mMovingDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mTransHideAnim:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mTransHideAnim:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mTransHideAnim:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$7;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mHideAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mAlphaHideAnim:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mHideAnimSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mTransHideAnim:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mHideAnimSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$8;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mTransShowAnim:Landroid/view/animation/TranslateAnimation;

    goto/16 :goto_0

    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mTransHideAnim:Landroid/view/animation/TranslateAnimation;

    goto :goto_1
.end method

.method private showArrow()V
    .locals 7

    const/4 v5, 0x0

    const/16 v4, 0x12c

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "showArrow"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow1:I

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow2:I

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow3:I

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow1:I

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->getAlphaAnim(FFIILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow2:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v3, 0x43

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->getAlphaAnim(FFIILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow3:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v3, 0x85

    new-instance v5, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$4;-><init>(Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->getAlphaAnim(FFIILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mDirection:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;->TO_DOWN:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mCoreView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mShowAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

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

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->arrowRepeat:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mCoreView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mShowAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public addViewToWindow()V
    .locals 4

    const-string/jumbo v0, "FloatingToast : addViewToWindow"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mToastParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v3, "Floating Toast"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mShowAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mHideAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->cancel()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->removeViewFromWindow()V

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

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mOrientation:I

    return v0
.end method

.method public getParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mToastParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hideImmediately()V
    .locals 3

    const/4 v2, 0x4

    const-string/jumbo v0, "hideImmediately"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mIsHiding:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mIsShown:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mHideReservation:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mCoreView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mDirection:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;->TO_DOWN:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow1:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow2:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow3:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow1:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow2:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$id;->arrow3:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mCoreView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mHideAnimSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public inflate()V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x4

    const/4 v4, -0x1

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mDirection:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;

    sget-object v2, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;->TO_DOWN:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_floating_toast:I

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mView:Landroid/view/View;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mContext:Landroid/content/Context;

    const-wide/high16 v2, 0x4060000000000000L    # 128.0

    invoke-static {v1, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v1

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mView:Landroid/view/View;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->layout_toast:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mCoreView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mCoreView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_floating_toast_bottomup:I

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mView:Landroid/view/View;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mView:Landroid/view/View;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_arrow:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mContext:Landroid/content/Context;

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    invoke-static {v1, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v1

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mView:Landroid/view/View;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->semSetHoverPopupType(I)V

    goto :goto_0
.end method

.method public initialize()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->inflate()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->setParams()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->addViewToWindow()V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->initAnims()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mToastParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->startAnimation()V

    return-void
.end method

.method public removeViewFromWindow()V
    .locals 3

    :try_start_0
    const-string/jumbo v1, "FloatingToast : removeViewFromWindow"

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FloatingToast : removeViewFromWindow exception"

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mOrientation:I

    return-void
.end method

.method public setParams()V
    .locals 6

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7d2

    const v4, 0x1000628

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mToastParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mDirection:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;->TO_DOWN:Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast$TOAST_DIRECTION;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mToastParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mToastParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/module/FloatingToast;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
