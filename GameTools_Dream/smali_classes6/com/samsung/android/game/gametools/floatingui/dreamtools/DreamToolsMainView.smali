.class public Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;
.super Ljava/lang/Object;
.source "DreamToolsMainView.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static instance:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;


# instance fields
.field final TAG:Ljava/lang/String;

.field private mBackLockLayout:Landroid/widget/RelativeLayout;

.field private mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

.field private mDensityDPI:I

.field private mDisplayInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

.field private mEmptySpace:Landroid/widget/RelativeLayout;

.field private mHideAnimEndRunnable:Ljava/lang/Runnable;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsGameApp:Z

.field private volatile mIsHiding:Z

.field private mLauncherImageView:Landroid/widget/ImageView;

.field private mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

.field private mListener:Landroid/view/View$OnClickListener;

.field private mLiveImageView:Landroid/widget/ImageView;

.field private mLock:Ljava/lang/Object;

.field private mMenuInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainMenuInfo;

.field private mNaverCafeEnabled:Z

.field private mNoAlertLayout:Landroid/widget/RelativeLayout;

.field private mNoAlertTextView:Landroid/widget/TextView;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mPlugImageView:Landroid/widget/ImageView;

.field private mRecentLockLayout:Landroid/widget/RelativeLayout;

.field private mRecordView:Landroid/widget/RelativeLayout;

.field private mRotation:I

.field private mScreenLockView:Landroid/widget/RelativeLayout;

.field private mScreenShotView:Landroid/widget/RelativeLayout;

.field private mSettingsImageView:Landroid/widget/ImageView;

.field private mShowAnimDuration:I

.field private mSwitchBackLock:Landroid/widget/Switch;

.field private mSwitchNoAlerts:Landroid/widget/Switch;

.field private mSwitchRecentLock:Landroid/widget/Switch;

.field private mView:Landroid/view/View;

.field private mView0:Landroid/view/View;

.field private mView270:Landroid/view/View;

