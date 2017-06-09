.class public Lcom/android/keyguard/KeyguardWidgetPager;
.super Lcom/android/keyguard/PagedView;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/PagedView$PageSwitchListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;,
        Lcom/android/keyguard/KeyguardWidgetPager$ZInterpolator;
    }
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F = 0.0f

.field public static final CHILDREN_OUTLINE_FADE_IN_DURATION:I = 0x64

.field public static final CHILDREN_OUTLINE_FADE_OUT_DURATION:I = 0x177

.field private static final CUSTOM_WIDGET_USER_ACTIVITY_TIMEOUT:J = 0x7530L

.field private static final FLAG_HAS_LOCAL_HOUR:I = 0x1

.field private static final FLAG_HAS_LOCAL_MINUTE:I = 0x2

.field protected static OVERSCROLL_MAX_ROTATION:F = 0.0f

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardWidgetPager"


# instance fields
.field private BOUNCER_SCALE_FACTOR:F

.field private mAddWidgetView:Landroid/view/View;

.field private final mBackgroundWorkerHandler:Landroid/os/Handler;

.field private final mBackgroundWorkerThread:Landroid/os/HandlerThread;

.field private mBouncerZoomInOutDuration:I

.field private mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

.field private mCameraEventInProgress:Z

.field private mCenterSmallWidgetsVertically:Z

.field protected mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

.field private mHasMeasure:Z

.field private mLastHeightMeasureSpec:I

.field private mLastWidthMeasureSpec:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPage:I

.field protected mScreenCenter:I

.field protected mShowingInitialHints:Z

.field protected mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

.field private mWidgetToResetAfterFadeOut:I

.field mZInterpolator:Lcom/android/keyguard/KeyguardWidgetPager$ZInterpolator;

