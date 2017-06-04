.class public Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;
.super Ljava/lang/Object;
.source "ToolkitSatelite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;,
        Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;,
        Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;
    }
.end annotation


# static fields
.field static final MIN_DELAY:I = 0xa


# instance fields
.field final PIXEL4DP:I

.field final TAG:Ljava/lang/String;

.field private fl_background:Landroid/widget/FrameLayout;

.field private fl_center:Landroid/widget/FrameLayout;

.field private fl_gamelock:Landroid/widget/FrameLayout;

.field private fl_keylock:Landroid/widget/FrameLayout;

.field private fl_no_alerts:Landroid/widget/FrameLayout;

.field private fl_record:Landroid/widget/FrameLayout;

.field private fl_screenshot:Landroid/widget/FrameLayout;

.field private fl_settings:Landroid/widget/FrameLayout;

.field private isClickable:Z

.field private iv_gamelock_back:Landroid/widget/ImageView;

.field private iv_keylock_back:Landroid/widget/ImageView;

.field private iv_no_alerts_back:Landroid/widget/ImageView;

.field private iv_recent1:Landroid/widget/ImageView;

.field private iv_recent2:Landroid/widget/ImageView;

.field private iv_recent3:Landroid/widget/ImageView;

.field private iv_record_back:Landroid/widget/ImageView;

.field private iv_screenshot_back:Landroid/widget/ImageView;

.field private iv_settings_back:Landroid/widget/ImageView;

.field private ln_launcher:Landroid/widget/LinearLayout;

.field private ln_recent1:Landroid/widget/LinearLayout;

.field private ln_recent2:Landroid/widget/LinearLayout;

.field private ln_recent3:Landroid/widget/LinearLayout;

.field private ln_recents:Landroid/widget/LinearLayout;

.field private mButtonType:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

.field private mDpHeight:F

.field private mDpWidth:F

.field private mDrawerParams:Landroid/view/WindowManager$LayoutParams;

.field private mFloatingSide:I

.field private mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsMobileKeyBoardOn:Z

.field private mIsOpen:Z

.field private mIsShowRecentApps:Z

.field private mIsViewAdded:Z

.field private mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

.field private mLeftView:Landroid/view/View;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOrientation:I

.field private mRightView:Landroid/view/View;

.field mSateliteKeyListener:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout$DispatchKeyListener;

.field private mView:Landroid/view/View;

.field private pivotView:Landroid/view/View;

.field private tb_gamelock:Landroid/widget/ToggleButton;

.field private tb_keylock:Landroid/widget/ToggleButton;

.field private tb_no_alerts:Landroid/widget/ToggleButton;

.field private tb_record:Landroid/widget/ToggleButton;

.field private tb_screenshot:Landroid/widget/ToggleButton;

.field private tb_settings:Landroid/widget/ToggleButton;

.field protected tv_gamelock:Landroid/widget/TextView;

.field protected tv_keylock:Landroid/widget/TextView;

.field protected tv_no_alerts:Landroid/widget/TextView;

.field private tv_recent1:Landroid/widget/TextView;

.field private tv_recent2:Landroid/widget/TextView;

.field private tv_recent3:Landroid/widget/TextView;

.field protected tv_record:Landroid/widget/TextView;

.field protected tv_screenshot:Landroid/widget/TextView;