.field private mView90:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->TAG:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mRotation:I

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mDensityDPI:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mIsGameApp:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mNaverCafeEnabled:Z

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mListener:Landroid/view/View$OnClickListener;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/16 v0, 0x96

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mShowAnimDuration:I

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mHideAnimEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->init(Landroid/content/Context;Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;)Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;)Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->removeLayoutFromWindow()V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$402(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mListener:Landroid/view/View$OnClickListener;

    return-object p1
.end method

.method static synthetic access$502(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mIsHiding:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mScreenLockView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mScreenShotView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mRecordView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private addLayoutToWindow()V
    .locals 6

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/dreamtools/FloatingWindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v4, "GameTools Main View"

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/FloatingWindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private bindListener()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mEmptySpace:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->setOnClickListener(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.game.gamelive"

    invoke-static {v0, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLiveImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->setOnClickListener(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLiveImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.game.gamehome"

    invoke-static {v0, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLauncherImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->setOnClickListener(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLauncherImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mPlugImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->setOnClickListener(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mNaverCafeEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mPlugImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLauncherImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->setOnClickListener(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSettingsImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->setOnClickListener(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mScreenLockView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->setOnClickListener(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mScreenShotView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->setOnClickListener(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mRecordView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->setOnClickListener(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mNoAlertLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->setOnClickListener(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mRecentLockLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->setOnClickListener(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mBackLockLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->setOnClickListener(Landroid/view/View;)V

    monitor-exit v1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLiveImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLauncherImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mPlugImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private changeAllTextShadowNOuterGlow(Landroid/view/ViewGroup;)V
    .locals 12

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    invoke-virtual {p1, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v1, v7, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    move-object v0, v7

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v11, 0x1

    invoke-static {v5, v6, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    const v6, 0x3f19999a    # 0.6f

    invoke-virtual/range {v1 .. v6}, Landroid/widget/TextView;->semAddOuterShadowTextEffect(FFFIF)I

    move-object v0, v7

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x1000000

    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->semAddOuterGlowTextEffect(FIF)I

    const-string/jumbo v1, "changeAllTextShadowNOuterGlow"

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    instance-of v1, v7, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v7, Landroid/view/ViewGroup;

    invoke-direct {p0, v7}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->changeAllTextShadowNOuterGlow(Landroid/view/ViewGroup;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;
    .locals 2

    const-class v1, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->instance:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;-><init>(Landroid/content/Context;Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->instance:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;

    :cond_0
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->instance:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private inflate()V
    .locals 9

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    new-instance v4, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mRotation:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v6, -0x1

    invoke-direct {v1, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView:Landroid/view/View;

    invoke-virtual {v4, v6, v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->setAlpha(F)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v6, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v4, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->setDispatchKeyListener(Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout$DispatchKeyListener;)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_root:I

    invoke-virtual {v4, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mEmptySpace:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_gamelauncher:I

    invoke-virtual {v4, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLauncherImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_settings:I

    invoke-virtual {v4, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSettingsImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_live:I

    invoke-virtual {v4, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLiveImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->iv_plug:I

    invoke-virtual {v4, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mPlugImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->setHoverText()V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_screen_touch_lock:I

    invoke-virtual {v4, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mScreenLockView:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_screenshot:I

    invoke-virtual {v4, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mScreenShotView:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$id;->rl_record:I

    invoke-virtual {v4, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mRecordView:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView$2;-><init>(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mScreenLockView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mScreenShotView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mRecordView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    const-string/jumbo v6, "tag_no_alert_mainsw"

    invoke-virtual {v4, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSwitchNoAlerts:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSwitchNoAlerts:Landroid/widget/Switch;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/game/gamecast/common/model/SettingData;->isNoAlertsOn(Landroid/content/Context;)Z

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSwitchNoAlerts:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSwitchNoAlerts:Landroid/widget/Switch;

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mSwitchNoAlerts: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/game/gamecast/common/model/SettingData;->getKeyLockSettings(Landroid/content/Context;)I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    const-string/jumbo v6, "tag_recent_key_lock_mainsw"

    invoke-virtual {v4, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSwitchRecentLock:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSwitchRecentLock:Landroid/widget/Switch;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSwitchRecentLock:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/game/gamecast/common/model/SettingData;->isKeyLocked(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eq v2, v8, :cond_8

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSwitchRecentLock:Landroid/widget/Switch;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mSwitchRecentLock: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSwitchRecentLock:Landroid/widget/Switch;

    invoke-virtual {v7}, Landroid/widget/Switch;->isChecked()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    const-string/jumbo v6, "tag_back_key_lock_mainsw"

    invoke-virtual {v4, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSwitchBackLock:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSwitchBackLock:Landroid/widget/Switch;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSwitchBackLock:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/game/gamecast/common/model/SettingData;->isKeyLocked(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v2, :cond_9

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSwitchBackLock:Landroid/widget/Switch;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mSwitchBackLock: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSwitchBackLock:Landroid/widget/Switch;

    invoke-virtual {v7}, Landroid/widget/Switch;->isChecked()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    const-string/jumbo v6, "tag_no_alert_maintv"

    invoke-virtual {v4, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mNoAlertTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mNoAlertTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/game/gamecast/common/model/SettingData;->isPerformanceGameModeOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mIsGameApp:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mNoAlertTextView:Landroid/widget/TextView;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_OPT_NO_ALERTS_DURING_GAME_ABB:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    const-string/jumbo v6, "tag_no_alert_main"

    invoke-virtual {v4, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mNoAlertLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    const-string/jumbo v6, "tag_recent_key_lock_main"

    invoke-virtual {v4, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mRecentLockLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    const-string/jumbo v6, "tag_back_key_lock_main"

    invoke-virtual {v4, v6}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mBackLockLayout:Landroid/widget/RelativeLayout;

    monitor-exit v5

    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView0:Landroid/view/View;

    if-nez v4, :cond_5

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_dt_main_0:I

    invoke-direct {p0, v4}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->inflateView(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView0:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "inflate: mView0"

    invoke-static {v4, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView0:Landroid/view/View;

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView:Landroid/view/View;

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView90:Landroid/view/View;

    if-nez v4, :cond_6

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_dt_main_90:I

    invoke-direct {p0, v4}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->inflateView(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView90:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "inflate: mView90"

    invoke-static {v4, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView90:Landroid/view/View;

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView:Landroid/view/View;

    goto/16 :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView270:Landroid/view/View;

    if-nez v4, :cond_7

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_dt_main_270:I

    invoke-direct {p0, v4}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->inflateView(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView270:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "inflate: mView270"

    invoke-static {v4, v6}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView270:Landroid/view/View;

    iput-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView:Landroid/view/View;

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSwitchRecentLock:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_1

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSwitchBackLock:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_2

    :cond_a
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mNoAlertTextView:Landroid/widget/TextView;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_OPT_NO_ALERTS_WHILE_USING_APP:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :cond_b
    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mNoAlertTextView:Landroid/widget/TextView;

    sget v6, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_OPT_NO_ALERTS_DURING_GAME_ABB:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private inflateView(I)Landroid/view/View;
    .locals 14

    iget-object v11, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mInflater:Landroid/view/LayoutInflater;

    const/4 v12, 0x0

    invoke-virtual {v10, p1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    sget v10, Lcom/samsung/android/game/gametools/floatingui/R$id;->ln_list_content:I

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mMenuInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainMenuInfo;

    invoke-virtual {v10}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainMenuInfo;->getMenuCnt()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mInflater:Landroid/view/LayoutInflater;

    sget v12, Lcom/samsung/android/game/gametools/floatingui/R$layout;->layout_dt_mainitem:I

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mMenuInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainMenuInfo;

    invoke-virtual {v10, v2}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainMenuInfo;->getMenuTag(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    sget v10, Lcom/samsung/android/game/gametools/floatingui/R$id;->tv_title:I

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mMenuInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainMenuInfo;

    iget-object v12, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v12, v2}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainMenuInfo;->getMenuString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "tv"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    sget v10, Lcom/samsung/android/game/gametools/floatingui/R$id;->sw_switch:I

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Switch;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "sw"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    const/high16 v10, 0x42400000    # 48.0f

    iget-object v12, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mDisplayInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

    invoke-virtual {v12}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->getDensity()F

    move-result v12

    mul-float/2addr v10, v12

    float-to-int v4, v10

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v12, -0x2

    invoke-direct {v5, v10, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v10, Lcom/samsung/android/game/gametools/floatingui/R$drawable;->ripple_rectangle_white:I

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    monitor-exit v11

    return-object v6

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method private init(Landroid/content/Context;Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainMenuInfo;

    invoke-direct {v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainMenuInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mMenuInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainMenuInfo;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeLayoutFromWindow()V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/dreamtools/FloatingWindowManager;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v1, v3}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/FloatingWindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setCheckedChangeListener(Landroid/widget/CompoundButton;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setHoverText()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLauncherImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLauncherImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLauncherImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLauncherImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_HEADER_GAME_LAUNCHER_ABB:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSettingsImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSettingsImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSettingsImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSettingsImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TBOPT_SETTINGS:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLiveImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLiveImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLiveImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLiveImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_BODY_LIVE:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mPlugImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mPlugImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mPlugImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mPlugImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_OPT_COMMUNITY:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private setOnClickListener(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getLayout()Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mParams:Landroid/view/WindowManager$LayoutParams;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView:Landroid/view/View;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVisibility()I
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->getVisibility()I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hide(ZJLjava/lang/Runnable;)V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->removeOtherGuides()V

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mIsHiding:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->setDispatchKeyListener(Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout$DispatchKeyListener;)V

    const-wide/16 v4, 0x0

    cmp-long v1, p2, v4

    if-lez v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mIsHiding:Z

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mRotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    :goto_0
    if-eqz p4, :cond_1

    :try_start_1
    invoke-static {p4, p2, p3}, Lcom/sec/game/gamecast/common/utility/GTHandler;->postDelayed(Ljava/lang/Runnable;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "HIDE"

    invoke-static {v1, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    monitor-exit v2

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mShowAnimDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mHideAnimEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :pswitch_1
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mShowAnimDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mHideAnimEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mShowAnimDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mHideAnimEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->removeLayoutFromWindow()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mIsHiding:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public releaseViews()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "releaseViews"

    invoke-static {v0, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView0:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView90:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView270:Landroid/view/View;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSwitchNoAlerts:Landroid/widget/Switch;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->setCheckedChangeListener(Landroid/widget/CompoundButton;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSwitchRecentLock:Landroid/widget/Switch;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->setCheckedChangeListener(Landroid/widget/CompoundButton;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mSwitchBackLock:Landroid/widget/Switch;

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->setCheckedChangeListener(Landroid/widget/CompoundButton;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->bindListener()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNaverCafeFeature(Z)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mNaverCafeEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mPlugImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mPlugImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setParams()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;

    invoke-direct {v0}, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->defaultFlag()Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;

    move-result-object v0

    const v2, 0x8000100

    invoke-virtual {v0, v2}, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->addFlag(I)Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;

    move-result-object v0

    const/high16 v2, 0x10000

    invoke-virtual {v0, v2}, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->addSamsungFlag(I)Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;

    move-result-object v0

    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->gravity(I)Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/game/gamecast/common/utility/WindowLayoutParams$Builder;->build()Lcom/sec/game/gamecast/common/utility/WindowLayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mParams:Landroid/view/WindowManager$LayoutParams;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVisibility(I)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->setVisibility(I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public show(Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;Z)V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mDisplayInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mDisplayInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mRotation:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mIsHiding:Z

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mDisplayInfo:Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;

    iget v0, v1, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DisplayInfo;->mDensityDPI:I

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mDensityDPI:I

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prev DPI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mDensityDPI:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", current DPI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->releaseViews()V

    iput v0, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mDensityDPI:I

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->inflate()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->setParams()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-direct {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->changeAllTextShadowNOuterGlow(Landroid/view/ViewGroup;)V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->addLayoutToWindow()V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/FloatingWindowManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/dreamtools/FloatingWindowManager;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/FloatingWindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    iget v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mRotation:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->setListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {p0, v1}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->setCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const-string/jumbo v1, "402"

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "SHOW"

    invoke-static {v1, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mIsGameApp:Z

    if-eq v1, p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "app category changed"

    invoke-static {v1, v3}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->releaseViews()V

    iput-boolean p2, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mIsGameApp:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->setTranslationY(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mShowAnimDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->setTranslationX(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mShowAnimDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->setTranslationX(F)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mLayout:Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/view/customview/KeyDispatchLinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/game/gametools/floatingui/dreamtools/DreamToolsMainView;->mShowAnimDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