.field showHintsAfterLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x461c4000    # 10000.0f

    sput v0, Lcom/android/keyguard/KeyguardWidgetPager;->CAMERA_DISTANCE:F

    const/high16 v0, 0x41f00000    # 30.0f

    sput v0, Lcom/android/keyguard/KeyguardWidgetPager;->OVERSCROLL_MAX_ROTATION:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardWidgetPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/keyguard/KeyguardWidgetPager$ZInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager$ZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZInterpolator:Lcom/android/keyguard/KeyguardWidgetPager$ZInterpolator;

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->showHintsAfterLayout:Z

    iput v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mShowingInitialHints:Z

    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    const v0, 0x3f2b851f    # 0.67f

    iput v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getImportantForAccessibility()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/keyguard/KeyguardWidgetPager;->setPageSwitchListener(Lcom/android/keyguard/PagedView$PageSwitchListener;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "KeyguardWidgetPager Worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardWidgetPager;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardWidgetPager;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardWidgetPager;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardWidgetPager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->updateWidgetFramesImportantForAccessibility()V

    return-void
.end method

.method private captureUserInteraction(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->onUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private enforceKeyguardWidgetFrame(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "KeyguardWidgetPager children must be KeyguardWidgetFrames"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findClockInHierarchy(Landroid/view/View;)I
    .locals 4

    const/4 v0, 0x0

    instance-of v1, p0, Landroid/widget/TextClock;

    if-nez v1, :cond_0

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    return v0

    :cond_0
    check-cast p0, Landroid/widget/TextClock;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getClockFlags(Landroid/widget/TextClock;)I

    move-result v0

    return v0

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-lt v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardWidgetPager;->findClockInHierarchy(Landroid/view/View;)I

    move-result v3

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getClockFlags(Landroid/widget/TextClock;)I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/TextClock;->getTimeZone()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x68

    :goto_0
    invoke-static {v2, v0}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    const/16 v1, 0x6d

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_2
    return v0

    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_2
    const/16 v0, 0x6b

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    or-int/lit8 v0, v0, 0x2

    goto :goto_2
.end method

.method private updatePageAlphaValues(I)V
    .locals 0

    return-void
.end method

.method private updateWidgetFrameImportantForAccessibility(Lcom/android/keyguard/KeyguardWidgetFrame;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setImportantForAccessibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method private updateWidgetFramesImportantForAccessibility()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->updateWidgetFrameImportantForAccessibility(Lcom/android/keyguard/KeyguardWidgetFrame;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private userActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;->onUserActivityTimeoutChanged()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;->userActivity()V

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/PagedView;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/PagedView;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/PagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/PagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addWidget(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    return-void
.end method

.method public addWidget(Landroid/view/View;I)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    instance-of v0, p1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    :goto_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWorkerHandler(Landroid/os/Handler;)V

    if-eq p2, v3, :cond_4

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    if-eq p1, v0, :cond_5

    :goto_2
    if-nez p1, :cond_6

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->updateWidgetFrameImportantForAccessibility(Lcom/android/keyguard/KeyguardWidgetFrame;)V

    return-void

    :cond_0
    new-instance v1, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x30

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v1, p1, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    instance-of v0, p1, Landroid/appwidget/AppWidgetHostView;

    if-nez v0, :cond_2

    :cond_1
    :goto_4
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetLockedSmall(Z)V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCenterSmallWidgetsVertically:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_4

    :cond_3
    invoke-virtual {v1, v5}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetLockedSmall(Z)V

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_accessibility_widget:I

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method animateOutlinesAndSidePages(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(ZI)V

    return-void
.end method

.method animateOutlinesAndSidePages(ZI)V
    .locals 11

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v6

    move v2, v3

    :goto_2
    if-lt v2, v4, :cond_3

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/keyguard/KeyguardWidgetPager$3;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager$3;-><init>(Lcom/android/keyguard/KeyguardWidgetPager;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/16 v0, 0x177

    :goto_3
    move p2, v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x64

    goto :goto_3

    :cond_3
    if-nez p1, :cond_5

    if-eqz p1, :cond_6

    :cond_4
    move v0, v1

    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v7

    const-string/jumbo v8, "contentAlpha"

    new-array v9, v10, [F

    aput v0, v9, v3

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v8, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v8, v3

    invoke-static {v7, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_7

    move v0, v1

    :goto_5
    invoke-virtual {v7, p0, p1, v0, p2}, Lcom/android/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    invoke-virtual {p0, v0, v2, v10}, Lcom/android/keyguard/KeyguardWidgetPager;->getAlphaForPage(IIZ)F

    move-result v0

    goto :goto_4

    :cond_6
    if-ne v2, v6, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    invoke-virtual {p0, v0, v2, v10}, Lcom/android/keyguard/KeyguardWidgetPager;->getOutlineAlphaForPage(IIZ)F

    move-result v0

    goto :goto_5
.end method

.method backgroundAlphaInterpolator(F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method boundByReorderablePages(Z[I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    :cond_0
    return-void

    :cond_1
    aget v0, p2, v3

    add-int/lit8 v0, v0, -0x1

    aput v0, p2, v3

    :cond_2
    aget v0, p2, v3

    aget v1, p2, v2

    if-ge v0, v1, :cond_3

    :goto_0
    aget v0, p2, v2

    aget v1, p2, v3

    if-gt v0, v1, :cond_0

    aget v0, p2, v2

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    aget v0, p2, v2

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, v2

    goto :goto_0

    :cond_3
    aget v0, p2, v3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method protected disablePageContentLayers()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->disableHardwareLayersForContent()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected enablePageContentLayers()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->enableHardwareLayersForContent()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAlphaForPage(IIZ)F
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->isWarping()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p3, :cond_2

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCurrentPage:I

    if-eq p2, v2, :cond_3

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageWarpIndex()I

    move-result v2

    if-eq p2, v2, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getOutlineAlphaForPage(IIZ)F
    .locals 2

    if-nez p3, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardWidgetPager;->getAlphaForPage(IIZ)F

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getUserActivityTimeout()J
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_1
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/keyguard/KeyguardStatusView;

    if-nez v1, :cond_0

    instance-of v0, v0, Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x7530

    return-wide v0
.end method

.method public getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    return-object v0
.end method

.method public getWidgetPageIndex(Landroid/view/View;)I
    .locals 1

    instance-of v0, p1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getWidgetToResetOnPageFadeOut()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return v0
.end method

.method public handleExternalCameraEvent(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->beginCameraEvent()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->endCameraEvent()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCameraEventInProgress:Z

    if-nez v0, :cond_0

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCameraEventInProgress:Z

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->userActivity()V

    goto :goto_0

    :pswitch_2
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCameraEventInProgress:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method hideOutlinesAndSidePages()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(Z)V

    return-void
.end method

.method isAddPage(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/keyguard/R$id;->keyguard_add_widget:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method isCameraPage(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, v1, Lcom/android/keyguard/CameraWidgetFrame;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isOverScrollChild(IF)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mOverScrollX:I

    if-gez v2, :cond_3

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_4

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0

    :cond_3
    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mOverScrollX:I

    iget v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mMaxScrollX:I

    if-gt v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    goto :goto_1

    :cond_5
    cmpg-float v2, p2, v4

    if-gez v2, :cond_6

    move v2, v0

    :goto_3
    if-nez v2, :cond_2

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_3
.end method

.method public isWidgetPage(I)Z
    .locals 3

    const/4 v1, 0x0

    if-gez p1, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    return v1

    :cond_3
    instance-of v2, v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAddView(Landroid/view/View;I)V
    .locals 4

    move-object v0, p1

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mTempVisiblePagesRange:[I

    array-length v1, v1

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getVisiblePages([I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->boundByReorderablePages(Z[I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    if-nez v2, :cond_0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/keyguard/KeyguardWidgetPager$2;

    invoke-direct {v3, p0, v0, p2, v1}, Lcom/android/keyguard/KeyguardWidgetPager$2;-><init>(Lcom/android/keyguard/KeyguardWidgetPager;II[I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v2, p1}, Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;->onAddView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/PagedView;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    return-void
.end method

.method public onBouncerStateChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->zoomInFromBouncer()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->zoomOutToBouncer()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/PagedView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method protected onEndReordering()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/PagedView;->onEndReordering()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->hideOutlinesAndSidePages()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->captureUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/keyguard/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->isChallengeShowing()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->isChallengeOverlapping()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->startReordering()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1
.end method

.method protected onMeasure(II)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLastWidthMeasureSpec:I

    iput p2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLastHeightMeasureSpec:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/keyguard/SlidingChallengeLayout;

    if-nez v2, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/PagedView;->onMeasure(II)V

    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-virtual {v0}, Lcom/android/keyguard/SlidingChallengeLayout;->getMaxChallengeTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v4

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->setMaxChallengeTop(I)V

    if-nez v3, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCurrentPage:I

    if-ne v0, v5, :cond_2

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    if-nez v5, :cond_2

    invoke-virtual {v1, v6}, Lcom/android/keyguard/KeyguardWidgetFrame;->shrinkWidget(Z)V

    goto :goto_1
.end method

.method protected onPageBeginMoving()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->isReordering(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->userActivity()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageBeginMoving()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->showOutlinesAndSidePages()V

    goto :goto_1
.end method

.method public onPageBeginWarp()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->showOutlinesAndSidePages()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageBeginWarp()V

    return-void
.end method

.method protected onPageEndMoving()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->isReordering(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageEndMoving()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->hideOutlinesAndSidePages()V

    goto :goto_1
.end method

.method public onPageEndWarp()V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageWarpIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v2

    if-eq v0, v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(ZI)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageEndWarp()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    if-nez p1, :cond_4

    :cond_1
    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getSystemUiVisibility()I

    move-result v0

    const v3, -0x800001

    and-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->setSystemUiVisibility(I)V

    :goto_2
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    if-ne v0, p2, :cond_6

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-nez v0, :cond_9

    :goto_4
    return-void

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/keyguard/KeyguardStatusView;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/android/keyguard/KeyguardWidgetPager;->findClockInHierarchy(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    move v0, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getSystemUiVisibility()I

    move-result v0

    const/high16 v3, 0x800000

    or-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->setSystemUiVisibility(I)V

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    iput p2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->userActivity()V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_5
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1000

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->onActive(Z)V

    goto :goto_5

    :cond_8
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->onActive(Z)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setImportantForAccessibility(I)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->requestAccessibilityFocus()Z

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageSwitched(Landroid/view/View;I)V

    goto :goto_4
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageSwitching(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onRemoveView(Landroid/view/View;Z)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/keyguard/KeyguardWidgetPager$1;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager$1;-><init>(Lcom/android/keyguard/KeyguardWidgetPager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v1, p1, p2}, Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;->onRemoveView(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public onRemoveViewAnimationCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;->onRemoveViewAnimationCompleted()V

    goto :goto_0
.end method

.method protected onStartReordering()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/PagedView;->onStartReordering()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->enablePageContentLayers()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->reorderStarting()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->captureUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/keyguard/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->showPagingFeedback()V

    return-void
.end method

.method protected overScroll(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->acceleratedOverScroll(F)V

    return-void
.end method

.method public removeWidget(Landroid/view/View;)V
    .locals 3

    instance-of v0, p1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "KeyguardWidgetPager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeWidget() can\'t find:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected reorderStarting()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->showOutlinesAndSidePages()V

    return-void
.end method

.method protected screenScrolled(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->updatePageAlphaValues(I)V

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mDragView:Landroid/view/View;

    if-eq v3, v2, :cond_1

    if-nez v3, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getScrollProgress(ILandroid/view/View;I)F

    move-result v2

    iget v4, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mDensity:F

    sget v5, Lcom/android/keyguard/KeyguardWidgetPager;->CAMERA_DISTANCE:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->setCameraDistance(F)V

    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->isOverScrollChild(IF)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3, v6}, Lcom/android/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    invoke-virtual {v3, v6, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    :goto_2
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v6

    if-nez v2, :cond_5

    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->setPivotX(F)V

    invoke-virtual {v3, v5}, Lcom/android/keyguard/KeyguardWidgetFrame;->setPivotY(F)V

    sget v4, Lcom/android/keyguard/KeyguardWidgetPager;->OVERSCROLL_MAX_ROTATION:F

    neg-float v4, v4

    mul-float/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v2, v2, v6

    if-gez v2, :cond_4

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v3, v4, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    goto :goto_1
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/PagedView;->sendAccessibilityEvent(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->isPageMoving()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method setAddWidgetEnabled(Z)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    if-eqz v0, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;I)V

    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLastWidthMeasureSpec:I

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLastHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->measure(II)V

    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    goto :goto_0

    :cond_3
    if-nez p1, :cond_1

    sget v0, Lcom/android/keyguard/R$id;->keyguard_add_widget:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method setBouncerAnimationDuration(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    return-void
.end method

.method public setCallbacks(Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    return-void
.end method

.method setCurrentPage(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/keyguard/PagedView;->setCurrentPage(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->updateChildrenContentAlpha(F)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->updateWidgetFramesImportantForAccessibility()V

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZ)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardWidgetFrame;->setIsHoveringOverDeleteDropTarget(Z)V

    return-void
.end method

.method public setViewStateManager(Lcom/android/keyguard/KeyguardViewStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    return-void
.end method

.method public setWidgetToResetOnPageFadeOut(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return-void
.end method

.method protected shouldSetTopAlignedPivotForWidget(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/keyguard/PagedView;->shouldSetTopAlignedPivotForWidget(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showInitialPageHints()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mShowingInitialHints:Z

    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->updateChildrenContentAlpha(F)V

    return-void
.end method

.method showOutlinesAndSidePages()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(Z)V

    return-void
.end method

.method public showPagingFeedback()V
    .locals 0

    return-void
.end method

.method updateChildrenContentAlpha(F)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCurrentPage:I

    if-ne v0, v3, :cond_1

    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    goto :goto_1
.end method

.method zoomInFromBouncer()V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez v0, :cond_4

    :cond_1
    :goto_1
    instance-of v1, v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-nez v1, :cond_7

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    cmpg-float v1, v1, v7

    if-gez v1, :cond_5

    move v1, v2

    :goto_3
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v1

    cmpg-float v1, v1, v7

    if-gez v1, :cond_6

    move v1, v2

    :goto_4
    if-nez v1, :cond_1

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const-string/jumbo v5, "scaleX"

    new-array v6, v2, [F

    aput v7, v6, v3

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v3

    const-string/jumbo v5, "scaleY"

    new-array v6, v2, [F

    aput v7, v6, v3

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v2, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_3

    :cond_6
    move v1, v3

    goto :goto_4

    :cond_7
    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->onBouncerShowing(Z)V

    goto :goto_2
.end method

.method zoomOutToBouncer()V
    .locals 8

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->shouldSetTopAlignedPivotForWidget(I)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_5

    move v1, v2

    :goto_2
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_6

    move v1, v2

    :goto_3
    if-nez v1, :cond_1

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const-string/jumbo v5, "scaleX"

    new-array v6, v2, [F

    iget v7, p0, Lcom/android/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    aput v7, v6, v3

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v3

    const-string/jumbo v5, "scaleY"

    new-array v6, v2, [F

    iget v7, p0, Lcom/android/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    aput v7, v6, v3

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    instance-of v1, v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-nez v1, :cond_7

    :goto_4
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_3

    :cond_7
    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->onBouncerShowing(Z)V

    goto :goto_4
.end method