.field protected tv_settings:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;ILcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ToolkitSatelite"

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mSateliteKeyListener:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout$DispatchKeyListener;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$9;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v0, p1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->themeContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mOrientation:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mInflater:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mFloatingSide:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->isClickable:Z

    iput-object p3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mButtonType:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v2, v3}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->PIXEL4DP:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsViewAdded:Z

    iput-boolean p4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsShowRecentApps:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->animateShow6ButtonAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->isClickable:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->initializeToShow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->animateShowCenterBtn()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsOpen:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->sixButtonsPositionInit()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->animateBackgroundDim(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mButtonType:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    return-object v0
.end method

.method private animateBackgroundDim(Z)V
    .locals 8

    const-wide/16 v6, 0x1d3

    const-wide/16 v4, 0xc8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_background:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsShowRecentApps:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsMobileKeyBoardOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recents:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_background:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsShowRecentApps:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsMobileKeyBoardOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recents:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private animateHide6ButtonAnimation(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 6

    move v1, p1

    const/4 v0, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_no_alerts:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_keylock:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_gamelock:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_screenshot:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_record:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_settings:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_no_alerts:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_keylock:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_gamelock:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_screenshot:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_record:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_settings:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->animateBackgroundDim(Z)V

    return-void
.end method

.method private animateHide6ButtonAnimation(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V
    .locals 2

    const/16 v0, 0x85

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->animateHide6ButtonAnimation(ILandroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->animateHideCenterBtn(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V

    return-void
.end method

.method private animateHideCenterBtn(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_center:Landroid/widget/FrameLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_close:I

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v1, 0x10b

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v5}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->getLargeParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mFloatingSide:I

    if-ne v5, v10, :cond_2

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_center:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getHandle()Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getPivotX()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setPivotX(F)V

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_center:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getHandle()Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getPivotY()F

    move-result v6

    iget v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->PIXEL4DP:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setPivotY(F)V

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->isStatusBarOn()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget v4, v5, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mStatusBarHeight:I

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getHandlePosition()Landroid/graphics/Point;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getHandle()Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    move-result-object v5

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->refinePosition(II)Landroid/graphics/Point;

    move-result-object v0

    iget v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mOrientation:I

    if-ne v5, v10, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsShowRecentApps:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsMobileKeyBoardOn:Z

    if-nez v5, :cond_1

    iget v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mFloatingSide:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    const-wide v8, 0x4067c00000000000L    # 190.0

    invoke-static {v6, v8, v9}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v6

    sub-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Point;->x:I

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_center:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v7, v0, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mFloatingSide:I

    if-ne v5, v10, :cond_3

    const/4 v5, 0x0

    :goto_1
    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->PIXEL4DP:I

    add-int/2addr v6, v7

    add-int/2addr v6, v4

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3ea8f5c3    # 0.33f

    const v8, 0x3e4ccccd    # 0.2f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v11, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$5;

    invoke-direct {v6, p0, p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$5;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_center:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getHandle()Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getPivotX()F

    move-result v6

    iget v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->PIXEL4DP:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setPivotX(F)V

    goto/16 :goto_0

    :cond_3
    iget v5, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->PIXEL4DP:I

    mul-int/lit8 v5, v5, 0x2

    goto :goto_1
.end method

.method private animateShow6ButtonAnimation()V
    .locals 10

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_no_alerts_back:Landroid/widget/ImageView;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_gamelock_back:Landroid/widget/ImageView;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_record_back:Landroid/widget/ImageView;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_screenshot_back:Landroid/widget/ImageView;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_settings_back:Landroid/widget/ImageView;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_keylock_back:Landroid/widget/ImageView;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    const-wide v8, 0x4047800000000000L    # 47.0

    invoke-static {v6, v8, v9}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    const-wide v8, 0x405ac00000000000L    # 107.0

    invoke-static {v6, v8, v9}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v0

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    const-wide v8, 0x4061c00000000000L    # 142.0

    invoke-static {v6, v8, v9}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    const-wide v8, 0x4060e00000000000L    # 135.0

    invoke-static {v6, v8, v9}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v1

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    const-wide/high16 v8, 0x4058000000000000L    # 96.0

    invoke-static {v6, v8, v9}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    const-wide v8, 0x4041800000000000L    # 35.0

    invoke-static {v6, v8, v9}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v3

    iget v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mFloatingSide:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_no_alerts:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    neg-int v7, v1

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x236

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v7}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_keylock:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-float v7, v0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    neg-int v7, v5

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x236

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v7}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_gamelock:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-float v7, v2

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    neg-int v7, v3

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x236

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v7}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_screenshot:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-float v7, v2

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-float v7, v3

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x236

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v7}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_record:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-float v7, v0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x236

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v7}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_settings:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-float v7, v1

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x236

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v7}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$7;

    invoke-direct {v7, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$7;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_no_alerts:Landroid/widget/ToggleButton;

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x14d

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_keylock:Landroid/widget/ToggleButton;

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x14d

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_gamelock:Landroid/widget/ToggleButton;

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x14d

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_screenshot:Landroid/widget/ToggleButton;

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x14d

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_record:Landroid/widget/ToggleButton;

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x14d

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_settings:Landroid/widget/ToggleButton;

    invoke-virtual {v6}, Landroid/widget/ToggleButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x14d

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_no_alerts_back:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x14d

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_keylock_back:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x14d

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_gamelock_back:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x14d

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_record_back:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x14d

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_screenshot_back:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x14d

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_settings_back:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x14d

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x14d

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_no_alerts:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x14d

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_keylock:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x14d

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_gamelock:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x14d

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_screenshot:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x14d

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_record:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x14d

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_settings:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x14d

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_no_alerts:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    neg-int v7, v4

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    neg-int v7, v1

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x236

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v7}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_keylock:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    neg-int v7, v0

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    neg-int v7, v5

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x236

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v7}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_gamelock:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    neg-int v7, v2

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    neg-int v7, v3

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x236

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v7}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_screenshot:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    neg-int v7, v2

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-float v7, v3

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x236

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v7}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_record:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    neg-int v7, v0

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x236

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v7}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_settings:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    neg-int v7, v4

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    int-to-float v7, v1

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x236

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v7}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$8;

    invoke-direct {v7, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$8;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0
.end method

.method private animateShowCenterBtn()V
    .locals 9

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const-string/jumbo v2, "ToolkitSatelite"

    const-string/jumbo v3, "animateShowCenterBtn"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v4, [I

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_center:Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_close:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->pivotView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mOrientation:I

    if-ne v2, v4, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsShowRecentApps:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsMobileKeyBoardOn:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mFloatingSide:I

    if-ne v2, v8, :cond_0

    aget v2, v0, v6

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    const-wide v4, 0x4067c00000000000L    # 190.0

    invoke-static {v3, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, v0, v6

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_center:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x10b

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    aget v3, v0, v6

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    aget v3, v0, v8

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x0

    const v6, 0x3e4ccccd    # 0.2f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$4;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x85

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private initializeToShow()Z
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "ToolkitSatelite"

    const-string/jumbo v5, "initializeToShow"

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mButtonType:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    sget-object v5, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;->BUTTON6:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_no_alerts:Landroid/widget/FrameLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_gamelock:Landroid/widget/FrameLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_screenshot:Landroid/widget/FrameLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_record:Landroid/widget/FrameLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_settings:Landroid/widget/FrameLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_center:Landroid/widget/FrameLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_keylock:Landroid/widget/FrameLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_background:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v4, 0x2

    new-array v1, v4, [I

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->getHandle()Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitHandle;->getLayout()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsShowRecentApps:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsMobileKeyBoardOn:Z

    if-nez v4, :cond_0

    iget v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mFloatingSide:I

    if-ne v4, v2, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v1, v5

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    const-wide v8, 0x4067c00000000000L    # 190.0

    invoke-static {v6, v8, v9}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v1, v4

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_center:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    aget v5, v1, v5

    iget v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->PIXEL4DP:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setX(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_center:Landroid/widget/FrameLayout;

    const/4 v5, 0x1

    aget v5, v1, v5

    iget v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->PIXEL4DP:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setY(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_center:Landroid/widget/FrameLayout;

    const v5, 0x3f4ccccd    # 0.8f

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_center:Landroid/widget/FrameLayout;

    const v5, 0x3f4ccccd    # 0.8f

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_center:Landroid/widget/FrameLayout;

    sget v5, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_close:I

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_no_alerts_back:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_gamelock_back:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_record_back:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_screenshot_back:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_settings_back:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_keylock_back:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_no_alerts:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_gamelock:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_screenshot:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_record:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_settings:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_keylock:Landroid/widget/ToggleButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_no_alerts:Landroid/widget/ToggleButton;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setScaleX(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_gamelock:Landroid/widget/ToggleButton;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setScaleX(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_screenshot:Landroid/widget/ToggleButton;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setScaleX(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_record:Landroid/widget/ToggleButton;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setScaleX(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_settings:Landroid/widget/ToggleButton;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setScaleX(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_keylock:Landroid/widget/ToggleButton;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setScaleX(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_no_alerts:Landroid/widget/ToggleButton;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setScaleY(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_gamelock:Landroid/widget/ToggleButton;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setScaleY(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_screenshot:Landroid/widget/ToggleButton;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setScaleY(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_record:Landroid/widget/ToggleButton;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setScaleY(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_settings:Landroid/widget/ToggleButton;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setScaleY(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_keylock:Landroid/widget/ToggleButton;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setScaleY(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_no_alerts:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_gamelock:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_screenshot:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_record:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_settings:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_keylock:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->setRecentButtons()V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$3;

    invoke-direct {v5, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$3;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;)V

    const-wide/16 v6, 0xa

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v2, "ToolkitSatelite"

    const-string/jumbo v4, "initialize failed"

    invoke-static {v2, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto :goto_0
.end method

.method private declared-synchronized setRecentButtons()V
    .locals 6

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsShowRecentApps:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsMobileKeyBoardOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recents:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recents:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recents:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recents:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mOrientation:I

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mDpHeight:F

    const/high16 v4, 0x43110000    # 145.0f

    sub-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recents:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string/jumbo v2, "ToolkitSatelite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RECENT SIZE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v4, v4, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecentAppList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecentAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent1:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent2:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent3:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_recent1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecentAppList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_recent2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecentAppList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_recent3:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecentAppList:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_recent1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecentAppList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_recent2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecentAppList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_recent3:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecentAppList:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    :try_start_7
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :pswitch_0
    :try_start_9
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent1:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent2:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent3:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent1:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent2:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent3:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_recent1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecentAppList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_recent1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecentAppList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent1:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent2:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent3:Landroid/widget/LinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_recent1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecentAppList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_recent2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecentAppList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_recent1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecentAppList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_recent2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v2, v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecentAppList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/RecentAppManager$RecentAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sixButtonsPositionInit()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x2

    :try_start_0
    new-array v1, v2, [I

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->pivotView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const-string/jumbo v2, "ToolkitSatelite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pivotView : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_no_alerts:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_keylock:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_gamelock:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_screenshot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_record:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_settings:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mFloatingSide:I

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_no_alerts:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_keylock:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_gamelock:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_screenshot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_record:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_settings:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mOrientation:I

    if-ne v2, v6, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsShowRecentApps:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsMobileKeyBoardOn:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mFloatingSide:I

    if-ne v2, v5, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v1, v3

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    const-wide v6, 0x4067c00000000000L    # 190.0

    invoke-static {v4, v6, v7}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v4

    sub-int/2addr v3, v4

    aput v3, v1, v2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_no_alerts:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_no_alerts:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->pivotView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_keylock:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_keylock:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->pivotView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_gamelock:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_gamelock:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->pivotView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_screenshot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_screenshot:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->pivotView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_record:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_record:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->pivotView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_settings:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_settings:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->pivotView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    throw v0
.end method


# virtual methods
.method public addViewToWindow()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v2, "ToolkitSatelite"

    const-string/jumbo v3, "addViewToWindow"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsViewAdded:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mDrawerParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v5, "Toolkit Satelite"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsViewAdded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsViewAdded:Z

    goto :goto_0
.end method

.method public changeSide(I)V
    .locals 4

    const/4 v3, -0x1

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mFloatingSide:I

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->removeView(Landroid/view/View;)V

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mFloatingSide:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLeftView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mView:Landroid/view/View;

    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->getWidgets()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mRightView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mView:Landroid/view/View;

    goto :goto_0
.end method

.method public close(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x3f400000    # 0.75f

    const-string/jumbo v1, "ToolkitSatelite"

    const-string/jumbo v2, "close"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsOpen:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$10;->$SwitchMap$com$samsung$android$game$gametools$floatingui$toolkit$ToolkitSatelite$CLOSE_ANIM:[I

    invoke-virtual {p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$CLOSE_ANIM;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_0
    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$10;->$SwitchMap$com$samsung$android$game$gametools$floatingui$toolkit$ToolkitSatelite$BUTTON_SIZE:[I

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mButtonType:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->animateHide6ButtonAnimation(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_center:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const/16 v1, 0xc8

    new-instance v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$6;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$6;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;)V

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->animateHide6ButtonAnimation(ILandroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->setClickable(Z)V

    iput-boolean v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsOpen:Z

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->removeViewFromWindow()V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$OnAnimEndListener;->onAnimEnd()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getLargeParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/16 v3, 0x7d2

    const v4, 0x1000628

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/KeyAllowUtil;->getWindowTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public getLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mOrientation:I

    return v0
.end method

.method public getParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mDrawerParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getWidgets()V
    .locals 10

    const-wide/high16 v8, 0x4035000000000000L    # 21.0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v5, 0x0

    const-string/jumbo v2, "ToolkitSatelite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWidgets() : mButtonType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mButtonType:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mButtonType:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    sget-object v3, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;->BUTTON6:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->fl_centerBtn:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_center:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->ln_recents:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recents:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->pivot:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->pivotView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->fl_no_alerts:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_no_alerts:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->fl_gamelock:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_gamelock:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->fl_screenshot:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_screenshot:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->fl_record:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_record:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->fl_settings:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_settings:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->fl_key_lock:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_keylock:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_no_alerts:Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->tb_no_alerts:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_no_alerts:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_gamelock:Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->tb_gamelock:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_gamelock:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_screenshot:Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->tb_screenshot:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_screenshot:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_record:Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->tb_record:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_record:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_settings:Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->tb_settings:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_settings:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_keylock:Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->tb_key_lock:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_keylock:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_no_alerts:Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_no_alerts:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_no_alerts:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_gamelock:Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_gamelock:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_gamelock:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_screenshot:Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_screenshot:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_screenshot:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_record:Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_record:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_record:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_settings:Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_settings:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_settings:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_keylock:Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_key_lock:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_keylock:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_no_alerts:Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_no_alerts_back:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_no_alerts_back:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_gamelock:Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_gamelock_back:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_gamelock_back:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_screenshot:Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_screenshot_back:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_screenshot_back:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_record:Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_record_back:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_record_back:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_settings:Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_settings_back:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_settings_back:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_keylock:Landroid/widget/FrameLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_key_lock_back:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_keylock_back:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->fl_backround:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->fl_background:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_recent1:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_recent1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_recent2:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_recent2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_recent3:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_recent3:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_recent1:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_recent1:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_recent2:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_recent2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_recent3:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_recent3:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_recent1:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_recent2:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_recent3:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_launcher:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object v1, v2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->ln_recent1:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent1:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->ln_recent2:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent2:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->ln_recent3:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent3:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->ln_launcher:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_launcher:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->pivotView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsShowRecentApps:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsMobileKeyBoardOn:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mDpHeight:F

    const/high16 v4, 0x43110000    # 145.0f

    sub-float/2addr v3, v4

    float-to-double v4, v3

    mul-double/2addr v4, v6

    sub-double/2addr v4, v8

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_0
    const-string/jumbo v2, "ToolkitSatelite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pivotTopMargin : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->pivotView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->reflectSettingData()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mDpHeight:F

    float-to-double v4, v3

    mul-double/2addr v4, v6

    sub-double/2addr v4, v8

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mDpHeight:F

    float-to-double v4, v3

    mul-double/2addr v4, v6

    sub-double/2addr v4, v8

    invoke-static {v2, v4, v5}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->getDpToPix(Landroid/content/Context;D)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0
.end method

.method public inflate()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string/jumbo v1, "ToolkitSatelite"

    const-string/jumbo v2, "inflate "

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mSateliteKeyListener:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout$DispatchKeyListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->setDispatchKeyListener(Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout$DispatchKeyListener;)V

    sget-object v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$10;->$SwitchMap$com$samsung$android$game$gametools$floatingui$toolkit$ToolkitSatelite$BUTTON_SIZE:[I

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mButtonType:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mFloatingSide:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mRightView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mView:Landroid/view/View;

    :goto_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_left_satelite_6button:I

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLeftView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_right_satelite_6button:I

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mRightView:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLeftView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mView:Landroid/view/View;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public initialize()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->removeViewFromWindow()V

    :cond_0
    const-string/jumbo v0, "ToolkitSatelite"

    const-string/jumbo v1, "initialize"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->inflate()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->setParams()V

    return-void
.end method

.method public isClickable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->isClickable:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsOpen:Z

    return v0
.end method

.method public open(Z)V
    .locals 8

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    iget v4, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    iput v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mDpHeight:F

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    iput v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mDpWidth:F

    const-string/jumbo v4, "ToolkitSatelite"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "open : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mDpWidth:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mDpHeight:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/game/gamecast/common/utility/CommonUiUtil;->isEnabledMobileKeyboard(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsMobileKeyBoardOn:Z

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsOpen:Z

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->addViewToWindow()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->getWidgets()V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$2;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;Z)V

    const-wide/16 v6, 0xa

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsOpen:Z

    goto :goto_1
.end method

.method reflectSettingData()V
    .locals 5

    const-string/jumbo v2, "ToolkitSatelite"

    const-string/jumbo v3, "reflectSettingData"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_no_alerts:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mButtonType:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    sget-object v3, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;->BUTTON6:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_no_alerts:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/game/gamecast/common/model/SettingData;->isNoAlertsOn(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_keylock:Landroid/widget/ToggleButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mButtonType:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    sget-object v3, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;->BUTTON6:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_keylock:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/game/gamecast/common/model/SettingData;->isKeyLocked(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_1
    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_LOCK_RECENTS_AND_BACK_KEYS:I

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/model/SettingData;->getKeyLockSettings(Landroid/content/Context;)I

    move-result v0

    const-string/jumbo v2, "ToolkitSatelite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reflectSettingData : keyLockSetting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_LOCK_RECENTS_KEY:I

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tv_keylock:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_3
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BUTTON_LOCK_BACK_KEY:I

    goto :goto_0
.end method

.method public removeViewFromWindow()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsViewAdded:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mGlobalListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string/jumbo v1, "ToolkitSatelite"

    const-string/jumbo v2, "removeViewFromWindow"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsViewAdded:Z

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_recent1:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_recent1:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_recent2:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_recent2:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_recent3:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->iv_recent3:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ToolkitSatelite"

    const-string/jumbo v2, "removeViewFromWindow exception"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mIsViewAdded:Z

    goto :goto_0
.end method

.method public setClickable(Z)V
    .locals 5

    const-string/jumbo v2, "ToolkitSatelite"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setClickable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->isClickable:Z

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->isClickable:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mButtonType:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    sget-object v3, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;->BUTTON6:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_no_alerts:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_gamelock:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_record:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_screenshot:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_settings:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_keylock:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_no_alerts:Landroid/widget/ToggleButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_gamelock:Landroid/widget/ToggleButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_record:Landroid/widget/ToggleButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_screenshot:Landroid/widget/ToggleButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_settings:Landroid/widget/ToggleButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_keylock:Landroid/widget/ToggleButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent1:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent2:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent3:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_launcher:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent1:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent2:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent3:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_launcher:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->root:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mButtonType:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    sget-object v3, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;->BUTTON6:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite$BUTTON_SIZE;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_no_alerts:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_gamelock:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_record:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_screenshot:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_settings:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_keylock:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_no_alerts:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_gamelock:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_record:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_screenshot:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_settings:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_keylock:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_no_alerts:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setClickable(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_gamelock:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setClickable(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_record:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setClickable(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_screenshot:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setClickable(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_settings:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setClickable(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->tb_keylock:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setClickable(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent1:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent2:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent3:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_launcher:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent1:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent2:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_recent3:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->ln_launcher:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v3, Lcom/samsung/android/game/gametools/floatingui/R$id;->root:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mOrientation:I

    return-void
.end method

.method public setParams()V
    .locals 6

    const/4 v1, -0x1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    const v4, 0x1000628

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mDrawerParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mDrawerParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mDrawerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mDrawerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/KeyAllowUtil;->getWindowTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPosition(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mDrawerParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mDrawerParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->updateView()V

    return-void
.end method

.method public setPosition(Landroid/graphics/Point;)V
    .locals 2

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->setPosition(II)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateView()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitSatelite;->mDrawerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
