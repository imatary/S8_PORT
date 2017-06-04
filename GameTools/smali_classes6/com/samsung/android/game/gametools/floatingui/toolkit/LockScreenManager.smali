.class public Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;
.super Ljava/lang/Object;
.source "LockScreenManager.java"


# static fields
.field private static final LOCK_SCRREN_ALPHA:F = 0.9f

.field private static final LOCK_SCRREN_COLOR:I

.field private static final ON_TOUCH_SCRREN_ALPHA:F = 0.7f

.field private static final TAG:Ljava/lang/String; = "LockScreenManager"

.field private static mInstance:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

.field public static mIsLocked:Z


# instance fields
.field private SWIPE_CRTERION:F

.field private mBatteryPercent:I

.field private mContext:Landroid/content/Context;

.field private mIsRTL:Z

.field private mLockView:Landroid/widget/FrameLayout;

.field private mLockViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mMainView:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;

.field private mMovingPoint:Landroid/graphics/PointF;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mPrevBatteryPercent:I

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mTextLayout:Landroid/widget/RelativeLayout;

.field private mTouchFlag:Z

.field private mTouchPoint:Landroid/graphics/PointF;

.field private mWithEndAction:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->LOCK_SCRREN_COLOR:I

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mInstance:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    sput-boolean v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mIsLocked:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x44340000    # 720.0f

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->SWIPE_CRTERION:F

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTouchFlag:Z

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mPrevBatteryPercent:I

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mBatteryPercent:I

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mIsRTL:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mWithEndAction:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mLockViewTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager$2;-><init>(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTouchFlag:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->onActionDown(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTouchPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mMovingPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mMovingPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->getDistanceBeetweenPointF(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->SWIPE_CRTERION:F

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mLockView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTextLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->onActionUp(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->updateBattery(I)V

    return-void
.end method

.method private getDistanceBeetweenPointF(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 6

    :try_start_0
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    double-to-float v1, v2

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;
    .locals 2

    const-class v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mInstance:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mInstance:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    :goto_0
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mInstance:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mInstance:Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;

    iput-object p0, v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private inflate(Z)V
    .locals 12

    const/4 v9, 0x1

    :try_start_0
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v3, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v5, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v7, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mMainView:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;

    new-instance v7, Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mLockView:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mLockView:Landroid/widget/FrameLayout;

    sget v8, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->LOCK_SCRREN_COLOR:I

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mLockView:Landroid/widget/FrameLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    sget v7, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_gamelock_textlayer:I

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTextLayout:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v7

    if-ne v7, v9, :cond_0

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mIsRTL:Z

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTextLayout:Landroid/widget/RelativeLayout;

    sget v8, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_summary:I

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTextLayout:Landroid/widget/RelativeLayout;

    sget v8, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_no_alerts:I

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget v7, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_NPBODY_GAME_BEING_PLAYED:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/game/gamecast/common/model/SettingData;->isNoAlertsOnSystemSettings(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mContext:Landroid/content/Context;

    sget v8, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_PS_ENABLED:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mContext:Landroid/content/Context;

    sget v11, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_OPT_NO_ALERTS_DURING_GAME_ABB:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTextLayout:Landroid/widget/RelativeLayout;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mMainView:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mLockView:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v8, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mMainView:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v8, v5}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mMainView:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mMainView:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;

    iget-object v8, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mLockViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v7, v8}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_3
    return-void

    :cond_0
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mIsRTL:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_1
    :try_start_1
    sget v7, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GHUB_TPOP_APP_RUNNING:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mContext:Landroid/content/Context;

    sget v8, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_PS_ENABLED:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mContext:Landroid/content/Context;

    sget v11, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_OPT_NO_ALERTS_WHILE_USING_APP:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private onActionDown(Landroid/view/MotionEvent;)V
    .locals 4

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTouchPoint:Landroid/graphics/PointF;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTouchFlag:Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mLockView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->updateBatteryText()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mMainView:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;->invalidate()V

    return-void
.end method

.method private onActionUp(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTouchFlag:Z

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTouchPoint:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mMovingPoint:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mLockView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mMainView:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;->invalidate()V

    return-void
.end method

.method private registerReceiver(Landroid/content/Context;)I
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->getBatteryPercentFromIntent(Landroid/content/Intent;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setParams()V
    .locals 7

    :try_start_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7d2

    const v4, 0x50006a8

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/KeyAllowUtil;->getWindowTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private unregisterReceiver(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string/jumbo v0, "LockScreenManager"

    const-string/jumbo v1, "unregisterReceiver"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateBattery(I)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mIsLocked:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mBatteryPercent:I

    if-eq v0, p1, :cond_0

    const-string/jumbo v0, "LockScreenManager"

    const-string/jumbo v1, "updateBattery"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mBatteryPercent:I

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mPrevBatteryPercent:I

    iput p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mBatteryPercent:I

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->updateBatteryIfVisible()V

    :cond_0
    return-void
.end method

.method private updateBatteryIfVisible()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTextLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const-string/jumbo v0, "LockScreenManager"

    const-string/jumbo v1, "updateBatteryIfVisible"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->updateBatteryText()V

    :cond_0
    return-void
.end method

.method private updateBatteryText()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_NPBODY_REMAINING_BATTERY_POWER_C_PDP:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "%d%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mIsRTL:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mBatteryPercent:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTextLayout:Landroid/widget/RelativeLayout;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_battery:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "LockScreenManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBatteryText - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isRtl?: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mIsRTL:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mBatteryPercent:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method getBatteryPercentFromIntent(Landroid/content/Intent;)I
    .locals 8

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v5, "level"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v5, "scale"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-float v5, v2

    int-to-float v6, v4

    div-float v0, v5, v6

    const-string/jumbo v5, "LockScreenManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getBatteryPercentFromIntent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, v0

    float-to-int v3, v5

    :goto_0
    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized lock(Ljava/lang/Runnable;Z)V
    .locals 6

    const/high16 v4, 0x3f000000    # 0.5f

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "LockScreenManager"

    const-string/jumbo v3, "lock"

    invoke-static {v2, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->inflate(Z)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->setParams()V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v2, v3, :cond_0

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->SWIPE_CRTERION:F

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mMainView:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v5, "LockScreenManager"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mLockView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mWithEndAction:Ljava/lang/Runnable;

    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mIsLocked:Z

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->registerReceiver(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mPrevBatteryPercent:I

    iget v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mPrevBatteryPercent:I

    iput v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mBatteryPercent:I

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->updateBatteryIfVisible()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iput v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->SWIPE_CRTERION:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setDispatchKeyListener(Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout$DispatchKeyListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mMainView:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mMainView:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;->setDispatchKeyListener(Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout$DispatchKeyListener;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized unlock()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "LockScreenManager"

    const-string/jumbo v2, "unlock"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mIsLocked:Z

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->unregisterReceiver(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    const-string/jumbo v2, "LockScreenManager"

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->searchView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mMainView:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mWithEndAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mWithEndAction:Ljava/lang/Runnable;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mWithEndAction:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/GTHandler;->post(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTouchPoint:Landroid/graphics/PointF;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mMovingPoint:Landroid/graphics/PointF;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mWithEndAction:Ljava/lang/Runnable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unlockWithNoAction()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "LockScreenManager"

    const-string/jumbo v2, "unlockWithNoAction"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mLockView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mLockView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTextLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTextLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mMainView:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mMainView:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->unregisterReceiver(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    const-string/jumbo v2, "LockScreenManager"

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->searchView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mMainView:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchFrameLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/FloatingWindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    sput-boolean v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mIsLocked:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mTouchPoint:Landroid/graphics/PointF;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mMovingPoint:Landroid/graphics/PointF;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mWithEndAction:Ljava/lang/Runnable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
